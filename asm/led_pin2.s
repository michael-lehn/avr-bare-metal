        sbi     0x0a, 2     ; Pin 2 als Ausgang konfigurieren

loop:   sbi     0x0b, 2     ; Pin 2 auf HIGH setzen
        nop		    ; Nichts machen
        nop		    ; Nichts machen
        cbi     0x0b, 2     ; Pin 2 auf LOW setzen
	rjmp    loop        ; Zurück zur Marke 'loop (d.h. 4 Befehle zurück)

