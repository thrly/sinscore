<CsoundSynthesizer>
<CsOptions>
-o singen.wav -W
</CsOptions>
<CsInstruments>

gisine   ftgen 1, 0, 16384, 10, 1	; function table for sine wave

sr = 44100
ksmps = 32
nchnls = 1
0dbfs = 1

instr 1

kamp = .6
kenv linseg p4, p3, p5
ifn  = 1 ; function table

asig poscil kamp, kenv
     outs asig;,asig ;(single=mono)
     
endin
     
</CsInstruments>
<CsScore>
#ifndef Freq1
#define Freq1 #440#
#end

#ifndef Freq2
#define Freq2 #$Freq1#
#end

#ifndef Dur
#define Dur #10#
#end

i 1 0 $Dur $Freq1 $Freq2

e ; ends score
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
