static void setPinModes(unsigned char mode)
{
    *(volatile unsigned char *)(0x2A) = mode;
}

static void digitalWriteAll(unsigned char val)
{
    *(volatile unsigned char *)(0x2B) = val;
}

static void delay_cycles(unsigned long count)
{
    do {
	// Compiler soll für count register verwenden 
	asm volatile ("" : "+r"(count));
	count = count - 1;
    } while (count != 0);
}

int main()
{
    /*
     * Die Funktionen setPinModes und digitalWriteAll
     * können verwendte werden um Pin 0 bis Pin 7 zu
     * manipulieren. Als Argument erwarten sie ein Byte,
     * also 8 Bits. Ist val = 4, dann ist das Bitmuster
     * von val 00000100, d.h. Bit 2 ist gesetzt, alle
     * anderen nicht:
     * - Mit setPinModes(val) wird dann
     *   Pin 2 als Ausgang konfiguriert alle anderen als
     *   Eingang.
     * - Mit digitalWriteAll(val) wird dann Pin 2 auf
     *   HIGH gesetzt.
     * - Mit digitalWriteAll(0) wird Pin 2 auf LOW
     *   gesetzt.
     */
    // Pin 2 als Ausgang konfigurieren
    setPinModes(4);
    // Pin 2 auf HIGH setzten
    digitalWriteAll(4);

    // Wenn man an Pin 2 eine LED anschliesst, dann wird
    // die leuchten.
}
