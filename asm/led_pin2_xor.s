	ldi	r19,	4	    ; r19 = Maske für Pin 2 (Bem.: 4 = 2^2)
	out	0x0a,	r19	    ; Pin 2 als Ausgang
	ldi	r18,	0	    ; r18 = 0
loop:
	eor	r18,	r19	    ; r18 = r18 XOR r19 ("toggle")
	out	0x0b,	r18	    ; Pin 2 auf HIGH oder LOW setzen
	rjmp	loop
