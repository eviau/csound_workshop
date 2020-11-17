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

          instr 2
a1        oscil     p4, p5, 1      ; p4=amp
          out       a1             ; p5=freq
          endin

</CsInstruments>

<CsScore>

; f statements: to use a GEN subroutine
; more here: https://csound.com/docs/manual/f.html
f1   0    4096 10 1      ; sine wave

;ins strt dur  amp(p4)   freq(p5)
i2   0    1    2000      880
i2   1.5  1    4000      440
i2   3    1    8000      220
i2   4.5  1    16000     110
i2   6    1    32000     55

e

</CsScore>
</CsoundSynthesizer>