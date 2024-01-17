                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb_conkbd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _KBD_map
                                     12 	.globl _HID_sendReport
                                     13 	.globl _CON_report
                                     14 	.globl _KBD_report
                                     15 	.globl _EP2_buffer
                                     16 	.globl _EP1_buffer
                                     17 	.globl _EP0_buffer
                                     18 	.globl _KBD_press
                                     19 	.globl _KBD_release
                                     20 	.globl _KBD_type
                                     21 	.globl _KBD_releaseAll
                                     22 	.globl _KBD_print
                                     23 	.globl _CON_press
                                     24 	.globl _CON_release
                                     25 	.globl _CON_type
                                     26 	.globl _CON_releaseAll
                                     27 	.globl _KBD_getState
                                     28 ;--------------------------------------------------------
                                     29 ; special function registers
                                     30 ;--------------------------------------------------------
                                     31 	.area RSEG    (ABS,DATA)
      000000                         32 	.org 0x0000
                                     33 ;--------------------------------------------------------
                                     34 ; special function bits
                                     35 ;--------------------------------------------------------
                                     36 	.area RSEG    (ABS,DATA)
      000000                         37 	.org 0x0000
                                     38 ;--------------------------------------------------------
                                     39 ; overlayable register banks
                                     40 ;--------------------------------------------------------
                                     41 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         42 	.ds 8
                                     43 ;--------------------------------------------------------
                                     44 ; internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area DSEG    (DATA)
      000008                         47 _CON_release_key_65536_50:
      000008                         48 	.ds 2
                                     49 ;--------------------------------------------------------
                                     50 ; overlayable items in internal ram
                                     51 ;--------------------------------------------------------
                                     52 ;--------------------------------------------------------
                                     53 ; indirectly addressable internal ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area ISEG    (DATA)
                                     56 ;--------------------------------------------------------
                                     57 ; absolute internal ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area IABS    (ABS,DATA)
                                     60 	.area IABS    (ABS,DATA)
                                     61 ;--------------------------------------------------------
                                     62 ; bit data
                                     63 ;--------------------------------------------------------
                                     64 	.area BSEG    (BIT)
                                     65 ;--------------------------------------------------------
                                     66 ; paged external ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area PSEG    (PAG,XDATA)
                                     69 ;--------------------------------------------------------
                                     70 ; uninitialized external ram data
                                     71 ;--------------------------------------------------------
                                     72 	.area XSEG    (XDATA)
                           000000    73 _EP0_buffer	=	0x0000
                           000040    74 _EP1_buffer	=	0x0040
                           000052    75 _EP2_buffer	=	0x0052
      000100                         76 _KBD_report::
      000100                         77 	.ds 9
      000109                         78 _CON_report::
      000109                         79 	.ds 9
                                     80 ;--------------------------------------------------------
                                     81 ; absolute external ram data
                                     82 ;--------------------------------------------------------
                                     83 	.area XABS    (ABS,XDATA)
                                     84 ;--------------------------------------------------------
                                     85 ; initialized external ram data
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area GSINIT0 (CODE)
                                     89 	.area GSINIT1 (CODE)
                                     90 	.area GSINIT2 (CODE)
                                     91 	.area GSINIT3 (CODE)
                                     92 	.area GSINIT4 (CODE)
                                     93 	.area GSINIT5 (CODE)
                                     94 	.area GSINIT  (CODE)
                                     95 	.area GSFINAL (CODE)
                                     96 	.area CSEG    (CODE)
                                     97 ;--------------------------------------------------------
                                     98 ; global & static initialisations
                                     99 ;--------------------------------------------------------
                                    100 	.area HOME    (CODE)
                                    101 	.area GSINIT  (CODE)
                                    102 	.area GSFINAL (CODE)
                                    103 	.area GSINIT  (CODE)
                                    104 ;	src/usb_conkbd.c:15: __xdata uint8_t  KBD_report[9] = {1,0,0,0,0,0,0,0,0};
      000068 90 01 00         [24]  105 	mov	dptr,#_KBD_report
      00006B 74 01            [12]  106 	mov	a,#0x01
      00006D F0               [24]  107 	movx	@dptr,a
      00006E 90 01 01         [24]  108 	mov	dptr,#(_KBD_report + 0x0001)
      000071 E4               [12]  109 	clr	a
      000072 F0               [24]  110 	movx	@dptr,a
      000073 90 01 02         [24]  111 	mov	dptr,#(_KBD_report + 0x0002)
      000076 F0               [24]  112 	movx	@dptr,a
      000077 90 01 03         [24]  113 	mov	dptr,#(_KBD_report + 0x0003)
      00007A F0               [24]  114 	movx	@dptr,a
      00007B 90 01 04         [24]  115 	mov	dptr,#(_KBD_report + 0x0004)
      00007E F0               [24]  116 	movx	@dptr,a
      00007F 90 01 05         [24]  117 	mov	dptr,#(_KBD_report + 0x0005)
      000082 F0               [24]  118 	movx	@dptr,a
      000083 90 01 06         [24]  119 	mov	dptr,#(_KBD_report + 0x0006)
      000086 F0               [24]  120 	movx	@dptr,a
      000087 90 01 07         [24]  121 	mov	dptr,#(_KBD_report + 0x0007)
      00008A F0               [24]  122 	movx	@dptr,a
      00008B 90 01 08         [24]  123 	mov	dptr,#(_KBD_report + 0x0008)
      00008E F0               [24]  124 	movx	@dptr,a
                                    125 ;	src/usb_conkbd.c:16: __xdata uint8_t  CON_report[9] = {2,0,0,0,0,0,0,0,0};
      00008F 90 01 09         [24]  126 	mov	dptr,#_CON_report
      000092 74 02            [12]  127 	mov	a,#0x02
      000094 F0               [24]  128 	movx	@dptr,a
      000095 90 01 0A         [24]  129 	mov	dptr,#(_CON_report + 0x0001)
      000098 E4               [12]  130 	clr	a
      000099 F0               [24]  131 	movx	@dptr,a
      00009A 90 01 0B         [24]  132 	mov	dptr,#(_CON_report + 0x0002)
      00009D F0               [24]  133 	movx	@dptr,a
      00009E 90 01 0C         [24]  134 	mov	dptr,#(_CON_report + 0x0003)
      0000A1 F0               [24]  135 	movx	@dptr,a
      0000A2 90 01 0D         [24]  136 	mov	dptr,#(_CON_report + 0x0004)
      0000A5 F0               [24]  137 	movx	@dptr,a
      0000A6 90 01 0E         [24]  138 	mov	dptr,#(_CON_report + 0x0005)
      0000A9 F0               [24]  139 	movx	@dptr,a
      0000AA 90 01 0F         [24]  140 	mov	dptr,#(_CON_report + 0x0006)
      0000AD F0               [24]  141 	movx	@dptr,a
      0000AE 90 01 10         [24]  142 	mov	dptr,#(_CON_report + 0x0007)
      0000B1 F0               [24]  143 	movx	@dptr,a
      0000B2 90 01 11         [24]  144 	mov	dptr,#(_CON_report + 0x0008)
      0000B5 F0               [24]  145 	movx	@dptr,a
                                    146 ;--------------------------------------------------------
                                    147 ; Home
                                    148 ;--------------------------------------------------------
                                    149 	.area HOME    (CODE)
                                    150 	.area HOME    (CODE)
                                    151 ;--------------------------------------------------------
                                    152 ; code
                                    153 ;--------------------------------------------------------
                                    154 	.area CSEG    (CODE)
                                    155 ;------------------------------------------------------------
                                    156 ;Allocation info for local variables in function 'KBD_press'
                                    157 ;------------------------------------------------------------
                                    158 ;key                       Allocated to registers r6 
                                    159 ;i                         Allocated to registers r7 
                                    160 ;------------------------------------------------------------
                                    161 ;	src/usb_conkbd.c:37: void KBD_press(uint8_t key) {
                                    162 ;	-----------------------------------------
                                    163 ;	 function KBD_press
                                    164 ;	-----------------------------------------
      000228                        165 _KBD_press:
                           000007   166 	ar7 = 0x07
                           000006   167 	ar6 = 0x06
                           000005   168 	ar5 = 0x05
                           000004   169 	ar4 = 0x04
                           000003   170 	ar3 = 0x03
                           000002   171 	ar2 = 0x02
                           000001   172 	ar1 = 0x01
                           000000   173 	ar0 = 0x00
      000228 AF 82            [24]  174 	mov	r7,dpl
                                    175 ;	src/usb_conkbd.c:41: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
      00022A BF 88 00         [24]  176 	cjne	r7,#0x88,00168$
      00022D                        177 00168$:
      00022D 40 08            [24]  178 	jc	00109$
      00022F 8F 06            [24]  179 	mov	ar6,r7
      000231 EE               [12]  180 	mov	a,r6
      000232 24 78            [12]  181 	add	a,#0x78
      000234 FE               [12]  182 	mov	r6,a
      000235 80 40            [24]  183 	sjmp	00128$
      000237                        184 00109$:
                                    185 ;	src/usb_conkbd.c:42: else if(key >= 128) {                         // modifier key?
      000237 BF 80 00         [24]  186 	cjne	r7,#0x80,00170$
      00023A                        187 00170$:
      00023A 40 23            [24]  188 	jc	00106$
                                    189 ;	src/usb_conkbd.c:43: KBD_report[1] |= (1<<(key-128));            // add modifier to report
      00023C 90 01 01         [24]  190 	mov	dptr,#(_KBD_report + 0x0001)
      00023F E0               [24]  191 	movx	a,@dptr
      000240 FD               [12]  192 	mov	r5,a
      000241 8F 04            [24]  193 	mov	ar4,r7
      000243 EC               [12]  194 	mov	a,r4
      000244 24 80            [12]  195 	add	a,#0x80
      000246 F5 F0            [12]  196 	mov	b,a
      000248 05 F0            [12]  197 	inc	b
      00024A 74 01            [12]  198 	mov	a,#0x01
      00024C 80 02            [24]  199 	sjmp	00174$
      00024E                        200 00172$:
      00024E 25 E0            [12]  201 	add	a,acc
      000250                        202 00174$:
      000250 D5 F0 FB         [24]  203 	djnz	b,00172$
      000253 FC               [12]  204 	mov	r4,a
      000254 42 05            [12]  205 	orl	ar5,a
      000256 90 01 01         [24]  206 	mov	dptr,#(_KBD_report + 0x0001)
      000259 ED               [12]  207 	mov	a,r5
      00025A F0               [24]  208 	movx	@dptr,a
                                    209 ;	src/usb_conkbd.c:44: key = 0;
      00025B 7E 00            [12]  210 	mov	r6,#0x00
      00025D 80 18            [24]  211 	sjmp	00128$
      00025F                        212 00106$:
                                    213 ;	src/usb_conkbd.c:47: key = KBD_map[key];                         // convert ascii to keycode for report
      00025F EF               [12]  214 	mov	a,r7
      000260 90 0B 10         [24]  215 	mov	dptr,#_KBD_map
      000263 93               [24]  216 	movc	a,@a+dptr
                                    217 ;	src/usb_conkbd.c:48: if(!key) return;                            // no valid key
      000264 FE               [12]  218 	mov	r6,a
      000265 70 01            [24]  219 	jnz	00102$
      000267 22               [24]  220 	ret
      000268                        221 00102$:
                                    222 ;	src/usb_conkbd.c:49: if(key & 0x80) {                            // capital letter/shift character?
      000268 EE               [12]  223 	mov	a,r6
      000269 30 E7 0B         [24]  224 	jnb	acc.7,00128$
                                    225 ;	src/usb_conkbd.c:50: KBD_report[1] |= 0x02;                    // add left shift modifier
      00026C 90 01 01         [24]  226 	mov	dptr,#(_KBD_report + 0x0001)
      00026F E0               [24]  227 	movx	a,@dptr
      000270 44 02            [12]  228 	orl	a,#0x02
      000272 FF               [12]  229 	mov	r7,a
      000273 F0               [24]  230 	movx	@dptr,a
                                    231 ;	src/usb_conkbd.c:51: key &= 0x7F;                              // remove shift from key itself
      000274 53 06 7F         [24]  232 	anl	ar6,#0x7f
                                    233 ;	src/usb_conkbd.c:56: for(i=3; i<9; i++) {
      000277                        234 00128$:
      000277 7F 03            [12]  235 	mov	r7,#0x03
      000279                        236 00117$:
                                    237 ;	src/usb_conkbd.c:57: if(KBD_report[i] == key) return;            // return if already in report
      000279 EF               [12]  238 	mov	a,r7
      00027A 24 00            [12]  239 	add	a,#_KBD_report
      00027C F5 82            [12]  240 	mov	dpl,a
      00027E E4               [12]  241 	clr	a
      00027F 34 01            [12]  242 	addc	a,#(_KBD_report >> 8)
      000281 F5 83            [12]  243 	mov	dph,a
      000283 E0               [24]  244 	movx	a,@dptr
      000284 FD               [12]  245 	mov	r5,a
      000285 B5 06 01         [24]  246 	cjne	a,ar6,00118$
      000288 22               [24]  247 	ret
      000289                        248 00118$:
                                    249 ;	src/usb_conkbd.c:56: for(i=3; i<9; i++) {
      000289 0F               [12]  250 	inc	r7
      00028A BF 09 00         [24]  251 	cjne	r7,#0x09,00179$
      00028D                        252 00179$:
      00028D 40 EA            [24]  253 	jc	00117$
                                    254 ;	src/usb_conkbd.c:61: for(i=3; i<9; i++) {
      00028F 7F 03            [12]  255 	mov	r7,#0x03
      000291                        256 00119$:
                                    257 ;	src/usb_conkbd.c:62: if(KBD_report[i] == 0) {                    // empty slot?
      000291 EF               [12]  258 	mov	a,r7
      000292 24 00            [12]  259 	add	a,#_KBD_report
      000294 FC               [12]  260 	mov	r4,a
      000295 E4               [12]  261 	clr	a
      000296 34 01            [12]  262 	addc	a,#(_KBD_report >> 8)
      000298 FD               [12]  263 	mov	r5,a
      000299 8C 82            [24]  264 	mov	dpl,r4
      00029B 8D 83            [24]  265 	mov	dph,r5
      00029D E0               [24]  266 	movx	a,@dptr
      00029E 70 0F            [24]  267 	jnz	00120$
                                    268 ;	src/usb_conkbd.c:63: KBD_report[i] = key;                      // insert key
      0002A0 8C 82            [24]  269 	mov	dpl,r4
      0002A2 8D 83            [24]  270 	mov	dph,r5
      0002A4 EE               [12]  271 	mov	a,r6
      0002A5 F0               [24]  272 	movx	@dptr,a
                                    273 ;	src/usb_conkbd.c:64: KBD_sendReport();                         // send report
      0002A6 75 13 09         [24]  274 	mov	_HID_sendReport_PARM_2,#0x09
      0002A9 90 01 00         [24]  275 	mov	dptr,#_KBD_report
                                    276 ;	src/usb_conkbd.c:65: return;                                   // and return
      0002AC 02 05 9C         [24]  277 	ljmp	_HID_sendReport
      0002AF                        278 00120$:
                                    279 ;	src/usb_conkbd.c:61: for(i=3; i<9; i++) {
      0002AF 0F               [12]  280 	inc	r7
      0002B0 BF 09 00         [24]  281 	cjne	r7,#0x09,00182$
      0002B3                        282 00182$:
      0002B3 40 DC            [24]  283 	jc	00119$
                                    284 ;	src/usb_conkbd.c:68: }
      0002B5 22               [24]  285 	ret
                                    286 ;------------------------------------------------------------
                                    287 ;Allocation info for local variables in function 'KBD_release'
                                    288 ;------------------------------------------------------------
                                    289 ;key                       Allocated to registers r6 
                                    290 ;i                         Allocated to registers r7 
                                    291 ;------------------------------------------------------------
                                    292 ;	src/usb_conkbd.c:73: void KBD_release(uint8_t key) {
                                    293 ;	-----------------------------------------
                                    294 ;	 function KBD_release
                                    295 ;	-----------------------------------------
      0002B6                        296 _KBD_release:
      0002B6 AF 82            [24]  297 	mov	r7,dpl
                                    298 ;	src/usb_conkbd.c:75: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
      0002B8 BF 88 00         [24]  299 	cjne	r7,#0x88,00154$
      0002BB                        300 00154$:
      0002BB 40 08            [24]  301 	jc	00109$
      0002BD 8F 06            [24]  302 	mov	ar6,r7
      0002BF EE               [12]  303 	mov	a,r6
      0002C0 24 78            [12]  304 	add	a,#0x78
      0002C2 FE               [12]  305 	mov	r6,a
      0002C3 80 41            [24]  306 	sjmp	00123$
      0002C5                        307 00109$:
                                    308 ;	src/usb_conkbd.c:76: else if(key >= 128) {                         // modifier key?
      0002C5 BF 80 00         [24]  309 	cjne	r7,#0x80,00156$
      0002C8                        310 00156$:
      0002C8 40 24            [24]  311 	jc	00106$
                                    312 ;	src/usb_conkbd.c:77: KBD_report[1] &= ~(1<<(key-128));           // delete modifier in report
      0002CA 90 01 01         [24]  313 	mov	dptr,#(_KBD_report + 0x0001)
      0002CD E0               [24]  314 	movx	a,@dptr
      0002CE FD               [12]  315 	mov	r5,a
      0002CF 8F 04            [24]  316 	mov	ar4,r7
      0002D1 EC               [12]  317 	mov	a,r4
      0002D2 24 80            [12]  318 	add	a,#0x80
      0002D4 F5 F0            [12]  319 	mov	b,a
      0002D6 05 F0            [12]  320 	inc	b
      0002D8 74 01            [12]  321 	mov	a,#0x01
      0002DA 80 02            [24]  322 	sjmp	00160$
      0002DC                        323 00158$:
      0002DC 25 E0            [12]  324 	add	a,acc
      0002DE                        325 00160$:
      0002DE D5 F0 FB         [24]  326 	djnz	b,00158$
      0002E1 F4               [12]  327 	cpl	a
      0002E2 FC               [12]  328 	mov	r4,a
      0002E3 52 05            [12]  329 	anl	ar5,a
      0002E5 90 01 01         [24]  330 	mov	dptr,#(_KBD_report + 0x0001)
      0002E8 ED               [12]  331 	mov	a,r5
      0002E9 F0               [24]  332 	movx	@dptr,a
                                    333 ;	src/usb_conkbd.c:78: key = 0;
      0002EA 7E 00            [12]  334 	mov	r6,#0x00
      0002EC 80 18            [24]  335 	sjmp	00123$
      0002EE                        336 00106$:
                                    337 ;	src/usb_conkbd.c:81: key = KBD_map[key];                         // convert ascii to keycode for report
      0002EE EF               [12]  338 	mov	a,r7
      0002EF 90 0B 10         [24]  339 	mov	dptr,#_KBD_map
      0002F2 93               [24]  340 	movc	a,@a+dptr
                                    341 ;	src/usb_conkbd.c:82: if(!key) return;                            // no valid key
      0002F3 FE               [12]  342 	mov	r6,a
      0002F4 70 01            [24]  343 	jnz	00102$
      0002F6 22               [24]  344 	ret
      0002F7                        345 00102$:
                                    346 ;	src/usb_conkbd.c:83: if(key & 0x80) {                            // capital letter/shift character?
      0002F7 EE               [12]  347 	mov	a,r6
      0002F8 30 E7 0B         [24]  348 	jnb	acc.7,00123$
                                    349 ;	src/usb_conkbd.c:84: KBD_report[1] &= ~0x02;                   // remove shift modifier
      0002FB 90 01 01         [24]  350 	mov	dptr,#(_KBD_report + 0x0001)
      0002FE E0               [24]  351 	movx	a,@dptr
      0002FF 54 FD            [12]  352 	anl	a,#0xfd
      000301 FF               [12]  353 	mov	r7,a
      000302 F0               [24]  354 	movx	@dptr,a
                                    355 ;	src/usb_conkbd.c:85: key &= 0x7F;                              // remove shift from key itself
      000303 53 06 7F         [24]  356 	anl	ar6,#0x7f
                                    357 ;	src/usb_conkbd.c:90: for(i=3; i<9; i++) {
      000306                        358 00123$:
      000306 7F 03            [12]  359 	mov	r7,#0x03
      000308                        360 00114$:
                                    361 ;	src/usb_conkbd.c:91: if(KBD_report[i] == key) KBD_report[i] = 0; // delete key in report
      000308 EF               [12]  362 	mov	a,r7
      000309 24 00            [12]  363 	add	a,#_KBD_report
      00030B FC               [12]  364 	mov	r4,a
      00030C E4               [12]  365 	clr	a
      00030D 34 01            [12]  366 	addc	a,#(_KBD_report >> 8)
      00030F FD               [12]  367 	mov	r5,a
      000310 8C 82            [24]  368 	mov	dpl,r4
      000312 8D 83            [24]  369 	mov	dph,r5
      000314 E0               [24]  370 	movx	a,@dptr
      000315 B5 06 06         [24]  371 	cjne	a,ar6,00115$
      000318 8C 82            [24]  372 	mov	dpl,r4
      00031A 8D 83            [24]  373 	mov	dph,r5
      00031C E4               [12]  374 	clr	a
      00031D F0               [24]  375 	movx	@dptr,a
      00031E                        376 00115$:
                                    377 ;	src/usb_conkbd.c:90: for(i=3; i<9; i++) {
      00031E 0F               [12]  378 	inc	r7
      00031F BF 09 00         [24]  379 	cjne	r7,#0x09,00165$
      000322                        380 00165$:
      000322 40 E4            [24]  381 	jc	00114$
                                    382 ;	src/usb_conkbd.c:93: KBD_sendReport();                             // send report
      000324 75 13 09         [24]  383 	mov	_HID_sendReport_PARM_2,#0x09
      000327 90 01 00         [24]  384 	mov	dptr,#_KBD_report
                                    385 ;	src/usb_conkbd.c:94: }
      00032A 02 05 9C         [24]  386 	ljmp	_HID_sendReport
                                    387 ;------------------------------------------------------------
                                    388 ;Allocation info for local variables in function 'KBD_type'
                                    389 ;------------------------------------------------------------
                                    390 ;key                       Allocated to registers r7 
                                    391 ;------------------------------------------------------------
                                    392 ;	src/usb_conkbd.c:99: void KBD_type(uint8_t key) {
                                    393 ;	-----------------------------------------
                                    394 ;	 function KBD_type
                                    395 ;	-----------------------------------------
      00032D                        396 _KBD_type:
                                    397 ;	src/usb_conkbd.c:100: KBD_press(key);
      00032D AF 82            [24]  398 	mov  r7,dpl
      00032F C0 07            [24]  399 	push	ar7
      000331 12 02 28         [24]  400 	lcall	_KBD_press
      000334 D0 07            [24]  401 	pop	ar7
                                    402 ;	src/usb_conkbd.c:101: KBD_release(key);
      000336 8F 82            [24]  403 	mov	dpl,r7
                                    404 ;	src/usb_conkbd.c:102: }
      000338 02 02 B6         [24]  405 	ljmp	_KBD_release
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'KBD_releaseAll'
                                    408 ;------------------------------------------------------------
                                    409 ;i                         Allocated to registers r7 
                                    410 ;------------------------------------------------------------
                                    411 ;	src/usb_conkbd.c:107: void KBD_releaseAll(void) {
                                    412 ;	-----------------------------------------
                                    413 ;	 function KBD_releaseAll
                                    414 ;	-----------------------------------------
      00033B                        415 _KBD_releaseAll:
                                    416 ;	src/usb_conkbd.c:109: for(i=8; i; i--) KBD_report[i] = 0;           // delete all keys in report
      00033B 7F 08            [12]  417 	mov	r7,#0x08
      00033D                        418 00102$:
      00033D EF               [12]  419 	mov	a,r7
      00033E 24 00            [12]  420 	add	a,#_KBD_report
      000340 F5 82            [12]  421 	mov	dpl,a
      000342 E4               [12]  422 	clr	a
      000343 34 01            [12]  423 	addc	a,#(_KBD_report >> 8)
      000345 F5 83            [12]  424 	mov	dph,a
      000347 E4               [12]  425 	clr	a
      000348 F0               [24]  426 	movx	@dptr,a
      000349 DF F2            [24]  427 	djnz	r7,00102$
                                    428 ;	src/usb_conkbd.c:110: KBD_sendReport();                             // send report
      00034B 75 13 09         [24]  429 	mov	_HID_sendReport_PARM_2,#0x09
      00034E 90 01 00         [24]  430 	mov	dptr,#_KBD_report
                                    431 ;	src/usb_conkbd.c:111: }
      000351 02 05 9C         [24]  432 	ljmp	_HID_sendReport
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'KBD_print'
                                    435 ;------------------------------------------------------------
                                    436 ;str                       Allocated to registers 
                                    437 ;------------------------------------------------------------
                                    438 ;	src/usb_conkbd.c:116: void KBD_print(char* str) {
                                    439 ;	-----------------------------------------
                                    440 ;	 function KBD_print
                                    441 ;	-----------------------------------------
      000354                        442 _KBD_print:
      000354 AD 82            [24]  443 	mov	r5,dpl
      000356 AE 83            [24]  444 	mov	r6,dph
      000358 AF F0            [24]  445 	mov	r7,b
                                    446 ;	src/usb_conkbd.c:117: while(*str) KBD_type(*str++);
      00035A                        447 00101$:
      00035A 8D 82            [24]  448 	mov	dpl,r5
      00035C 8E 83            [24]  449 	mov	dph,r6
      00035E 8F F0            [24]  450 	mov	b,r7
      000360 12 09 F9         [24]  451 	lcall	__gptrget
      000363 FC               [12]  452 	mov	r4,a
      000364 60 18            [24]  453 	jz	00104$
      000366 8C 82            [24]  454 	mov	dpl,r4
      000368 0D               [12]  455 	inc	r5
      000369 BD 00 01         [24]  456 	cjne	r5,#0x00,00116$
      00036C 0E               [12]  457 	inc	r6
      00036D                        458 00116$:
      00036D C0 07            [24]  459 	push	ar7
      00036F C0 06            [24]  460 	push	ar6
      000371 C0 05            [24]  461 	push	ar5
      000373 12 03 2D         [24]  462 	lcall	_KBD_type
      000376 D0 05            [24]  463 	pop	ar5
      000378 D0 06            [24]  464 	pop	ar6
      00037A D0 07            [24]  465 	pop	ar7
      00037C 80 DC            [24]  466 	sjmp	00101$
      00037E                        467 00104$:
                                    468 ;	src/usb_conkbd.c:118: }
      00037E 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'CON_press'
                                    472 ;------------------------------------------------------------
                                    473 ;key                       Allocated to registers r6 r7 
                                    474 ;i                         Allocated to registers r5 
                                    475 ;------------------------------------------------------------
                                    476 ;	src/usb_conkbd.c:123: void CON_press(uint16_t key) {
                                    477 ;	-----------------------------------------
                                    478 ;	 function CON_press
                                    479 ;	-----------------------------------------
      00037F                        480 _CON_press:
      00037F AE 82            [24]  481 	mov	r6,dpl
      000381 AF 83            [24]  482 	mov	r7,dph
                                    483 ;	src/usb_conkbd.c:127: for(i=1; i<9; i+=2) {
      000383 7D 01            [12]  484 	mov	r5,#0x01
      000385 8F 03            [24]  485 	mov	ar3,r7
      000387 7C 00            [12]  486 	mov	r4,#0x00
      000389                        487 00109$:
                                    488 ;	src/usb_conkbd.c:128: if((CON_report[i] == key & 0xFF) && (CON_report[i+1] == key >> 8)) return;
      000389 ED               [12]  489 	mov	a,r5
      00038A 24 09            [12]  490 	add	a,#_CON_report
      00038C F5 82            [12]  491 	mov	dpl,a
      00038E E4               [12]  492 	clr	a
      00038F 34 01            [12]  493 	addc	a,#(_CON_report >> 8)
      000391 F5 83            [12]  494 	mov	dph,a
      000393 E0               [24]  495 	movx	a,@dptr
      000394 F9               [12]  496 	mov	r1,a
      000395 7A 00            [12]  497 	mov	r2,#0x00
      000397 E9               [12]  498 	mov	a,r1
      000398 B5 06 24         [24]  499 	cjne	a,ar6,00110$
      00039B EA               [12]  500 	mov	a,r2
      00039C B5 07 20         [24]  501 	cjne	a,ar7,00110$
      00039F 8D 02            [24]  502 	mov	ar2,r5
      0003A1 0A               [12]  503 	inc	r2
      0003A2 EA               [12]  504 	mov	a,r2
      0003A3 F9               [12]  505 	mov	r1,a
      0003A4 33               [12]  506 	rlc	a
      0003A5 95 E0            [12]  507 	subb	a,acc
      0003A7 FA               [12]  508 	mov	r2,a
      0003A8 E9               [12]  509 	mov	a,r1
      0003A9 24 09            [12]  510 	add	a,#_CON_report
      0003AB F5 82            [12]  511 	mov	dpl,a
      0003AD EA               [12]  512 	mov	a,r2
      0003AE 34 01            [12]  513 	addc	a,#(_CON_report >> 8)
      0003B0 F5 83            [12]  514 	mov	dph,a
      0003B2 E0               [24]  515 	movx	a,@dptr
      0003B3 F9               [12]  516 	mov	r1,a
      0003B4 7A 00            [12]  517 	mov	r2,#0x00
      0003B6 E9               [12]  518 	mov	a,r1
      0003B7 B5 03 05         [24]  519 	cjne	a,ar3,00110$
      0003BA EA               [12]  520 	mov	a,r2
      0003BB B5 04 01         [24]  521 	cjne	a,ar4,00110$
      0003BE 22               [24]  522 	ret
      0003BF                        523 00110$:
                                    524 ;	src/usb_conkbd.c:127: for(i=1; i<9; i+=2) {
      0003BF 8D 02            [24]  525 	mov	ar2,r5
      0003C1 74 02            [12]  526 	mov	a,#0x02
      0003C3 2A               [12]  527 	add	a,r2
      0003C4 FD               [12]  528 	mov	r5,a
      0003C5 BD 09 00         [24]  529 	cjne	r5,#0x09,00147$
      0003C8                        530 00147$:
      0003C8 40 BF            [24]  531 	jc	00109$
                                    532 ;	src/usb_conkbd.c:132: for(i=1; i<9; i+=2) {
      0003CA 7D 01            [12]  533 	mov	r5,#0x01
      0003CC                        534 00111$:
                                    535 ;	src/usb_conkbd.c:133: if((CON_report[i] == 0) && (CON_report[i+1] == 0)) {  // empty slot?
      0003CC ED               [12]  536 	mov	a,r5
      0003CD 24 09            [12]  537 	add	a,#_CON_report
      0003CF FB               [12]  538 	mov	r3,a
      0003D0 E4               [12]  539 	clr	a
      0003D1 34 01            [12]  540 	addc	a,#(_CON_report >> 8)
      0003D3 FC               [12]  541 	mov	r4,a
      0003D4 8B 82            [24]  542 	mov	dpl,r3
      0003D6 8C 83            [24]  543 	mov	dph,r4
      0003D8 E0               [24]  544 	movx	a,@dptr
      0003D9 70 3D            [24]  545 	jnz	00112$
      0003DB 8D 02            [24]  546 	mov	ar2,r5
      0003DD EA               [12]  547 	mov	a,r2
      0003DE 04               [12]  548 	inc	a
      0003DF F8               [12]  549 	mov	r0,a
      0003E0 33               [12]  550 	rlc	a
      0003E1 95 E0            [12]  551 	subb	a,acc
      0003E3 F9               [12]  552 	mov	r1,a
      0003E4 E8               [12]  553 	mov	a,r0
      0003E5 24 09            [12]  554 	add	a,#_CON_report
      0003E7 F8               [12]  555 	mov	r0,a
      0003E8 E9               [12]  556 	mov	a,r1
      0003E9 34 01            [12]  557 	addc	a,#(_CON_report >> 8)
      0003EB F9               [12]  558 	mov	r1,a
      0003EC 88 82            [24]  559 	mov	dpl,r0
      0003EE 89 83            [24]  560 	mov	dph,r1
      0003F0 E0               [24]  561 	movx	a,@dptr
      0003F1 70 25            [24]  562 	jnz	00112$
                                    563 ;	src/usb_conkbd.c:134: CON_report[i]   = key & 0xFF;             // insert key
      0003F3 8E 01            [24]  564 	mov	ar1,r6
      0003F5 8B 82            [24]  565 	mov	dpl,r3
      0003F7 8C 83            [24]  566 	mov	dph,r4
      0003F9 E9               [12]  567 	mov	a,r1
      0003FA F0               [24]  568 	movx	@dptr,a
                                    569 ;	src/usb_conkbd.c:135: CON_report[i+1] = key >> 8;
      0003FB 0A               [12]  570 	inc	r2
      0003FC EA               [12]  571 	mov	a,r2
      0003FD 33               [12]  572 	rlc	a
      0003FE 95 E0            [12]  573 	subb	a,acc
      000400 FC               [12]  574 	mov	r4,a
      000401 EA               [12]  575 	mov	a,r2
      000402 24 09            [12]  576 	add	a,#_CON_report
      000404 F5 82            [12]  577 	mov	dpl,a
      000406 EC               [12]  578 	mov	a,r4
      000407 34 01            [12]  579 	addc	a,#(_CON_report >> 8)
      000409 F5 83            [12]  580 	mov	dph,a
      00040B 8F 04            [24]  581 	mov	ar4,r7
      00040D EC               [12]  582 	mov	a,r4
      00040E F0               [24]  583 	movx	@dptr,a
                                    584 ;	src/usb_conkbd.c:136: CON_sendReport();                         // send report
      00040F 75 13 09         [24]  585 	mov	_HID_sendReport_PARM_2,#0x09
      000412 90 01 09         [24]  586 	mov	dptr,#_CON_report
                                    587 ;	src/usb_conkbd.c:137: return;                                   // and return
      000415 02 05 9C         [24]  588 	ljmp	_HID_sendReport
      000418                        589 00112$:
                                    590 ;	src/usb_conkbd.c:132: for(i=1; i<9; i+=2) {
      000418 8D 04            [24]  591 	mov	ar4,r5
      00041A 74 02            [12]  592 	mov	a,#0x02
      00041C 2C               [12]  593 	add	a,r4
      00041D FD               [12]  594 	mov	r5,a
      00041E BD 09 00         [24]  595 	cjne	r5,#0x09,00151$
      000421                        596 00151$:
      000421 40 A9            [24]  597 	jc	00111$
                                    598 ;	src/usb_conkbd.c:140: }
      000423 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'CON_release'
                                    602 ;------------------------------------------------------------
                                    603 ;key                       Allocated with name '_CON_release_key_65536_50'
                                    604 ;i                         Allocated to registers r5 
                                    605 ;------------------------------------------------------------
                                    606 ;	src/usb_conkbd.c:145: void CON_release(uint16_t key) {
                                    607 ;	-----------------------------------------
                                    608 ;	 function CON_release
                                    609 ;	-----------------------------------------
      000424                        610 _CON_release:
      000424 85 82 08         [24]  611 	mov	_CON_release_key_65536_50,dpl
      000427 85 83 09         [24]  612 	mov	(_CON_release_key_65536_50 + 1),dph
                                    613 ;	src/usb_conkbd.c:149: for(i=1; i<9; i+=2) {
      00042A 7D 01            [12]  614 	mov	r5,#0x01
      00042C AB 09            [24]  615 	mov	r3,(_CON_release_key_65536_50 + 1)
      00042E 7C 00            [12]  616 	mov	r4,#0x00
      000430                        617 00105$:
                                    618 ;	src/usb_conkbd.c:150: if((CON_report[i] == key & 0xFF) && (CON_report[i+1] == key >> 8)) {
      000430 ED               [12]  619 	mov	a,r5
      000431 24 09            [12]  620 	add	a,#_CON_report
      000433 F9               [12]  621 	mov	r1,a
      000434 E4               [12]  622 	clr	a
      000435 34 01            [12]  623 	addc	a,#(_CON_report >> 8)
      000437 FA               [12]  624 	mov	r2,a
      000438 89 82            [24]  625 	mov	dpl,r1
      00043A 8A 83            [24]  626 	mov	dph,r2
      00043C E0               [24]  627 	movx	a,@dptr
      00043D F8               [12]  628 	mov	r0,a
      00043E 7F 00            [12]  629 	mov	r7,#0x00
      000440 B5 08 3A         [24]  630 	cjne	a,_CON_release_key_65536_50,00106$
      000443 EF               [12]  631 	mov	a,r7
      000444 B5 09 36         [24]  632 	cjne	a,(_CON_release_key_65536_50 + 1),00106$
      000447 8D 07            [24]  633 	mov	ar7,r5
      000449 EF               [12]  634 	mov	a,r7
      00044A 04               [12]  635 	inc	a
      00044B F8               [12]  636 	mov	r0,a
      00044C 33               [12]  637 	rlc	a
      00044D 95 E0            [12]  638 	subb	a,acc
      00044F FE               [12]  639 	mov	r6,a
      000450 E8               [12]  640 	mov	a,r0
      000451 24 09            [12]  641 	add	a,#_CON_report
      000453 F5 82            [12]  642 	mov	dpl,a
      000455 EE               [12]  643 	mov	a,r6
      000456 34 01            [12]  644 	addc	a,#(_CON_report >> 8)
      000458 F5 83            [12]  645 	mov	dph,a
      00045A E0               [24]  646 	movx	a,@dptr
      00045B F8               [12]  647 	mov	r0,a
      00045C 7E 00            [12]  648 	mov	r6,#0x00
      00045E B5 03 1C         [24]  649 	cjne	a,ar3,00106$
      000461 EE               [12]  650 	mov	a,r6
      000462 B5 04 18         [24]  651 	cjne	a,ar4,00106$
                                    652 ;	src/usb_conkbd.c:151: CON_report[i]   = 0;
      000465 89 82            [24]  653 	mov	dpl,r1
      000467 8A 83            [24]  654 	mov	dph,r2
      000469 E4               [12]  655 	clr	a
      00046A F0               [24]  656 	movx	@dptr,a
                                    657 ;	src/usb_conkbd.c:152: CON_report[i+1] = 0;
      00046B 0F               [12]  658 	inc	r7
      00046C EF               [12]  659 	mov	a,r7
      00046D 33               [12]  660 	rlc	a
      00046E 95 E0            [12]  661 	subb	a,acc
      000470 FE               [12]  662 	mov	r6,a
      000471 EF               [12]  663 	mov	a,r7
      000472 24 09            [12]  664 	add	a,#_CON_report
      000474 F5 82            [12]  665 	mov	dpl,a
      000476 EE               [12]  666 	mov	a,r6
      000477 34 01            [12]  667 	addc	a,#(_CON_report >> 8)
      000479 F5 83            [12]  668 	mov	dph,a
      00047B E4               [12]  669 	clr	a
      00047C F0               [24]  670 	movx	@dptr,a
      00047D                        671 00106$:
                                    672 ;	src/usb_conkbd.c:149: for(i=1; i<9; i+=2) {
      00047D 8D 07            [24]  673 	mov	ar7,r5
      00047F 74 02            [12]  674 	mov	a,#0x02
      000481 2F               [12]  675 	add	a,r7
      000482 FD               [12]  676 	mov	r5,a
      000483 BD 09 00         [24]  677 	cjne	r5,#0x09,00129$
      000486                        678 00129$:
      000486 40 A8            [24]  679 	jc	00105$
                                    680 ;	src/usb_conkbd.c:155: CON_sendReport();
      000488 75 13 09         [24]  681 	mov	_HID_sendReport_PARM_2,#0x09
      00048B 90 01 09         [24]  682 	mov	dptr,#_CON_report
                                    683 ;	src/usb_conkbd.c:156: }
      00048E 02 05 9C         [24]  684 	ljmp	_HID_sendReport
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'CON_type'
                                    687 ;------------------------------------------------------------
                                    688 ;key                       Allocated to registers r6 r7 
                                    689 ;------------------------------------------------------------
                                    690 ;	src/usb_conkbd.c:161: void CON_type(uint16_t key) {
                                    691 ;	-----------------------------------------
                                    692 ;	 function CON_type
                                    693 ;	-----------------------------------------
      000491                        694 _CON_type:
                                    695 ;	src/usb_conkbd.c:162: CON_press(key);
      000491 AE 82            [24]  696 	mov	r6,dpl
      000493 AF 83            [24]  697 	mov  r7,dph
      000495 C0 07            [24]  698 	push	ar7
      000497 C0 06            [24]  699 	push	ar6
      000499 12 03 7F         [24]  700 	lcall	_CON_press
      00049C D0 06            [24]  701 	pop	ar6
      00049E D0 07            [24]  702 	pop	ar7
                                    703 ;	src/usb_conkbd.c:163: CON_release(key);
      0004A0 8E 82            [24]  704 	mov	dpl,r6
      0004A2 8F 83            [24]  705 	mov	dph,r7
                                    706 ;	src/usb_conkbd.c:164: }
      0004A4 02 04 24         [24]  707 	ljmp	_CON_release
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'CON_releaseAll'
                                    710 ;------------------------------------------------------------
                                    711 ;i                         Allocated to registers r7 
                                    712 ;------------------------------------------------------------
                                    713 ;	src/usb_conkbd.c:169: void CON_releaseAll(void) {
                                    714 ;	-----------------------------------------
                                    715 ;	 function CON_releaseAll
                                    716 ;	-----------------------------------------
      0004A7                        717 _CON_releaseAll:
                                    718 ;	src/usb_conkbd.c:171: for(i=8; i; i--) CON_report[i] = 0;           // delete all keys in report
      0004A7 7F 08            [12]  719 	mov	r7,#0x08
      0004A9                        720 00102$:
      0004A9 EF               [12]  721 	mov	a,r7
      0004AA 24 09            [12]  722 	add	a,#_CON_report
      0004AC F5 82            [12]  723 	mov	dpl,a
      0004AE E4               [12]  724 	clr	a
      0004AF 34 01            [12]  725 	addc	a,#(_CON_report >> 8)
      0004B1 F5 83            [12]  726 	mov	dph,a
      0004B3 E4               [12]  727 	clr	a
      0004B4 F0               [24]  728 	movx	@dptr,a
      0004B5 DF F2            [24]  729 	djnz	r7,00102$
                                    730 ;	src/usb_conkbd.c:172: CON_sendReport();                             // send report
      0004B7 75 13 09         [24]  731 	mov	_HID_sendReport_PARM_2,#0x09
      0004BA 90 01 09         [24]  732 	mov	dptr,#_CON_report
                                    733 ;	src/usb_conkbd.c:173: }
      0004BD 02 05 9C         [24]  734 	ljmp	_HID_sendReport
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'KBD_getState'
                                    737 ;------------------------------------------------------------
                                    738 ;	src/usb_conkbd.c:178: uint8_t KBD_getState(void) {
                                    739 ;	-----------------------------------------
                                    740 ;	 function KBD_getState
                                    741 ;	-----------------------------------------
      0004C0                        742 _KBD_getState:
                                    743 ;	src/usb_conkbd.c:179: return EP2_buffer[0];
      0004C0 90 00 52         [24]  744 	mov	dptr,#_EP2_buffer
      0004C3 E0               [24]  745 	movx	a,@dptr
                                    746 ;	src/usb_conkbd.c:180: }
      0004C4 F5 82            [12]  747 	mov	dpl,a
      0004C6 22               [24]  748 	ret
                                    749 	.area CSEG    (CODE)
                                    750 	.area CONST   (CODE)
      000B10                        751 _KBD_map:
      000B10 00                     752 	.db #0x00	; 0
      000B11 00                     753 	.db #0x00	; 0
      000B12 00                     754 	.db #0x00	; 0
      000B13 00                     755 	.db #0x00	; 0
      000B14 00                     756 	.db #0x00	; 0
      000B15 00                     757 	.db #0x00	; 0
      000B16 00                     758 	.db #0x00	; 0
      000B17 00                     759 	.db #0x00	; 0
      000B18 2A                     760 	.db #0x2a	; 42
      000B19 2B                     761 	.db #0x2b	; 43
      000B1A 28                     762 	.db #0x28	; 40
      000B1B 00                     763 	.db #0x00	; 0
      000B1C 00                     764 	.db #0x00	; 0
      000B1D 00                     765 	.db #0x00	; 0
      000B1E 00                     766 	.db #0x00	; 0
      000B1F 00                     767 	.db #0x00	; 0
      000B20 00                     768 	.db #0x00	; 0
      000B21 00                     769 	.db #0x00	; 0
      000B22 00                     770 	.db #0x00	; 0
      000B23 00                     771 	.db #0x00	; 0
      000B24 00                     772 	.db #0x00	; 0
      000B25 00                     773 	.db #0x00	; 0
      000B26 00                     774 	.db #0x00	; 0
      000B27 00                     775 	.db #0x00	; 0
      000B28 00                     776 	.db #0x00	; 0
      000B29 00                     777 	.db #0x00	; 0
      000B2A 00                     778 	.db #0x00	; 0
      000B2B 00                     779 	.db #0x00	; 0
      000B2C 00                     780 	.db #0x00	; 0
      000B2D 00                     781 	.db #0x00	; 0
      000B2E 00                     782 	.db #0x00	; 0
      000B2F 00                     783 	.db #0x00	; 0
      000B30 2C                     784 	.db #0x2c	; 44
      000B31 9E                     785 	.db #0x9e	; 158
      000B32 B4                     786 	.db #0xb4	; 180
      000B33 A0                     787 	.db #0xa0	; 160
      000B34 A1                     788 	.db #0xa1	; 161
      000B35 A2                     789 	.db #0xa2	; 162
      000B36 A4                     790 	.db #0xa4	; 164
      000B37 34                     791 	.db #0x34	; 52	'4'
      000B38 A6                     792 	.db #0xa6	; 166
      000B39 A7                     793 	.db #0xa7	; 167
      000B3A A5                     794 	.db #0xa5	; 165
      000B3B AE                     795 	.db #0xae	; 174
      000B3C 36                     796 	.db #0x36	; 54	'6'
      000B3D 2D                     797 	.db #0x2d	; 45
      000B3E 37                     798 	.db #0x37	; 55	'7'
      000B3F 38                     799 	.db #0x38	; 56	'8'
      000B40 27                     800 	.db #0x27	; 39
      000B41 1E                     801 	.db #0x1e	; 30
      000B42 1F                     802 	.db #0x1f	; 31
      000B43 20                     803 	.db #0x20	; 32
      000B44 21                     804 	.db #0x21	; 33
      000B45 22                     805 	.db #0x22	; 34
      000B46 23                     806 	.db #0x23	; 35
      000B47 24                     807 	.db #0x24	; 36
      000B48 25                     808 	.db #0x25	; 37
      000B49 26                     809 	.db #0x26	; 38
      000B4A B3                     810 	.db #0xb3	; 179
      000B4B 33                     811 	.db #0x33	; 51	'3'
      000B4C B6                     812 	.db #0xb6	; 182
      000B4D 2E                     813 	.db #0x2e	; 46
      000B4E B7                     814 	.db #0xb7	; 183
      000B4F B8                     815 	.db #0xb8	; 184
      000B50 9F                     816 	.db #0x9f	; 159
      000B51 84                     817 	.db #0x84	; 132
      000B52 85                     818 	.db #0x85	; 133
      000B53 86                     819 	.db #0x86	; 134
      000B54 87                     820 	.db #0x87	; 135
      000B55 88                     821 	.db #0x88	; 136
      000B56 89                     822 	.db #0x89	; 137
      000B57 8A                     823 	.db #0x8a	; 138
      000B58 8B                     824 	.db #0x8b	; 139
      000B59 8C                     825 	.db #0x8c	; 140
      000B5A 8D                     826 	.db #0x8d	; 141
      000B5B 8E                     827 	.db #0x8e	; 142
      000B5C 8F                     828 	.db #0x8f	; 143
      000B5D 90                     829 	.db #0x90	; 144
      000B5E 91                     830 	.db #0x91	; 145
      000B5F 92                     831 	.db #0x92	; 146
      000B60 93                     832 	.db #0x93	; 147
      000B61 94                     833 	.db #0x94	; 148
      000B62 95                     834 	.db #0x95	; 149
      000B63 96                     835 	.db #0x96	; 150
      000B64 97                     836 	.db #0x97	; 151
      000B65 98                     837 	.db #0x98	; 152
      000B66 99                     838 	.db #0x99	; 153
      000B67 9A                     839 	.db #0x9a	; 154
      000B68 9B                     840 	.db #0x9b	; 155
      000B69 9C                     841 	.db #0x9c	; 156
      000B6A 9D                     842 	.db #0x9d	; 157
      000B6B 2F                     843 	.db #0x2f	; 47
      000B6C 31                     844 	.db #0x31	; 49	'1'
      000B6D 30                     845 	.db #0x30	; 48	'0'
      000B6E A3                     846 	.db #0xa3	; 163
      000B6F AD                     847 	.db #0xad	; 173
      000B70 35                     848 	.db #0x35	; 53	'5'
      000B71 04                     849 	.db #0x04	; 4
      000B72 05                     850 	.db #0x05	; 5
      000B73 06                     851 	.db #0x06	; 6
      000B74 07                     852 	.db #0x07	; 7
      000B75 08                     853 	.db #0x08	; 8
      000B76 09                     854 	.db #0x09	; 9
      000B77 0A                     855 	.db #0x0a	; 10
      000B78 0B                     856 	.db #0x0b	; 11
      000B79 0C                     857 	.db #0x0c	; 12
      000B7A 0D                     858 	.db #0x0d	; 13
      000B7B 0E                     859 	.db #0x0e	; 14
      000B7C 0F                     860 	.db #0x0f	; 15
      000B7D 10                     861 	.db #0x10	; 16
      000B7E 11                     862 	.db #0x11	; 17
      000B7F 12                     863 	.db #0x12	; 18
      000B80 13                     864 	.db #0x13	; 19
      000B81 14                     865 	.db #0x14	; 20
      000B82 15                     866 	.db #0x15	; 21
      000B83 16                     867 	.db #0x16	; 22
      000B84 17                     868 	.db #0x17	; 23
      000B85 18                     869 	.db #0x18	; 24
      000B86 19                     870 	.db #0x19	; 25
      000B87 1A                     871 	.db #0x1a	; 26
      000B88 1B                     872 	.db #0x1b	; 27
      000B89 1C                     873 	.db #0x1c	; 28
      000B8A 1D                     874 	.db #0x1d	; 29
      000B8B AF                     875 	.db #0xaf	; 175
      000B8C B1                     876 	.db #0xb1	; 177
      000B8D B0                     877 	.db #0xb0	; 176
      000B8E B5                     878 	.db #0xb5	; 181
      000B8F 00                     879 	.db #0x00	; 0
                                    880 	.area CABS    (ABS,CODE)
