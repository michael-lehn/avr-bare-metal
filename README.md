# AVR Bare-Metal

Dieses Projekt richtet sich an alle, die verstehen wollen, **was eigentlich
passiert, wenn man in der Arduino-IDE ein C-Programm eintippt und auf "Upload"
klickt**. Wir schauen uns an, welche Toolchain dabei im Hintergrund abläuft –
und wie letztlich Maschinencode entsteht, der eine LED auf einem
Mikrocontroller blinken lässt.

## Ziel des Projekts

Das Projekt nimmt dich mit auf eine Reise von ganz unten nach oben:  
Wir starten mit einem Programm, das **direkt in Maschinencode** geschrieben ist
– also so, wie es der Mikrocontroller „sieht“. Dann ersetzen wir den
Maschinencode durch **Assembler**, um lesbaren, symbolischen Code zu erhalten.
Schließlich schreiben wir ein funktional identisches **C-Programm**, bei dem
der Clou ist:  
👉 **Der C-Compiler erzeugt am Ende genau denselben Maschinencode**, den wir
ganz am Anfang selbst geschrieben haben.

## Warum das Ganze?

Dieses Projekt soll **nicht** vermitteln, dass man in Maschinencode oder
Assembler programmieren sollte. Ganz im Gegenteil: Es ist natürlich absolut
sinnvoll, Mikrocontroller mit C oder C++ zu programmieren.

Aber es ist extrem hilfreich (und macht Spaß!), sich einmal mit den Grundlagen
und Werkzeugen zu beschäftigen, die wir täglich verwenden – und ein Gefühl
dafür zu bekommen, was ein Compiler eigentlich tut. Und für einfache Programme
wie eine blinkende LED lohnt sich der Blick „unter die Haube“ besonders:  
Man versteht plötzlich Zusammenhänge, die vielen verborgen bleiben – und das
auf ganz praktische Weise. 😄

## Inhalt

- **Projektbegleiter** mit ausführlichen Erklärungen und Abbildungen
- **Arbeitsblatt 1** zum praktischen Einstieg
- Beispielprogramme:
  - `led_pin2.hex` – direkt in Maschinencode geschrieben
  - `led_pin2.s` – identisches Programm in Assembler
  - `led_pin2_delay.c` – C-Version mit gleichem Verhalten
- **Makefiles** zur komfortablen Erzeugung von HEX-Dateien und für den Upload



https://github.com/user-attachments/assets/ed1db76c-fee3-4abe-83a2-a54e4aef0f5a



