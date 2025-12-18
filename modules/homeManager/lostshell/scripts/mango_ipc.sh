#!/usr/bin/env bash

# Exemplos formatados com quebra de linha
EXEMPLOS="<b>Sugestões de comandos:</b>
<span size='small' alpha='50%'>
• tile_gap <int>
• border_width <int>
• focus_next
• reload</span>"

input=$(rofi -dmenu -p "Mango:" -mesg "$EXEMPLOS")

if [ -n "$input" ]; then
    mmsg -d "$input"
fi