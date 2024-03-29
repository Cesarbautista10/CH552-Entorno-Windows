// ===================================================================================
// User Configurations for CH552E USB MacroPad Mini
// ===================================================================================

#pragma once

// Pin definitions
#define PIN_NEO             P14         // pin connected to NeoPixel
#define PIN_KEY3            P15         // pin connected to key 3
#define PIN_KEY2            P16         // pin connected to key 2
#define PIN_KEY1            P17         // pin connected to key 1

// NeoPixel configuration
#define NEO_GRB                         // type of pixel: NEO_GRB or NEO_RGB

// USB device descriptor
#define USB_VENDOR_ID       0x16c0     // VID
#define USB_PRODUCT_ID      0x27db      // PID
#define USB_DEVICE_VERSION  0x0100      // v1.0 (BCD-format)

// USB configuration descriptor
#define USB_MAX_POWER_mA    50          // max power in mA 

// USB descriptor strings
#define MANUFACTURER_STR    'm','m','m','m','m','m','*','*','*','8','r'
#define PRODUCT_STR         'M','a','c','r','o','P','a','d'
#define SERIAL_STR          'C','H','5','5','2','x','H','I','D'
#define INTERFACE_STR       'H','I','D','-','K','e','y','b','o','a','r','d'
