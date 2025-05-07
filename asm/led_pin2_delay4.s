	ldi	r19,	4	    ; für Pin 2 (4 = 2^2)
	out	0x0a,	r19
	ldi	r18,	0
loop:
	; Pulsbreite: (r24r23r22r21 * 6 + 7) * 62.5ns
	; r24r23r22r21 = 1 => 13 Takte => 812.5ns
	; r24r23r22r21 = 2 => 13 Takte => 812.5ns
	eor	r18,	r19	    ; 1 Takt
	out	0x0b,	r18	    ; 1 Takt

	ldi	r24,	0x54	    ; 1 Takt
	ldi	r25,	0x58	    ; 1 Takt
	ldi	r26,	0x14	    ; 1 Takt
	ldi	r27,	0x00	    ; 1 Takt
delay:
	subi	r24,	1	    ; 1 Takt
	sbci	r25,	0	    ; 1 Takt
	sbci	r26,	0	    ; 1 Takt
	sbci	r27,	0	    ; 1 Takt
	brne	delay		    ; 2 Takte bei Sprung, 1 Takt sonst

	rjmp	loop		    ; 2 Takte
