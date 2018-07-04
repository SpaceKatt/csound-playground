
<CsoundSynthesizer>
<CsOptions>

-odac:hw:1 -+rtmidi=virtual -+rtaudio=alsa -B2048 -b2048 -Ma

</CsOptions>
<CsInstruments>

sr     = 44032
kr     = 256
0dbfs = 1
nchnls = 2

gisine ftgen 0, 0, 4096, 10, 1

maxalloc 1, 12


;Output Opcode   Arguments    (optional comment)

        instr    1
        iamp = .2
        icps cpsmidi
;output Opcode   amp     freq    fnc         ;comment
a1      oscil    .2,     icps,   gisine      ;OSC
        outs     a1,a1
        endin


</CsInstruments>
<CsScore>


</CsScore>
</CsoundSynthesizer>

