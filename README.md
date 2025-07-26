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

## Laborblätter

Im Unterverzeichnis [`doku`](./doku) findest du **insgesamt 11 Laborblätter**, die die Entwicklung des Projekts über das Semester hinweg begleiten.  
Geplant waren eigentlich 14 Einheiten – **wegen Feiertagen mussten leider 3 Termine entfallen**.

Die Blätter heißen bewusst *Laborblätter* – denn es geht nicht nur ums Programmieren, sondern auch um **Elektronik, Mikrocontroller, Messen mit dem Oszilloskop** und vieles mehr.  
Jedes Blatt bringt ein neues Element ins Spiel: von Maschinencode über Assembler und C bis hin zu seriellem Input, Game-Logik in Python und der Steuerung über einen selbstgebauten Controller.

👉 Ziel war es, **Schritt für Schritt ein funktionsfähiges Spiel mit Hardware-Anbindung zu entwickeln** – und dabei die nötigen Werkzeuge und Konzepte ganz praktisch kennenzulernen.

