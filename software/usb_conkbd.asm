;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module usb_conkbd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _KBD_map
	.globl _HID_sendReport
	.globl _CON_report
	.globl _KBD_report
	.globl _EP2_buffer
	.globl _EP1_buffer
	.globl _EP0_buffer
	.globl _KBD_press
	.globl _KBD_release
	.globl _KBD_type
	.globl _KBD_releaseAll
	.globl _KBD_print
	.globl _CON_press
	.globl _CON_release
	.globl _CON_type
	.globl _CON_releaseAll
	.globl _KBD_getState
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
_CON_release_key_65536_50:
	.ds 2
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
_EP0_buffer	=	0x0000
_EP1_buffer	=	0x0040
_EP2_buffer	=	0x0052
_KBD_report::
	.ds 9
_CON_report::
	.ds 9
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
;	src/usb_conkbd.c:15: __xdata uint8_t  KBD_report[9] = {1,0,0,0,0,0,0,0,0};
	mov	dptr,#_KBD_report
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0008)
	movx	@dptr,a
;	src/usb_conkbd.c:16: __xdata uint8_t  CON_report[9] = {2,0,0,0,0,0,0,0,0};
	mov	dptr,#_CON_report
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0008)
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_press'
;------------------------------------------------------------
;key                       Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_conkbd.c:37: void KBD_press(uint8_t key) {
;	-----------------------------------------
;	 function KBD_press
;	-----------------------------------------
_KBD_press:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	src/usb_conkbd.c:41: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
	cjne	r7,#0x88,00168$
00168$:
	jc	00109$
	mov	ar6,r7
	mov	a,r6
	add	a,#0x78
	mov	r6,a
	sjmp	00128$
00109$:
;	src/usb_conkbd.c:42: else if(key >= 128) {                         // modifier key?
	cjne	r7,#0x80,00170$
00170$:
	jc	00106$
;	src/usb_conkbd.c:43: KBD_report[1] |= (1<<(key-128));            // add modifier to report
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	ar4,r7
	mov	a,r4
	add	a,#0x80
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00174$
00172$:
	add	a,acc
00174$:
	djnz	b,00172$
	mov	r4,a
	orl	ar5,a
	mov	dptr,#(_KBD_report + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	src/usb_conkbd.c:44: key = 0;
	mov	r6,#0x00
	sjmp	00128$
00106$:
;	src/usb_conkbd.c:47: key = KBD_map[key];                         // convert ascii to keycode for report
	mov	a,r7
	mov	dptr,#_KBD_map
	movc	a,@a+dptr
;	src/usb_conkbd.c:48: if(!key) return;                            // no valid key
	mov	r6,a
	jnz	00102$
	ret
00102$:
;	src/usb_conkbd.c:49: if(key & 0x80) {                            // capital letter/shift character?
	mov	a,r6
	jnb	acc.7,00128$
;	src/usb_conkbd.c:50: KBD_report[1] |= 0x02;                    // add left shift modifier
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	orl	a,#0x02
	mov	r7,a
	movx	@dptr,a
;	src/usb_conkbd.c:51: key &= 0x7F;                              // remove shift from key itself
	anl	ar6,#0x7f
;	src/usb_conkbd.c:56: for(i=3; i<9; i++) {
00128$:
	mov	r7,#0x03
00117$:
;	src/usb_conkbd.c:57: if(KBD_report[i] == key) return;            // return if already in report
	mov	a,r7
	add	a,#_KBD_report
	mov	dpl,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	a,ar6,00118$
	ret
00118$:
;	src/usb_conkbd.c:56: for(i=3; i<9; i++) {
	inc	r7
	cjne	r7,#0x09,00179$
00179$:
	jc	00117$
;	src/usb_conkbd.c:61: for(i=3; i<9; i++) {
	mov	r7,#0x03
00119$:
;	src/usb_conkbd.c:62: if(KBD_report[i] == 0) {                    // empty slot?
	mov	a,r7
	add	a,#_KBD_report
	mov	r4,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jnz	00120$
;	src/usb_conkbd.c:63: KBD_report[i] = key;                      // insert key
	mov	dpl,r4
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
;	src/usb_conkbd.c:64: KBD_sendReport();                         // send report
	mov	_HID_sendReport_PARM_2,#0x09
	mov	dptr,#_KBD_report
;	src/usb_conkbd.c:65: return;                                   // and return
	ljmp	_HID_sendReport
00120$:
;	src/usb_conkbd.c:61: for(i=3; i<9; i++) {
	inc	r7
	cjne	r7,#0x09,00182$
00182$:
	jc	00119$
;	src/usb_conkbd.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_release'
;------------------------------------------------------------
;key                       Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_conkbd.c:73: void KBD_release(uint8_t key) {
;	-----------------------------------------
;	 function KBD_release
;	-----------------------------------------
_KBD_release:
	mov	r7,dpl
;	src/usb_conkbd.c:75: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
	cjne	r7,#0x88,00154$
00154$:
	jc	00109$
	mov	ar6,r7
	mov	a,r6
	add	a,#0x78
	mov	r6,a
	sjmp	00123$
00109$:
;	src/usb_conkbd.c:76: else if(key >= 128) {                         // modifier key?
	cjne	r7,#0x80,00156$
00156$:
	jc	00106$
;	src/usb_conkbd.c:77: KBD_report[1] &= ~(1<<(key-128));           // delete modifier in report
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	ar4,r7
	mov	a,r4
	add	a,#0x80
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00160$
00158$:
	add	a,acc
00160$:
	djnz	b,00158$
	cpl	a
	mov	r4,a
	anl	ar5,a
	mov	dptr,#(_KBD_report + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	src/usb_conkbd.c:78: key = 0;
	mov	r6,#0x00
	sjmp	00123$
00106$:
;	src/usb_conkbd.c:81: key = KBD_map[key];                         // convert ascii to keycode for report
	mov	a,r7
	mov	dptr,#_KBD_map
	movc	a,@a+dptr
;	src/usb_conkbd.c:82: if(!key) return;                            // no valid key
	mov	r6,a
	jnz	00102$
	ret
00102$:
;	src/usb_conkbd.c:83: if(key & 0x80) {                            // capital letter/shift character?
	mov	a,r6
	jnb	acc.7,00123$
;	src/usb_conkbd.c:84: KBD_report[1] &= ~0x02;                   // remove shift modifier
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	anl	a,#0xfd
	mov	r7,a
	movx	@dptr,a
;	src/usb_conkbd.c:85: key &= 0x7F;                              // remove shift from key itself
	anl	ar6,#0x7f
;	src/usb_conkbd.c:90: for(i=3; i<9; i++) {
00123$:
	mov	r7,#0x03
00114$:
;	src/usb_conkbd.c:91: if(KBD_report[i] == key) KBD_report[i] = 0; // delete key in report
	mov	a,r7
	add	a,#_KBD_report
	mov	r4,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	cjne	a,ar6,00115$
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
00115$:
;	src/usb_conkbd.c:90: for(i=3; i<9; i++) {
	inc	r7
	cjne	r7,#0x09,00165$
00165$:
	jc	00114$
;	src/usb_conkbd.c:93: KBD_sendReport();                             // send report
	mov	_HID_sendReport_PARM_2,#0x09
	mov	dptr,#_KBD_report
;	src/usb_conkbd.c:94: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_type'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_conkbd.c:99: void KBD_type(uint8_t key) {
;	-----------------------------------------
;	 function KBD_type
;	-----------------------------------------
_KBD_type:
;	src/usb_conkbd.c:100: KBD_press(key);
	mov  r7,dpl
	push	ar7
	lcall	_KBD_press
	pop	ar7
;	src/usb_conkbd.c:101: KBD_release(key);
	mov	dpl,r7
;	src/usb_conkbd.c:102: }
	ljmp	_KBD_release
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_releaseAll'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_conkbd.c:107: void KBD_releaseAll(void) {
;	-----------------------------------------
;	 function KBD_releaseAll
;	-----------------------------------------
_KBD_releaseAll:
;	src/usb_conkbd.c:109: for(i=8; i; i--) KBD_report[i] = 0;           // delete all keys in report
	mov	r7,#0x08
00102$:
	mov	a,r7
	add	a,#_KBD_report
	mov	dpl,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	djnz	r7,00102$
;	src/usb_conkbd.c:110: KBD_sendReport();                             // send report
	mov	_HID_sendReport_PARM_2,#0x09
	mov	dptr,#_KBD_report
;	src/usb_conkbd.c:111: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_print'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	src/usb_conkbd.c:116: void KBD_print(char* str) {
;	-----------------------------------------
;	 function KBD_print
;	-----------------------------------------
_KBD_print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/usb_conkbd.c:117: while(*str) KBD_type(*str++);
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_KBD_type
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	src/usb_conkbd.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CON_press'
;------------------------------------------------------------
;key                       Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	src/usb_conkbd.c:123: void CON_press(uint16_t key) {
;	-----------------------------------------
;	 function CON_press
;	-----------------------------------------
_CON_press:
	mov	r6,dpl
	mov	r7,dph
;	src/usb_conkbd.c:127: for(i=1; i<9; i+=2) {
	mov	r5,#0x01
	mov	ar3,r7
	mov	r4,#0x00
00109$:
;	src/usb_conkbd.c:128: if((CON_report[i] == key & 0xFF) && (CON_report[i+1] == key >> 8)) return;
	mov	a,r5
	add	a,#_CON_report
	mov	dpl,a
	clr	a
	addc	a,#(_CON_report >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r1
	cjne	a,ar6,00110$
	mov	a,r2
	cjne	a,ar7,00110$
	mov	ar2,r5
	inc	r2
	mov	a,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r1
	add	a,#_CON_report
	mov	dpl,a
	mov	a,r2
	addc	a,#(_CON_report >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r1
	cjne	a,ar3,00110$
	mov	a,r2
	cjne	a,ar4,00110$
	ret
00110$:
;	src/usb_conkbd.c:127: for(i=1; i<9; i+=2) {
	mov	ar2,r5
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	cjne	r5,#0x09,00147$
00147$:
	jc	00109$
;	src/usb_conkbd.c:132: for(i=1; i<9; i+=2) {
	mov	r5,#0x01
00111$:
;	src/usb_conkbd.c:133: if((CON_report[i] == 0) && (CON_report[i+1] == 0)) {  // empty slot?
	mov	a,r5
	add	a,#_CON_report
	mov	r3,a
	clr	a
	addc	a,#(_CON_report >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jnz	00112$
	mov	ar2,r5
	mov	a,r2
	inc	a
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r0
	add	a,#_CON_report
	mov	r0,a
	mov	a,r1
	addc	a,#(_CON_report >> 8)
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	jnz	00112$
;	src/usb_conkbd.c:134: CON_report[i]   = key & 0xFF;             // insert key
	mov	ar1,r6
	mov	dpl,r3
	mov	dph,r4
	mov	a,r1
	movx	@dptr,a
;	src/usb_conkbd.c:135: CON_report[i+1] = key >> 8;
	inc	r2
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	add	a,#_CON_report
	mov	dpl,a
	mov	a,r4
	addc	a,#(_CON_report >> 8)
	mov	dph,a
	mov	ar4,r7
	mov	a,r4
	movx	@dptr,a
;	src/usb_conkbd.c:136: CON_sendReport();                         // send report
	mov	_HID_sendReport_PARM_2,#0x09
	mov	dptr,#_CON_report
;	src/usb_conkbd.c:137: return;                                   // and return
	ljmp	_HID_sendReport
00112$:
;	src/usb_conkbd.c:132: for(i=1; i<9; i+=2) {
	mov	ar4,r5
	mov	a,#0x02
	add	a,r4
	mov	r5,a
	cjne	r5,#0x09,00151$
00151$:
	jc	00111$
;	src/usb_conkbd.c:140: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CON_release'
;------------------------------------------------------------
;key                       Allocated with name '_CON_release_key_65536_50'
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	src/usb_conkbd.c:145: void CON_release(uint16_t key) {
;	-----------------------------------------
;	 function CON_release
;	-----------------------------------------
_CON_release:
	mov	_CON_release_key_65536_50,dpl
	mov	(_CON_release_key_65536_50 + 1),dph
;	src/usb_conkbd.c:149: for(i=1; i<9; i+=2) {
	mov	r5,#0x01
	mov	r3,(_CON_release_key_65536_50 + 1)
	mov	r4,#0x00
00105$:
;	src/usb_conkbd.c:150: if((CON_report[i] == key & 0xFF) && (CON_report[i+1] == key >> 8)) {
	mov	a,r5
	add	a,#_CON_report
	mov	r1,a
	clr	a
	addc	a,#(_CON_report >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	mov	r0,a
	mov	r7,#0x00
	cjne	a,_CON_release_key_65536_50,00106$
	mov	a,r7
	cjne	a,(_CON_release_key_65536_50 + 1),00106$
	mov	ar7,r5
	mov	a,r7
	inc	a
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r0
	add	a,#_CON_report
	mov	dpl,a
	mov	a,r6
	addc	a,#(_CON_report >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r6,#0x00
	cjne	a,ar3,00106$
	mov	a,r6
	cjne	a,ar4,00106$
;	src/usb_conkbd.c:151: CON_report[i]   = 0;
	mov	dpl,r1
	mov	dph,r2
	clr	a
	movx	@dptr,a
;	src/usb_conkbd.c:152: CON_report[i+1] = 0;
	inc	r7
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#_CON_report
	mov	dpl,a
	mov	a,r6
	addc	a,#(_CON_report >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
00106$:
;	src/usb_conkbd.c:149: for(i=1; i<9; i+=2) {
	mov	ar7,r5
	mov	a,#0x02
	add	a,r7
	mov	r5,a
	cjne	r5,#0x09,00129$
00129$:
	jc	00105$
;	src/usb_conkbd.c:155: CON_sendReport();
	mov	_HID_sendReport_PARM_2,#0x09
	mov	dptr,#_CON_report
;	src/usb_conkbd.c:156: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'CON_type'
;------------------------------------------------------------
;key                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/usb_conkbd.c:161: void CON_type(uint16_t key) {
;	-----------------------------------------
;	 function CON_type
;	-----------------------------------------
_CON_type:
;	src/usb_conkbd.c:162: CON_press(key);
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	lcall	_CON_press
	pop	ar6
	pop	ar7
;	src/usb_conkbd.c:163: CON_release(key);
	mov	dpl,r6
	mov	dph,r7
;	src/usb_conkbd.c:164: }
	ljmp	_CON_release
;------------------------------------------------------------
;Allocation info for local variables in function 'CON_releaseAll'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_conkbd.c:169: void CON_releaseAll(void) {
;	-----------------------------------------
;	 function CON_releaseAll
;	-----------------------------------------
_CON_releaseAll:
;	src/usb_conkbd.c:171: for(i=8; i; i--) CON_report[i] = 0;           // delete all keys in report
	mov	r7,#0x08
00102$:
	mov	a,r7
	add	a,#_CON_report
	mov	dpl,a
	clr	a
	addc	a,#(_CON_report >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	djnz	r7,00102$
;	src/usb_conkbd.c:172: CON_sendReport();                             // send report
	mov	_HID_sendReport_PARM_2,#0x09
	mov	dptr,#_CON_report
;	src/usb_conkbd.c:173: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_getState'
;------------------------------------------------------------
;	src/usb_conkbd.c:178: uint8_t KBD_getState(void) {
;	-----------------------------------------
;	 function KBD_getState
;	-----------------------------------------
_KBD_getState:
;	src/usb_conkbd.c:179: return EP2_buffer[0];
	mov	dptr,#_EP2_buffer
	movx	a,@dptr
;	src/usb_conkbd.c:180: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_KBD_map:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x9e	; 158
	.db #0xb4	; 180
	.db #0xa0	; 160
	.db #0xa1	; 161
	.db #0xa2	; 162
	.db #0xa4	; 164
	.db #0x34	; 52	'4'
	.db #0xa6	; 166
	.db #0xa7	; 167
	.db #0xa5	; 165
	.db #0xae	; 174
	.db #0x36	; 54	'6'
	.db #0x2d	; 45
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x27	; 39
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0xb3	; 179
	.db #0x33	; 51	'3'
	.db #0xb6	; 182
	.db #0x2e	; 46
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0x9f	; 159
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0xa3	; 163
	.db #0xad	; 173
	.db #0x35	; 53	'5'
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0xaf	; 175
	.db #0xb1	; 177
	.db #0xb0	; 176
	.db #0xb5	; 181
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
