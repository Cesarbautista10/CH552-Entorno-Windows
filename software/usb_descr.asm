;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module usb_descr
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _InterfDescr
	.globl _SerDescr
	.globl _ProdDescr
	.globl _ManufDescr
	.globl _LangDescr
	.globl _ReportDescrLen
	.globl _ReportDescr
	.globl _CfgDescr
	.globl _DevDescr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DevDescr:
	.db #0x12	; 18
	.db #0x01	; 1
	.byte #0x10, #0x01	; 272
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.byte #0xc0, #0x16	; 5824
	.byte #0xdb, #0x27	; 10203
	.byte #0x00, #0x01	; 256
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_CfgDescr:
	.db #0x09	; 9
	.db #0x02	; 2
	.byte #0x29, #0x00	; 41
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x19	; 25
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x21	; 33
	.byte #0x10, #0x01	; 272
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.byte #0x5f, #0x00	; 95
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.byte #0x10, #0x00	; 16
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x03	; 3
	.byte #0x10, #0x00	; 16
	.db #0x0a	; 10
_ReportDescr:
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0xe0	; 224
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x06	; 6
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x05	; 5
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x03	; 3
	.db #0x91	; 145
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x02	; 2
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x04	; 4
	.db #0x75	; 117	'u'
	.db #0x10	; 16
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xc0	; 192
_ReportDescrLen:
	.db #0x5f	; 95
_LangDescr:
	.byte #0x04, #0x03	; 772
	.byte #0x09, #0x04	; 1033
_ManufDescr:
	.byte #0x18, #0x03	; 792
	.byte #0x6d, #0x00	; 109
	.byte #0x6d, #0x00	; 109
	.byte #0x6d, #0x00	; 109
	.byte #0x6d, #0x00	; 109
	.byte #0x6d, #0x00	; 109
	.byte #0x6d, #0x00	; 109
	.byte #0x2a, #0x00	; 42
	.byte #0x2a, #0x00	; 42
	.byte #0x2a, #0x00	; 42
	.byte #0x38, #0x00	; 56
	.byte #0x72, #0x00	; 114
_ProdDescr:
	.byte #0x12, #0x03	; 786
	.byte #0x4d, #0x00	; 77
	.byte #0x61, #0x00	; 97
	.byte #0x63, #0x00	; 99
	.byte #0x72, #0x00	; 114
	.byte #0x6f, #0x00	; 111
	.byte #0x50, #0x00	; 80
	.byte #0x61, #0x00	; 97
	.byte #0x64, #0x00	; 100
_SerDescr:
	.byte #0x14, #0x03	; 788
	.byte #0x43, #0x00	; 67
	.byte #0x48, #0x00	; 72
	.byte #0x35, #0x00	; 53
	.byte #0x35, #0x00	; 53
	.byte #0x32, #0x00	; 50
	.byte #0x78, #0x00	; 120
	.byte #0x48, #0x00	; 72
	.byte #0x49, #0x00	; 73
	.byte #0x44, #0x00	; 68
_InterfDescr:
	.byte #0x1a, #0x03	; 794
	.byte #0x48, #0x00	; 72
	.byte #0x49, #0x00	; 73
	.byte #0x44, #0x00	; 68
	.byte #0x2d, #0x00	; 45
	.byte #0x4b, #0x00	; 75
	.byte #0x65, #0x00	; 101
	.byte #0x79, #0x00	; 121
	.byte #0x62, #0x00	; 98
	.byte #0x6f, #0x00	; 111
	.byte #0x61, #0x00	; 97
	.byte #0x72, #0x00	; 114
	.byte #0x64, #0x00	; 100
	.area CABS    (ABS,CODE)
