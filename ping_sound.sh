#!/bin/bash

# Ziel-IP
target_ip="192.168.178.31"

# Sounddatei, die abgespielt wird (z. B. WAV-Datei)
sound_file="/usr/share/sounds/alsa/Front_Center.wav"

# Funktion, um den Ton abzuspielen
play_sound() {
  aplay "$sound_file" &
}

# Funktion für eine einfache Animation (bewegender Balken)
spin() {
  local chars='-\|/'
  while :; do
    for (( i=0; i<${#chars}; i++ )); do
      printf "\r%s" "${chars:$i:1}"
      sleep 0.1
    done
  done
}

# Startet die Animation im Hintergrund
spin &
spinner_pid=$!

# Endlosschleife
while true; do
  # Ping die Ziel-IP, 1 Paket, mit einer Timeout von 2 Sekunden
  if ping -c 1 -w 2 "$target_ip" &> /dev/null; then
    # Wenn IP erreichbar, spiele den Ton ab (falls noch nicht abgespielt)
    play_sound
    sleep 1  # Warte eine Sekunde, um den Ton zu hören
  fi

  # 0,5 Sekunde warten, bevor erneut geprüft wird
  sleep 0.5
done

# Stoppe die Animation, wenn das Skript beendet wird
kill "$spinner_pid"
