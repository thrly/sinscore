#! /bin/bash
### BATCH GENERATE SINE WAVE GLISSES WITH CSOUND
### othurley, 2020

# requires sinscore.csd and score.txt---a list of: freq1 dur (freq2)

scorefile="score.txt"
while IFS= read -ra line
do
    echo "$line"
    SINFREQ1=$(echo "$line" | cut -d' ' -f1) #arg1: initial sine frequency in Hz
    DURATION=$(echo "$line" | cut -d' ' -f2) #arg3: duration
    SINFREQ2=$(echo "$line" | cut -d' ' -f3) #arg2: target sine frequency in Hz,
    SINFREQ2=${SINFREQ2:-$SINFREQ1} # if no target sine given, default to initial (flat sine)
    FILENAME="sine-$SINFREQ1-Hz-$DURATION-s-$SINFREQ2-Hz"
    csound -d -O null -W -o$FILENAME.wav --smacro:Freq1=$SINFREQ1 --smacro:Freq2=$SINFREQ2 --smacro:Dur=$DURATION sinscore.csd
    # sox $FILENAME.wav -n rate 20k spectrogram -w kaiser -o $FILENAME.png #generate a spectrogram, optional
done < $scorefile
echo "done"
