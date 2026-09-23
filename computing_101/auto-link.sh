#!/bin/bash

echo "Digite o caminho absoluto ou relativo do seu arquivo .s /.S"
read PROG

OBJF="obj-file.o"
EXEC="program"

echo "Criando arquivo object file"
as -o "$OBJF" "$PROG"

if [ -f "$OBJF" ]; then
    echo "Arquivo criado com sucesso"
    ls -lh 
    else
        echo "Não foi possível criar o arquivo"
        exit 1
fi

echo "Criando link executavel"
ld -o "$EXEC" "$OBJF"

if [ -f "$EXEC" ]; then
    echo "Executavel criado com sucesso"
    ls -lh
    else
        echo "Não foi possivel criar o executavel"
        exit 1
fi