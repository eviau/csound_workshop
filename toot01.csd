<CsoundSynthesizer>
<CsOptions>
;-odac flag means the audio is sent out directly.
-odac
</CsOptions>

<CsInstruments>
; about oscil: http://www.csounds.com/manual/html/oscil.html
; oscil is a simple oscillator
; about out: http://www.csounds.com/manual/html/out.html 
; (write audio data to external device or stream)
        instr 1
a1      oscil   10000, 440, 1
        out     a1
        endin
</CsInstruments>

<CsScore>

; f statements: to use a GEN subroutine
; more here: https://csound.com/docs/manual/f.html
f1  0   4096    10 1  ; use GEN10 to compute a sine wave

;ins    start    dur
i1      0        4

e                     ; indicates the end of the score


</CsScore>
</CsoundSynthesizer>