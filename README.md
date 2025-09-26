# 🚀 PingESPScan – Ultimatives Netzwerk-Monitoring 🛰️

![Banner](https://img.shields.io/badge/Status-Beta-blue) ![Bash](https://img.shields.io/badge/Language-Bash-yellow) ![Linux](https://img.shields.io/badge/Platform-Linux-red)

**PingESPScan** ist dein **ultimatives, super-intelligentes Netzwerk-Überwachungswerkzeug**, das IP-Adressen blitzschnell überwacht und sofort Alarm schlägt, wenn dein Ziel erreichbar ist. Perfekt für IoT-Enthusiasten, Bastler und Netzwerk-Ninjas! 🥷

---

## 🌟 Features

- ✅ **Echtzeit-IP-Überwachung** – Ping die Ziel-IP ununterbrochen  
- 🔊 **Alarm per Sound** – Sofortiger akustischer Hinweis, wenn das Ziel online ist  
- 🎨 **Coole Terminal-Animation** – Live-Spinner zeigt, dass das Skript aktiv läuft  
- ♾️ **Endlosschleife** – 24/7 Netzwerk-Monitoring, zuverlässig wie ein Schweizer Uhrwerk ⏱️  
- 🛠️ **Minimalistisch & leichtgewichtig** – Kein unnötiger Ballast, läuft auf jedem Linux-System  

---

## ⚙️ Voraussetzungen

- Linux / Unix-ähnliches System  
- Bash (>=4.0)  
- `aplay` (Teil von ALSA) für Soundausgabe  
- Zugriff auf die gewünschte Sounddatei (`.wav` empfohlen)

---

## 📦 Installation

1. Repository klonen:

```bash
git clone https://github.com/jogiesp/pingespscan.git
cd pingespscan
```

2 .Script ausf ührbar machen
```bash
chmod +x pingespscan.sh
```

3. Ziel-IP und Sounddatei nach Wunsch anpassen:
```bash
# pingespscan.sh
target_ip="192.168.1xx.xx"
sound_file="/usr/share/sounds/alsa/Front_Center.wav"
```

🏃‍♂️ Nutzung
```bash
./pingespscan.sh🎯 Vision
```
PingESPScan ist mehr als nur ein Skript – es ist das Tor zu deiner smarten Netzwerk-Kontrolle.
Perfekt für:

Smart-Home Enthusiasten 🏠

IoT-Entwickler 🤖

Netzwerk-Administratoren 💻

Bastler & Nerds, die jeden Ping lieben ❤️



📝 Beispiel-Output
```bash
-/|\ PingESPScan aktiv! Ziel: 192.168.178.31
🔔 Ziel erreichbar! Ton wird abgespielt
-/|\ PingESPScan aktiv! Ziel: 192.168.178.31
```

💡 Tipps

Du kannst mehrere Skript-Instanzen für verschiedene IPs starten

Sounddateien frei wählbar (WAV empfohlen)

Läuft perfekt auf Raspbian, Ubuntu & anderen Linux-Distributionen



📜 Lizenz

MIT License – frei verwendbar, anpassbar und erweiterbar 🌍



