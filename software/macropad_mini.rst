                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module macropad_mini
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _NEO_update
                                     13 	.globl _USB_ISR
                                     14 	.globl _USB_interrupt
                                     15 	.globl _CON_release
                                     16 	.globl _CON_press
                                     17 	.globl _KBD_release
                                     18 	.globl _KBD_press
                                     19 	.globl _HID_init
                                     20 	.globl _NEO_writeColor
                                     21 	.globl _NEO_sendByte
                                     22 	.globl _DLY_ms
                                     23 	.globl _PP37
                                     24 	.globl _PP36
                                     25 	.globl _PP35
                                     26 	.globl _PP34
                                     27 	.globl _PP33
                                     28 	.globl _PP32
                                     29 	.globl _PP31
                                     30 	.globl _PP30
                                     31 	.globl _PP17
                                     32 	.globl _PP16
                                     33 	.globl _PP15
                                     34 	.globl _PP14
                                     35 	.globl _PP13
                                     36 	.globl _PP12
                                     37 	.globl _PP11
                                     38 	.globl _PP10
                                     39 	.globl _UIF_BUS_RST
                                     40 	.globl _UIF_DETECT
                                     41 	.globl _UIF_TRANSFER
                                     42 	.globl _UIF_SUSPEND
                                     43 	.globl _UIF_HST_SOF
                                     44 	.globl _UIF_FIFO_OV
                                     45 	.globl _U_SIE_FREE
                                     46 	.globl _U_TOG_OK
                                     47 	.globl _U_IS_NAK
                                     48 	.globl _ADC_CHAN0
                                     49 	.globl _ADC_CHAN1
                                     50 	.globl _CMP_CHAN
                                     51 	.globl _ADC_START
                                     52 	.globl _ADC_IF
                                     53 	.globl _CMP_IF
                                     54 	.globl _CMPO
                                     55 	.globl _U1RI
                                     56 	.globl _U1TI
                                     57 	.globl _U1RB8
                                     58 	.globl _U1TB8
                                     59 	.globl _U1REN
                                     60 	.globl _U1SMOD
                                     61 	.globl _U1SM0
                                     62 	.globl _S0_R_FIFO
                                     63 	.globl _S0_T_FIFO
                                     64 	.globl _S0_FREE
                                     65 	.globl _S0_IF_BYTE
                                     66 	.globl _S0_IF_FIRST
                                     67 	.globl _S0_IF_OV
                                     68 	.globl _S0_FST_ACT
                                     69 	.globl _CP_RL2
                                     70 	.globl _C_T2
                                     71 	.globl _TR2
                                     72 	.globl _EXEN2
                                     73 	.globl _TCLK
                                     74 	.globl _RCLK
                                     75 	.globl _EXF2
                                     76 	.globl _CAP1F
                                     77 	.globl _TF2
                                     78 	.globl _RI
                                     79 	.globl _TI
                                     80 	.globl _RB8
                                     81 	.globl _TB8
                                     82 	.globl _REN
                                     83 	.globl _SM2
                                     84 	.globl _SM1
                                     85 	.globl _SM0
                                     86 	.globl _IT0
                                     87 	.globl _IE0
                                     88 	.globl _IT1
                                     89 	.globl _IE1
                                     90 	.globl _TR0
                                     91 	.globl _TF0
                                     92 	.globl _TR1
                                     93 	.globl _TF1
                                     94 	.globl _RXD
                                     95 	.globl _PWM1_
                                     96 	.globl _TXD
                                     97 	.globl _PWM2_
                                     98 	.globl _AIN3
                                     99 	.globl _VBUS1
                                    100 	.globl _INT0
                                    101 	.globl _TXD1_
                                    102 	.globl _INT1
                                    103 	.globl _T0
                                    104 	.globl _RXD1_
                                    105 	.globl _PWM2
                                    106 	.globl _T1
                                    107 	.globl _UDP
                                    108 	.globl _UDM
                                    109 	.globl _TIN0
                                    110 	.globl _CAP1
                                    111 	.globl _T2
                                    112 	.globl _AIN0
                                    113 	.globl _VBUS2
                                    114 	.globl _TIN1
                                    115 	.globl _CAP2
                                    116 	.globl _T2EX
                                    117 	.globl _RXD_
                                    118 	.globl _TXD_
                                    119 	.globl _AIN1
                                    120 	.globl _UCC1
                                    121 	.globl _TIN2
                                    122 	.globl _SCS
                                    123 	.globl _CAP1_
                                    124 	.globl _T2_
                                    125 	.globl _AIN2
                                    126 	.globl _UCC2
                                    127 	.globl _TIN3
                                    128 	.globl _PWM1
                                    129 	.globl _MOSI
                                    130 	.globl _TIN4
                                    131 	.globl _RXD1
                                    132 	.globl _MISO
                                    133 	.globl _TIN5
                                    134 	.globl _TXD1
                                    135 	.globl _SCK
                                    136 	.globl _IE_SPI0
                                    137 	.globl _IE_TKEY
                                    138 	.globl _IE_USB
                                    139 	.globl _IE_ADC
                                    140 	.globl _IE_UART1
                                    141 	.globl _IE_PWMX
                                    142 	.globl _IE_GPIO
                                    143 	.globl _IE_WDOG
                                    144 	.globl _PX0
                                    145 	.globl _PT0
                                    146 	.globl _PX1
                                    147 	.globl _PT1
                                    148 	.globl _PS
                                    149 	.globl _PT2
                                    150 	.globl _PL_FLAG
                                    151 	.globl _PH_FLAG
                                    152 	.globl _EX0
                                    153 	.globl _ET0
                                    154 	.globl _EX1
                                    155 	.globl _ET1
                                    156 	.globl _ES
                                    157 	.globl _ET2
                                    158 	.globl _E_DIS
                                    159 	.globl _EA
                                    160 	.globl _P
                                    161 	.globl _F1
                                    162 	.globl _OV
                                    163 	.globl _RS0
                                    164 	.globl _RS1
                                    165 	.globl _F0
                                    166 	.globl _AC
                                    167 	.globl _CY
                                    168 	.globl _UEP1_DMA_H
                                    169 	.globl _UEP1_DMA_L
                                    170 	.globl _UEP1_DMA
                                    171 	.globl _UEP0_DMA_H
                                    172 	.globl _UEP0_DMA_L
                                    173 	.globl _UEP0_DMA
                                    174 	.globl _UEP2_3_MOD
                                    175 	.globl _UEP4_1_MOD
                                    176 	.globl _UEP3_DMA_H
                                    177 	.globl _UEP3_DMA_L
                                    178 	.globl _UEP3_DMA
                                    179 	.globl _UEP2_DMA_H
                                    180 	.globl _UEP2_DMA_L
                                    181 	.globl _UEP2_DMA
                                    182 	.globl _USB_DEV_AD
                                    183 	.globl _USB_CTRL
                                    184 	.globl _USB_INT_EN
                                    185 	.globl _UEP4_T_LEN
                                    186 	.globl _UEP4_CTRL
                                    187 	.globl _UEP0_T_LEN
                                    188 	.globl _UEP0_CTRL
                                    189 	.globl _USB_RX_LEN
                                    190 	.globl _USB_MIS_ST
                                    191 	.globl _USB_INT_ST
                                    192 	.globl _USB_INT_FG
                                    193 	.globl _UEP3_T_LEN
                                    194 	.globl _UEP3_CTRL
                                    195 	.globl _UEP2_T_LEN
                                    196 	.globl _UEP2_CTRL
                                    197 	.globl _UEP1_T_LEN
                                    198 	.globl _UEP1_CTRL
                                    199 	.globl _UDEV_CTRL
                                    200 	.globl _USB_C_CTRL
                                    201 	.globl _TKEY_DATH
                                    202 	.globl _TKEY_DATL
                                    203 	.globl _TKEY_DAT
                                    204 	.globl _TKEY_CTRL
                                    205 	.globl _ADC_DATA
                                    206 	.globl _ADC_CFG
                                    207 	.globl _ADC_CTRL
                                    208 	.globl _SBAUD1
                                    209 	.globl _SBUF1
                                    210 	.globl _SCON1
                                    211 	.globl _SPI0_SETUP
                                    212 	.globl _SPI0_CK_SE
                                    213 	.globl _SPI0_CTRL
                                    214 	.globl _SPI0_DATA
                                    215 	.globl _SPI0_STAT
                                    216 	.globl _PWM_CK_SE
                                    217 	.globl _PWM_CTRL
                                    218 	.globl _PWM_DATA1
                                    219 	.globl _PWM_DATA2
                                    220 	.globl _T2CAP1H
                                    221 	.globl _T2CAP1L
                                    222 	.globl _T2CAP1
                                    223 	.globl _TH2
                                    224 	.globl _TL2
                                    225 	.globl _T2COUNT
                                    226 	.globl _RCAP2H
                                    227 	.globl _RCAP2L
                                    228 	.globl _RCAP2
                                    229 	.globl _T2MOD
                                    230 	.globl _T2CON
                                    231 	.globl _SBUF
                                    232 	.globl _SCON
                                    233 	.globl _TH1
                                    234 	.globl _TH0
                                    235 	.globl _TL1
                                    236 	.globl _TL0
                                    237 	.globl _TMOD
                                    238 	.globl _TCON
                                    239 	.globl _XBUS_AUX
                                    240 	.globl _PIN_FUNC
                                    241 	.globl _P3_DIR_PU
                                    242 	.globl _P3_MOD_OC
                                    243 	.globl _P3
                                    244 	.globl _P2
                                    245 	.globl _P1_DIR_PU
                                    246 	.globl _P1_MOD_OC
                                    247 	.globl _P1
                                    248 	.globl _ROM_CTRL
                                    249 	.globl _ROM_DATA_H
                                    250 	.globl _ROM_DATA_L
                                    251 	.globl _ROM_DATA
                                    252 	.globl _ROM_ADDR_H
                                    253 	.globl _ROM_ADDR_L
                                    254 	.globl _ROM_ADDR
                                    255 	.globl _GPIO_IE
                                    256 	.globl _IP_EX
                                    257 	.globl _IE_EX
                                    258 	.globl _IP
                                    259 	.globl _IE
                                    260 	.globl _WDOG_COUNT
                                    261 	.globl _RESET_KEEP
                                    262 	.globl _WAKE_CTRL
                                    263 	.globl _CLOCK_CFG
                                    264 	.globl _PCON
                                    265 	.globl _GLOBAL_CFG
                                    266 	.globl _SAFE_MOD
                                    267 	.globl _DPH
                                    268 	.globl _DPL
                                    269 	.globl _SP
                                    270 	.globl _B
                                    271 	.globl _ACC
                                    272 	.globl _PSW
                                    273 	.globl _neo3
                                    274 	.globl _neo2
                                    275 	.globl _neo1
                                    276 ;--------------------------------------------------------
                                    277 ; special function registers
                                    278 ;--------------------------------------------------------
                                    279 	.area RSEG    (ABS,DATA)
      000000                        280 	.org 0x0000
                           0000D0   281 _PSW	=	0x00d0
                           0000E0   282 _ACC	=	0x00e0
                           0000F0   283 _B	=	0x00f0
                           000081   284 _SP	=	0x0081
                           000082   285 _DPL	=	0x0082
                           000083   286 _DPH	=	0x0083
                           0000A1   287 _SAFE_MOD	=	0x00a1
                           0000B1   288 _GLOBAL_CFG	=	0x00b1
                           000087   289 _PCON	=	0x0087
                           0000B9   290 _CLOCK_CFG	=	0x00b9
                           0000A9   291 _WAKE_CTRL	=	0x00a9
                           0000FE   292 _RESET_KEEP	=	0x00fe
                           0000FF   293 _WDOG_COUNT	=	0x00ff
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           0000E8   296 _IE_EX	=	0x00e8
                           0000E9   297 _IP_EX	=	0x00e9
                           0000C7   298 _GPIO_IE	=	0x00c7
                           008584   299 _ROM_ADDR	=	0x8584
                           000084   300 _ROM_ADDR_L	=	0x0084
                           000085   301 _ROM_ADDR_H	=	0x0085
                           008F8E   302 _ROM_DATA	=	0x8f8e
                           00008E   303 _ROM_DATA_L	=	0x008e
                           00008F   304 _ROM_DATA_H	=	0x008f
                           000086   305 _ROM_CTRL	=	0x0086
                           000090   306 _P1	=	0x0090
                           000092   307 _P1_MOD_OC	=	0x0092
                           000093   308 _P1_DIR_PU	=	0x0093
                           0000A0   309 _P2	=	0x00a0
                           0000B0   310 _P3	=	0x00b0
                           000096   311 _P3_MOD_OC	=	0x0096
                           000097   312 _P3_DIR_PU	=	0x0097
                           0000C6   313 _PIN_FUNC	=	0x00c6
                           0000A2   314 _XBUS_AUX	=	0x00a2
                           000088   315 _TCON	=	0x0088
                           000089   316 _TMOD	=	0x0089
                           00008A   317 _TL0	=	0x008a
                           00008B   318 _TL1	=	0x008b
                           00008C   319 _TH0	=	0x008c
                           00008D   320 _TH1	=	0x008d
                           000098   321 _SCON	=	0x0098
                           000099   322 _SBUF	=	0x0099
                           0000C8   323 _T2CON	=	0x00c8
                           0000C9   324 _T2MOD	=	0x00c9
                           00CBCA   325 _RCAP2	=	0xcbca
                           0000CA   326 _RCAP2L	=	0x00ca
                           0000CB   327 _RCAP2H	=	0x00cb
                           00CDCC   328 _T2COUNT	=	0xcdcc
                           0000CC   329 _TL2	=	0x00cc
                           0000CD   330 _TH2	=	0x00cd
                           00CFCE   331 _T2CAP1	=	0xcfce
                           0000CE   332 _T2CAP1L	=	0x00ce
                           0000CF   333 _T2CAP1H	=	0x00cf
                           00009B   334 _PWM_DATA2	=	0x009b
                           00009C   335 _PWM_DATA1	=	0x009c
                           00009D   336 _PWM_CTRL	=	0x009d
                           00009E   337 _PWM_CK_SE	=	0x009e
                           0000F8   338 _SPI0_STAT	=	0x00f8
                           0000F9   339 _SPI0_DATA	=	0x00f9
                           0000FA   340 _SPI0_CTRL	=	0x00fa
                           0000FB   341 _SPI0_CK_SE	=	0x00fb
                           0000FC   342 _SPI0_SETUP	=	0x00fc
                           0000C0   343 _SCON1	=	0x00c0
                           0000C1   344 _SBUF1	=	0x00c1
                           0000C2   345 _SBAUD1	=	0x00c2
                           000080   346 _ADC_CTRL	=	0x0080
                           00009A   347 _ADC_CFG	=	0x009a
                           00009F   348 _ADC_DATA	=	0x009f
                           0000C3   349 _TKEY_CTRL	=	0x00c3
                           00C5C4   350 _TKEY_DAT	=	0xc5c4
                           0000C4   351 _TKEY_DATL	=	0x00c4
                           0000C5   352 _TKEY_DATH	=	0x00c5
                           000091   353 _USB_C_CTRL	=	0x0091
                           0000D1   354 _UDEV_CTRL	=	0x00d1
                           0000D2   355 _UEP1_CTRL	=	0x00d2
                           0000D3   356 _UEP1_T_LEN	=	0x00d3
                           0000D4   357 _UEP2_CTRL	=	0x00d4
                           0000D5   358 _UEP2_T_LEN	=	0x00d5
                           0000D6   359 _UEP3_CTRL	=	0x00d6
                           0000D7   360 _UEP3_T_LEN	=	0x00d7
                           0000D8   361 _USB_INT_FG	=	0x00d8
                           0000D9   362 _USB_INT_ST	=	0x00d9
                           0000DA   363 _USB_MIS_ST	=	0x00da
                           0000DB   364 _USB_RX_LEN	=	0x00db
                           0000DC   365 _UEP0_CTRL	=	0x00dc
                           0000DD   366 _UEP0_T_LEN	=	0x00dd
                           0000DE   367 _UEP4_CTRL	=	0x00de
                           0000DF   368 _UEP4_T_LEN	=	0x00df
                           0000E1   369 _USB_INT_EN	=	0x00e1
                           0000E2   370 _USB_CTRL	=	0x00e2
                           0000E3   371 _USB_DEV_AD	=	0x00e3
                           00E5E4   372 _UEP2_DMA	=	0xe5e4
                           0000E4   373 _UEP2_DMA_L	=	0x00e4
                           0000E5   374 _UEP2_DMA_H	=	0x00e5
                           00E7E6   375 _UEP3_DMA	=	0xe7e6
                           0000E6   376 _UEP3_DMA_L	=	0x00e6
                           0000E7   377 _UEP3_DMA_H	=	0x00e7
                           0000EA   378 _UEP4_1_MOD	=	0x00ea
                           0000EB   379 _UEP2_3_MOD	=	0x00eb
                           00EDEC   380 _UEP0_DMA	=	0xedec
                           0000EC   381 _UEP0_DMA_L	=	0x00ec
                           0000ED   382 _UEP0_DMA_H	=	0x00ed
                           00EFEE   383 _UEP1_DMA	=	0xefee
                           0000EE   384 _UEP1_DMA_L	=	0x00ee
                           0000EF   385 _UEP1_DMA_H	=	0x00ef
                                    386 ;--------------------------------------------------------
                                    387 ; special function bits
                                    388 ;--------------------------------------------------------
                                    389 	.area RSEG    (ABS,DATA)
      000000                        390 	.org 0x0000
                           0000D7   391 _CY	=	0x00d7
                           0000D6   392 _AC	=	0x00d6
                           0000D5   393 _F0	=	0x00d5
                           0000D4   394 _RS1	=	0x00d4
                           0000D3   395 _RS0	=	0x00d3
                           0000D2   396 _OV	=	0x00d2
                           0000D1   397 _F1	=	0x00d1
                           0000D0   398 _P	=	0x00d0
                           0000AF   399 _EA	=	0x00af
                           0000AE   400 _E_DIS	=	0x00ae
                           0000AD   401 _ET2	=	0x00ad
                           0000AC   402 _ES	=	0x00ac
                           0000AB   403 _ET1	=	0x00ab
                           0000AA   404 _EX1	=	0x00aa
                           0000A9   405 _ET0	=	0x00a9
                           0000A8   406 _EX0	=	0x00a8
                           0000BF   407 _PH_FLAG	=	0x00bf
                           0000BE   408 _PL_FLAG	=	0x00be
                           0000BD   409 _PT2	=	0x00bd
                           0000BC   410 _PS	=	0x00bc
                           0000BB   411 _PT1	=	0x00bb
                           0000BA   412 _PX1	=	0x00ba
                           0000B9   413 _PT0	=	0x00b9
                           0000B8   414 _PX0	=	0x00b8
                           0000EF   415 _IE_WDOG	=	0x00ef
                           0000EE   416 _IE_GPIO	=	0x00ee
                           0000ED   417 _IE_PWMX	=	0x00ed
                           0000EC   418 _IE_UART1	=	0x00ec
                           0000EB   419 _IE_ADC	=	0x00eb
                           0000EA   420 _IE_USB	=	0x00ea
                           0000E9   421 _IE_TKEY	=	0x00e9
                           0000E8   422 _IE_SPI0	=	0x00e8
                           000097   423 _SCK	=	0x0097
                           000097   424 _TXD1	=	0x0097
                           000097   425 _TIN5	=	0x0097
                           000096   426 _MISO	=	0x0096
                           000096   427 _RXD1	=	0x0096
                           000096   428 _TIN4	=	0x0096
                           000095   429 _MOSI	=	0x0095
                           000095   430 _PWM1	=	0x0095
                           000095   431 _TIN3	=	0x0095
                           000095   432 _UCC2	=	0x0095
                           000095   433 _AIN2	=	0x0095
                           000094   434 _T2_	=	0x0094
                           000094   435 _CAP1_	=	0x0094
                           000094   436 _SCS	=	0x0094
                           000094   437 _TIN2	=	0x0094
                           000094   438 _UCC1	=	0x0094
                           000094   439 _AIN1	=	0x0094
                           000093   440 _TXD_	=	0x0093
                           000092   441 _RXD_	=	0x0092
                           000091   442 _T2EX	=	0x0091
                           000091   443 _CAP2	=	0x0091
                           000091   444 _TIN1	=	0x0091
                           000091   445 _VBUS2	=	0x0091
                           000091   446 _AIN0	=	0x0091
                           000090   447 _T2	=	0x0090
                           000090   448 _CAP1	=	0x0090
                           000090   449 _TIN0	=	0x0090
                           0000B7   450 _UDM	=	0x00b7
                           0000B6   451 _UDP	=	0x00b6
                           0000B5   452 _T1	=	0x00b5
                           0000B4   453 _PWM2	=	0x00b4
                           0000B4   454 _RXD1_	=	0x00b4
                           0000B4   455 _T0	=	0x00b4
                           0000B3   456 _INT1	=	0x00b3
                           0000B2   457 _TXD1_	=	0x00b2
                           0000B2   458 _INT0	=	0x00b2
                           0000B2   459 _VBUS1	=	0x00b2
                           0000B2   460 _AIN3	=	0x00b2
                           0000B1   461 _PWM2_	=	0x00b1
                           0000B1   462 _TXD	=	0x00b1
                           0000B0   463 _PWM1_	=	0x00b0
                           0000B0   464 _RXD	=	0x00b0
                           00008F   465 _TF1	=	0x008f
                           00008E   466 _TR1	=	0x008e
                           00008D   467 _TF0	=	0x008d
                           00008C   468 _TR0	=	0x008c
                           00008B   469 _IE1	=	0x008b
                           00008A   470 _IT1	=	0x008a
                           000089   471 _IE0	=	0x0089
                           000088   472 _IT0	=	0x0088
                           00009F   473 _SM0	=	0x009f
                           00009E   474 _SM1	=	0x009e
                           00009D   475 _SM2	=	0x009d
                           00009C   476 _REN	=	0x009c
                           00009B   477 _TB8	=	0x009b
                           00009A   478 _RB8	=	0x009a
                           000099   479 _TI	=	0x0099
                           000098   480 _RI	=	0x0098
                           0000CF   481 _TF2	=	0x00cf
                           0000CF   482 _CAP1F	=	0x00cf
                           0000CE   483 _EXF2	=	0x00ce
                           0000CD   484 _RCLK	=	0x00cd
                           0000CC   485 _TCLK	=	0x00cc
                           0000CB   486 _EXEN2	=	0x00cb
                           0000CA   487 _TR2	=	0x00ca
                           0000C9   488 _C_T2	=	0x00c9
                           0000C8   489 _CP_RL2	=	0x00c8
                           0000FF   490 _S0_FST_ACT	=	0x00ff
                           0000FE   491 _S0_IF_OV	=	0x00fe
                           0000FD   492 _S0_IF_FIRST	=	0x00fd
                           0000FC   493 _S0_IF_BYTE	=	0x00fc
                           0000FB   494 _S0_FREE	=	0x00fb
                           0000FA   495 _S0_T_FIFO	=	0x00fa
                           0000F8   496 _S0_R_FIFO	=	0x00f8
                           0000C7   497 _U1SM0	=	0x00c7
                           0000C5   498 _U1SMOD	=	0x00c5
                           0000C4   499 _U1REN	=	0x00c4
                           0000C3   500 _U1TB8	=	0x00c3
                           0000C2   501 _U1RB8	=	0x00c2
                           0000C1   502 _U1TI	=	0x00c1
                           0000C0   503 _U1RI	=	0x00c0
                           000087   504 _CMPO	=	0x0087
                           000086   505 _CMP_IF	=	0x0086
                           000085   506 _ADC_IF	=	0x0085
                           000084   507 _ADC_START	=	0x0084
                           000083   508 _CMP_CHAN	=	0x0083
                           000081   509 _ADC_CHAN1	=	0x0081
                           000080   510 _ADC_CHAN0	=	0x0080
                           0000DF   511 _U_IS_NAK	=	0x00df
                           0000DE   512 _U_TOG_OK	=	0x00de
                           0000DD   513 _U_SIE_FREE	=	0x00dd
                           0000DC   514 _UIF_FIFO_OV	=	0x00dc
                           0000DB   515 _UIF_HST_SOF	=	0x00db
                           0000DA   516 _UIF_SUSPEND	=	0x00da
                           0000D9   517 _UIF_TRANSFER	=	0x00d9
                           0000D8   518 _UIF_DETECT	=	0x00d8
                           0000D8   519 _UIF_BUS_RST	=	0x00d8
                           000090   520 _PP10	=	0x0090
                           000091   521 _PP11	=	0x0091
                           000092   522 _PP12	=	0x0092
                           000093   523 _PP13	=	0x0093
                           000094   524 _PP14	=	0x0094
                           000095   525 _PP15	=	0x0095
                           000096   526 _PP16	=	0x0096
                           000097   527 _PP17	=	0x0097
                           0000B0   528 _PP30	=	0x00b0
                           0000B1   529 _PP31	=	0x00b1
                           0000B2   530 _PP32	=	0x00b2
                           0000B3   531 _PP33	=	0x00b3
                           0000B4   532 _PP34	=	0x00b4
                           0000B5   533 _PP35	=	0x00b5
                           0000B6   534 _PP36	=	0x00b6
                           0000B7   535 _PP37	=	0x00b7
                                    536 ;--------------------------------------------------------
                                    537 ; overlayable register banks
                                    538 ;--------------------------------------------------------
                                    539 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        540 	.ds 8
                                    541 ;--------------------------------------------------------
                                    542 ; overlayable bit register bank
                                    543 ;--------------------------------------------------------
                                    544 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        545 bits:
      000021                        546 	.ds 1
                           008000   547 	b0 = bits[0]
                           008100   548 	b1 = bits[1]
                           008200   549 	b2 = bits[2]
                           008300   550 	b3 = bits[3]
                           008400   551 	b4 = bits[4]
                           008500   552 	b5 = bits[5]
                           008600   553 	b6 = bits[6]
                           008700   554 	b7 = bits[7]
                                    555 ;--------------------------------------------------------
                                    556 ; internal ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area DSEG    (DATA)
                                    559 ;--------------------------------------------------------
                                    560 ; overlayable items in internal ram
                                    561 ;--------------------------------------------------------
                                    562 ;--------------------------------------------------------
                                    563 ; Stack segment in internal ram
                                    564 ;--------------------------------------------------------
                                    565 	.area SSEG
      000022                        566 __start__stack:
      000022                        567 	.ds	1
                                    568 
                                    569 ;--------------------------------------------------------
                                    570 ; indirectly addressable internal ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area ISEG    (DATA)
      000014                        573 _neo1::
      000014                        574 	.ds 1
      000015                        575 _neo2::
      000015                        576 	.ds 1
      000016                        577 _neo3::
      000016                        578 	.ds 1
                                    579 ;--------------------------------------------------------
                                    580 ; absolute internal ram data
                                    581 ;--------------------------------------------------------
                                    582 	.area IABS    (ABS,DATA)
                                    583 	.area IABS    (ABS,DATA)
                                    584 ;--------------------------------------------------------
                                    585 ; bit data
                                    586 ;--------------------------------------------------------
                                    587 	.area BSEG    (BIT)
      000000                        588 _main_key1last_65536_526:
      000000                        589 	.ds 1
      000001                        590 _main_key2last_65536_526:
      000001                        591 	.ds 1
      000002                        592 _main_key3last_65536_526:
      000002                        593 	.ds 1
      000003                        594 _main_sloc0_1_0:
      000003                        595 	.ds 1
                                    596 ;--------------------------------------------------------
                                    597 ; paged external ram data
                                    598 ;--------------------------------------------------------
                                    599 	.area PSEG    (PAG,XDATA)
                                    600 ;--------------------------------------------------------
                                    601 ; uninitialized external ram data
                                    602 ;--------------------------------------------------------
                                    603 	.area XSEG    (XDATA)
                                    604 ;--------------------------------------------------------
                                    605 ; absolute external ram data
                                    606 ;--------------------------------------------------------
                                    607 	.area XABS    (ABS,XDATA)
                                    608 ;--------------------------------------------------------
                                    609 ; initialized external ram data
                                    610 ;--------------------------------------------------------
                                    611 	.area HOME    (CODE)
                                    612 	.area GSINIT0 (CODE)
                                    613 	.area GSINIT1 (CODE)
                                    614 	.area GSINIT2 (CODE)
                                    615 	.area GSINIT3 (CODE)
                                    616 	.area GSINIT4 (CODE)
                                    617 	.area GSINIT5 (CODE)
                                    618 	.area GSINIT  (CODE)
                                    619 	.area GSFINAL (CODE)
                                    620 	.area CSEG    (CODE)
                                    621 ;--------------------------------------------------------
                                    622 ; interrupt vector
                                    623 ;--------------------------------------------------------
                                    624 	.area HOME    (CODE)
      000000                        625 __interrupt_vect:
      000000 02 00 49         [24]  626 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  627 	reti
      000004                        628 	.ds	7
      00000B 32               [24]  629 	reti
      00000C                        630 	.ds	7
      000013 32               [24]  631 	reti
      000014                        632 	.ds	7
      00001B 32               [24]  633 	reti
      00001C                        634 	.ds	7
      000023 32               [24]  635 	reti
      000024                        636 	.ds	7
      00002B 32               [24]  637 	reti
      00002C                        638 	.ds	7
      000033 32               [24]  639 	reti
      000034                        640 	.ds	7
      00003B 32               [24]  641 	reti
      00003C                        642 	.ds	7
      000043 02 00 BB         [24]  643 	ljmp	_USB_ISR
                                    644 ;--------------------------------------------------------
                                    645 ; global & static initialisations
                                    646 ;--------------------------------------------------------
                                    647 	.area HOME    (CODE)
                                    648 	.area GSINIT  (CODE)
                                    649 	.area GSFINAL (CODE)
                                    650 	.area GSINIT  (CODE)
                                    651 	.globl __sdcc_gsinit_startup
                                    652 	.globl __sdcc_program_startup
                                    653 	.globl __start__stack
                                    654 	.globl __mcs51_genRAMCLEAR
                                    655 ;	macropad_mini.c:137: __idata uint8_t neo1 = 127;                 // brightness of NeoPixel 1
      00005C 78 14            [12]  656 	mov	r0,#_neo1
      00005E 76 7F            [12]  657 	mov	@r0,#0x7f
                                    658 ;	macropad_mini.c:138: __idata uint8_t neo2 = 127;                 // brightness of NeoPixel 2
      000060 78 15            [12]  659 	mov	r0,#_neo2
      000062 76 7F            [12]  660 	mov	@r0,#0x7f
                                    661 ;	macropad_mini.c:139: __idata uint8_t neo3 = 127;                 // brightness of NeoPixel 3
      000064 78 16            [12]  662 	mov	r0,#_neo3
      000066 76 7F            [12]  663 	mov	@r0,#0x7f
                                    664 	.area GSFINAL (CODE)
      0000B8 02 00 46         [24]  665 	ljmp	__sdcc_program_startup
                                    666 ;--------------------------------------------------------
                                    667 ; Home
                                    668 ;--------------------------------------------------------
                                    669 	.area HOME    (CODE)
                                    670 	.area HOME    (CODE)
      000046                        671 __sdcc_program_startup:
      000046 02 01 26         [24]  672 	ljmp	_main
                                    673 ;	return from main will return to caller
                                    674 ;--------------------------------------------------------
                                    675 ; code
                                    676 ;--------------------------------------------------------
                                    677 	.area CSEG    (CODE)
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'USB_ISR'
                                    680 ;------------------------------------------------------------
                                    681 ;	macropad_mini.c:57: void USB_ISR(void) __interrupt(INT_NO_USB) {
                                    682 ;	-----------------------------------------
                                    683 ;	 function USB_ISR
                                    684 ;	-----------------------------------------
      0000BB                        685 _USB_ISR:
                           000007   686 	ar7 = 0x07
                           000006   687 	ar6 = 0x06
                           000005   688 	ar5 = 0x05
                           000004   689 	ar4 = 0x04
                           000003   690 	ar3 = 0x03
                           000002   691 	ar2 = 0x02
                           000001   692 	ar1 = 0x01
                           000000   693 	ar0 = 0x00
      0000BB C0 21            [24]  694 	push	bits
      0000BD C0 E0            [24]  695 	push	acc
      0000BF C0 F0            [24]  696 	push	b
      0000C1 C0 82            [24]  697 	push	dpl
      0000C3 C0 83            [24]  698 	push	dph
      0000C5 C0 07            [24]  699 	push	(0+7)
      0000C7 C0 06            [24]  700 	push	(0+6)
      0000C9 C0 05            [24]  701 	push	(0+5)
      0000CB C0 04            [24]  702 	push	(0+4)
      0000CD C0 03            [24]  703 	push	(0+3)
      0000CF C0 02            [24]  704 	push	(0+2)
      0000D1 C0 01            [24]  705 	push	(0+1)
      0000D3 C0 00            [24]  706 	push	(0+0)
      0000D5 C0 D0            [24]  707 	push	psw
      0000D7 75 D0 00         [24]  708 	mov	psw,#0x00
                                    709 ;	macropad_mini.c:58: USB_interrupt();
      0000DA 12 09 5C         [24]  710 	lcall	_USB_interrupt
                                    711 ;	macropad_mini.c:59: }
      0000DD D0 D0            [24]  712 	pop	psw
      0000DF D0 00            [24]  713 	pop	(0+0)
      0000E1 D0 01            [24]  714 	pop	(0+1)
      0000E3 D0 02            [24]  715 	pop	(0+2)
      0000E5 D0 03            [24]  716 	pop	(0+3)
      0000E7 D0 04            [24]  717 	pop	(0+4)
      0000E9 D0 05            [24]  718 	pop	(0+5)
      0000EB D0 06            [24]  719 	pop	(0+6)
      0000ED D0 07            [24]  720 	pop	(0+7)
      0000EF D0 83            [24]  721 	pop	dph
      0000F1 D0 82            [24]  722 	pop	dpl
      0000F3 D0 F0            [24]  723 	pop	b
      0000F5 D0 E0            [24]  724 	pop	acc
      0000F7 D0 21            [24]  725 	pop	bits
      0000F9 32               [24]  726 	reti
                                    727 ;------------------------------------------------------------
                                    728 ;Allocation info for local variables in function 'NEO_update'
                                    729 ;------------------------------------------------------------
                                    730 ;	macropad_mini.c:142: void NEO_update(void) {
                                    731 ;	-----------------------------------------
                                    732 ;	 function NEO_update
                                    733 ;	-----------------------------------------
      0000FA                        734 _NEO_update:
                                    735 ;	macropad_mini.c:143: EA = 0;                                   // disable interrupts
                                    736 ;	assignBit
      0000FA C2 AF            [12]  737 	clr	_EA
                                    738 ;	macropad_mini.c:144: NEO_writeColor(neo1, 0, 0);               // NeoPixel 1 lights up red
      0000FC 75 0A 00         [24]  739 	mov	_NEO_writeColor_PARM_2,#0x00
      0000FF 75 0B 00         [24]  740 	mov	_NEO_writeColor_PARM_3,#0x00
      000102 78 14            [12]  741 	mov	r0,#_neo1
      000104 86 82            [24]  742 	mov	dpl,@r0
      000106 12 04 DD         [24]  743 	lcall	_NEO_writeColor
                                    744 ;	macropad_mini.c:145: NEO_writeColor(0, neo2, 0);               // NeoPixel 2 lights up green
      000109 78 15            [12]  745 	mov	r0,#_neo2
      00010B 86 0A            [24]  746 	mov	_NEO_writeColor_PARM_2,@r0
      00010D 75 0B 00         [24]  747 	mov	_NEO_writeColor_PARM_3,#0x00
      000110 75 82 00         [24]  748 	mov	dpl,#0x00
      000113 12 04 DD         [24]  749 	lcall	_NEO_writeColor
                                    750 ;	macropad_mini.c:146: NEO_writeColor(0, 0, neo3);               // NeoPixel 3 lights up blue
      000116 75 0A 00         [24]  751 	mov	_NEO_writeColor_PARM_2,#0x00
      000119 78 16            [12]  752 	mov	r0,#_neo3
      00011B 86 0B            [24]  753 	mov	_NEO_writeColor_PARM_3,@r0
      00011D 75 82 00         [24]  754 	mov	dpl,#0x00
      000120 12 04 DD         [24]  755 	lcall	_NEO_writeColor
                                    756 ;	macropad_mini.c:147: EA = 1;                                   // enable interrupts
                                    757 ;	assignBit
      000123 D2 AF            [12]  758 	setb	_EA
                                    759 ;	macropad_mini.c:148: }
      000125 22               [24]  760 	ret
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'main'
                                    763 ;------------------------------------------------------------
                                    764 ;i                         Allocated to registers r7 
                                    765 ;------------------------------------------------------------
                                    766 ;	macropad_mini.c:153: void main(void) {
                                    767 ;	-----------------------------------------
                                    768 ;	 function main
                                    769 ;	-----------------------------------------
      000126                        770 _main:
                                    771 ;	macropad_mini.c:155: __bit key1last = 0;                       // last state of key 1
                                    772 ;	assignBit
      000126 C2 00            [12]  773 	clr	_main_key1last_65536_526
                                    774 ;	macropad_mini.c:156: __bit key2last = 0;                       // last state of key 2
                                    775 ;	assignBit
      000128 C2 01            [12]  776 	clr	_main_key2last_65536_526
                                    777 ;	macropad_mini.c:157: __bit key3last = 0;                       // last state of key 3
                                    778 ;	assignBit
      00012A C2 02            [12]  779 	clr	_main_key3last_65536_526
                                    780 ;	macropad_mini.c:161: NEO_init();                               // init NeoPixels
                                    781 ;	assignBit
      00012C C2 94            [12]  782 	clr	_PP14
      00012E 53 92 EF         [24]  783 	anl	_P1_MOD_OC,#0xef
      000131 43 93 10         [24]  784 	orl	_P1_DIR_PU,#0x10
                                    785 ;	src/system.h:71: SAFE_MOD = 0x55;
      000134 75 A1 55         [24]  786 	mov	_SAFE_MOD,#0x55
                                    787 ;	src/system.h:72: SAFE_MOD = 0xAA;                              // enter safe mode
      000137 75 A1 AA         [24]  788 	mov	_SAFE_MOD,#0xaa
                                    789 ;	src/system.h:80: __asm__("anl _CLOCK_CFG, #0b11111000");
      00013A 53 B9 F8         [24]  790 	anl	_CLOCK_CFG, #0b11111000
                                    791 ;	src/system.h:81: __asm__("orl _CLOCK_CFG, #0b00000101");     // 16MHz	
      00013D 43 B9 05         [24]  792 	orl	_CLOCK_CFG, #0b00000101
                                    793 ;	src/system.h:100: SAFE_MOD = 0x00;                              // terminate safe mode
      000140 75 A1 00         [24]  794 	mov	_SAFE_MOD,#0x00
                                    795 ;	macropad_mini.c:163: DLY_ms(10);                               // wait for clock to settle
      000143 90 00 0A         [24]  796 	mov	dptr,#0x000a
      000146 12 05 6D         [24]  797 	lcall	_DLY_ms
                                    798 ;	macropad_mini.c:166: if(!PIN_read(PIN_KEY1)) {                 // key 1 pressed?
      000149 20 97 19         [24]  799 	jb	_PP17,00103$
                                    800 ;	macropad_mini.c:167: for(i=9; i; i--) NEO_sendByte(127);     // light up all pixels
      00014C 7F 09            [12]  801 	mov	r7,#0x09
      00014E                        802 00149$:
      00014E 75 82 7F         [24]  803 	mov	dpl,#0x7f
      000151 C0 07            [24]  804 	push	ar7
      000153 12 04 C7         [24]  805 	lcall	_NEO_sendByte
      000156 D0 07            [24]  806 	pop	ar7
      000158 DF F4            [24]  807 	djnz	r7,00149$
                                    808 ;	src/system.h:161: USB_CTRL = 0;
      00015A 75 E2 00         [24]  809 	mov	_USB_CTRL,#0x00
                                    810 ;	src/system.h:162: EA       = 0;
                                    811 ;	assignBit
      00015D C2 AF            [12]  812 	clr	_EA
                                    813 ;	src/system.h:163: TMOD     = 0;
      00015F 75 89 00         [24]  814 	mov	_TMOD,#0x00
                                    815 ;	src/system.h:166: __endasm;
      000162 12 38 00         [24]  816 	lcall	#0x3800
                                    817 ;	macropad_mini.c:168: BOOT_now();                             // enter bootloader
      000165                        818 00103$:
                                    819 ;	macropad_mini.c:172: KBD_init();                               // init USB HID keyboard
      000165 12 05 95         [24]  820 	lcall	_HID_init
                                    821 ;	src/system.h:127: WDOG_COUNT  = 0;
      000168 75 FF 00         [24]  822 	mov	_WDOG_COUNT,#0x00
                                    823 ;	src/system.h:128: SAFE_MOD    = 0x55;
      00016B 75 A1 55         [24]  824 	mov	_SAFE_MOD,#0x55
                                    825 ;	src/system.h:129: SAFE_MOD    = 0xAA;
      00016E 75 A1 AA         [24]  826 	mov	_SAFE_MOD,#0xaa
                                    827 ;	src/system.h:130: GLOBAL_CFG |= bWDOG_EN;
      000171 43 B1 01         [24]  828 	orl	_GLOBAL_CFG,#0x01
                                    829 ;	src/system.h:131: SAFE_MOD    = 0x00;
      000174 75 A1 00         [24]  830 	mov	_SAFE_MOD,#0x00
                                    831 ;	macropad_mini.c:176: while(1) {
      000177                        832 00135$:
                                    833 ;	macropad_mini.c:178: if(!PIN_read(PIN_KEY1) != key1last) {   // key 1 state changed?
      000177 A2 97            [12]  834 	mov	c,_PP17
      000179 B3               [12]  835 	cpl	c
      00017A 92 03            [24]  836 	mov  _main_sloc0_1_0,c
      00017C 20 00 01         [24]  837 	jb	_main_key1last_65536_526,00220$
      00017F B3               [12]  838 	cpl	c
      000180                        839 00220$:
      000180 40 1C            [24]  840 	jc	00110$
                                    841 ;	macropad_mini.c:179: key1last = !key1last;                 // update last state flag
      000182 B2 00            [12]  842 	cpl	_main_key1last_65536_526
                                    843 ;	macropad_mini.c:180: if(key1last) {                        // key was pressed?
      000184 30 00 0F         [24]  844 	jnb	_main_key1last_65536_526,00105$
                                    845 ;	macropad_mini.c:181: neo1 = 127;                         // light up corresponding NeoPixel
      000187 78 14            [12]  846 	mov	r0,#_neo1
      000189 76 7F            [12]  847 	mov	@r0,#0x7f
                                    848 ;	macropad_mini.c:182: NEO_update();                       // update NeoPixels NOW!
      00018B 12 00 FA         [24]  849 	lcall	_NEO_update
                                    850 ;	macropad_mini.c:75: KBD_press(KBD_KEY_HOME);     
      00018E 75 82 D2         [24]  851 	mov	dpl,#0xd2
      000191 12 02 28         [24]  852 	lcall	_KBD_press
                                    853 ;	macropad_mini.c:183: KEY1_PRESSED();                     // take proper action
      000194 80 0F            [24]  854 	sjmp	00111$
      000196                        855 00105$:
                                    856 ;	macropad_mini.c:84: KBD_release(KBD_KEY_HOME);                                      
      000196 75 82 D2         [24]  857 	mov	dpl,#0xd2
      000199 12 02 B6         [24]  858 	lcall	_KBD_release
                                    859 ;	macropad_mini.c:186: KEY1_RELEASED();                    // take proper action
      00019C 80 07            [24]  860 	sjmp	00111$
      00019E                        861 00110$:
                                    862 ;	macropad_mini.c:189: else if(key1last) {                     // key still being pressed?
      00019E 30 00 04         [24]  863 	jnb	_main_key1last_65536_526,00111$
                                    864 ;	macropad_mini.c:190: neo1 = 127;                           // keep NeoPixel on
      0001A1 78 14            [12]  865 	mov	r0,#_neo1
      0001A3 76 7F            [12]  866 	mov	@r0,#0x7f
                                    867 ;	macropad_mini.c:191: KEY1_HOLD();                          // take proper action
      0001A5                        868 00111$:
                                    869 ;	macropad_mini.c:195: if(!PIN_read(PIN_KEY2) != key2last) {   // key 2 state changed?
      0001A5 A2 96            [12]  870 	mov	c,_PP16
      0001A7 B3               [12]  871 	cpl	c
      0001A8 92 03            [24]  872 	mov  _main_sloc0_1_0,c
      0001AA 20 01 01         [24]  873 	jb	_main_key2last_65536_526,00224$
      0001AD B3               [12]  874 	cpl	c
      0001AE                        875 00224$:
      0001AE 40 1C            [24]  876 	jc	00118$
                                    877 ;	macropad_mini.c:196: key2last = !key2last;                 // update last state flag
      0001B0 B2 01            [12]  878 	cpl	_main_key2last_65536_526
                                    879 ;	macropad_mini.c:197: if(key2last) {                        // key was pressed?
      0001B2 30 01 0F         [24]  880 	jnb	_main_key2last_65536_526,00113$
                                    881 ;	macropad_mini.c:198: neo2 = 127;                         // light up corresponding NeoPixel
      0001B5 78 15            [12]  882 	mov	r0,#_neo2
      0001B7 76 7F            [12]  883 	mov	@r0,#0x7f
                                    884 ;	macropad_mini.c:199: NEO_update();                       // update NeoPixels NOW!
      0001B9 12 00 FA         [24]  885 	lcall	_NEO_update
                                    886 ;	macropad_mini.c:99: KBD_press(KBD_KEY_DELETE);                      // press DEL key
      0001BC 75 82 D4         [24]  887 	mov	dpl,#0xd4
      0001BF 12 02 28         [24]  888 	lcall	_KBD_press
                                    889 ;	macropad_mini.c:200: KEY2_PRESSED();                     // take proper action
      0001C2 80 0F            [24]  890 	sjmp	00119$
      0001C4                        891 00113$:
                                    892 ;	macropad_mini.c:104: KBD_release(KBD_KEY_DELETE);                        // release DEL key
      0001C4 75 82 D4         [24]  893 	mov	dpl,#0xd4
      0001C7 12 02 B6         [24]  894 	lcall	_KBD_release
                                    895 ;	macropad_mini.c:203: KEY2_RELEASED();                    // take proper action
      0001CA 80 07            [24]  896 	sjmp	00119$
      0001CC                        897 00118$:
                                    898 ;	macropad_mini.c:206: else if(key2last) {                     // key still being pressed?
      0001CC 30 01 04         [24]  899 	jnb	_main_key2last_65536_526,00119$
                                    900 ;	macropad_mini.c:207: neo2 = 127;                           // keep NeoPixel on
      0001CF 78 15            [12]  901 	mov	r0,#_neo2
      0001D1 76 7F            [12]  902 	mov	@r0,#0x7f
                                    903 ;	macropad_mini.c:208: KEY2_HOLD();                          // take proper action
      0001D3                        904 00119$:
                                    905 ;	macropad_mini.c:212: if(!PIN_read(PIN_KEY3) != key3last) {   // key 3 state changed?
      0001D3 A2 95            [12]  906 	mov	c,_PP15
      0001D5 B3               [12]  907 	cpl	c
      0001D6 92 03            [24]  908 	mov  _main_sloc0_1_0,c
      0001D8 20 02 01         [24]  909 	jb	_main_key3last_65536_526,00228$
      0001DB B3               [12]  910 	cpl	c
      0001DC                        911 00228$:
      0001DC 40 1C            [24]  912 	jc	00126$
                                    913 ;	macropad_mini.c:213: key3last = !key3last;                 // update last state flag
      0001DE B2 02            [12]  914 	cpl	_main_key3last_65536_526
                                    915 ;	macropad_mini.c:214: if(key3last) {                        // key was pressed?
      0001E0 30 02 0F         [24]  916 	jnb	_main_key3last_65536_526,00121$
                                    917 ;	macropad_mini.c:215: neo3 = 127;                         // light up corresponding NeoPixel
      0001E3 78 16            [12]  918 	mov	r0,#_neo3
      0001E5 76 7F            [12]  919 	mov	@r0,#0x7f
                                    920 ;	macropad_mini.c:216: NEO_update();                       // update NeoPixels NOW!
      0001E7 12 00 FA         [24]  921 	lcall	_NEO_update
                                    922 ;	macropad_mini.c:119: CON_press(CON_VOL_MUTE);                            // press VOLUME MUTE consumer key
      0001EA 90 00 E2         [24]  923 	mov	dptr,#0x00e2
      0001ED 12 03 7F         [24]  924 	lcall	_CON_press
                                    925 ;	macropad_mini.c:217: KEY3_PRESSED();                     // take proper action
      0001F0 80 0F            [24]  926 	sjmp	00127$
      0001F2                        927 00121$:
                                    928 ;	macropad_mini.c:124: CON_release(CON_VOL_MUTE);                          // release VOLUME MUTE consumer key
      0001F2 90 00 E2         [24]  929 	mov	dptr,#0x00e2
      0001F5 12 04 24         [24]  930 	lcall	_CON_release
                                    931 ;	macropad_mini.c:220: KEY3_RELEASED();                    // take proper action
      0001F8 80 07            [24]  932 	sjmp	00127$
      0001FA                        933 00126$:
                                    934 ;	macropad_mini.c:223: else if(key3last) {                     // key still being pressed?
      0001FA 30 02 04         [24]  935 	jnb	_main_key3last_65536_526,00127$
                                    936 ;	macropad_mini.c:224: neo3 = 127;                           // keep NeoPixel on
      0001FD 78 16            [12]  937 	mov	r0,#_neo3
      0001FF 76 7F            [12]  938 	mov	@r0,#0x7f
                                    939 ;	macropad_mini.c:225: KEY3_HOLD();                          // take proper action
      000201                        940 00127$:
                                    941 ;	macropad_mini.c:229: NEO_update();
      000201 12 00 FA         [24]  942 	lcall	_NEO_update
                                    943 ;	macropad_mini.c:230: if(neo1) neo1--;                        // fade down NeoPixel
      000204 78 14            [12]  944 	mov	r0,#_neo1
      000206 E6               [12]  945 	mov	a,@r0
      000207 60 03            [24]  946 	jz	00129$
      000209 78 14            [12]  947 	mov	r0,#_neo1
      00020B 16               [12]  948 	dec	@r0
      00020C                        949 00129$:
                                    950 ;	macropad_mini.c:231: if(neo2) neo2--;                        // fade down NeoPixel
      00020C 78 15            [12]  951 	mov	r0,#_neo2
      00020E E6               [12]  952 	mov	a,@r0
      00020F 60 03            [24]  953 	jz	00131$
      000211 78 15            [12]  954 	mov	r0,#_neo2
      000213 16               [12]  955 	dec	@r0
      000214                        956 00131$:
                                    957 ;	macropad_mini.c:232: if(neo3) neo3--;                        // fade down NeoPixel
      000214 78 16            [12]  958 	mov	r0,#_neo3
      000216 E6               [12]  959 	mov	a,@r0
      000217 60 03            [24]  960 	jz	00133$
      000219 78 16            [12]  961 	mov	r0,#_neo3
      00021B 16               [12]  962 	dec	@r0
      00021C                        963 00133$:
                                    964 ;	macropad_mini.c:233: DLY_ms(5);                              // latch and debounce
      00021C 90 00 05         [24]  965 	mov	dptr,#0x0005
      00021F 12 05 6D         [24]  966 	lcall	_DLY_ms
                                    967 ;	macropad_mini.c:234: WDT_reset();                            // reset watchdog
      000222 75 FF 00         [24]  968 	mov	_WDOG_COUNT,#0x00
                                    969 ;	macropad_mini.c:236: }
      000225 02 01 77         [24]  970 	ljmp	00135$
                                    971 	.area CSEG    (CODE)
                                    972 	.area CONST   (CODE)
                                    973 	.area CABS    (ABS,CODE)
