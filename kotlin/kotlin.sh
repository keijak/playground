#!/bin/sh
JARFILE="/tmp/${1%.kt}.jar"
kotlinc "$1" -include-runtime -d "$JARFILE"
kotlin "$JARFILE"
