#!/bin/bash

# ================= COLORS =================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m'

# ================= HEADER =================
banner() {
clear
echo -e "${MAGENTA}${BOLD}"
cat << "EOF"
╔════════════════════════════════════════════╗
║        🚀 PARA BEST INSTALLER 🚀       ║
╚════════════════════════════════════════════╝
EOF
echo -e "${NC}"
}

system_info() {
    clear
    echo -e "${BOLD}📊 SYSTEM INFORMATION${RESET}"
    echo
    echo "🖥️  Hostname : $(hostname)"
    echo "👤 User     : $(whoami)"
    echo "📁 Directory: $(pwd)"
    echo "⚙️  System   : $(uname -srm)"
    echo "⏱️  Uptime   : $(uptime -p)"
    echo "🧠 Memory   : $(free -h | awk '/Mem:/ {print $3\"/\"$2}')"
    echo "💽 Disk     : $(df -h / | awk 'NR==2 {print $3\"/\"$2 \" (\"$5\")\"}')"
    echo
    read -p "⬅️  Press Enter to continue..."
}

other_tools_menu() {
while true; do
    clear
    echo -e "${BLUE}━━━━━━━━━━ ⚒️ OTHER TOOLS ⚒️ ━━━━━━━━━━${NC}"
    echo -e "${CYAN} 1) 🛠️ Cockpit Install${NC}"
    echo -e "${CYAN} 2) 🔑 SSH Error Fix${NC}"
    echo -e "${CYAN} 3) 🧩 Jexactyl Panel Install${NC}"
    echo -e "${CYAN} 4) ♾️ Jexactyl Wings Install${NC}"
    echo -e "${CYAN} 5) 🔄 Pterodactyl Restart${NC}"
    echo -e "${CYAN} 6) 🌐 Nginx Reload${NC}"
    echo -e "${CYAN} 7) 🤖 Ptero Bot${NC}"
    echo -e "${CYAN} 8) 🎨 Theme Menu${NC}"
    echo -e "${CYAN} 9) 🔐 SSL Generator${NC}"
    echo -e "${CYAN}10) 📦 Idx VPS Maker${NC}"
    echo -e "${CYAN}11) 🧬 Github VPS Maker${NC}"
    echo -e "${CYAN}12) 🖥️ RDP Installation${NC}"
    echo -e "${CYAN}13) 💾 Swap RAM${NC}"
    echo -e "${CYAN}14) 💳 Paymenter Install${NC}"
    echo -e "${CYAN}15) 🧿 Mythical Dash Install${NC}"
    echo -e "${CYAN}16) 🖥️ RDP Installation${NC}"
    echo -e "${CYAN}17) 🐳 Docker VM${NC}"
    echo -e "${CYAN}18) ⚡ HVMv3 Install${NC}"
    echo -e "${CYAN}19) 📂 Ptero Backup${NC}"
    echo -e "${CYAN}20) 🚇 Playit Install${NC}"
    echo -e "${CYAN} 0) ⬅️ Back${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -ne "${YELLOW}${BOLD}➤ Select option [0-20]: ${NC}"
    read opt

    case $opt in
        1) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/CockpitInstall) ;;
        2) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/AutoSudo) ;;
        3) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/Jexcatylnstall) ;;
        4) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/wingsptero) ;;
        5) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/RestartPtero) ;;
        6) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/NginxReload) ;;
        7) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/PteroBot) ;;
        8) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/thememenu) ;;
        9) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/SSL%20GENRATOR) ;;
        10) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/VpsMaker) ;;
        11) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/VpsMenu) ;;
        12) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/rdp) ;;
        13) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/SwapRam) ;;
        14) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/paymenter) ;;
        15) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/MythicalDash) ;;
        16) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/rdp) ;;
        17) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/dockercontainer) ;;
        18) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/hvminstaller) ;;
        19) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/BackUp) ;;
        20) bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/playit) ;;
        0) break ;;
        *) echo -e "${RED}❌ Invalid option!${NC}"; sleep 1 ;;
    esac
done
}

# ================= MAIN MENU =================
while true; do
    banner
    echo -e "${BLUE}━━━━━━━━━━ 🌟 MAIN MENU 🌟 ━━━━━━━━━━${NC}"
    echo -e "${CYAN} 1) 🧩 Panel Menu${NC}"
    echo -e "${CYAN} 2) ♾️ Wings Installation${NC}"
    echo -e "${CYAN} 3) 🌐 Uninstall Panel${NC}"
    echo -e "${CYAN} 4) 🟦 Blueprint Installation${NC}"
    echo -e "${CYAN} 5) ☁️ Cloudflare Menu${NC}"
    echo -e "${CYAN} 6) 🔴 System Info${NC}"
    echo -e "${CYAN} 7) 🍹 Tailscale Setup${NC}"
    echo -e "${CYAN} 8) 🚢 Lxc Installation${NC}"
    echo -e "${CYAN} 9) ⚒️ Other Tools${NC}"
    echo -e "${CYAN} 0) 🚪 Exit${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -ne "${YELLOW}${BOLD}➤ Select option [1-8]: ${NC}"
    read choice

    case $choice in
        1)
            bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/PterodactylHub)
            ;;
        2)
            bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/wingsptero)
            ;;
        3)
            bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/uninstallptero)
            ;;
        4)
            bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/BlueprintFix)
            ;;
        5)
            bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/CloudflareMenu)
            ;;
        6)
            system_info
            ;;
        7)
            bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/tailscale)
            ;;
        8)
            bash <(curl -s https://raw.githubusercontent.com/ItsMePara123/GG/refs/heads/main/lxcinstall)
            ;;
        9)
            other_tools_menu
            ;;
        0)
            echo -e "${GREEN}Goodbye!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}❌ Invalid option! Try again.${NC}"
            sleep 1
            ;;
    esac
done
