	ldi	r19,	4	    ; für Pin 2 (4 = 2^2)
	out	0x0a,	r19	    ; Pin 2 als Ausgang
	ldi	r18,	0	    ; r18 = 0
loop:
	; Pulsbreite: (r20 * 3 + 4) * 62.5ns
	; r20 = 1 => 437.5ns
	; r20 = 2 => 625ns
	; r20 = 3 => 812.5ns
	; r20 = 4 => 1000ns
	; ...
	; r20 = 255 => 480625ns = ~48us

	eor	r18,	r19	    ; 1 Takt
	out	0x0b,	r18	    ; 1 Takt
	ldi	r24,	0x2	    ; 1 Takt
delay:
	subi	r24,	1	    ; 1 Takt
	brne	delay		    ; 2 Takte bei Sprung, 1 Takt sonst

	rjmp	loop		    ; 2 Takte
