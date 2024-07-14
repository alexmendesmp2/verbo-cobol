#include <stdio.h>
#include <stdlib.h>

void print_hex(char* t, int qnt, unsigned int newline) {
    puts("\nImprimindo HEX:\n");
    for (int i=0, j=0; i < qnt; i++) {
        printf("0x%02x ", (unsigned char) t[i]);
        if (newline-1 == j) {
            printf("\n");
            j = 0; continue;
        }
        j++;
    }
    printf("%s\n\n", "");
}

int CSNDPKB(char *texto, char *texto2, unsigned char *n1, unsigned char *retcode) {

    print_hex(texto, 38, 15);

    printf("Texto 01 de entrada: %s\n\n", texto);
    printf("Texto 02 de entrada: %s\n\n", texto2);
    printf("Numero n de entrada: %u\n\n", *n1);
    printf("Numero n de retorno: %u\n\n", *retcode);

    *(retcode) = *(n1)-1;
}