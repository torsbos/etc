#!/bin/bash
# a metronome script using ecasounds metronome preset
# GPLv3 license

read -p "Enter bpm: " bpm
ecasound -q -i:null -o:alsa -pn:metronome,$bpm
