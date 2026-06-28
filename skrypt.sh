#!/bin/bash
if [[ "$1" == "--date" ]]; then
	date
if

if [[ "$1" == "--logs" && -z "$2" ]]; then
    for i in {1..100}; do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Skrypt: $0" >> "$filename"
        echo "Data: $(date)" >> "$filename"
    done
fi

if [[ "$1" == "--logs" && "$2" =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 "$2"); do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Skrypt: $0" >> "$filename"
        echo "Data: $(date)" >> "$filename"
    done
fi
