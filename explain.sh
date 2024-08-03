#!/usr/bin/bash

# Author:   s1ck

ans=$1

if [[ -z "$1" ]]; then
    echo "usage : explain 'your query here'  "
    exit 1
fi

echo "$ans"


tgpt -q "answer under 100 words, $ans" |   piper --model /opt/piper/norman/en_US-norman-medium.onnx --output-raw |   aplay -r 22050 -f S16_LE -t raw -





