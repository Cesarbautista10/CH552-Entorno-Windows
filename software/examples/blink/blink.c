// Blink an LED connected to pin 1.7
#include "src/config.h"                     // user configurations
#include "src/system.h"                     // system functions
#include "src/delay.h"                      // delay functions
#include "src/neo.h"                        // NeoPixel functions
#include "src/usb_conkbd.h"                 // USB HID consumer keyboard functions



#define LED_PIN 7
SBIT(LED, 0x90, LED_PIN);

void main() {

	// Configure pin 1.6 as GPIO output
	P1_DIR_PU &= 0x0C;
	P1_MOD_OC = P1_MOD_OC & ~(1<<LED_PIN);
	P1_DIR_PU = P1_DIR_PU |     (1<<LED_PIN);

	while (1) {
		LED = !LED;
		DLY_ms(1000);
	}
}