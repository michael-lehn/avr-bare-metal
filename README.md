# AVR Bare-Metal

**Arbeitsmaterial für das Praktikum „Anwendungsorientierte Softwareentwicklung“
an der Universität Ulm**

Diese Repository begleitet ein **wöchentliches, unbenotetes Praktikum** für
Studierende der Elektrotechnik im ersten Semester. Die Veranstaltung fand mit
**2 Stunden pro Woche** statt. Vorkenntnisse im Programmieren waren nicht
erforderlich – allerdings hatten die Teilnehmenden zuvor die Vorlesung
**Digitale Schaltungen** besucht und wussten daher, wie ein Prozessor intern
grundsätzlich funktioniert. Genau daran knüpft das Projekt an.

## Worum geht’s?

Ziel war es, **von ganz unten zu starten**: mit **Maschinencode**, der eine LED
blinken lässt – **ohne Arduino-Framework, ohne Libraries, ohne IDE-Magie**.
Schritt für Schritt wurden die Abstraktionen nach oben erweitert:
Assembler, C, Makefile, serielle Schnittstelle – bis am Ende ein in Python
entwickeltes Spiel entsteht, das sich über einen **selbstgebauten
Game-Controller mit Mikrocontroller-Steuerung** bedienen lässt.

👉 Hier ein Video mit dem Endergebnis:
Ein hybrides **Breakout-SpaceInvaders-Spiel**, gesteuert über einen ATmega328P,
der einen **BNO055** (Lage- und Beschleunigungssensor) sowie einen **Taster**
ausliest.

[Video anschauen](https://github.com/user-attachments/assets/ed1db76c-fee3-4abe-83a2-a54e4aef0f5a)

## Laborblätter

Im Unterverzeichnis [`doku`](./doku) findest du **insgesamt 11 Laborblätter**, die die Entwicklung des Projekts über das Semester hinweg begleiten.  
Geplant waren eigentlich 14 Einheiten – **wegen Feiertagen mussten leider 3 Termine entfallen**.

Die Blätter heißen bewusst *Laborblätter* – denn es geht nicht nur ums Programmieren, sondern auch um **Elektronik, Mikrocontroller, Messen mit dem Oszilloskop** und vieles mehr.  
Jedes Blatt bringt ein neues Element ins Spiel: von Maschinencode über Assembler und C bis hin zu seriellem Input, Game-Logik in Python und der Steuerung über einen selbstgebauten Controller.

👉 Ziel war es, **Schritt für Schritt ein funktionsfähiges Spiel mit Hardware-Anbindung zu entwickeln** – und dabei die nötigen Werkzeuge und Konzepte ganz praktisch kennenzulernen.

Zusätzlich zu den Laborblättern gibt es das Dokument [`Blinkende_LED_bare_metal.pdf`](./doku/Blinkende_LED_bare_metal.pdf), das zwar kein klassisches Skript ist, aber vertiefende Hintergrundinformationen zu den Themen der **ersten drei Laborblätter** bietet – insbesondere zur **Programmierung des Mikrocontrollers auf Maschinencode- und Assembler-Ebene**.


## Lizenz

Die Inhalte dieses Repositories stehen – sofern nicht anders angegeben – unter der Lizenz  
[Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/).

Das bedeutet:
- Die Materialien dürfen frei verwendet, geteilt und angepasst werden – auch für kommerzielle Zwecke.
- Voraussetzung ist, dass der ursprüngliche Urheber genannt wird (z. B. durch Verweis auf dieses Repository) und abgeleitete Werke unter derselben Lizenz veröffentlicht werden.

Bitte beachten: Einzelne Quelltexte oder externe Tools in diesem Projekt können eigenen Lizenzbedingungen unterliegen. Diese sind dann separat gekennzeichnet.
