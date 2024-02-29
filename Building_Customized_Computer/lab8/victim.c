#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <unistd.h>

char* secret = "cBWTwTwC5eKAcDxpwx88";

char* benign = "benign";

void raise_alarm(unsigned long found, unsigned long expected) {
    printf("detected return address corruption!\n");
    printf("found: %lx, expected: %lx\n",found, expected);
    exit(0);
}

void print_secret() {
    printf("Ah! %s\n",secret);
    exit(0);
}

char buffer[256];
int i;

void receive_input(int calls_b) {
    printf("calls_b from %s: %d\n",__func__, calls_b);
    char buf[128];
    if (calls_b == 0) {
	strncpy(buffer, benign, strlen(benign));
        strcpy(buf, buffer);
    } else {
        receive_input(calls_b - 1);
    }
}

int run(int calls_a, int calls_b) {
    printf("calls_a from %s: %d\n",__func__, calls_a);
    if (calls_a == 0) {
        printf("Can you obtain the secret?\n");
        receive_input(calls_b);
        printf("Returnning Normally\n");
    } else {
        run(calls_a - 1, calls_b);
    }
}

int main(int argc, char* argv[]) {

    int calls_a = 0;
    int calls_b = 0;
    if (argc == 3) {
        calls_a = atoi(argv[1]);
        calls_b = atoi(argv[2]);
    } else if (argc == 2) {
        calls_a = atoi(argv[1]);
    }
    printf("run is called for %d times and receive_input is called for %d times\n", calls_a + 1, calls_b + 1);
    run(calls_a, calls_b);
}
