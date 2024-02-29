#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include <algorithm>
#include <iterator>
#include <cstring>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>

// Function to send an HTTP response
void sendResponse(int clientSocket, const std::string& response) {
    send(clientSocket, response.c_str(), response.size(), 0);
}

in_addr_t ipStringtoInt(const std::string &ip) {
    std::vector<int> components;
    std::stringstream ss(ip);
    std::string component;
    
    while (std::getline(ss, component, '.')) {
        components.push_back(std::stoi(component));
    }

    if (components.size() != 4) {
        throw std::invalid_argument("Invalid IP address format");
    }

    in_addr_t result = 0;
    for (int i = 0; i < 4; ++i) {
        result |= (static_cast<in_addr_t>(components[i]) << (24 - 8 * i));
    }

    return result;
}

int main(int argc, char *argv[]) {

    using namespace std;

    if(argc < 3) {
        std::cerr << "Wrong command!\n"
                  << "Usage: ./server <server IP> <port number>"
                  << std::endl;
        return -1;
    }

    in_addr_t server_addr = ipStringtoInt(argv[1]);
    in_port_t server_port = stoi(argv[2]);

    // Create a socket
    int serverSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (serverSocket == -1) {
        std::cerr << "Error: Socket creation failed" << std::endl;
        return -1;
    }

    // Bind the socket to a port
    sockaddr_in serverAddr;
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(server_port);
    serverAddr.sin_addr.s_addr = server_addr;

    int optval = 1;
    if (setsockopt(serverSocket, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval)) < 0) {
        std::cerr << "reuse failed";
        abort();
    }

    if (bind(serverSocket, (struct sockaddr*)&serverAddr, sizeof(serverAddr)) == -1) {
        std::cerr << "Error: Binding failed" << std::endl;
        close(serverSocket);
        return -1;
    }

    // Listen for incoming connections
    if (listen(serverSocket, 5) == -1) {
        std::cerr << "Error: Listening failed" << std::endl;
        close(serverSocket);
        return -1;
    }

    std::cout << "Server listening on port " << server_port << "..." << std::endl;

    while (true) {
        // Accept a client connection
        int clientSocket = accept(serverSocket, nullptr, nullptr);
        if (clientSocket == -1) {
            std::cerr << "Error: Accepting client connection failed" << std::endl;
            continue;
        }

        // Receive the HTTP request
        char buffer[1024] = {0};
        recv(clientSocket, buffer, sizeof(buffer), 0);
        std::string httpRequest(buffer);

        // Check if it's a valid HTTP GET request
        if (httpRequest.find("GET ") == std::string::npos) {
            // Invalid request, send "Bad Request" (400) response
            std::string response = "HTTP/1.1 400 Bad Request\r\n\r\n";
            sendResponse(clientSocket, response);
        } else {
            // Valid GET request, send a sample response
            std::string response = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n";
            response += "<html><body><h1>Hello, World! HEHEHE</h1></body></html>";
            sendResponse(clientSocket, response);
        }

        // Close the client socket
        close(clientSocket);
    }

    // Close the server socket (not reached in this example)
    close(serverSocket);

    return 0;
}
