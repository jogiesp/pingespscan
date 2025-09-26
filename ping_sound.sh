#!/bin/bash
# PingESPScan – Überwacht eine IP und spielt einen Ton ab, wenn erreichbar

# Ziel-IP, die überwacht werden soll
target_ip="192.168.1xx.xx"

# Sounddatei, die abgespielt wird, wenn die IP erreichbar ist
sound_file="/usr/share/sounds/alsa/Front_Center.wav"

# Funktion, um den Ton abzuspielen
play_sound() {
  # aplay spielt die Sounddatei ab, & startet den Prozess im Hintergrund
  aplay "$sound_file" &
}

# Funktion für eine einfache Animation (bewegender Balken / Spinner)
spin() {
  local chars='-\|/'   # Zeichen für die Animation
  while :; do          # Endlosschleife
    for (( i=0; i<${#chars}; i++ )); do
      printf "\r%s" "${chars:$i:1}"  # Zeigt das aktuelle Zeichen an
      sleep 0.1                       # Kurze Pause für Animationseffekt
    done
  done
}

# Startet die Animation im Hintergrund
spin &
spinner_pid=$!  # Speichert die Prozess-ID des Spinners, um ihn später zu beenden

# Endlosschleife für die Überwachung der Ziel-IP
while true; do
  # Ping die Ziel-IP, 1 Paket, mit Timeout 2 Sekunden
  if ping -c 1 -w 2 "$target_ip" &> /dev/null; then
    # Wenn die IP erreichbar ist, spiele den Ton ab
    play_sound
    sleep 1  # Kurze Pause, damit der Ton hörbar ist
  fi

  # 0,5 Sekunde warten, bevor erneut gepingt wird
  sleep 0.5
done

# Stoppe die Animation, wenn das Skript beendet wird
kill "$spinner_pid"
