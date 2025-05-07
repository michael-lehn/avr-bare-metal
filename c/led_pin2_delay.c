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
    // setup
    unsigned char pin = 2;
    unsigned char pinModes = 1 << pin;
    setPinModes(pinModes);

    unsigned char pinValues = 0;
    while (1) {
        // loop
        pinValues ^= 1 << pin;
        digitalWriteAll(pinValues);
        delay_cycles((500000000 / 62.5 - 7) / 6);
    }
}
