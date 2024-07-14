      ******************************************************************
      * Author: ALEX MENDES
      * Date: 10-07-2024
      * Purpose: TESTE CRIACAO DE VERBO
      ******************************************************************
       IDENTIFICATION DIVISION.
      ******************************************************************
      *----------------------------------------------------------------*
       PROGRAM-ID. PROGRAMA-COBOL-CHAMADOR.
      *----------------------------------------------------------------*
      ******************************************************************
       DATA DIVISION.
      ******************************************************************
      *----------------------------------------------------------------*
       FILE SECTION.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
       WORKING-STORAGE SECTION.
      *----------------------------------------------------------------*
       01  AREA-DE-TRANSFERENCIA.
           05  TEXTO-PARA-IMPRIMIR   PIC X(15)       VALUE SPACES.
           05  TEXTO2-PARA-IMPRIMIR  PIC X(15)       VALUE SPACES.
           05  NUMERO-PARA-IMPRIMIR  PIC 9(02)  COMP VALUE 19.
           05  NUMERO-PARA-RETORNO   PIC 9(02)  COMP VALUE 20.
       77  CSNDPKB                   PIC X(07)       VALUE 'CSNDPKB'.
      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
      *----------------------------------------------------------------*
           STRING 'ALEX' X'00'   DELIMITED BY SIZE
                                 INTO TEXTO-PARA-IMPRIMIR
           STRING 'MENDES' X'00' DELIMITED BY SIZE
                                 INTO TEXTO2-PARA-IMPRIMIR
           CALL CSNDPKB USING TEXTO-PARA-IMPRIMIR
                              TEXTO2-PARA-IMPRIMIR
                              NUMERO-PARA-IMPRIMIR
                              NUMERO-PARA-RETORNO
           DISPLAY 'PROGRAMA CHAMADOR'
           DISPLAY 'RETCODE = ' NUMERO-PARA-RETORNO
           GOBACK.
      *----------------------------------------------------------------*
       END PROGRAM PROGRAMA-COBOL-CHAMADOR.
