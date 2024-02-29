#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <unistd.h>

char* secret = "cBWTwTwC5eKAcDxpwx88";

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
unsigned long expected_ra, found_ra;

void receive_input() {
    char buf[128];
    fgets(buffer, 256, stdin);
    expected_ra = *((unsigned long*)__builtin_frame_address(0) - 1);
    strcpy(buf, buffer);
    found_ra = *((unsigned long*)__builtin_frame_address(0) - 1);
    if(found_ra != expected_ra) {
        raise_alarm(found_ra, expected_ra);
    }

}

int run() {
    printf("Can you obtain the secret?\n");
    receive_input();
    printf("Returnning Normally\n");
}

int main() {
    run();
}
