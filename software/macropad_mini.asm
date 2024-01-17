;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module macropad_mini
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _NEO_update
	.globl _USB_ISR
	.globl _USB_interrupt
	.globl _CON_release
	.globl _CON_press
	.globl _KBD_release
	.globl _KBD_press
	.globl _HID_init
	.globl _NEO_writeColor
	.globl _NEO_sendByte
	.globl _DLY_ms
	.globl _PP37
	.globl _PP36
	.globl _PP35
	.globl _PP34
	.globl _PP33
	.globl _PP32
	.globl _PP31
	.globl _PP30
	.globl _PP17
	.globl _PP16
	.globl _PP15
	.globl _PP14
	.globl _PP13
	.globl _PP12
	.globl _PP11
	.globl _PP10
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _neo3
	.globl _neo2
	.globl _neo1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
_PP10	=	0x0090
_PP11	=	0x0091
_PP12	=	0x0092
_PP13	=	0x0093
_PP14	=	0x0094
_PP15	=	0x0095
_PP16	=	0x0096
_PP17	=	0x0097
_PP30	=	0x00b0
_PP31	=	0x00b1
_PP32	=	0x00b2
_PP33	=	0x00b3
_PP34	=	0x00b4
_PP35	=	0x00b5
_PP36	=	0x00b6
_PP37	=	0x00b7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_neo1::
	.ds 1
_neo2::
	.ds 1
_neo3::
	.ds 1
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_main_key1last_65536_526:
	.ds 1
_main_key2last_65536_526:
	.ds 1
_main_key3last_65536_526:
	.ds 1
_main_sloc0_1_0:
	.ds 1
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_USB_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genRAMCLEAR
;	macropad_mini.c:137: __idata uint8_t neo1 = 127;                 // brightness of NeoPixel 1
	mov	r0,#_neo1
	mov	@r0,#0x7f
;	macropad_mini.c:138: __idata uint8_t neo2 = 127;                 // brightness of NeoPixel 2
	mov	r0,#_neo2
	mov	@r0,#0x7f
