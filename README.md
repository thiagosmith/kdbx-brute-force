# kdbx-brute-force
kdbx-brute-force

requerimentos
```
sudo apt update && sudo apt install keepassxc
```

atribuição de permissão de execução
```
chmod +x kdbx-brute-force.sh
```

modo de uso
```
./kdbx-brute-force.sh arquivo..kdbx /usr/share/wordlist/rockyou.txt
```

## Adicional:
Instalação do snap
```
sudo apt install snapd
```

Start do snap
```
sudo systemctl start snapd.service snapd.socket
```

Instalação do John via snap
```
sudo snap install john-the-ripper
```

Executando a extração do hash do arquivo .kdbx
```
snap run john-the-ripper.keepass2john arquivo.kdbx > keepass.hash
```

Quebra do hash com John
```
snap run john-the-ripper keepass.hash --wordlist=rockyou.txt --format=KeePass
```


# Isenção de responsabilidade:
Arquivo didatíco para uso em CTFs.

Não deve ser usado para atacar sistemas que não tenha autorizaçaõ para fazê-lo.

Não me responsabilizo pelo seu mau uso.
