# sinscore
using csound and bash to create a bunch of sine waves

There are three parts to this:
1. the CSound .csd file -- responsible for generating the sinewaves
2. the bash script, we use to run csound from command and parse the info from the...
3. score.txt -- a simple list of the sines: `freq1 duration (freq2)`

The score is very simple. Where only two arguments are given, the sine is static, where three are given, the sine takes a linear segment towards it's target
e.g.

`440 10 # a sine wave of 440Hz for 10 seconds`

`660 10 880 # a sine from 660Hz to 880Hz over 10 seconds`

add as many lines(sines) as you need to the score

from Terminal, execute the shell script with `./sinscore.sh`
you may need to make the file executable with `chmod +x sinscore.sh`
