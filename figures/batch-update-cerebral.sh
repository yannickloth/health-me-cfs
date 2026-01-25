#!/bin/bash
# Quick batch update for cerebral figures
sed -i 's/scale=0.75, every node/.style={scale=0.75}/scale=1, every node\/.style={scale=1}/g' fig-cerebral-hypoperfusion-normal.tex
sed -i 's/scale=0.62, every node/.style={scale=0.62}/scale=1, every node\/.style={scale=1}/g' fig-cerebral-hypoperfusion-mecfs.tex
