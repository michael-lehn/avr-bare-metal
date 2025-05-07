	ldi	r24,	1 << 2	    ; für Pin 2 (4 = 2^2)
	ldi	r25,	0
	out	0x0a,	r24
loop:
	; Pulsbreite: (r21r20 * 4 + 5) * 62.5ns
	; r21r20 = 1 =>  9 Takte => 562.5ns
	; r21r20 = 2 => 13 Takte => 812.5ns
	; ...
	; r21r20 = 64435 => 5+4*65535 Takte => 16385187.5ns = ~16.4ms
	eor	r25,	r24	    ; 1 Takt
	out	0x0b,	r25	    ; 1 Takt

	ldi	r20,	0xFF	    ; 1 Takt
	ldi	r21,	0xFF	    ; 1 Takt
delay:
	subi	r20,	1	    ; 1 Takt
	sbci	r21,	0	    ; 1 Takt
	brne	delay		    ; 2 Takte bei Sprung, 1 Takt sonst

	rjmp	loop		    ; 2 Takte
