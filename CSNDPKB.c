#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int32_t to_big_endian_32(int32_t c);
int32_t to_little_endian_32(int32_t c);
void print_hex(char* t, int qnt, unsigned int newline);

int CSNDPKB(char *texto, char *texto2, int32_t *n1, int32_t *retcode) {

    print_hex(texto, 38, 15);

    printf("Texto 01 de entrada: %s\n\n", texto);
    printf("Texto 02 de entrada: %s\n\n", texto2);
    printf("Numero n de entrada (n1) little-endian: 0x%08x\n\n", *n1);
    int32_t n1_b = to_big_endian_32(*n1);
    printf("Numero n de entrada (n1) big-endian: 0x%08x\n\n", n1_b);
    printf("Numero n de entrada a: %d\n\n", n1_b);

    int32_t ret = 1;
    *(retcode) = to_little_endian_32(ret);
}






int32_t to_big_endian_32(int32_t c) {
    return (int32_t) ((c>>24 & 0x000000FF) | (c<<24 & 0xFF000000)) | ((c<<8 & 0x00FF0000) | (c>>8 & 0x0000FF00));    
}

int32_t to_little_endian_32(int32_t c) {
    return to_big_endian_32(c);
}


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