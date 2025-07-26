# AVR Bare-Metal

**Arbeitsmaterial für das Praktikum „Anwendungsorientierte Softwareentwicklung“
an der Universität Ulm**

Diese Repository begleitet ein zweiwöchentliches, unbenotetes Praktikum für
Studierende der Elektrotechnik im ersten Semester. Vorkenntnisse im
Programmieren waren nicht erforderlich – allerdings hatten die Teilnehmenden
zuvor die Vorlesung **Digitale Schaltungen** besucht und wussten daher, wie ein
Prozessor intern grundsätzlich funktioniert. Genau daran knüpft das Projekt an.

## Worum geht’s?

Ziel war es, **von ganz unten zu starten**: mit **Maschinencode**, der eine LED
blinken lässt – **ohne Arduino-Framework, ohne Libraries, ohne IDE-Magie**.
Schritt für Schritt wurden die Abstraktionen nach oben erweitert:
Assembler, C, Makefile, serielle Schnittstelle – bis am Ende ein in Python
entwickeltes Spiel entsteht, das sich über einen **selbstgebauten
Game-Controller mit Mikrocontroller-Steuerung** bedienen lässt.

👉 Hier ein Video mit dem Endergebnis:
Ein hybrides **Breakout-SpaceInvaders-Spiel**, gesteuert über einen ATmega328P,
der einen **BNO055** (Lage- und Beschleunigungssensor) sowie mehrere **Taster**
ausliest.

[Video anschauen](https://github.com/user-attachments/assets/ed1db76c-fee3-4abe-83a2-a54e4aef0f5a)