;	macropad_mini.c:139: __idata uint8_t neo3 = 127;                 // brightness of NeoPixel 3
	mov	r0,#_neo3
	mov	@r0,#0x7f
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_ISR'
;------------------------------------------------------------
;	macropad_mini.c:57: void USB_ISR(void) __interrupt(INT_NO_USB) {
;	-----------------------------------------
;	 function USB_ISR
;	-----------------------------------------
_USB_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	macropad_mini.c:58: USB_interrupt();
	lcall	_USB_interrupt
;	macropad_mini.c:59: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'NEO_update'
;------------------------------------------------------------
;	macropad_mini.c:142: void NEO_update(void) {
;	-----------------------------------------
;	 function NEO_update
;	-----------------------------------------
_NEO_update:
;	macropad_mini.c:143: EA = 0;                                   // disable interrupts
;	assignBit
	clr	_EA
;	macropad_mini.c:144: NEO_writeColor(neo1, 0, 0);               // NeoPixel 1 lights up red
	mov	_NEO_writeColor_PARM_2,#0x00
	mov	_NEO_writeColor_PARM_3,#0x00
	mov	r0,#_neo1
	mov	dpl,@r0
	lcall	_NEO_writeColor
;	macropad_mini.c:145: NEO_writeColor(0, neo2, 0);               // NeoPixel 2 lights up green
	mov	r0,#_neo2
	mov	_NEO_writeColor_PARM_2,@r0
	mov	_NEO_writeColor_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_NEO_writeColor
;	macropad_mini.c:146: NEO_writeColor(0, 0, neo3);               // NeoPixel 3 lights up blue
	mov	_NEO_writeColor_PARM_2,#0x00
	mov	r0,#_neo3
	mov	_NEO_writeColor_PARM_3,@r0
	mov	dpl,#0x00
	lcall	_NEO_writeColor
;	macropad_mini.c:147: EA = 1;                                   // enable interrupts
;	assignBit
	setb	_EA
;	macropad_mini.c:148: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	macropad_mini.c:153: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	macropad_mini.c:155: __bit key1last = 0;                       // last state of key 1
;	assignBit
	clr	_main_key1last_65536_526
;	macropad_mini.c:156: __bit key2last = 0;                       // last state of key 2
;	assignBit
	clr	_main_key2last_65536_526
;	macropad_mini.c:157: __bit key3last = 0;                       // last state of key 3
;	assignBit
	clr	_main_key3last_65536_526
;	macropad_mini.c:161: NEO_init();                               // init NeoPixels
;	assignBit
	clr	_PP14
	anl	_P1_MOD_OC,#0xef
	orl	_P1_DIR_PU,#0x10
;	src/system.h:71: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	src/system.h:72: SAFE_MOD = 0xAA;                              // enter safe mode
	mov	_SAFE_MOD,#0xaa
;	src/system.h:80: __asm__("anl _CLOCK_CFG, #0b11111000");
	anl	_CLOCK_CFG, #0b11111000
;	src/system.h:81: __asm__("orl _CLOCK_CFG, #0b00000101");     // 16MHz	
	orl	_CLOCK_CFG, #0b00000101
;	src/system.h:100: SAFE_MOD = 0x00;                              // terminate safe mode
	mov	_SAFE_MOD,#0x00
;	macropad_mini.c:163: DLY_ms(10);                               // wait for clock to settle
	mov	dptr,#0x000a
	lcall	_DLY_ms
;	macropad_mini.c:166: if(!PIN_read(PIN_KEY1)) {                 // key 1 pressed?
	jb	_PP17,00103$
;	macropad_mini.c:167: for(i=9; i; i--) NEO_sendByte(127);     // light up all pixels
	mov	r7,#0x09
00149$:
	mov	dpl,#0x7f
	push	ar7
	lcall	_NEO_sendByte
	pop	ar7
	djnz	r7,00149$
;	src/system.h:161: USB_CTRL = 0;
	mov	_USB_CTRL,#0x00
;	src/system.h:162: EA       = 0;
;	assignBit
	clr	_EA
;	src/system.h:163: TMOD     = 0;
	mov	_TMOD,#0x00
;	src/system.h:166: __endasm;
	lcall	#0x3800
;	macropad_mini.c:168: BOOT_now();                             // enter bootloader
00103$:
;	macropad_mini.c:172: KBD_init();                               // init USB HID keyboard
	lcall	_HID_init
;	src/system.h:127: WDOG_COUNT  = 0;
	mov	_WDOG_COUNT,#0x00
;	src/system.h:128: SAFE_MOD    = 0x55;
	mov	_SAFE_MOD,#0x55
;	src/system.h:129: SAFE_MOD    = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	src/system.h:130: GLOBAL_CFG |= bWDOG_EN;
	orl	_GLOBAL_CFG,#0x01
;	src/system.h:131: SAFE_MOD    = 0x00;
	mov	_SAFE_MOD,#0x00
;	macropad_mini.c:176: while(1) {
00135$:
;	macropad_mini.c:178: if(!PIN_read(PIN_KEY1) != key1last) {   // key 1 state changed?
	mov	c,_PP17
	cpl	c
	mov  _main_sloc0_1_0,c
	jb	_main_key1last_65536_526,00220$
	cpl	c
00220$:
	jc	00110$
;	macropad_mini.c:179: key1last = !key1last;                 // update last state flag
	cpl	_main_key1last_65536_526
;	macropad_mini.c:180: if(key1last) {                        // key was pressed?
	jnb	_main_key1last_65536_526,00105$
;	macropad_mini.c:181: neo1 = 127;                         // light up corresponding NeoPixel
	mov	r0,#_neo1
	mov	@r0,#0x7f
;	macropad_mini.c:182: NEO_update();                       // update NeoPixels NOW!
	lcall	_NEO_update
;	macropad_mini.c:75: KBD_press(KBD_KEY_HOME);     
	mov	dpl,#0xd2
	lcall	_KBD_press
;	macropad_mini.c:183: KEY1_PRESSED();                     // take proper action
	sjmp	00111$
00105$:
;	macropad_mini.c:84: KBD_release(KBD_KEY_HOME);                                      
	mov	dpl,#0xd2
	lcall	_KBD_release
;	macropad_mini.c:186: KEY1_RELEASED();                    // take proper action
	sjmp	00111$
00110$:
;	macropad_mini.c:189: else if(key1last) {                     // key still being pressed?
	jnb	_main_key1last_65536_526,00111$
;	macropad_mini.c:190: neo1 = 127;                           // keep NeoPixel on
	mov	r0,#_neo1
	mov	@r0,#0x7f
;	macropad_mini.c:191: KEY1_HOLD();                          // take proper action
00111$:
;	macropad_mini.c:195: if(!PIN_read(PIN_KEY2) != key2last) {   // key 2 state changed?
	mov	c,_PP16
	cpl	c
	mov  _main_sloc0_1_0,c
	jb	_main_key2last_65536_526,00224$
	cpl	c
00224$:
	jc	00118$
;	macropad_mini.c:196: key2last = !key2last;                 // update last state flag
	cpl	_main_key2last_65536_526
;	macropad_mini.c:197: if(key2last) {                        // key was pressed?
	jnb	_main_key2last_65536_526,00113$
;	macropad_mini.c:198: neo2 = 127;                         // light up corresponding NeoPixel
	mov	r0,#_neo2
	mov	@r0,#0x7f
;	macropad_mini.c:199: NEO_update();                       // update NeoPixels NOW!
	lcall	_NEO_update
;	macropad_mini.c:99: KBD_press(KBD_KEY_DELETE);                      // press DEL key
	mov	dpl,#0xd4
	lcall	_KBD_press
;	macropad_mini.c:200: KEY2_PRESSED();                     // take proper action
	sjmp	00119$
00113$:
;	macropad_mini.c:104: KBD_release(KBD_KEY_DELETE);                        // release DEL key
	mov	dpl,#0xd4
	lcall	_KBD_release
;	macropad_mini.c:203: KEY2_RELEASED();                    // take proper action
	sjmp	00119$
00118$:
;	macropad_mini.c:206: else if(key2last) {                     // key still being pressed?
	jnb	_main_key2last_65536_526,00119$
;	macropad_mini.c:207: neo2 = 127;                           // keep NeoPixel on
	mov	r0,#_neo2
	mov	@r0,#0x7f
;	macropad_mini.c:208: KEY2_HOLD();                          // take proper action
00119$:
;	macropad_mini.c:212: if(!PIN_read(PIN_KEY3) != key3last) {   // key 3 state changed?
	mov	c,_PP15
	cpl	c
	mov  _main_sloc0_1_0,c
	jb	_main_key3last_65536_526,00228$
	cpl	c
00228$:
	jc	00126$
;	macropad_mini.c:213: key3last = !key3last;                 // update last state flag
	cpl	_main_key3last_65536_526
;	macropad_mini.c:214: if(key3last) {                        // key was pressed?
	jnb	_main_key3last_65536_526,00121$
;	macropad_mini.c:215: neo3 = 127;                         // light up corresponding NeoPixel
	mov	r0,#_neo3
	mov	@r0,#0x7f
;	macropad_mini.c:216: NEO_update();                       // update NeoPixels NOW!
	lcall	_NEO_update
;	macropad_mini.c:119: CON_press(CON_VOL_MUTE);                            // press VOLUME MUTE consumer key
	mov	dptr,#0x00e2
	lcall	_CON_press
;	macropad_mini.c:217: KEY3_PRESSED();                     // take proper action
	sjmp	00127$
00121$:
;	macropad_mini.c:124: CON_release(CON_VOL_MUTE);                          // release VOLUME MUTE consumer key
	mov	dptr,#0x00e2
	lcall	_CON_release
;	macropad_mini.c:220: KEY3_RELEASED();                    // take proper action
	sjmp	00127$
00126$:
;	macropad_mini.c:223: else if(key3last) {                     // key still being pressed?
	jnb	_main_key3last_65536_526,00127$
;	macropad_mini.c:224: neo3 = 127;                           // keep NeoPixel on
	mov	r0,#_neo3
	mov	@r0,#0x7f
;	macropad_mini.c:225: KEY3_HOLD();                          // take proper action
00127$:
;	macropad_mini.c:229: NEO_update();
	lcall	_NEO_update
;	macropad_mini.c:230: if(neo1) neo1--;                        // fade down NeoPixel
	mov	r0,#_neo1
	mov	a,@r0
	jz	00129$
	mov	r0,#_neo1
	dec	@r0
00129$:
;	macropad_mini.c:231: if(neo2) neo2--;                        // fade down NeoPixel
	mov	r0,#_neo2
	mov	a,@r0
	jz	00131$
	mov	r0,#_neo2
	dec	@r0
00131$:
;	macropad_mini.c:232: if(neo3) neo3--;                        // fade down NeoPixel
	mov	r0,#_neo3
	mov	a,@r0
	jz	00133$
	mov	r0,#_neo3
	dec	@r0
00133$:
;	macropad_mini.c:233: DLY_ms(5);                              // latch and debounce
	mov	dptr,#0x0005
	lcall	_DLY_ms
;	macropad_mini.c:234: WDT_reset();                            // reset watchdog
	mov	_WDOG_COUNT,#0x00
;	macropad_mini.c:236: }
	ljmp	00135$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
