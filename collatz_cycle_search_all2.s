	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 14, 0
	.globl	__ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo ; -- Begin function _ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo
	.p2align	2
__ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo: ; @_ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
	ldrb	w8, [sp, #8]
	cbz	w8, LBB0_6
; %bb.1:
	add	x8, sp, #24
	add	x8, x8, #128
Lloh3:
	adrp	x9, l_.str@PAGE
Lloh4:
	add	x9, x9, l_.str@PAGEOFF
	mov	x1, x8
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	and	x10, x21, #0x1
	ldrb	w10, [x9, x10]
	strb	w10, [x1, #-1]!
	cmp	x21, #1
	extr	x21, x20, x21, #1
	cset	w10, hi
	cmp	x20, #0
	lsr	x20, x20, #1
	cset	w11, ne
	csel	w10, w10, w11, eq
	tbnz	w10, #0, LBB0_2
; %bb.3:
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x9, x19, x9
	ldr	x0, [x9, #40]
	sub	w8, w8, w1
	sxtw	x20, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp0:
	mov	x2, x20
	blr	x8
Ltmp1:
; %bb.4:
	cmp	x0, x20
	b.eq	LBB0_6
; %bb.5:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp2:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp3:
LBB0_6:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldur	x8, [x29, #-40]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_8
; %bb.7:
	mov	x0, x19
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB0_8:
	bl	___stack_chk_fail
LBB0_9:
Ltmp4:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0                    ;   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp3               ;   Call between Ltmp3 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo ; -- Begin function _ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo
	.p2align	2
__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo: ; @_ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEo
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Lloh8:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh9:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh10:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
	ldrb	w8, [sp, #8]
	cbz	w8, LBB1_6
; %bb.1:
	add	x8, sp, #24
	add	x23, x8, #128
	mov	w24, #10
Lloh11:
	adrp	x25, l_.str@PAGE
Lloh12:
	add	x25, x25, l_.str@PAGEOFF
	mov	x22, x23
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	x1, x21
	mov	w2, #10
	mov	x3, #0
	bl	___udivti3
	cmp	x20, #9
	cset	w8, hi
	cmp	x21, #0
	msub	x9, x0, x24, x20
	ldrb	w9, [x25, x9]
	strb	w9, [x22, #-1]!
	cset	w9, ne
	csel	w8, w8, w9, eq
	mov	x20, x0
	mov	x21, x1
	tbnz	w8, #0, LBB1_2
; %bb.3:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	x0, [x8, #40]
	sub	w8, w23, w22
	sxtw	x20, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp5:
	mov	x1, x22
	mov	x2, x20
	blr	x8
Ltmp6:
; %bb.4:
	cmp	x0, x20
	b.eq	LBB1_6
; %bb.5:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp7:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp8:
LBB1_6:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldur	x8, [x29, #-72]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_8
; %bb.7:
	mov	x0, x19
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
LBB1_8:
	bl	___stack_chk_fail
LBB1_9:
Ltmp9:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp5-Lfunc_begin1             ;   Call between Lfunc_begin1 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp8-Ltmp5                    ;   Call between Ltmp5 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin1             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1             ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp8               ;   Call between Ltmp8 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEn ; -- Begin function _ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEn
	.p2align	2
__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEn: ; @_ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEEn
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Lloh16:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh17:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh18:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
	ldrb	w8, [sp, #8]
	cbz	w8, LBB2_9
; %bb.1:
	tbz	x21, #63, LBB2_4
; %bb.2:
Ltmp10:
Lloh19:
	adrp	x1, l_.str.1@PAGE
Lloh20:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp11:
; %bb.3:
	negs	x20, x20
	ngc	x21, x21
LBB2_4:
	add	x8, sp, #24
	add	x23, x8, #128
	mov	w24, #10
Lloh21:
	adrp	x25, l_.str@PAGE
Lloh22:
	add	x25, x25, l_.str@PAGEOFF
	mov	x22, x23
LBB2_5:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	x1, x21
	mov	w2, #10
	mov	x3, #0
	bl	___divti3
	adds	x8, x20, #9
	cinc	x9, x21, hs
	msub	x10, x0, x24, x20
	ldrb	w10, [x25, x10]
	strb	w10, [x22, #-1]!
	cmp	x8, #18
	cset	w8, hi
	cmp	x9, #0
	cset	w9, ne
	csel	w8, w8, w9, eq
	mov	x20, x0
	mov	x21, x1
	tbnz	w8, #0, LBB2_5
; %bb.6:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	x0, [x8, #40]
	sub	w8, w23, w22
	sxtw	x20, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp13:
	mov	x1, x22
	mov	x2, x20
	blr	x8
Ltmp14:
; %bb.7:
	cmp	x0, x20
	b.eq	LBB2_9
; %bb.8:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp15:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp16:
LBB2_9:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldur	x8, [x29, #-72]
Lloh23:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh24:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh25:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_11
; %bb.10:
	mov	x0, x19
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
LBB2_11:
	bl	___stack_chk_fail
LBB2_12:
Ltmp12:
	b	LBB2_14
LBB2_13:
Ltmp17:
LBB2_14:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh16, Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGotLdr	Lloh23, Lloh24, Lloh25
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp10-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin2            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp13-Ltmp11                  ;   Call between Ltmp11 and Ltmp13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp16-Ltmp13                  ;   Call between Ltmp13 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin2            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp16              ;   Call between Ltmp16 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	mov	x0, x1
	bl	_strlen
	mov	x2, x0
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.cfi_endproc
                                        ; -- End function
	.globl	__ZpLR11__uint384_tRKS_         ; -- Begin function _ZpLR11__uint384_tRKS_
	.p2align	2
__ZpLR11__uint384_tRKS_:                ; @_ZpLR11__uint384_tRKS_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x1]
	ldp	x11, x10, [x0]
	adds	x9, x11, x9
	adc	x8, x10, x8
	stp	x9, x8, [x0]
	ldp	x11, x10, [x1, #16]
	ldp	x13, x12, [x0, #16]
	adds	x11, x13, x11
	adc	x10, x12, x10
	stp	x11, x10, [x0, #16]
	ldp	x13, x12, [x1, #32]
	ldp	x15, x14, [x1, #16]
	cmp	x11, x15
	cset	w15, lo
	cmp	x10, x14
	cset	w14, lo
	csel	w14, w15, w14, eq
	ldp	x16, x15, [x0, #32]
	adds	x13, x16, x13
	adc	x12, x15, x12
	adds	x13, x13, x14
	cinc	x12, x12, hs
	stp	x13, x12, [x0, #32]
	ldp	x15, x14, [x1]
	cmp	x9, x15
	cset	w15, lo
	cmp	x8, x14
	cset	w14, lo
	csel	w14, w15, w14, eq
	adds	x11, x11, x14
	cinc	x10, x10, hs
	orr	x14, x11, x10
	stp	x11, x10, [x0, #16]
	ldp	x11, x10, [x1]
	cmp	x9, x11
	cset	w9, lo
	cmp	x8, x10
	cset	w8, lo
	csel	w8, w9, w8, eq
	cmp	x14, #0
	cset	w9, eq
	and	w8, w8, w9
	adds	x8, x13, x8
	cinc	x9, x12, hs
	stp	x8, x9, [x0, #32]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZplRK11__uint384_tt           ; -- Begin function _ZplRK11__uint384_tt
	.p2align	2
__ZplRK11__uint384_tt:                  ; @_ZplRK11__uint384_tt
	.cfi_startproc
; %bb.0:
	ldp	q0, q1, [x0]
	ldr	q2, [x0, #32]
	stp	q0, q1, [x8]
	str	q2, [x8, #32]
	ldp	x10, x9, [x8]
	adds	x10, x10, w1, uxtw
	cinc	x9, x9, hs
	stp	x10, x9, [x8]
	ldp	x12, x11, [x0]
	cmp	x10, x12
	cset	w10, lo
	cmp	x9, x11
	cset	w9, lo
	csel	w9, w10, w9, eq
	ldp	x11, x10, [x8, #16]
	adds	x9, x11, x9
	cinc	x10, x10, hs
	orr	x11, x9, x10
	stp	x9, x10, [x8, #16]
	cmp	x11, #0
	cset	w9, eq
	ldp	x11, x10, [x8, #32]
	adds	x9, x11, x9
	cinc	x10, x10, hs
	stp	x9, x10, [x8, #32]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmIR11__uint384_tRKS_         ; -- Begin function _ZmIR11__uint384_tRKS_
	.p2align	2
__ZmIR11__uint384_tRKS_:                ; @_ZmIR11__uint384_tRKS_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x1]
	ldp	x11, x10, [x0]
	subs	x9, x11, x9
	mvn	x11, x9
	sbc	x8, x10, x8
	stp	x9, x8, [x0]
	ldp	x10, x9, [x1, #16]
	ldp	x13, x12, [x0, #16]
	subs	x10, x13, x10
	sbc	x9, x12, x9
	stp	x10, x9, [x0, #16]
	ldp	x13, x12, [x1, #32]
	ldp	x15, x14, [x1, #16]
	cmn	x10, x15
	adcs	xzr, x9, x14
	cset	w14, hs
	ldp	x16, x15, [x0, #32]
	subs	x13, x16, x13
	sbc	x12, x15, x12
	subs	x13, x13, x14
	sbc	x12, x12, xzr
	stp	x13, x12, [x0, #32]
	mvn	x8, x8
	ldp	x15, x14, [x1]
	cmp	x15, x11
	cset	w15, hi
	cmp	x14, x8
	cset	w14, hi
	csel	w14, w15, w14, eq
	subs	x10, x10, x14
	sbc	x9, x9, xzr
	and	x14, x10, x9
	stp	x10, x9, [x0, #16]
	ldp	x10, x9, [x1]
	cmp	x10, x11
	cset	w10, hi
	cmp	x9, x8
	cset	w8, hi
	csel	w8, w10, w8, eq
	cmn	x14, #1
	cset	w9, eq
	and	w8, w8, w9
	subs	x8, x13, x8
	sbc	x9, x12, xzr
	stp	x8, x9, [x0, #32]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmitRK11__uint384_t           ; -- Begin function _ZmitRK11__uint384_t
	.p2align	2
__ZmitRK11__uint384_t:                  ; @_ZmitRK11__uint384_t
	.cfi_startproc
; %bb.0:
	mov	w9, w0
	ldp	x11, x10, [x1]
	subs	x9, x9, x11
	ngc	x12, x10
	stp	x9, x12, [x8]
	ldp	x14, x13, [x1, #16]
	ldp	x16, x15, [x1, #32]
	orr	x17, x14, x13
	cmp	x17, #0
	csetm	x17, ne
	subs	x16, x17, x16
	sbc	x15, x17, x15
	cmn	x9, x11
	adcs	xzr, x12, x10
	cset	w9, hs
	sbfx	x10, x9, #0, #1
	subs	x11, x10, x14
	sbc	x10, x10, x13
	and	x12, x11, x10
	stp	x11, x10, [x8, #16]
	cmn	x12, #1
	cset	w10, eq
	and	w9, w9, w10
	subs	x9, x16, x9
	sbc	x10, x15, xzr
	stp	x9, x10, [x8, #32]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZrSR11__uint384_ti            ; -- Begin function _ZrSR11__uint384_ti
	.p2align	2
__ZrSR11__uint384_ti:                   ; @_ZrSR11__uint384_ti
	.cfi_startproc
; %bb.0:
	cmp	w1, #128
	b.hs	LBB8_2
; %bb.1:
	mov	w8, w1
	ldp	x10, x9, [x0]
	lsr	x10, x10, x8
	mvn	w11, w1
	lsl	x12, x9, #1
	lsl	x12, x12, x11
	orr	x10, x12, x10
	lsr	x9, x9, x8
	ldp	x13, x12, [x0, #16]
	mov	w14, #128
	sub	w14, w14, w1
	mvn	w15, w14
	lsl	x16, x13, x14
	tst	x14, #0x40
	csel	x17, xzr, x16, ne
	lsr	x2, x13, #1
	lsr	x2, x2, x15
	lsl	x3, x12, x14
	orr	x2, x3, x2
	csel	x16, x16, x2, ne
	ldp	x3, x2, [x0, #32]
	lsl	x4, x3, x14
	csel	x5, xzr, x4, ne
	lsr	x6, x3, #1
	lsr	x15, x6, x15
	lsl	x14, x2, x14
	orr	x14, x14, x15
	csel	x14, x4, x14, ne
	cmp	w1, #0
	csel	x15, xzr, x16, eq
	csel	x16, xzr, x17, eq
	csel	x14, xzr, x14, eq
	csel	x17, xzr, x5, eq
	tst	x8, #0x40
	csel	x10, x9, x10, ne
	csel	x9, xzr, x9, ne
	orr	x10, x16, x10
	orr	x9, x15, x9
	stp	x10, x9, [x0]
	lsr	x9, x13, x8
	lsl	x10, x12, #1
	lsl	x10, x10, x11
	orr	x9, x10, x9
	lsr	x10, x12, x8
	csel	x9, x10, x9, ne
	csel	x10, xzr, x10, ne
	orr	x9, x17, x9
	orr	x10, x14, x10
	stp	x9, x10, [x0, #16]
	lsr	x9, x3, x8
	lsl	x10, x2, #1
	lsl	x10, x10, x11
	orr	x9, x10, x9
	lsr	x8, x2, x8
	csel	x9, x8, x9, ne
	csel	x8, xzr, x8, ne
	stp	x9, x8, [x0, #32]
	ret
LBB8_2:
	cmp	w1, #256
	b.hs	LBB8_4
; %bb.3:
	ldp	x9, x8, [x0, #32]
	ands	w10, w1, #0x7f
	mov	w11, #128
	sub	w10, w11, w10
	mvn	w11, w10
	lsl	x12, x9, x10
	tst	x10, #0x40
	csel	x13, xzr, x12, ne
	lsr	x14, x9, #1
	lsr	x11, x14, x11
	lsl	x10, x8, x10
	orr	x10, x10, x11
	csel	x10, x12, x10, ne
	ands	w11, w1, #0x7f
	ldp	x14, x12, [x0, #16]
	lsr	x14, x14, x11
	lsl	x15, x12, #1
	mvn	w16, w11
	lsl	x15, x15, x16
	orr	x14, x15, x14
	lsr	x12, x12, x11
	csel	x10, xzr, x10, eq
	csel	x13, xzr, x13, eq
	tst	x11, #0x40
	csel	x14, x12, x14, ne
	csel	x12, xzr, x12, ne
	orr	x13, x13, x14
	orr	x10, x10, x12
	stp	x13, x10, [x0]
	lsr	x9, x9, x11
	lsl	x10, x8, #1
	lsl	x10, x10, x16
	orr	x9, x10, x9
	lsr	x8, x8, x11
	csel	x9, x8, x9, ne
	csel	x8, xzr, x8, ne
	stp	x9, x8, [x0, #16]
	stp	xzr, xzr, [x0, #32]
	ret
LBB8_4:
	ldp	x8, x9, [x0, #32]
	and	w10, w1, #0x7f
	mvn	w11, w1
	lsl	x12, x9, #1
	lsl	x11, x12, x11
	lsr	x8, x8, x10
	orr	x8, x11, x8
	lsr	x9, x9, x10
	tst	x10, #0x40
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	stp	x8, x9, [x0]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZrsRK11__uint384_ti           ; -- Begin function _ZrsRK11__uint384_ti
	.p2align	2
__ZrsRK11__uint384_ti:                  ; @_ZrsRK11__uint384_ti
	.cfi_startproc
; %bb.0:
	ldp	q0, q1, [x0]
	stp	q0, q1, [x8]
	ldr	q0, [x0, #32]
	str	q0, [x8, #32]
	cmp	w1, #128
	b.hs	LBB9_2
; %bb.1:
	mov	w9, w1
	ldp	x11, x10, [x8]
	lsr	x11, x11, x9
	mvn	w12, w1
	lsl	x13, x10, #1
	lsl	x13, x13, x12
	orr	x11, x13, x11
	lsr	x10, x10, x9
	ldp	x14, x13, [x8, #16]
	mov	w15, #128
	sub	w15, w15, w1
	mvn	w16, w15
	lsl	x17, x14, x15
	tst	x15, #0x40
	csel	x0, xzr, x17, ne
	lsr	x2, x14, #1
	lsr	x2, x2, x16
	lsl	x3, x13, x15
	orr	x2, x3, x2
	csel	x17, x17, x2, ne
	ldp	x3, x2, [x8, #32]
	lsl	x4, x3, x15
	csel	x5, xzr, x4, ne
	lsr	x6, x3, #1
	lsr	x16, x6, x16
	lsl	x15, x2, x15
	orr	x15, x15, x16
	csel	x15, x4, x15, ne
	cmp	w1, #0
	csel	x16, xzr, x17, eq
	csel	x17, xzr, x0, eq
	csel	x15, xzr, x15, eq
	csel	x0, xzr, x5, eq
	tst	x9, #0x40
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x11, x17, x11
	orr	x10, x16, x10
	stp	x11, x10, [x8]
	lsr	x10, x14, x9
	lsl	x11, x13, #1
	lsl	x11, x11, x12
	orr	x10, x11, x10
	lsr	x11, x13, x9
	csel	x10, x11, x10, ne
	csel	x11, xzr, x11, ne
	orr	x10, x0, x10
	orr	x11, x15, x11
	stp	x10, x11, [x8, #16]
	lsr	x10, x3, x9
	lsl	x11, x2, #1
	lsl	x11, x11, x12
	orr	x10, x11, x10
	lsr	x9, x2, x9
	csel	x10, x9, x10, ne
	csel	x9, xzr, x9, ne
	stp	x10, x9, [x8, #32]
	ret
LBB9_2:
	cmp	w1, #256
	b.hs	LBB9_4
; %bb.3:
	ldp	x10, x9, [x8, #32]
	ands	w11, w1, #0x7f
	mov	w12, #128
	sub	w11, w12, w11
	mvn	w12, w11
	lsl	x13, x10, x11
	tst	x11, #0x40
	csel	x14, xzr, x13, ne
	lsr	x15, x10, #1
	lsr	x12, x15, x12
	lsl	x11, x9, x11
	orr	x11, x11, x12
	csel	x11, x13, x11, ne
	ands	w12, w1, #0x7f
	ldp	x15, x13, [x8, #16]
	lsr	x15, x15, x12
	lsl	x16, x13, #1
	mvn	w17, w12
	lsl	x16, x16, x17
	orr	x15, x16, x15
	lsr	x13, x13, x12
	csel	x11, xzr, x11, eq
	csel	x14, xzr, x14, eq
	tst	x12, #0x40
	csel	x15, x13, x15, ne
	csel	x13, xzr, x13, ne
	orr	x14, x14, x15
	orr	x11, x11, x13
	stp	x14, x11, [x8]
	lsr	x10, x10, x12
	lsl	x11, x9, #1
	lsl	x11, x11, x17
	orr	x10, x11, x10
	lsr	x9, x9, x12
	csel	x10, x9, x10, ne
	csel	x9, xzr, x9, ne
	stp	x10, x9, [x8, #16]
	stp	xzr, xzr, [x8, #32]
	ret
LBB9_4:
	ldp	x9, x10, [x8, #32]
	and	w11, w1, #0x7f
	mvn	w12, w1
	lsl	x13, x10, #1
	lsl	x12, x13, x12
	lsr	x9, x9, x11
	orr	x9, x12, x9
	lsr	x10, x10, x11
	tst	x11, #0x40
	csel	x9, x10, x9, ne
	csel	x10, xzr, x10, ne
	stp	x9, x10, [x8]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZlSR11__uint384_ti            ; -- Begin function _ZlSR11__uint384_ti
	.p2align	2
__ZlSR11__uint384_ti:                   ; @_ZlSR11__uint384_ti
	.cfi_startproc
; %bb.0:
	cmp	w1, #128
	b.hs	LBB10_2
; %bb.1:
	ldp	x9, x8, [x0, #32]
	lsr	x10, x9, #1
	mvn	w11, w1
	lsr	x10, x10, x11
	mov	w12, w1
	lsl	x8, x8, x12
	orr	x8, x8, x10
	lsl	x9, x9, x12
	ldp	x10, x13, [x0, #16]
	mov	w14, #128
	sub	w14, w14, w1
	mvn	w15, w14
	lsr	x16, x13, x14
	tst	x14, #0x40
	csel	x17, xzr, x16, ne
	lsr	x2, x10, x14
	lsl	x3, x13, #1
	lsl	x3, x3, x15
	orr	x2, x3, x2
	csel	x16, x16, x2, ne
	ldp	x2, x3, [x0]
	lsr	x4, x3, x14
	csel	x5, xzr, x4, ne
	lsr	x14, x2, x14
	lsl	x6, x3, #1
	lsl	x15, x6, x15
	orr	x14, x15, x14
	csel	x14, x4, x14, ne
	cmp	w1, #0
	csel	x15, xzr, x16, eq
	csel	x16, xzr, x17, eq
	csel	x14, xzr, x14, eq
	csel	x17, xzr, x5, eq
	tst	x12, #0x40
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	orr	x8, x16, x8
	orr	x9, x15, x9
	stp	x9, x8, [x0, #32]
	lsr	x8, x10, #1
	lsr	x8, x8, x11
	lsl	x9, x13, x12
	orr	x8, x9, x8
	lsl	x9, x10, x12
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	orr	x8, x17, x8
	orr	x9, x14, x9
	stp	x9, x8, [x0, #16]
	lsr	x8, x2, #1
	lsr	x8, x8, x11
	lsl	x9, x3, x12
	orr	x8, x9, x8
	lsl	x9, x2, x12
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	stp	x9, x8, [x0]
	ret
LBB10_2:
	cmp	w1, #256
	b.hs	LBB10_4
; %bb.3:
	ldp	x8, x9, [x0]
	ands	w10, w1, #0x7f
	mov	w11, #128
	sub	w10, w11, w10
	mvn	w11, w10
	lsr	x12, x9, x10
	tst	x10, #0x40
	csel	x13, xzr, x12, ne
	lsr	x10, x8, x10
	lsl	x14, x9, #1
	lsl	x11, x14, x11
	orr	x10, x11, x10
	csel	x10, x12, x10, ne
	ands	w11, w1, #0x7f
	ldp	x14, x12, [x0, #16]
	lsr	x15, x14, #1
	mvn	w16, w11
	lsr	x15, x15, x16
	lsl	x12, x12, x11
	orr	x12, x12, x15
	lsl	x14, x14, x11
	csel	x10, xzr, x10, eq
	csel	x13, xzr, x13, eq
	tst	x11, #0x40
	csel	x12, x14, x12, ne
	csel	x14, xzr, x14, ne
	orr	x12, x13, x12
	orr	x10, x10, x14
	stp	x10, x12, [x0, #32]
	lsr	x10, x8, #1
	lsr	x10, x10, x16
	lsl	x9, x9, x11
	orr	x9, x9, x10
	lsl	x8, x8, x11
	csel	x9, x8, x9, ne
	csel	x8, xzr, x8, ne
	stp	x8, x9, [x0, #16]
	stp	xzr, xzr, [x0]
	ret
LBB10_4:
	ldp	x9, x8, [x0]
	and	w10, w1, #0x7f
	mvn	w11, w1
	lsr	x12, x9, #1
	lsr	x11, x12, x11
	lsl	x8, x8, x10
	orr	x8, x8, x11
	lsl	x9, x9, x10
	tst	x10, #0x40
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	stp	x9, x8, [x0, #32]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZanRK11__uint384_ti           ; -- Begin function _ZanRK11__uint384_ti
	.p2align	2
__ZanRK11__uint384_ti:                  ; @_ZanRK11__uint384_ti
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w1 killed $w1 def $x1
	ldp	x9, x8, [x0]
	sxtw	x10, w1
	and	x0, x9, x10
	and	x1, x8, x10, asr #63
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmlbRK11__uint384_t           ; -- Begin function _ZmlbRK11__uint384_t
	.p2align	2
__ZmlbRK11__uint384_t:                  ; @_ZmlbRK11__uint384_t
	.cfi_startproc
; %bb.0:
	cbz	w0, LBB12_2
; %bb.1:
	ldp	q0, q1, [x1]
	stp	q0, q1, [x8]
	ldr	q0, [x1, #32]
	str	q0, [x8, #32]
	ret
LBB12_2:
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	str	q0, [x8]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmlRKoRK11__uint384_t         ; -- Begin function _ZmlRKoRK11__uint384_t
	.p2align	2
__ZmlRKoRK11__uint384_t:                ; @_ZmlRKoRK11__uint384_t
	.cfi_startproc
; %bb.0:
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	ldp	x10, x9, [x0]
	ldp	x12, x11, [x1]
	umulh	x13, x12, x10
	mul	x14, x12, x10
	umulh	x15, x12, x9
	mul	x12, x12, x9
	umulh	x16, x11, x10
	mul	x17, x11, x10
	adds	x13, x13, x17
	ldp	x17, x0, [x8, #16]
	adc	x16, x17, x16
	adds	x12, x13, x12
	cinc	x13, x16, hs
	stp	x14, x12, [x8]
	umulh	x12, x11, x9
	mul	x11, x11, x9
	adds	x11, x15, x11
	cinc	x12, x12, hs
	adds	x11, x11, x13
	adc	x12, x12, x0
	ldp	x14, x13, [x1, #16]
	mul	x15, x14, x10
	umulh	x16, x14, x10
	umulh	x17, x14, x9
	mul	x14, x14, x9
	umulh	x0, x13, x10
	mul	x2, x13, x10
	adds	x16, x16, x2
	ldp	x2, x3, [x8, #32]
	adc	x0, x2, x0
	adds	x14, x16, x14
	cinc	x16, x0, hs
	umulh	x0, x13, x9
	mul	x13, x13, x9
	adds	x13, x17, x13
	cinc	x17, x0, hs
	adds	x11, x15, x11
	adcs	x12, x14, x12
	stp	x11, x12, [x8, #16]
	adcs	x11, x13, xzr
	cinc	x12, x17, hs
	ldp	x14, x13, [x1, #32]
	umulh	x15, x14, x10
	madd	x9, x14, x9, x15
	madd	x9, x13, x10, x9
	mul	x10, x14, x10
	adds	x10, x11, x10
	adc	x9, x12, x9
	adds	x10, x10, x16
	adc	x9, x9, x3
	stp	x10, x9, [x8, #32]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmliRK11__uint384_t           ; -- Begin function _ZmliRK11__uint384_t
	.p2align	2
__ZmliRK11__uint384_t:                  ; @_ZmliRK11__uint384_t
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	sxtw	x9, w0
	asr	x10, x9, #63
	ldp	x12, x11, [x1]
	umulh	x13, x12, x9
	madd	x13, x12, x10, x13
	mul	x12, x12, x9
	umulh	x14, x11, x9
	madd	x14, x11, x10, x14
	mul	x11, x11, x9
	adds	x11, x13, x11
	ldp	x13, x15, [x8, #16]
	adc	x13, x13, x14
	stp	x12, x11, [x8]
	ldp	x12, x11, [x1, #16]
	umulh	x14, x12, x9
	madd	x14, x12, x10, x14
	mul	x12, x12, x9
	adds	x12, x12, x13
	adc	x13, x14, x15
	umulh	x14, x11, x9
	madd	x14, x11, x10, x14
	mul	x11, x11, x9
	adds	x11, x13, x11
	ldp	x13, x15, [x8, #32]
	adc	x13, x13, x14
	stp	x12, x11, [x8, #16]
	ldp	x12, x11, [x1, #32]
	umulh	x14, x12, x9
	madd	x10, x12, x10, x14
	madd	x10, x11, x9, x10
	mul	x9, x12, x9
	adds	x9, x13, x9
	adc	x10, x15, x10
	stp	x9, x10, [x8, #32]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmlRK11__uint384_tS1_         ; -- Begin function _ZmlRK11__uint384_tS1_
	.p2align	2
__ZmlRK11__uint384_tS1_:                ; @_ZmlRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh26:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh27:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh28:
	ldr	x9, [x9]
	stur	x9, [x29, #-8]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	ldp	x12, x11, [x0]
	ldp	x9, x10, [x1]
	umulh	x13, x9, x12
	mul	x14, x9, x12
	umulh	x15, x9, x11
	mul	x16, x9, x11
	umulh	x17, x10, x12
	mul	x2, x10, x12
	adds	x13, x13, x2
	ldp	x2, x3, [x8, #16]
	adc	x17, x2, x17
	adds	x13, x13, x16
	cinc	x16, x17, hs
	stp	x14, x13, [x8]
	umulh	x13, x10, x11
	mul	x14, x10, x11
	adds	x14, x15, x14
	cinc	x13, x13, hs
	adds	x14, x14, x16
	adc	x13, x13, x3
	ldp	x16, x15, [x1, #16]
	umulh	x17, x16, x12
	mul	x2, x16, x12
	umulh	x3, x16, x11
	mul	x4, x16, x11
	umulh	x5, x15, x12
	mul	x6, x15, x12
	adds	x17, x17, x6
	ldp	x6, x7, [x8, #32]
	adc	x5, x6, x5
	adds	x17, x17, x4
	cinc	x4, x5, hs
	stp	x2, x17, [x8, #16]
	umulh	x5, x15, x11
	mul	x6, x15, x11
	adds	x3, x3, x6
	cinc	x5, x5, hs
	adds	x14, x2, x14
	adcs	x13, x17, x13
	adcs	x17, x3, xzr
	cinc	x2, x5, hs
	ldp	x1, x3, [x1, #32]
	umulh	x5, x1, x12
	madd	x11, x1, x11, x5
	madd	x11, x3, x12, x11
	mul	x12, x1, x12
	adds	x12, x17, x12
	adc	x11, x2, x11
	adds	x12, x12, x4
	adc	x11, x11, x7
	ldp	x1, x17, [x0, #16]
	mul	x2, x1, x9
	umulh	x3, x1, x9
	umulh	x5, x17, x9
	mul	x6, x17, x9
	mul	x7, x1, x10
	adds	x6, x6, x7
	umulh	x7, x1, x10
	cinc	x7, x7, hs
	adds	x3, x6, x3
	cinc	x6, x7, hs
	mul	x7, x17, x10
	adds	x5, x5, x7
	umulh	x7, x17, x10
	cinc	x7, x7, hs
	adds	x5, x5, x6
	cinc	x6, x7, hs
	umulh	x7, x1, x16
	madd	x15, x1, x15, x7
	madd	x15, x17, x16, x15
	mul	x16, x1, x16
	adds	x12, x16, x12
	adc	x11, x15, x11
	adds	x12, x12, x5
	adc	x11, x11, x6
	adds	x14, x2, x14
	adcs	x13, x3, x13
	stp	x14, x13, [x8, #16]
	ldp	x14, x13, [x0, #32]
	umulh	x15, x14, x9
	madd	x10, x14, x10, x15
	madd	x10, x13, x9, x10
	mul	x9, x14, x9
	adcs	x12, x12, xzr
	cinc	x11, x11, hs
	adds	x9, x12, x9
	adc	x10, x11, x10
	stp	x4, x10, [x8, #32]
	str	x9, [x8, #32]
	ldur	x8, [x29, #-8]
Lloh29:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh30:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh31:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB15_2
; %bb.1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB15_2:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh29, Lloh30, Lloh31
	.loh AdrpLdrGotLdr	Lloh26, Lloh27, Lloh28
	.cfi_endproc
                                        ; -- End function
	.globl	__ZgeRK11__uint384_tS1_         ; -- Begin function _ZgeRK11__uint384_tS1_
	.p2align	2
__ZgeRK11__uint384_tS1_:                ; @_ZgeRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #32]
	ldp	x11, x10, [x1, #32]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB16_3
; %bb.1:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB16_3
; %bb.2:
	ldp	x9, x8, [x0]
	ldp	x11, x10, [x1]
	cmp	x9, x11
	cset	w9, hs
	cmp	x8, x10
	cset	w8, hs
	csel	w0, w9, w8, eq
	ret
LBB16_3:
	cmp	x9, x11
	cset	w9, hi
	cmp	x8, x10
	cset	w8, hi
	csel	w0, w9, w8, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZgtRK11__uint384_tS1_         ; -- Begin function _ZgtRK11__uint384_tS1_
	.p2align	2
__ZgtRK11__uint384_tS1_:                ; @_ZgtRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #32]
	ldp	x11, x10, [x1, #32]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB17_3
; %bb.1:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB17_3
; %bb.2:
	ldp	x9, x8, [x0]
	ldp	x11, x10, [x1]
LBB17_3:
	cmp	x9, x11
	cset	w9, hi
	cmp	x8, x10
	cset	w8, hi
	csel	w0, w9, w8, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZleRK11__uint384_tS1_         ; -- Begin function _ZleRK11__uint384_tS1_
	.p2align	2
__ZleRK11__uint384_tS1_:                ; @_ZleRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #32]
	ldp	x11, x10, [x1, #32]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB18_3
; %bb.1:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB18_3
; %bb.2:
	ldp	x9, x8, [x0]
	ldp	x11, x10, [x1]
	cmp	x9, x11
	cset	w9, ls
	cmp	x8, x10
	cset	w8, ls
	csel	w0, w9, w8, eq
	ret
LBB18_3:
	cmp	x9, x11
	cset	w9, lo
	cmp	x8, x10
	cset	w8, lo
	csel	w0, w9, w8, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZltRK11__uint384_tS1_         ; -- Begin function _ZltRK11__uint384_tS1_
	.p2align	2
__ZltRK11__uint384_tS1_:                ; @_ZltRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #32]
	ldp	x11, x10, [x1, #32]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB19_3
; %bb.1:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB19_3
; %bb.2:
	ldp	x9, x8, [x0]
	ldp	x11, x10, [x1]
LBB19_3:
	cmp	x9, x11
	cset	w9, lo
	cmp	x8, x10
	cset	w8, lo
	csel	w0, w9, w8, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZeqRK11__uint384_tS1_         ; -- Begin function _ZeqRK11__uint384_tS1_
	.p2align	2
__ZeqRK11__uint384_tS1_:                ; @_ZeqRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0, #32]
	ldp	x10, x11, [x1, #32]
	eor	x9, x9, x11
	eor	x8, x8, x10
	orr	x8, x8, x9
	ldp	x9, x10, [x0, #16]
	ldp	x11, x12, [x1, #16]
	eor	x10, x10, x12
	eor	x9, x9, x11
	orr	x9, x9, x10
	orr	x8, x8, x9
	ldp	x9, x10, [x0]
	ldp	x11, x12, [x1]
	eor	x10, x10, x12
	eor	x9, x9, x11
	orr	x9, x9, x10
	orr	x8, x8, x9
	cmp	x8, #0
	cset	w0, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZneRK11__uint384_tS1_         ; -- Begin function _ZneRK11__uint384_tS1_
	.p2align	2
__ZneRK11__uint384_tS1_:                ; @_ZneRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0, #32]
	ldp	x10, x11, [x1, #32]
	eor	x9, x9, x11
	eor	x8, x8, x10
	orr	x8, x8, x9
	ldp	x9, x10, [x0, #16]
	ldp	x11, x12, [x1, #16]
	eor	x10, x10, x12
	eor	x9, x9, x11
	orr	x9, x9, x10
	orr	x8, x8, x9
	ldp	x9, x10, [x0]
	ldp	x11, x12, [x1]
	eor	x10, x10, x12
	eor	x9, x9, x11
	orr	x9, x9, x10
	orr	x8, x8, x9
	cmp	x8, #0
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZgtRK11__uint384_ti           ; -- Begin function _ZgtRK11__uint384_ti
	.p2align	2
__ZgtRK11__uint384_ti:                  ; @_ZgtRK11__uint384_ti
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w1 killed $w1 def $x1
	ldp	x8, x9, [x0, #32]
	ldp	x10, x11, [x0, #16]
	orr	x9, x11, x9
	orr	x8, x10, x8
	orr	x8, x8, x9
	cmp	x8, #0
	cset	w8, ne
	ldp	x10, x9, [x0]
	sxtw	x11, w1
	cmp	x10, x11
	cset	w10, hi
	cmp	x9, x11, asr #63
	cset	w9, hi
	csel	w9, w10, w9, eq
	orr	w0, w8, w9
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZeqRK11__uint384_ti           ; -- Begin function _ZeqRK11__uint384_ti
	.p2align	2
__ZeqRK11__uint384_ti:                  ; @_ZeqRK11__uint384_ti
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w1 killed $w1 def $x1
	ldp	x8, x9, [x0, #32]
	ldp	x10, x11, [x0, #16]
	orr	x9, x11, x9
	orr	x8, x10, x8
	orr	x8, x8, x9
	ldp	x9, x10, [x0]
	sxtw	x11, w1
	eor	x10, x10, x11, asr #63
	eor	x9, x9, x11
	orr	x9, x9, x10
	orr	x8, x8, x9
	cmp	x8, #0
	cset	w0, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZrMR11__uint384_tRKS_         ; -- Begin function _ZrMR11__uint384_tRKS_
	.p2align	2
__ZrMR11__uint384_tRKS_:                ; @_ZrMR11__uint384_tRKS_
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	ldp	x14, x15, [x0, #32]
	ldp	x12, x13, [x1, #32]
	eor	x8, x15, x13
	eor	x9, x14, x12
	orr	x8, x9, x8
	cbnz	x8, LBB24_3
; %bb.1:
	ldp	x16, x17, [x0, #16]
	ldp	x10, x11, [x1, #16]
	eor	x8, x17, x11
	eor	x9, x16, x10
	orr	x8, x9, x8
	cbnz	x8, LBB24_5
; %bb.2:
	ldp	x9, x8, [x0]
	ldp	x11, x10, [x1]
	cmp	x9, x11
	cset	w9, lo
	cmp	x8, x10
	cset	w8, lo
	csel	w8, w9, w8, eq
	mov	x10, x16
	mov	x11, x17
	tbz	w8, #0, LBB24_6
	b	LBB24_24
LBB24_3:
	cmp	x14, x12
	cset	w8, ls
	cmp	x15, x13
	cset	w9, ls
	csel	w8, w8, w9, eq
	tbnz	w8, #0, LBB24_24
; %bb.4:
	ldp	x10, x11, [x1, #16]
	ldp	x16, x17, [x0, #16]
	b	LBB24_6
LBB24_5:
	cmp	x16, x10
	cset	w8, ls
	cmp	x17, x11
	cset	w9, ls
	csel	w8, w8, w9, eq
	tbnz	w8, #0, LBB24_24
LBB24_6:
	ldp	x8, x9, [x1]
	orr	x14, x14, x15
	orr	x15, x16, x17
	cmp	x15, #0
	cset	w15, ne
	cmp	x14, #0
	mov	w16, #2
	csel	w14, w15, w16, eq
	add	x15, x0, w14, uxtw #4
	ldp	x2, x3, [x15]
	cmp	x3, #0
	cset	w4, ne
	lsl	w17, w4, #6
	mov	w15, #32
	mov	w5, #32
	bfi	w5, w4, #6, #1
	lsr	x4, x3, #32
	tst	x5, #0x40
	csel	x5, xzr, x4, ne
	lsr	x6, x2, #32
	bfi	x6, x3, #32, #32
	csel	x4, x4, x6, ne
	orr	x4, x4, x5
	cmp	x4, #0
	cset	w5, ne
	lsl	x4, x3, #1
	bfi	w17, w5, #5, #1
	orr	w5, w17, #0x10
	and	x6, x5, #0x30
	lsr	x7, x3, x6
	tst	x5, #0x40
	csel	x19, xzr, x7, ne
	lsr	x6, x2, x6
	mvn	x5, x5
	and	x5, x5, #0x3f
	lsl	x5, x4, x5
	orr	x5, x5, x6
	csel	x5, x7, x5, ne
	orr	x5, x5, x19
	cmp	x5, #0
	cset	w5, ne
	bfi	w17, w5, #4, #1
	orr	w5, w17, #0x8
	and	x6, x5, #0x38
	lsr	x7, x3, x6
	tst	x5, #0x40
	csel	x19, xzr, x7, ne
	lsr	x6, x2, x6
	mvn	x5, x5
	and	x5, x5, #0x3f
	lsl	x5, x4, x5
	orr	x5, x5, x6
	csel	x5, x7, x5, ne
	orr	x5, x5, x19
	cmp	x5, #0
	cset	w5, ne
	bfi	w17, w5, #3, #1
	orr	w5, w17, #0x4
	and	x6, x5, #0x3c
	lsr	x7, x3, x6
	tst	x5, #0x40
	csel	x19, xzr, x7, ne
	lsr	x6, x2, x6
	mvn	x5, x5
	and	x5, x5, #0x3f
	lsl	x5, x4, x5
	orr	x5, x5, x6
	csel	x5, x7, x5, ne
	orr	x5, x5, x19
	cmp	x5, #0
	cset	w5, ne
	bfi	w17, w5, #2, #1
	orr	w5, w17, #0x2
	lsr	x6, x3, x5
	tst	x5, #0x40
	csel	x7, xzr, x6, ne
	lsr	x19, x2, x5
	mvn	x5, x5
	and	x5, x5, #0x3f
	lsl	x5, x4, x5
	orr	x5, x5, x19
	csel	x5, x6, x5, ne
	orr	x5, x5, x7
	cmp	x5, #0
	cset	w5, ne
	bfi	w17, w5, #1, #1
	orr	w5, w17, #0x1
	lsr	x3, x3, x5
	tst	x5, #0x40
	csel	x6, xzr, x3, ne
	lsr	x2, x2, x5
	mvn	w5, w17
	and	x5, x5, #0x3e
	lsl	x4, x4, x5
	orr	x2, x4, x2
	csel	x2, x3, x2, ne
	orr	x2, x2, x6
	cmp	x2, #0
	cset	w2, ne
	orr	w17, w17, w2
	add	w14, w17, w14, lsl #7
	orr	x12, x12, x13
	orr	x13, x10, x11
	cmp	x13, #0
	cset	w13, ne
	cmp	x12, #0
	csel	w12, w13, w16, eq
	add	x13, x1, w12, uxtw #4
	ldp	x16, x17, [x13]
	cmp	x17, #0
	cset	w2, ne
	lsl	w13, w2, #6
	bfi	w15, w2, #6, #1
	lsr	x2, x17, #32
	tst	x15, #0x40
	csel	x15, xzr, x2, ne
	lsr	x3, x16, #32
	bfi	x3, x17, #32, #32
	csel	x2, x2, x3, ne
	orr	x15, x2, x15
	cmp	x15, #0
	cset	w2, ne
	lsl	x15, x17, #1
	bfi	w13, w2, #5, #1
	orr	w2, w13, #0x10
	and	x3, x2, #0x30
	lsr	x4, x17, x3
	tst	x2, #0x40
	csel	x5, xzr, x4, ne
	lsr	x3, x16, x3
	mvn	x2, x2
	and	x2, x2, #0x3f
	lsl	x2, x15, x2
	orr	x2, x2, x3
	csel	x2, x4, x2, ne
	orr	x2, x2, x5
	cmp	x2, #0
	cset	w2, ne
	bfi	w13, w2, #4, #1
	orr	w2, w13, #0x8
	and	x3, x2, #0x38
	lsr	x4, x17, x3
	tst	x2, #0x40
	csel	x5, xzr, x4, ne
	lsr	x3, x16, x3
	mvn	x2, x2
	and	x2, x2, #0x3f
	lsl	x2, x15, x2
	orr	x2, x2, x3
	csel	x2, x4, x2, ne
	orr	x2, x2, x5
	cmp	x2, #0
	cset	w2, ne
	bfi	w13, w2, #3, #1
	orr	w2, w13, #0x4
	and	x3, x2, #0x3c
	lsr	x4, x17, x3
	tst	x2, #0x40
	csel	x5, xzr, x4, ne
	lsr	x3, x16, x3
	mvn	x2, x2
	and	x2, x2, #0x3f
	lsl	x2, x15, x2
	orr	x2, x2, x3
	csel	x2, x4, x2, ne
	orr	x2, x2, x5
	cmp	x2, #0
	cset	w2, ne
	bfi	w13, w2, #2, #1
	orr	w2, w13, #0x2
	lsr	x3, x17, x2
	tst	x2, #0x40
	csel	x4, xzr, x3, ne
	lsr	x5, x16, x2
	mvn	x2, x2
	and	x2, x2, #0x3f
	lsl	x2, x15, x2
	orr	x2, x2, x5
	csel	x2, x3, x2, ne
	orr	x2, x2, x4
	cmp	x2, #0
	cset	w2, ne
	bfi	w13, w2, #1, #1
	orr	w2, w13, #0x1
	lsr	x17, x17, x2
	tst	x2, #0x40
	csel	x3, xzr, x17, ne
	lsr	x16, x16, x2
	mvn	w2, w13
	and	x2, x2, #0x3e
	lsl	x15, x15, x2
	orr	x15, x15, x16
	csel	x15, x17, x15, ne
	orr	x15, x15, x3
	cmp	x15, #0
	cset	w15, ne
	orr	w13, w13, w15
	add	w13, w13, w12, lsl #7
	sub	w12, w14, w13
	and	w12, w12, #0xffff
	cmp	w12, #128
	b.hs	LBB24_8
; %bb.7:
	ldp	x16, x15, [x1, #32]
	lsr	x17, x16, #1
	mvn	w2, w12
	lsr	x17, x17, x2
	lsl	x15, x15, x12
	orr	x15, x15, x17
	and	w14, w14, #0xffff
	mov	w17, #128
	sub	w17, w17, w12
	mvn	w3, w17
	lsr	x4, x11, x17
	tst	x17, #0x40
	csel	x5, xzr, x4, ne
	lsr	x6, x10, x17
	lsl	x7, x11, #1
	lsl	x7, x7, x3
	orr	x6, x7, x6
	csel	x4, x4, x6, ne
	lsr	x6, x9, x17
	csel	x7, xzr, x6, ne
	lsr	x17, x8, x17
	lsl	x19, x9, #1
	lsl	x3, x19, x3
	orr	x17, x3, x17
	csel	x17, x6, x17, ne
	cmp	w14, w13, uxth
	lsl	x13, x16, x12
	csel	x16, xzr, x4, eq
	csel	x14, xzr, x5, eq
	csel	x17, xzr, x17, eq
	csel	x3, xzr, x7, eq
	tst	x12, #0x40
	csel	x15, x13, x15, ne
	csel	x13, xzr, x13, ne
	orr	x14, x15, x14
	orr	x15, x13, x16
	lsr	x13, x10, #1
	lsr	x13, x13, x2
	lsl	x11, x11, x12
	orr	x11, x11, x13
	lsl	x10, x10, x12
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x11, x3, x11
	orr	x10, x17, x10
	lsr	x13, x8, #1
	lsr	x13, x13, x2
	lsl	x9, x9, x12
	orr	x9, x9, x13
	lsl	x8, x8, x12
	csel	x13, x8, x9, ne
	csel	x12, xzr, x8, ne
	b	LBB24_11
LBB24_8:
	and	w16, w12, #0x7f
	cmp	w12, #256
	b.hs	LBB24_10
; %bb.9:
	mov	x12, #0
	mov	x13, #0
	lsr	x14, x10, #1
	mvn	w17, w16
	lsr	x14, x14, x17
	lsl	x11, x11, x16
	orr	x11, x11, x14
	lsl	x10, x10, x16
	mov	w14, #128
	sub	w14, w14, w16
	mvn	w15, w14
	lsl	x2, x9, #1
	lsl	x15, x2, x15
	lsr	x2, x9, x14
	tst	x14, #0x40
	lsr	x14, x8, x14
	orr	x14, x15, x14
	csel	x15, xzr, x2, ne
	csel	x14, x2, x14, ne
	cmp	w16, #0
	csel	x2, xzr, x14, eq
	csel	x14, xzr, x15, eq
	tst	x16, #0x40
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x14, x14, x11
	orr	x15, x2, x10
	lsr	x10, x8, #1
	lsr	x10, x10, x17
	lsl	x9, x9, x16
	orr	x9, x9, x10
	lsl	x8, x8, x16
	csel	x11, x8, x9, ne
	csel	x10, xzr, x8, ne
	b	LBB24_11
LBB24_10:
	mov	x12, #0
	mov	x13, #0
	mov	x10, #0
	mov	x11, #0
	mvn	w14, w16
	lsr	x15, x8, #1
	lsr	x14, x15, x14
	lsl	x9, x9, x16
	orr	x9, x9, x14
	lsl	x8, x8, x16
	tst	x16, #0x40
	csel	x14, x8, x9, ne
	csel	x15, xzr, x8, ne
LBB24_11:
	ldp	x9, x8, [x0, #32]
	b	LBB24_14
LBB24_12:                               ;   in Loop: Header=BB24_14 Depth=1
	mov	x16, #0
	mov	x17, #0
	mov	x2, #0
	mov	x3, #0
	mov	x4, #0
	mov	x5, #0
LBB24_13:                               ;   in Loop: Header=BB24_14 Depth=1
	ldp	x7, x6, [x0]
	subs	x7, x7, x16
	sbc	x6, x6, x17
	stp	x7, x6, [x0]
	ldp	x20, x19, [x0, #16]
	subs	x20, x20, x2
	sbc	x19, x19, x3
	cmn	x20, x2
	adcs	xzr, x19, x3
	cset	w2, hs
	subs	x9, x9, x4
	sbc	x8, x8, x5
	subs	x9, x9, x2
	sbc	x8, x8, xzr
	cmn	x7, x16
	adcs	xzr, x6, x17
	cset	w16, hs
	subs	x17, x20, x16
	sbc	x2, x19, xzr
	and	x3, x17, x2
	stp	x17, x2, [x0, #16]
	extr	x12, x13, x12, #1
	cmn	x3, #1
	cset	w17, eq
	extr	x13, x10, x13, #1
	and	w16, w16, w17
	subs	x9, x9, x16
	sbc	x8, x8, xzr
	extr	x10, x11, x10, #1
	extr	x11, x15, x11, #1
	stp	x9, x8, [x0, #32]
	extr	x15, x14, x15, #1
	lsr	x14, x14, #1
LBB24_14:                               ; =>This Inner Loop Header: Depth=1
	ldp	x17, x16, [x1, #32]
	eor	x2, x8, x16
	eor	x3, x9, x17
	orr	x2, x3, x2
	cbnz	x2, LBB24_17
; %bb.15:                               ;   in Loop: Header=BB24_14 Depth=1
	ldp	x17, x16, [x0, #16]
	ldp	x3, x2, [x1, #16]
	eor	x4, x16, x2
	eor	x5, x17, x3
	orr	x4, x5, x4
	cbnz	x4, LBB24_18
; %bb.16:                               ;   in Loop: Header=BB24_14 Depth=1
	ldp	x17, x16, [x0]
	ldp	x3, x2, [x1]
	cmp	x17, x3
	cset	w17, lo
	cmp	x16, x2
	cset	w16, lo
	csel	w16, w17, w16, eq
	tbz	w16, #0, LBB24_19
	b	LBB24_24
LBB24_17:                               ;   in Loop: Header=BB24_14 Depth=1
	cmp	x9, x17
	cset	w17, hi
	cmp	x8, x16
	cset	w16, hi
	csel	w16, w17, w16, eq
	tbnz	w16, #0, LBB24_19
	b	LBB24_24
LBB24_18:                               ;   in Loop: Header=BB24_14 Depth=1
	cmp	x17, x3
	cset	w17, ls
	cmp	x16, x2
	cset	w16, ls
	csel	w16, w17, w16, eq
	tbnz	w16, #0, LBB24_24
LBB24_19:                               ;   in Loop: Header=BB24_14 Depth=1
	eor	x16, x9, x15
	eor	x17, x8, x14
	orr	x16, x16, x17
	cbnz	x16, LBB24_22
; %bb.20:                               ;   in Loop: Header=BB24_14 Depth=1
	ldp	x17, x16, [x0, #16]
	eor	x2, x16, x11
	eor	x3, x17, x10
	orr	x2, x3, x2
	cbnz	x2, LBB24_23
; %bb.21:                               ;   in Loop: Header=BB24_14 Depth=1
	ldp	x17, x16, [x0]
	cmp	x17, x12
	cset	w17, lo
	cmp	x16, x13
	cset	w16, lo
	csel	w6, w17, w16, eq
	mov	x16, x12
	mov	x17, x13
	mov	x2, x10
	mov	x3, x11
	mov	x4, x9
	mov	x5, x8
	tbnz	w6, #0, LBB24_12
	b	LBB24_13
LBB24_22:                               ;   in Loop: Header=BB24_14 Depth=1
	cmp	x9, x15
	cset	w16, hi
	cmp	x8, x14
	cset	w17, hi
	csel	w6, w16, w17, eq
	mov	x16, x12
	mov	x17, x13
	mov	x2, x10
	mov	x3, x11
	mov	x4, x15
	mov	x5, x14
	tbz	w6, #0, LBB24_12
	b	LBB24_13
LBB24_23:                               ;   in Loop: Header=BB24_14 Depth=1
	cmp	x17, x10
	cset	w17, hi
	cmp	x16, x11
	cset	w16, hi
	csel	w6, w17, w16, eq
	mov	x16, x12
	mov	x17, x13
	mov	x2, x10
	mov	x3, x11
	mov	x4, x9
	mov	x5, x8
	tbz	w6, #0, LBB24_12
	b	LBB24_13
LBB24_24:
	ldp	x20, x19, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZrmRK11__uint384_tS1_         ; -- Begin function _ZrmRK11__uint384_tS1_
	.p2align	2
__ZrmRK11__uint384_tS1_:                ; @_ZrmRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	ldp	q0, q1, [x0]
	stp	q0, q1, [x8]
	ldr	q0, [x0, #32]
	str	q0, [x8, #32]
	mov	x0, x8
	b	__ZrMR11__uint384_tRKS_
	.cfi_endproc
                                        ; -- End function
	.globl	__Z6divmodRK11__uint384_tS1_    ; -- Begin function _Z6divmodRK11__uint384_tS1_
	.p2align	2
__Z6divmodRK11__uint384_tS1_:           ; @_Z6divmodRK11__uint384_tS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x16, x8
	ldp	x8, x24, [x0]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	ldp	x12, x27, [x0, #16]
	ldp	x13, x14, [x0, #32]
	ldp	x11, x30, [x1, #32]
	eor	x8, x14, x30
	eor	x9, x13, x11
	orr	x8, x9, x8
	cbnz	x8, LBB26_3
; %bb.1:
	ldp	x22, x25, [x1, #16]
	eor	x8, x27, x25
	eor	x9, x12, x22
	orr	x8, x9, x8
	cbnz	x8, LBB26_5
; %bb.2:
	ldp	x9, x8, [x1]
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
	cmp	x10, x9
	cset	w9, lo
	cmp	x24, x8
	cset	w8, lo
	csel	w8, w9, w8, eq
	mov	x22, x12
	mov	x25, x27
	tbz	w8, #0, LBB26_6
	b	LBB26_8
LBB26_3:
	cmp	x13, x11
	cset	w8, ls
	cmp	x14, x30
	cset	w9, ls
	csel	w8, w8, w9, eq
	tbnz	w8, #0, LBB26_8
; %bb.4:
	ldp	x22, x25, [x1, #16]
	b	LBB26_6
LBB26_5:
	cmp	x12, x22
	cset	w8, ls
	cmp	x27, x25
	cset	w9, ls
	csel	w8, w8, w9, eq
	tbnz	w8, #0, LBB26_8
LBB26_6:
	ldp	x28, x26, [x1]
	orr	x8, x13, x14
	orr	x9, x12, x27
	cmp	x9, #0
	cset	w9, ne
	cmp	x8, #0
	mov	w4, #2
	csel	w3, w9, w4, eq
	add	x8, x0, w3, uxtw #4
	ldp	x6, x7, [x8]
	cmp	x7, #0
	cset	w8, ne
	lsl	w5, w8, #6
	mov	w0, #32
	mov	w9, #32
	bfi	w9, w8, #6, #1
	lsr	x8, x7, #32
	tst	x9, #0x40
	csel	x9, xzr, x8, ne
	lsr	x10, x6, #32
	bfi	x10, x7, #32, #32
	csel	x8, x8, x10, ne
	orr	x8, x8, x9
	cmp	x8, #0
	cset	w8, ne
	str	x11, [sp, #48]                  ; 8-byte Folded Spill
	lsl	x19, x7, #1
	bfi	w5, w8, #5, #1
	orr	w8, w5, #0x10
	and	x9, x8, #0x30
	lsr	x10, x7, x9
	tst	x8, #0x40
	csel	x15, xzr, x10, ne
	lsr	x9, x6, x9
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x19, x8
	orr	x8, x8, x9
	csel	x8, x10, x8, ne
	orr	x8, x8, x15
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #4, #1
	orr	w8, w5, #0x8
	and	x9, x8, #0x38
	lsr	x10, x7, x9
	tst	x8, #0x40
	csel	x15, xzr, x10, ne
	lsr	x9, x6, x9
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x19, x8
	orr	x8, x8, x9
	csel	x8, x10, x8, ne
	orr	x8, x8, x15
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #3, #1
	orr	w8, w5, #0x4
	and	x9, x8, #0x3c
	lsr	x10, x7, x9
	tst	x8, #0x40
	csel	x15, xzr, x10, ne
	lsr	x9, x6, x9
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x19, x8
	orr	x8, x8, x9
	csel	x8, x10, x8, ne
	orr	x8, x8, x15
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #2, #1
	orr	w8, w5, #0x2
	lsr	x9, x7, x8
	tst	x8, #0x40
	csel	x10, xzr, x9, ne
	lsr	x15, x6, x8
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x19, x8
	orr	x8, x8, x15
	csel	x8, x9, x8, ne
	orr	x8, x8, x10
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #1, #1
	orr	w8, w5, #0x1
	lsr	x9, x7, x8
	tst	x8, #0x40
	csel	x10, xzr, x9, ne
	lsr	x8, x6, x8
	mvn	w15, w5
	and	x15, x15, #0x3e
	lsl	x15, x19, x15
	ldr	x19, [sp, #48]                  ; 8-byte Folded Reload
	orr	x8, x15, x8
	csel	x8, x9, x8, ne
	orr	x8, x8, x10
	cmp	x8, #0
	cset	w8, ne
	orr	w8, w5, w8
	add	w3, w8, w3, lsl #7
	orr	x8, x19, x30
	orr	x9, x22, x25
	cmp	x9, #0
	cset	w9, ne
	cmp	x8, #0
	csel	w4, w9, w4, eq
	add	x8, x1, w4, uxtw #4
	ldp	x6, x7, [x8]
	cmp	x7, #0
	cset	w8, ne
	lsl	w5, w8, #6
	bfi	w0, w8, #6, #1
	lsr	x8, x7, #32
	tst	x0, #0x40
	csel	x9, xzr, x8, ne
	lsr	x10, x6, #32
	bfi	x10, x7, #32, #32
	csel	x8, x8, x10, ne
	orr	x8, x8, x9
	cmp	x8, #0
	cset	w8, ne
	lsl	x0, x7, #1
	bfi	w5, w8, #5, #1
	orr	w8, w5, #0x10
	and	x9, x8, #0x30
	lsr	x10, x7, x9
	tst	x8, #0x40
	csel	x15, xzr, x10, ne
	lsr	x9, x6, x9
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x0, x8
	orr	x8, x8, x9
	csel	x8, x10, x8, ne
	orr	x8, x8, x15
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #4, #1
	orr	w8, w5, #0x8
	and	x9, x8, #0x38
	lsr	x10, x7, x9
	tst	x8, #0x40
	csel	x15, xzr, x10, ne
	lsr	x9, x6, x9
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x0, x8
	orr	x8, x8, x9
	csel	x8, x10, x8, ne
	orr	x8, x8, x15
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #3, #1
	orr	w8, w5, #0x4
	and	x9, x8, #0x3c
	lsr	x10, x7, x9
	tst	x8, #0x40
	csel	x15, xzr, x10, ne
	lsr	x9, x6, x9
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x0, x8
	orr	x8, x8, x9
	csel	x8, x10, x8, ne
	orr	x8, x8, x15
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #2, #1
	orr	w8, w5, #0x2
	lsr	x9, x7, x8
	tst	x8, #0x40
	csel	x10, xzr, x9, ne
	lsr	x15, x6, x8
	mvn	x8, x8
	and	x8, x8, #0x3f
	lsl	x8, x0, x8
	orr	x8, x8, x15
	csel	x8, x9, x8, ne
	orr	x8, x8, x10
	cmp	x8, #0
	cset	w8, ne
	bfi	w5, w8, #1, #1
	orr	w8, w5, #0x1
	lsr	x9, x7, x8
	tst	x8, #0x40
	csel	x10, xzr, x9, ne
	lsr	x8, x6, x8
	mvn	w15, w5
	and	x15, x15, #0x3e
	lsl	x15, x0, x15
	orr	x8, x15, x8
	csel	x8, x9, x8, ne
	orr	x8, x8, x10
	cmp	x8, #0
	cset	w8, ne
	orr	w8, w5, w8
	add	w8, w8, w4, lsl #7
	sub	w9, w3, w8
	and	w4, w9, #0xffff
	cmp	w4, #128
	stp	x25, x22, [sp, #24]             ; 16-byte Folded Spill
	stp	x16, x28, [sp]                  ; 16-byte Folded Spill
	str	x26, [sp, #16]                  ; 8-byte Folded Spill
	b.hs	LBB26_9
; %bb.7:
	mov	x15, #0
	mov	x16, #0
	mov	x9, #0
	mov	x10, #0
	ldp	x0, x17, [x1, #32]
	and	w1, w3, #0xffff
	mov	w2, #128
	sub	w2, w2, w4
	mvn	w3, w2
	lsr	x5, x22, x2
	lsl	x6, x25, #1
	lsl	x6, x6, x3
	orr	x5, x6, x5
	lsl	x6, x26, #1
	lsl	x3, x6, x3
	lsr	x6, x28, x2
	orr	x3, x3, x6
	lsr	x6, x25, x2
	tst	x2, #0x40
	csel	x5, x6, x5, ne
	csel	x6, xzr, x6, ne
	lsr	x2, x26, x2
	csel	x3, x2, x3, ne
	csel	x2, xzr, x2, ne
	cmp	w1, w8, uxth
	lsr	x8, x0, #1
	mvn	w1, w4
	lsr	x8, x8, x1
	lsl	x17, x17, x4
	orr	x8, x17, x8
	lsl	x17, x0, x4
	csel	x0, xzr, x5, eq
	csel	x5, xzr, x6, eq
	csel	x3, xzr, x3, eq
	csel	x2, xzr, x2, eq
	tst	x4, #0x40
	csel	x8, x17, x8, ne
	csel	x17, xzr, x17, ne
	orr	x20, x8, x5
	orr	x21, x17, x0
	lsr	x8, x22, #1
	lsr	x8, x8, x1
	lsl	x17, x25, x4
	orr	x8, x17, x8
	lsl	x17, x22, x4
	csel	x8, x17, x8, ne
	csel	x17, xzr, x17, ne
	orr	x25, x2, x8
	orr	x22, x3, x17
	lsr	x8, x28, #1
	lsr	x8, x8, x1
	lsl	x17, x26, x4
	orr	x8, x17, x8
	lsl	x17, x28, x4
	csel	x23, x17, x8, ne
	csel	x1, xzr, x17, ne
	mov	w8, #1
	lsl	x8, x8, x4
	csel	x17, x8, xzr, ne
	csel	x6, xzr, x8, ne
	b	LBB26_12
LBB26_8:
	mov	x8, #0
	mov	x10, #0
	mov	x26, #0
	mov	x28, #0
	mov	x9, #0
	mov	x4, #0
	b	LBB26_29
LBB26_9:
	and	w2, w4, #0x7f
	cmp	w4, #256
	b.hs	LBB26_11
; %bb.10:
	mov	x1, #0
	mov	x23, #0
	mov	x6, #0
	mov	x17, #0
	mov	x9, #0
	mov	x10, #0
	lsr	x15, x22, #1
	mvn	w16, w2
	lsr	x15, x15, x16
	lsl	x0, x25, x2
	orr	x15, x0, x15
	mov	w0, #128
	sub	w0, w0, w2
	mvn	w3, w0
	lsl	x4, x26, #1
	lsl	x3, x4, x3
	lsr	x4, x28, x0
	orr	x3, x3, x4
	lsl	x4, x22, x2
	tst	x0, #0x40
	lsr	x0, x26, x0
	csel	x3, x0, x3, ne
	csel	x0, xzr, x0, ne
	cmp	w2, #0
	csel	x3, xzr, x3, eq
	csel	x0, xzr, x0, eq
	tst	x2, #0x40
	csel	x15, x4, x15, ne
	csel	x4, xzr, x4, ne
	orr	x20, x0, x15
	orr	x21, x3, x4
	lsr	x15, x28, #1
	lsr	x15, x15, x16
	lsl	x16, x26, x2
	orr	x15, x16, x15
	lsl	x16, x28, x2
	csel	x25, x16, x15, ne
	csel	x22, xzr, x16, ne
	mov	w15, #1
	lsl	x15, x15, x2
	csel	x16, x15, xzr, ne
	csel	x15, xzr, x15, ne
	b	LBB26_12
LBB26_11:
	mov	x1, #0
	mov	x23, #0
	mov	x22, #0
	mov	x25, #0
	mov	x6, #0
	mov	x17, #0
	mov	x15, #0
	mov	x16, #0
	mvn	w9, w2
	lsr	x10, x28, #1
	lsr	x9, x10, x9
	lsl	x10, x26, x2
	orr	x9, x10, x9
	lsl	x10, x28, x2
	tst	x2, #0x40
	csel	x20, x10, x9, ne
	csel	x21, xzr, x10, ne
	mov	w9, #1
	lsl	x9, x9, x2
	csel	x10, x9, xzr, ne
	csel	x9, xzr, x9, ne
LBB26_12:
	mov	x8, #0
	stp	xzr, xzr, [sp, #56]             ; 16-byte Folded Spill
	mov	x26, #0
	mov	x28, #0
	mov	x4, #0
	str	x30, [sp, #40]                  ; 8-byte Folded Spill
	b	LBB26_15
LBB26_13:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	w2, #0
	mov	x3, x6
	mov	x7, #0
	mov	x24, #0
	mov	x6, #0
	mov	x19, #0
	mov	x5, #0
	mov	x0, #0
LBB26_14:                               ;   in Loop: Header=BB26_15 Depth=1
	adds	x5, x5, x8
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	adc	x0, x0, x8
	adds	x6, x6, x26
	adcs	x19, x19, x28
	adcs	x5, x5, xzr
	cinc	x0, x0, hs
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	adds	x8, x7, x8
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	adcs	x4, x24, x4
	cset	w7, hs
	adcs	x26, x6, xzr
	cinc	x28, x19, hs
	orr	x6, x26, x28
	cmp	x6, #0
	cset	w6, eq
	and	w6, w7, w6
	adds	x8, x5, x6
	cinc	x0, x0, hs
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	cmp	w2, #0
	csel	x0, x25, xzr, ne
	csel	x2, x22, xzr, ne
	csel	x5, x23, xzr, ne
	csel	x6, x1, xzr, ne
	csel	x7, x20, xzr, ne
	csel	x19, x21, xzr, ne
	ldr	x27, [sp, #72]                  ; 8-byte Folded Reload
	subs	x27, x27, x6
	mov	x24, x11
	sbc	x24, x11, x5
	subs	x12, x12, x2
	sbc	x11, x30, x0
	cmn	x12, x2
	adcs	xzr, x11, x0
	cset	w0, hs
	subs	x13, x13, x19
	sbc	x14, x14, x7
	subs	x13, x13, x0
	extr	x1, x23, x1, #1
	sbc	x14, x14, xzr
	str	x27, [sp, #72]                  ; 8-byte Folded Spill
	cmn	x27, x6
	extr	x23, x22, x23, #1
	extr	x22, x25, x22, #1
	adcs	xzr, x24, x5
	cset	w0, hs
	extr	x25, x21, x25, #1
	extr	x21, x20, x21, #1
	subs	x12, x12, x0
	sbc	x27, x11, xzr
	extr	x6, x17, x3, #1
	extr	x17, x15, x17, #1
	and	x2, x12, x27
	cmn	x2, #1
	cset	w2, eq
	extr	x15, x16, x15, #1
	and	w0, w0, w2
	subs	x13, x13, x0
	sbc	x14, x14, xzr
	extr	x16, x9, x16, #1
	extr	x9, x10, x9, #1
	lsr	x20, x20, #1
	lsr	x10, x10, #1
	ldp	x30, x19, [sp, #40]             ; 16-byte Folded Reload
LBB26_15:                               ; =>This Inner Loop Header: Depth=1
	eor	x0, x13, x19
	eor	x2, x14, x30
	orr	x0, x0, x2
	cbnz	x0, LBB26_18
; %bb.16:                               ;   in Loop: Header=BB26_15 Depth=1
	ldp	x5, x11, [sp, #24]              ; 16-byte Folded Reload
	eor	x0, x12, x11
	eor	x2, x27, x5
	orr	x0, x0, x2
	cbnz	x0, LBB26_19
; %bb.17:                               ;   in Loop: Header=BB26_15 Depth=1
	ldr	x11, [sp, #72]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	cmp	x11, x0
	cset	w0, lo
	ldr	x11, [sp, #16]                  ; 8-byte Folded Reload
	cmp	x24, x11
	cset	w2, lo
	csel	w0, w0, w2, eq
	tbz	w0, #0, LBB26_20
	b	LBB26_26
LBB26_18:                               ;   in Loop: Header=BB26_15 Depth=1
	cmp	x13, x19
	cset	w0, hi
	cmp	x14, x30
	cset	w2, hi
	csel	w0, w0, w2, eq
	tbnz	w0, #0, LBB26_20
	b	LBB26_28
LBB26_19:                               ;   in Loop: Header=BB26_15 Depth=1
	cmp	x12, x11
	cset	w0, ls
	cmp	x27, x5
	cset	w2, ls
	csel	w0, w0, w2, eq
	tbnz	w0, #0, LBB26_27
LBB26_20:                               ;   in Loop: Header=BB26_15 Depth=1
	eor	x0, x13, x21
	eor	x2, x14, x20
	orr	x0, x0, x2
	cbnz	x0, LBB26_23
; %bb.21:                               ;   in Loop: Header=BB26_15 Depth=1
	eor	x0, x12, x22
	eor	x2, x27, x25
	orr	x0, x0, x2
	cbnz	x0, LBB26_24
; %bb.22:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	x30, x27
	ldr	x11, [sp, #72]                  ; 8-byte Folded Reload
	cmp	x11, x1
	cset	w0, lo
	mov	x11, x24
	cmp	x24, x23
	cset	w2, lo
	csel	w0, w0, w2, eq
	tbnz	w0, #0, LBB26_13
	b	LBB26_25
LBB26_23:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	x30, x27
	mov	x11, x24
	cmp	x13, x21
	cset	w0, hi
	cmp	x14, x20
	cset	w2, hi
	csel	w0, w0, w2, eq
	tbz	w0, #0, LBB26_13
	b	LBB26_25
LBB26_24:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	x11, x24
	cmp	x12, x22
	cset	w0, hi
	mov	x30, x27
	cmp	x27, x25
	cset	w2, hi
	csel	w0, w0, w2, eq
	tbz	w0, #0, LBB26_13
LBB26_25:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	w2, #1
	mov	x3, x6
	mov	x7, x6
	mov	x24, x17
	mov	x6, x15
	mov	x19, x16
	mov	x5, x9
	mov	x0, x10
	b	LBB26_14
LBB26_26:
	mov	x13, x19
	mov	x14, x30
	ldp	x27, x12, [sp, #24]             ; 16-byte Folded Reload
	b	LBB26_28
LBB26_27:
	mov	x13, x19
	mov	x14, x30
LBB26_28:
	ldr	x16, [sp]                       ; 8-byte Folded Reload
	ldp	x10, x9, [sp, #56]              ; 16-byte Folded Reload
LBB26_29:
	stp	x9, x4, [x16]
	stp	x26, x28, [x16, #16]
	stp	x8, x10, [x16, #32]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	stp	x8, x24, [x16, #48]
	stp	x12, x27, [x16, #64]
	stp	x13, x14, [x16, #80]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t ; -- Begin function _ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	.p2align	2
__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t: ; @_ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	sub	sp, sp, #480
	mov	x20, x1
	mov	x19, x0
Lloh32:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh33:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh34:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x0, sp, #200
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
	ldrb	w8, [sp, #200]
	cbz	w8, LBB27_6
; %bb.1:
	ldp	q0, q1, [x20]
	stp	q0, q1, [sp, #144]
	ldr	q0, [x20, #32]
	str	q0, [sp, #176]
	add	x8, sp, #216
	add	x21, x8, #256
	mov	x8, sp
	add	x22, x8, #16
	mov	w23, #10
Lloh35:
	adrp	x24, l_.str@PAGE
Lloh36:
	add	x24, x24, l_.str@PAGEOFF
	mov	x20, x21
LBB27_2:                                ; =>This Inner Loop Header: Depth=1
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x22]
	stp	x23, xzr, [sp]
	add	x8, sp, #48
	add	x0, sp, #144
	mov	x1, sp
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #96]
	ldrb	w8, [x24, x8]
	strb	w8, [x20, #-1]!
	ldr	q2, [sp, #80]
	ldp	q1, q0, [sp, #48]
	stp	q0, q2, [sp, #160]
	str	q1, [sp, #144]
	ldp	x9, x8, [sp, #176]
	ldp	x11, x10, [sp, #160]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldp	x10, x11, [sp, #144]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB27_2
; %bb.3:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	x0, [x8, #40]
	sub	w8, w21, w20
	sxtw	x21, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp18:
	mov	x1, x20
	mov	x2, x21
	blr	x8
Ltmp19:
; %bb.4:
	cmp	x0, x21
	b.eq	LBB27_6
; %bb.5:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp20:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp21:
LBB27_6:
	add	x0, sp, #200
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldur	x8, [x29, #-72]
Lloh37:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh38:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh39:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB27_8
; %bb.7:
	mov	x0, x19
	add	sp, sp, #480
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB27_8:
	bl	___stack_chk_fail
LBB27_9:
Ltmp22:
	mov	x19, x0
	add	x0, sp, #200
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh32, Lloh33, Lloh34
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpLdrGotLdr	Lloh37, Lloh38, Lloh39
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table27:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp18-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp21-Ltmp18                  ;   Call between Ltmp18 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin3            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp21              ;   Call between Ltmp21 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t ; -- Begin function _ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	.p2align	2
__ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t: ; @_ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	sub	sp, sp, #480
	mov	x20, x1
	mov	x19, x0
Lloh40:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh41:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh42:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x0, sp, #200
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
	ldrb	w8, [sp, #200]
	cbz	w8, LBB28_6
; %bb.1:
	ldp	q0, q1, [x20]
	stp	q0, q1, [sp, #144]
	ldr	q0, [x20, #32]
	str	q0, [sp, #176]
	add	x8, sp, #216
	add	x21, x8, #256
	mov	x8, sp
	add	x22, x8, #16
	mov	w23, #2
Lloh43:
	adrp	x24, l_.str@PAGE
Lloh44:
	add	x24, x24, l_.str@PAGEOFF
	mov	x20, x21
LBB28_2:                                ; =>This Inner Loop Header: Depth=1
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x22]
	stp	x23, xzr, [sp]
	add	x8, sp, #48
	add	x0, sp, #144
	mov	x1, sp
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #96]
	ldrb	w8, [x24, x8]
	strb	w8, [x20, #-1]!
	ldr	q2, [sp, #80]
	ldp	q1, q0, [sp, #48]
	stp	q0, q2, [sp, #160]
	str	q1, [sp, #144]
	ldp	x9, x8, [sp, #176]
	ldp	x11, x10, [sp, #160]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldp	x10, x11, [sp, #144]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB28_2
; %bb.3:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	x0, [x8, #40]
	sub	w8, w21, w20
	sxtw	x21, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp23:
	mov	x1, x20
	mov	x2, x21
	blr	x8
Ltmp24:
; %bb.4:
	cmp	x0, x21
	b.eq	LBB28_6
; %bb.5:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp25:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp26:
LBB28_6:
	add	x0, sp, #200
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldur	x8, [x29, #-72]
Lloh45:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh46:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh47:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB28_8
; %bb.7:
	mov	x0, x19
	add	sp, sp, #480
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB28_8:
	bl	___stack_chk_fail
LBB28_9:
Ltmp27:
	mov	x19, x0
	add	x0, sp, #200
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh40, Lloh41, Lloh42
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGotLdr	Lloh45, Lloh46, Lloh47
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table28:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp23-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp23
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp26-Ltmp23                  ;   Call between Ltmp23 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin4            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp26              ;   Call between Ltmp26 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI29_0:
	.short	1                               ; 0x1
	.short	2                               ; 0x2
	.short	4                               ; 0x4
	.short	8                               ; 0x8
	.short	16                              ; 0x10
	.short	32                              ; 0x20
	.short	64                              ; 0x40
	.short	128                             ; 0x80
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
lCPI29_1:
	.short	256                             ; 0x100
	.short	512                             ; 0x200
	.short	1024                            ; 0x400
	.short	2048                            ; 0x800
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	sub	sp, sp, #2400
Lloh48:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh49:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh50:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	add	x8, sp, #1464
	add	x9, x8, #416
	str	x9, [sp, #88]                   ; 8-byte Folded Spill
Lloh51:
	adrp	x20, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh52:
	ldr	x20, [x20, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x19, x20, #64
	add	x26, x8, #8
Lloh53:
	adrp	x10, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh54:
	ldr	x10, [x10, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x9, x10, [x10, #8]
	str	x19, [sp, #1880]
	str	x9, [sp, #1464]
	ldur	x9, [x9, #-24]
	str	x10, [x8, x9]
	ldr	x9, [sp, #1464]
	ldur	x9, [x9, #-24]
	add	x21, x8, x9
Ltmp28:
	mov	x0, x21
	mov	x1, x26
	bl	__ZNSt3__18ios_base4initEPv
Ltmp29:
; %bb.1:
	str	xzr, [x21, #136]
	mov	w8, #-1
	str	w8, [x21, #144]
	add	x8, x20, #24
	str	x8, [sp, #1464]
	str	x19, [sp, #1880]
Ltmp31:
	mov	x0, x26
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp32:
; %bb.2:
Ltmp34:
Lloh55:
	adrp	x1, l_.str.7@PAGE
Lloh56:
	add	x1, x1, l_.str.7@PAGEOFF
	add	x0, sp, #1464
	mov	w2, #16
	str	x26, [sp, #112]                 ; 8-byte Folded Spill
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE4openEPKcj
Ltmp35:
; %bb.3:
Lloh57:
	adrp	x8, lCPI29_0@PAGE
Lloh58:
	ldr	q0, [x8, lCPI29_0@PAGEOFF]
Lloh59:
	adrp	x9, _p2@PAGE
Lloh60:
	add	x9, x9, _p2@PAGEOFF
	str	q0, [x9]
Lloh61:
	adrp	x8, lCPI29_1@PAGE
Lloh62:
	ldr	d0, [x8, lCPI29_1@PAGEOFF]
	str	d0, [x9, #16]
	mov	w8, #4096
	strh	w8, [x9, #24]
Lloh63:
	adrp	x8, _p23@PAGE
Lloh64:
	add	x8, x8, _p23@PAGEOFF
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	mov	w9, #1
	stp	x9, xzr, [x8]
	add	x9, sp, #1184
	add	x9, x9, #16
	mov	w10, #242
	mov	w11, #11664
LBB29_4:                                ; =>This Inner Loop Header: Depth=1
	stp	q0, q0, [x9]
	ldp	x13, x12, [x8]
	extr	x14, x12, x13, #63
	lsl	x13, x13, #1
	ldr	x15, [sp, #1200]
	ldr	x16, [sp, #1208]
	add	x12, x15, x12, lsr #63
	str	x13, [sp, #1184]
	str	x14, [sp, #1192]
	ldp	x14, x13, [x8, #16]
	adds	x15, x12, x14, lsl #1
	lsr	x14, x14, #63
	adc	x14, x14, x16
	lsr	x16, x13, #63
	adds	x13, x14, x13, lsl #1
	ldr	x14, [sp, #1216]
	ldr	x17, [sp, #1224]
	adc	x14, x14, x16
	str	x12, [sp, #1200]
	str	x13, [sp, #1208]
	ldp	x12, x13, [x8, #32]
	extr	x13, x13, x12, #63
	adds	x12, x14, x12, lsl #1
	adc	x13, x17, x13
	str	x15, [sp, #1200]
	str	x12, [sp, #1216]
	str	x13, [sp, #1224]
	ldr	q1, [sp, #1184]
	str	q1, [x8, #11664]
	ldr	q1, [sp, #1200]
	str	q1, [x8, #11680]
	ldr	q1, [sp, #1216]
	str	q1, [x8, #11696]
	add	x8, x8, x11
	subs	x10, x10, #1
	b.ne	LBB29_4
; %bb.5:
	mov	x8, #0
	add	x9, sp, #1184
	add	x9, x9, #16
Lloh65:
	adrp	x28, _p23@PAGE
Lloh66:
	add	x28, x28, _p23@PAGEOFF
	movi.2d	v0, #0000000000000000
	mov	w10, #3
	mov	w11, #11664
	mov	x12, x28
LBB29_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_7 Depth 2
	mov	x13, #-11616
LBB29_7:                                ;   Parent Loop BB29_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x14, x12, x13
	stp	q0, q0, [x9]
	ldr	x15, [x14, #11624]
	ldr	x16, [x14, #11616]
	umulh	x17, x16, x10
	add	x16, x16, x16, lsl #1
	umulh	x0, x15, x10
	add	x15, x15, x15, lsl #1
	adds	x15, x17, x15
	ldr	x17, [sp, #1200]
	ldr	x1, [sp, #1208]
	adc	x17, x17, x0
	str	x16, [sp, #1184]
	str	x15, [sp, #1192]
	ldr	x15, [x14, #11640]
	ldr	x16, [x14, #11632]
	umulh	x0, x16, x10
	add	x16, x16, x16, lsl #1
	adds	x16, x16, x17
	adc	x0, x0, x1
	umulh	x1, x15, x10
	add	x15, x15, x15, lsl #1
	adds	x15, x0, x15
	ldr	x0, [sp, #1216]
	ldr	x2, [sp, #1224]
	adc	x0, x0, x1
	str	x17, [sp, #1200]
	str	x15, [sp, #1208]
	ldr	x15, [x14, #11656]
	ldr	x17, [x14, #11648]
	umulh	x1, x17, x10
	add	x15, x15, x15, lsl #1
	add	x15, x1, x15
	add	x17, x17, x17, lsl #1
	adds	x17, x0, x17
	adc	x15, x2, x15
	str	x16, [sp, #1200]
	str	x17, [sp, #1216]
	str	x15, [sp, #1224]
	ldr	q1, [sp, #1184]
	str	q1, [x14, #11664]
	ldr	q1, [sp, #1200]
	str	q1, [x14, #11680]
	ldr	q1, [sp, #1216]
	str	q1, [x14, #11696]
	adds	x13, x13, #48
	b.ne	LBB29_7
; %bb.8:                                ;   in Loop: Header=BB29_6 Depth=1
	add	x8, x8, #1
	add	x12, x12, x11
	cmp	x8, #243
	b.ne	LBB29_6
; %bb.9:
	mov	x8, #0
Lloh67:
	adrp	x9, _p23@PAGE+48
Lloh68:
	add	x9, x9, _p23@PAGEOFF+48
	mov	w10, #1
	mov	w11, #11664
	mov	x12, #-11616
Lloh69:
	adrp	x13, _pp23@PAGE+11664
Lloh70:
	add	x13, x13, _pp23@PAGEOFF+11664
LBB29_10:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_11 Depth 2
	madd	x14, x10, x11, x28
	add	x1, x14, x12
	ldp	x15, x14, [x1]
	ldp	x17, x16, [x1, #16]
	ldp	x1, x0, [x1, #32]
	mov	x2, x13
	mov	x3, x9
	mov	x4, x8
LBB29_11:                               ;   Parent Loop BB29_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x3]
	stp	q0, q1, [x2]
	ldr	q0, [x3, #32]
	str	q0, [x2, #32]
	ldp	x6, x5, [x2]
	subs	x6, x6, x15
	sbc	x5, x5, x14
	stp	x6, x5, [x2]
	ldp	x19, x7, [x2, #16]
	subs	x19, x19, x17
	sbc	x7, x7, x16
	cmn	x19, x17
	adcs	xzr, x7, x16
	cset	w20, hs
	ldp	x22, x21, [x2, #32]
	subs	x22, x22, x1
	sbc	x21, x21, x0
	subs	x20, x22, x20
	sbc	x21, x21, xzr
	cmn	x6, x15
	adcs	xzr, x5, x14
	cset	w5, hs
	subs	x6, x19, x5
	sbc	x7, x7, xzr
	and	x19, x6, x7
	stp	x6, x7, [x2, #16]
	cmn	x19, #1
	cset	w6, eq
	and	w5, w5, w6
	subs	x5, x20, x5
	sbc	x6, x21, xzr
	stp	x5, x6, [x2, #32]
	sub	x4, x4, #1
	add	x3, x3, x12
	add	x2, x2, #48
	cmn	x4, #1
	b.ne	LBB29_11
; %bb.12:                               ;   in Loop: Header=BB29_10 Depth=1
	add	x10, x10, #1
	add	x8, x8, #1
	add	x9, x9, x11
	add	x13, x13, x11
	cmp	x10, #243
	b.ne	LBB29_10
; %bb.13:
	mov	w8, #0
	add	x9, sp, #896
Lloh71:
	adrp	x10, _dy@PAGE
Lloh72:
	add	x10, x10, _dy@PAGEOFF
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x10, #64]
	add	x9, x9, #16
	str	x9, [sp, #120]                  ; 8-byte Folded Spill
	stp	q0, q0, [x10, #32]
	add	x9, sp, #2128
	add	x9, x9, #16
	str	x9, [sp, #352]                  ; 8-byte Folded Spill
	mov	w24, #48
	stp	q0, q0, [x10]
	mov	w25, #11664
	str	x28, [sp, #136]                 ; 8-byte Folded Spill
LBB29_14:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_16 Depth 2
	mov	x27, #0
	mov	x22, #0
	and	x8, x8, #0xffff
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	madd	x8, x8, x24, x28
	ldp	q2, q1, [x8]
	str	q1, [sp, #1200]
	str	q2, [sp, #1184]
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldr	q1, [x8, #32]
	str	q1, [sp, #1216]
	ldr	x9, [sp, #1208]
	ldr	x8, [sp, #1200]
	ldr	x6, [sp, #1192]
	ldr	x5, [sp, #1184]
	mov	w30, #128
	ldr	x11, [sp, #1224]
	ldr	x10, [sp, #1216]
	b	LBB29_16
LBB29_15:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	w30, [sp, #152]                 ; 4-byte Folded Reload
	mov	w10, w30
	ldp	x11, x17, [sp, #368]            ; 16-byte Folded Reload
	lsr	x11, x11, x22
	mvn	w13, w22
	lsl	x14, x6, #1
	lsl	x14, x14, x13
	orr	x11, x14, x11
	mvn	w14, w30
	lsr	x15, x17, #1
	lsr	x15, x15, x14
	lsl	x16, x20, x10
	orr	x15, x16, x15
	lsl	x16, x17, x10
	tst	x10, #0x40
	csel	x15, x16, x15, ne
	csel	x16, xzr, x16, ne
	lsr	x9, x9, x14
	lsl	x14, x7, x10
	orr	x9, x14, x9
	lsl	x10, x21, x10
	csel	x9, x10, x9, ne
	csel	x10, xzr, x10, ne
	lsr	x14, x6, x22
	ldr	x27, [sp, #160]                 ; 8-byte Folded Reload
	cmp	x27, #0
	csel	x15, xzr, x15, eq
	csel	x16, xzr, x16, eq
	csel	x9, xzr, x9, eq
	csel	x10, xzr, x10, eq
	tst	x22, #0x40
	csel	x11, x14, x11, ne
	csel	x14, xzr, x14, ne
	orr	x6, x14, x15
	orr	x5, x11, x16
	lsr	x11, x17, x22
	lsl	x8, x8, x13
	orr	x8, x8, x11
	lsr	x11, x20, x22
	csel	x8, x11, x8, ne
	csel	x11, xzr, x11, ne
	orr	x9, x11, x9
	orr	x8, x8, x10
	lsr	x10, x21, x22
	lsl	x11, x12, x13
	orr	x10, x11, x10
	lsr	x11, x7, x22
	csel	x10, x11, x10, ne
	csel	x11, xzr, x11, ne
Lloh73:
	adrp	x28, _p23@PAGE
Lloh74:
	add	x28, x28, _p23@PAGEOFF
	mov	w24, #48
	mov	w25, #11664
	add	x22, x22, #1
	add	x27, x27, x25
	sub	w30, w30, #1
	cmp	x22, #243
	b.eq	LBB29_36
LBB29_16:                               ;   Parent Loop BB29_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x22, #128
	b.hs	LBB29_18
; %bb.17:                               ;   in Loop: Header=BB29_16 Depth=2
	mov	w12, w30
	lsl	x11, x11, x22
	mvn	w13, w22
	lsr	x14, x10, #1
	lsr	x14, x14, x13
	orr	x11, x11, x14
	lsr	x14, x8, x12
	mvn	w15, w30
	lsl	x16, x9, #1
	lsl	x16, x16, x15
	orr	x14, x16, x14
	tst	x12, #0x40
	lsr	x16, x9, x12
	csel	x14, x16, x14, ne
	csel	x16, xzr, x16, ne
	lsr	x17, x5, x12
	lsl	x0, x6, #1
	lsl	x15, x0, x15
	orr	x15, x15, x17
	lsr	x12, x6, x12
	csel	x15, x12, x15, ne
	csel	x12, xzr, x12, ne
	cmp	x27, #0
	csel	x14, xzr, x14, eq
	lsl	x10, x10, x22
	csel	x16, xzr, x16, eq
	csel	x15, xzr, x15, eq
	csel	x12, xzr, x12, eq
	tst	x22, #0x40
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x7, x16, x11
	orr	x21, x14, x10
	lsl	x9, x9, x22
	lsr	x10, x8, #1
	lsr	x10, x10, x13
	orr	x9, x9, x10
	lsl	x8, x8, x22
	csel	x9, x8, x9, ne
	csel	x8, xzr, x8, ne
	orr	x20, x12, x9
	orr	x8, x15, x8
	str	x8, [sp, #376]                  ; 8-byte Folded Spill
	lsl	x8, x6, x22
	lsr	x9, x5, #1
	lsr	x9, x9, x13
	orr	x8, x8, x9
	lsl	x9, x5, x22
	csel	x12, x9, x8, ne
	csel	x8, xzr, x9, ne
	str	x8, [sp, #368]                  ; 8-byte Folded Spill
	b	LBB29_19
LBB29_18:                               ;   in Loop: Header=BB29_16 Depth=2
	str	xzr, [sp, #368]                 ; 8-byte Folded Spill
	mov	x15, #0
	ands	w10, w22, #0x7f
	mov	w11, #128
	sub	w10, w11, w10
	mvn	w11, w10
	lsr	x12, x6, x10
	tst	x10, #0x40
	csel	x13, xzr, x12, ne
	lsr	x10, x5, x10
	lsl	x14, x6, #1
	lsl	x11, x14, x11
	orr	x10, x11, x10
	csel	x10, x12, x10, ne
	ands	w11, w22, #0x7f
	lsr	x12, x8, #1
	mvn	w14, w11
	lsr	x12, x12, x14
	lsl	x9, x9, x11
	orr	x9, x9, x12
	lsl	x8, x8, x11
	csel	x10, xzr, x10, eq
	csel	x12, xzr, x13, eq
	tst	x11, #0x40
	csel	x9, x8, x9, ne
	orr	x7, x12, x9
	csel	x8, xzr, x8, ne
	orr	x21, x10, x8
	lsr	x8, x5, #1
	lsr	x8, x8, x14
	lsl	x9, x6, x11
	mov	x12, x15
	orr	x8, x9, x8
	lsl	x9, x5, x11
	csel	x20, x9, x8, ne
	csel	x8, xzr, x9, ne
	str	x8, [sp, #376]                  ; 8-byte Folded Spill
LBB29_19:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x10, [sp, #136]                 ; 8-byte Folded Reload
	add	x8, x10, x27
	mov	w9, #11696
	add	x8, x8, x9
	add	x23, x10, x27
	prfm	pldl1keep, [x8]
	ldp	x8, x9, [x23, #32]
	eor	x9, x7, x9
	eor	x8, x21, x8
	orr	x8, x8, x9
	cbnz	x8, LBB29_53
; %bb.20:                               ;   in Loop: Header=BB29_16 Depth=2
	ldp	x9, x8, [x23, #16]
	ldr	x10, [sp, #376]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x20, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_53
; %bb.21:                               ;   in Loop: Header=BB29_16 Depth=2
	ldp	x9, x8, [x23]
	ldr	x10, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x12, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_53
; %bb.22:                               ;   in Loop: Header=BB29_16 Depth=2
	add	x8, x28, x27
	add	x8, x8, x25
	add	x23, x28, x27
	ldp	x9, x6, [sp, #120]              ; 16-byte Folded Reload
	stp	q0, q0, [x9]
	prfm	pldl1keep, [x8]
	ldp	x11, x10, [x23]
	str	x12, [sp, #328]                 ; 8-byte Folded Spill
	ldp	x9, x8, [x6]
	umulh	x12, x9, x11
	mul	x13, x9, x11
	umulh	x14, x9, x10
	mul	x15, x9, x10
	umulh	x16, x8, x11
	mul	x17, x8, x11
	adds	x12, x12, x17
	ldr	x17, [sp, #912]
	ldr	x0, [sp, #920]
	adc	x16, x17, x16
	adds	x12, x12, x15
	cinc	x15, x16, hs
	str	x13, [sp, #896]
	str	x12, [sp, #904]
	umulh	x12, x8, x10
	mul	x13, x8, x10
	adds	x13, x14, x13
	cinc	x12, x12, hs
	adds	x13, x13, x15
	adc	x12, x12, x0
	ldp	x15, x14, [x6, #16]
	umulh	x16, x15, x11
	mul	x17, x15, x11
	umulh	x0, x15, x10
	mul	x1, x15, x10
	umulh	x2, x14, x11
	mul	x3, x14, x11
	adds	x16, x16, x3
	ldr	x3, [sp, #928]
	ldr	x4, [sp, #936]
	adc	x2, x3, x2
	adds	x16, x16, x1
	cinc	x1, x2, hs
	str	x17, [sp, #912]
	str	x16, [sp, #920]
	umulh	x2, x14, x10
	mul	x3, x14, x10
	ldp	x6, x5, [x6, #32]
	stp	x21, x7, [sp, #336]             ; 16-byte Folded Spill
	umulh	x7, x6, x11
	madd	x10, x6, x10, x7
	madd	x10, x5, x11, x10
	mul	x11, x6, x11
	ldp	x6, x5, [x23, #16]
	umulh	x7, x6, x9
	mul	x19, x5, x9
	str	x20, [sp, #360]                 ; 8-byte Folded Spill
	umulh	x20, x6, x8
	mul	x21, x6, x8
	adds	x19, x19, x21
	ldr	x21, [sp, #336]                 ; 8-byte Folded Reload
	cinc	x20, x20, hs
	adds	x7, x19, x7
	cinc	x19, x20, hs
	ldr	x20, [sp, #360]                 ; 8-byte Folded Reload
	adds	x0, x0, x3
	cinc	x2, x2, hs
	adds	x11, x0, x11
	adc	x10, x2, x10
	adds	x11, x11, x1
	adc	x10, x10, x4
	adds	x13, x17, x13
	adcs	x12, x16, x12
	umulh	x16, x5, x9
	umulh	x17, x5, x8
	mul	x0, x5, x8
	umulh	x2, x6, x15
	madd	x14, x6, x14, x2
	mul	x2, x6, x15
	adcs	x11, x11, xzr
	cinc	x10, x10, hs
	adds	x11, x11, x2
	madd	x14, x5, x15, x14
	adc	x10, x10, x14
	adds	x11, x11, x0
	adc	x10, x10, x17
	adds	x11, x11, x16
	cinc	x10, x10, hs
	adds	x14, x11, x19
	cinc	x15, x10, hs
	mul	x10, x6, x9
	ldr	x0, [sp, #328]                  ; 8-byte Folded Reload
	adds	x10, x10, x13
	adcs	x11, x7, x12
	ldr	x17, [sp, #344]                 ; 8-byte Folded Reload
	str	x10, [sp, #912]
	str	x11, [sp, #920]
	ldp	x16, x13, [x23, #32]
	mul	x12, x16, x9
	adcs	x14, x14, xzr
	cinc	x15, x15, hs
	adds	x12, x14, x12
	umulh	x14, x16, x9
	madd	x8, x16, x8, x14
	madd	x8, x13, x9, x8
	adc	x8, x15, x8
	str	x1, [sp, #928]
	str	x12, [sp, #928]
	str	x8, [sp, #936]
	ldr	x9, [sp, #896]
	ldr	x13, [sp, #904]
	eor	x13, x0, x13
	ldr	x14, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x14, x9
	orr	x9, x9, x13
	cbnz	x9, LBB29_66
; %bb.23:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x9, [sp, #376]                  ; 8-byte Folded Reload
	eor	x9, x9, x10
	eor	x10, x20, x11
	orr	x9, x9, x10
	cbnz	x9, LBB29_66
; %bb.24:                               ;   in Loop: Header=BB29_16 Depth=2
	eor	x9, x21, x12
	eor	x8, x17, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_66
; %bb.25:                               ;   in Loop: Header=BB29_16 Depth=2
	str	w30, [sp, #152]                 ; 4-byte Folded Spill
	str	x27, [sp, #160]                 ; 8-byte Folded Spill
	ubfx	x8, x22, #1, #31
	umaddl	x1, w8, w25, x28
	str	x22, [sp, #320]                 ; 8-byte Folded Spill
	add	w8, w22, #1
	lsr	w8, w8, #1
	umaddl	x8, w8, w25, x28
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	madd	x12, x9, x24, x8
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x13, x9, [x1]
	ldp	x19, x23, [x12]
	umulh	x10, x19, x13
	umulh	x14, x19, x9
	mul	x11, x19, x9
	umulh	x8, x23, x13
	mul	x15, x23, x13
	stp	x15, x11, [sp, #272]            ; 16-byte Folded Spill
	adds	x30, x11, x15
	stp	x8, x10, [sp, #304]             ; 16-byte Folded Spill
	cinc	x5, x8, hs
	adds	x8, x30, x10
	ldr	x10, [sp, #2144]
	ldr	x11, [sp, #2152]
	adc	x10, x5, x10
	str	x8, [sp, #2136]
	umulh	x8, x23, x9
	mul	x15, x23, x9
	str	x14, [sp, #296]                 ; 8-byte Folded Spill
	adds	x25, x14, x15
	str	x8, [sp, #256]                  ; 8-byte Folded Spill
	cinc	x26, x8, hs
	adds	x16, x25, x10
	adc	x17, x26, x11
	ldp	x2, x0, [x12, #16]
	umulh	x8, x2, x13
	mul	x11, x2, x9
	umulh	x10, x0, x13
	mul	x14, x0, x13
	str	x11, [sp, #264]                 ; 8-byte Folded Spill
	stp	x15, x14, [sp, #240]            ; 16-byte Folded Spill
	adds	x27, x11, x14
	str	x10, [sp, #288]                 ; 8-byte Folded Spill
	cinc	x20, x10, hs
	mov	x15, x8
	adds	x3, x27, x8
	ldp	x10, x8, [x12, #32]
	str	x12, [sp, #96]                  ; 8-byte Folded Spill
	umulh	x11, x10, x13
	madd	x11, x10, x9, x11
	madd	x4, x8, x13, x11
	ldr	x8, [sp, #2160]
	ldr	x24, [sp, #2168]
	adc	x21, x20, x8
	str	x3, [sp, #2152]
	umulh	x11, x2, x9
	umulh	x8, x0, x9
	mul	x9, x0, x9
	mul	x6, x10, x13
	stp	x11, x9, [sp, #192]             ; 16-byte Folded Spill
	adds	x10, x11, x9
	stp	x6, x8, [sp, #208]              ; 16-byte Folded Spill
	cinc	x28, x8, hs
	ldp	x8, x11, [x1, #16]
	umulh	x7, x8, x19
	mul	x12, x11, x19
	umulh	x9, x8, x23
	mul	x14, x8, x23
	stp	x14, x12, [sp, #168]            ; 16-byte Folded Spill
	adds	x12, x12, x14
	stp	x9, x4, [sp, #224]              ; 16-byte Folded Spill
	cinc	x14, x9, hs
	str	x7, [sp, #184]                  ; 8-byte Folded Spill
	adds	x9, x12, x7
	cinc	x14, x14, hs
	adds	x12, x6, x10
	adc	x10, x4, x28
	adds	x22, x12, x21
	adc	x6, x10, x24
	mul	x28, x2, x13
	adds	x7, x28, x16
	adcs	x4, x3, x17
	umulh	x16, x8, x2
	madd	x16, x8, x0, x16
	madd	x3, x11, x2, x16
	umulh	x24, x11, x19
	umulh	x17, x11, x23
	mul	x0, x11, x23
	mul	x2, x8, x2
	adcs	x11, x22, xzr
	cinc	x16, x6, hs
	adds	x11, x11, x2
	adc	x16, x16, x3
	adds	x11, x11, x0
	adc	x16, x16, x17
	adds	x11, x11, x24
	cinc	x6, x16, hs
	adds	x11, x11, x14
	mul	x16, x8, x19
	cinc	x8, x6, hs
	adds	x14, x16, x7
	ldr	x7, [sp, #344]                  ; 8-byte Folded Reload
	adcs	x9, x9, x4
	str	x28, [sp, #2144]
	str	x14, [sp, #2144]
	str	x9, [sp, #2152]
	ldp	x9, x4, [x1, #32]
	umulh	x14, x9, x19
	madd	x14, x9, x23, x14
	str	x1, [sp, #104]                  ; 8-byte Folded Spill
	madd	x23, x4, x19, x14
	mul	x13, x19, x13
	mul	x19, x9, x19
	adcs	x9, x11, xzr
	cinc	x8, x8, hs
	adds	x9, x9, x19
	adc	x8, x8, x23
	str	x21, [sp, #2160]
	ldp	x6, x21, [sp, #328]             ; 16-byte Folded Reload
	str	x9, [sp, #2160]
	str	x8, [sp, #2168]
	str	x13, [sp, #2128]
	ldr	q3, [sp, #2128]
	ldr	q2, [sp, #2160]
	str	q2, [sp, #928]
	ldr	x8, [sp, #936]
	eor	x8, x7, x8
	ldr	x9, [sp, #928]
	eor	x9, x21, x9
	orr	x8, x9, x8
	ldr	q1, [sp, #2144]
	stp	q3, q1, [sp, #896]
	cbnz	x8, LBB29_82
; %bb.26:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x8, [sp, #920]
	ldr	x9, [sp, #912]
	ldr	x11, [sp, #376]                 ; 8-byte Folded Reload
	eor	x9, x11, x9
	ldr	x11, [sp, #360]                 ; 8-byte Folded Reload
	eor	x8, x11, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_82
; %bb.27:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x8, [sp, #904]
	ldr	x9, [sp, #896]
	ldr	x11, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x11, x9
	eor	x8, x6, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_82
; %bb.28:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldr	x1, [sp, #312]                  ; 8-byte Folded Reload
	adds	x8, x30, x1
	ldr	x9, [sp, #2144]
	ldr	x11, [sp, #2152]
	adc	x9, x5, x9
	str	x13, [sp, #2128]
	str	x8, [sp, #2136]
	adds	x8, x9, x25
	adc	x11, x11, x26
	adds	x14, x27, x15
	ldr	x4, [sp, #2160]
	ldr	x5, [sp, #2168]
	adc	x4, x20, x4
	adds	x12, x12, x4
	adc	x10, x10, x5
	adds	x8, x28, x8
	adcs	x11, x14, x11
	str	x9, [sp, #2144]
	str	x11, [sp, #2152]
	adcs	x9, x12, xzr
	cinc	x10, x10, hs
	str	x8, [sp, #2144]
	str	x9, [sp, #2160]
	str	x10, [sp, #2168]
	ldr	q1, [sp, #2128]
	ldr	q2, [sp, #2144]
	ldr	q3, [sp, #2160]
	stp	q2, q3, [sp, #912]
	str	q1, [sp, #896]
	ldr	x8, [sp, #928]
	ldr	x9, [sp, #936]
	eor	x9, x7, x9
	eor	x8, x21, x8
	orr	x8, x8, x9
	ldr	x20, [sp, #360]                 ; 8-byte Folded Reload
	cbnz	x8, LBB29_98
; %bb.29:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x8, [sp, #920]
	ldr	x9, [sp, #912]
	ldr	x10, [sp, #376]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x20, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_98
; %bb.30:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x8, [sp, #904]
	ldr	x9, [sp, #896]
	ldr	x10, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x6, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_98
; %bb.31:                               ;   in Loop: Header=BB29_16 Depth=2
	mov	x22, x15
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x9, x8, [sp, #272]              ; 16-byte Folded Reload
	adds	x8, x9, x8
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	cinc	x9, x9, hs
	adds	x8, x8, x1
	ldr	x10, [sp, #2144]
	ldr	x11, [sp, #2152]
	adc	x9, x9, x10
	str	x13, [sp, #2128]
	str	x8, [sp, #2136]
	ldr	x8, [sp, #304]                  ; 8-byte Folded Reload
	ldp	x10, x15, [sp, #240]            ; 16-byte Folded Reload
	adds	x8, x8, x10
	ldr	x10, [sp, #256]                 ; 8-byte Folded Reload
	cinc	x10, x10, hs
	adds	x8, x8, x9
	adc	x10, x10, x11
	ldp	x12, x11, [sp, #168]            ; 16-byte Folded Reload
	adds	x11, x12, x11
	cinc	x12, x24, hs
	ldr	x13, [sp, #184]                 ; 8-byte Folded Reload
	adds	x11, x11, x13
	ldr	x13, [sp, #2160]
	ldr	x14, [sp, #2168]
	adc	x12, x12, x13
	ldr	x13, [sp, #264]                 ; 8-byte Folded Reload
	adds	x13, x15, x13
	ldp	x15, x4, [sp, #192]             ; 16-byte Folded Reload
	cinc	x15, x15, hs
	adds	x13, x13, x22
	cinc	x15, x15, hs
	ldr	x1, [sp, #288]                  ; 8-byte Folded Reload
	adds	x1, x1, x4
	ldp	x5, x4, [sp, #208]              ; 16-byte Folded Reload
	cinc	x4, x4, hs
	adds	x1, x1, x5
	ldr	x5, [sp, #232]                  ; 8-byte Folded Reload
	adc	x4, x4, x5
	adds	x1, x1, x2
	adc	x2, x4, x3
	adds	x0, x1, x0
	adc	x17, x2, x17
	ldr	x1, [sp, #224]                  ; 8-byte Folded Reload
	adds	x0, x0, x1
	cinc	x17, x17, hs
	adds	x0, x0, x19
	adc	x17, x17, x23
	adds	x0, x0, x12
	adc	x14, x17, x14
	str	x9, [sp, #2144]
	str	x11, [sp, #2152]
	adds	x8, x16, x8
	adcs	x9, x11, x10
	adcs	x10, x0, xzr
	cinc	x11, x14, hs
	adds	x10, x10, x15
	cinc	x11, x11, hs
	adds	x8, x28, x8
	adcs	x9, x13, x9
	str	x16, [sp, #2144]
	str	x12, [sp, #2160]
	str	x8, [sp, #2144]
	str	x9, [sp, #2152]
	adcs	x8, x10, xzr
	cinc	x9, x11, hs
	str	x8, [sp, #2160]
	str	x9, [sp, #2168]
	ldr	q3, [sp, #2128]
	ldr	q2, [sp, #2160]
	str	q2, [sp, #928]
	ldr	x8, [sp, #928]
	ldr	x9, [sp, #936]
	eor	x9, x7, x9
	eor	x8, x21, x8
	orr	x8, x8, x9
	ldr	q1, [sp, #2144]
	stp	q3, q1, [sp, #896]
	ldr	x26, [sp, #112]                 ; 8-byte Folded Reload
	ldr	x22, [sp, #320]                 ; 8-byte Folded Reload
	cbnz	x8, LBB29_114
; %bb.32:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x8, [sp, #920]
	ldr	x9, [sp, #912]
	ldr	x10, [sp, #376]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x20, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_114
; %bb.33:                               ;   in Loop: Header=BB29_16 Depth=2
	ldr	x8, [sp, #904]
	ldr	x9, [sp, #896]
	ldr	x10, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x6, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_114
; %bb.34:                               ;   in Loop: Header=BB29_16 Depth=2
	lsr	x9, x21, #1
	lsl	x8, x20, #1
	lsl	x12, x7, #1
	cmp	x22, #128
	b.lo	LBB29_15
; %bb.35:                               ;   in Loop: Header=BB29_16 Depth=2
	mov	x10, #0
	mov	x11, #0
	ands	w13, w22, #0x7f
	mov	w14, #128
	sub	w13, w14, w13
	mvn	w14, w13
	lsl	x15, x21, x13
	tst	x13, #0x40
	lsr	x9, x9, x14
	csel	x14, xzr, x15, ne
	lsl	x13, x7, x13
	orr	x9, x13, x9
	csel	x9, x15, x9, ne
	ands	w13, w22, #0x7f
	ldr	x15, [sp, #376]                 ; 8-byte Folded Reload
	lsr	x15, x15, x13
	mvn	w16, w13
	lsl	x8, x8, x16
	orr	x8, x8, x15
	lsr	x15, x20, x13
	csel	x9, xzr, x9, eq
	csel	x14, xzr, x14, eq
	tst	x13, #0x40
	csel	x8, x15, x8, ne
	csel	x15, xzr, x15, ne
	orr	x5, x8, x14
	orr	x6, x15, x9
	lsr	x8, x21, x13
	lsl	x9, x12, x16
	orr	x8, x9, x8
	lsr	x9, x7, x13
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
Lloh75:
	adrp	x28, _p23@PAGE
Lloh76:
	add	x28, x28, _p23@PAGEOFF
	mov	w24, #48
	mov	w25, #11664
	ldr	x27, [sp, #160]                 ; 8-byte Folded Reload
	ldr	w30, [sp, #152]                 ; 4-byte Folded Reload
	add	x22, x22, #1
	add	x27, x27, x25
	sub	w30, w30, #1
	cmp	x22, #243
	b.ne	LBB29_16
LBB29_36:                               ;   in Loop: Header=BB29_14 Depth=1
	ldp	x10, x9, [sp, #136]             ; 16-byte Folded Reload
	add	w8, w9, #1
	add	x10, x10, #48
	str	x10, [sp, #136]                 ; 8-byte Folded Spill
	cmp	w9, #242
	b.lo	LBB29_14
; %bb.37:
	mov	x21, #0
	add	x8, sp, #1184
	add	x9, x8, #128
	add	x8, x8, #256
	stp	x9, x8, [sp, #368]              ; 16-byte Folded Spill
	add	x8, sp, #736
	add	x23, x8, #16
Lloh77:
	adrp	x8, _dl@PAGE
Lloh78:
	add	x8, x8, _dl@PAGEOFF
	movi.2d	v0, #0000000000000000
	mov	w10, #48
	mov	w12, #11664
Lloh79:
	adrp	x11, _dz@PAGE
Lloh80:
	add	x11, x11, _dz@PAGEOFF
LBB29_38:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_40 Depth 2
                                        ;       Child Loop BB29_41 Depth 3
                                        ;       Child Loop BB29_46 Depth 3
	mov	x19, #0
	mov	w9, #393216
	madd	x14, x21, x9, x11
	stp	q0, q0, [x14, #16]
	add	x15, x8, x21, lsl #14
	str	q0, [x14]
	strh	wzr, [x15]
	add	w16, w21, #1
	b	LBB29_40
LBB29_39:                               ;   in Loop: Header=BB29_40 Depth=2
	mov	x19, x17
	cmp	x17, #12
	b.eq	LBB29_50
LBB29_40:                               ;   Parent Loop BB29_38 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB29_41 Depth 3
                                        ;       Child Loop BB29_46 Depth 3
	mov	w1, #0
	add	x17, x19, #1
Lloh81:
	adrp	x8, _p2@PAGE
Lloh82:
	add	x8, x8, _p2@PAGEOFF
	add	x8, x8, x19, lsl #1
	ldrh	w0, [x8, #2]
	sub	w0, w0, #1
	and	w0, w0, #0xffff
	ldrh	w2, [x8]
LBB29_41:                               ;   Parent Loop BB29_38 Depth=1
                                        ;     Parent Loop BB29_40 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x8, x2, w1, sxtw
	madd	x3, x8, x10, x14
	add	w4, w1, w0
	umaddl	x5, w4, w10, x14
	ldp	q1, q2, [x3, #-48]
	ldur	q3, [x3, #-16]
	stp	q2, q3, [x5, #16]
	str	q1, [x5]
	add	x8, x15, x8, lsl #1
	ldurh	w8, [x8, #-2]
	strh	w8, [x15, w4, uxtw  #1]
	add	w8, w1, #1
	and	w1, w8, #0xffff
	cmp	w1, w0
	b.ls	LBB29_41
; %bb.42:                               ;   in Loop: Header=BB29_40 Depth=2
	mov	w22, #0
	mov	w8, #128
	sub	x1, x8, x19
	sub	w2, w2, #1
	b	LBB29_46
LBB29_43:                               ;   in Loop: Header=BB29_46 Depth=3
	sub	w8, w21, w4
	madd	x25, x19, x12, x28
	smaddl	x8, w8, w10, x25
	ldp	x26, x25, [x8]
	ldp	x28, x27, [x8, #16]
	ldp	x8, x30, [x8, #32]
LBB29_44:                               ;   in Loop: Header=BB29_46 Depth=3
	ldp	x11, x9, [x24, #32]
	ldr	x13, [x24, #24]
	and	x20, x20, #0x1
	adds	x8, x8, x11
	adc	x9, x30, x9
	adds	x11, x28, x7
	adcs	x13, x27, x13
	adcs	x8, x8, xzr
	cinc	x9, x9, hs
	adds	x6, x26, x6
	adcs	x5, x25, x5
	cset	w7, hs
	stp	x6, x5, [x24]
	adcs	x11, x11, xzr
	cinc	x13, x13, hs
	stp	x11, x13, [x24, #16]
	orr	x11, x11, x13
	cmp	x11, #0
	cset	w11, eq
	and	w11, w7, w11
	adds	x8, x8, x11
	cinc	x9, x9, hs
	stp	x8, x9, [x24, #32]
	add	w8, w4, w20
	strh	w8, [x15, x3, lsl  #1]
	ldr	x26, [sp, #112]                 ; 8-byte Folded Reload
Lloh83:
	adrp	x28, _p23@PAGE
Lloh84:
	add	x28, x28, _p23@PAGEOFF
LBB29_45:                               ;   in Loop: Header=BB29_46 Depth=3
	add	w22, w22, #1
	cmp	w0, w22, uxth
	b.lo	LBB29_39
LBB29_46:                               ;   Parent Loop BB29_38 Depth=1
                                        ;     Parent Loop BB29_40 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w3, w0, w22, uxth
	ldrh	w4, [x15, w3, uxtw  #1]
	cmp	w16, w4
	b.lo	LBB29_45
; %bb.47:                               ;   in Loop: Header=BB29_46 Depth=3
	sxtw	x7, w2
	madd	x24, x3, x10, x14
	and	x8, x22, #0xffff
	ldp	x6, x5, [x24]
	subs	x20, x8, x6
	and	x25, x20, x7
	ngc	x8, x5
	and	x7, x8, x7, asr #63
	orr	x7, x25, x7
	cbnz	x7, LBB29_133
; %bb.48:                               ;   in Loop: Header=BB29_46 Depth=3
	ldr	x7, [x24, #16]
	cmn	x20, x6
	adcs	xzr, x8, x5
	cset	w25, hs
	sub	x25, x25, x7
	lsl	x25, x25, x1
	tst	x1, #0x40
	csel	x25, xzr, x25, ne
	lsr	x20, x20, x19
	mvn	w26, w19
	lsl	x27, x8, #1
	lsl	x26, x27, x26
	orr	x20, x26, x20
	lsr	x8, x8, x19
	tst	x19, #0x40
	csel	x8, x8, x20, ne
	cmp	x19, #0
	csel	w20, wzr, w25, eq
	orr	w20, w20, w8
	tbnz	w20, #0, LBB29_43
; %bb.49:                               ;   in Loop: Header=BB29_46 Depth=3
	mov	x8, #0
	mov	x30, #0
	mov	x28, #0
	mov	x27, #0
	mov	x26, #0
	mov	x25, #0
	b	LBB29_44
LBB29_50:                               ;   in Loop: Header=BB29_38 Depth=1
	add	x21, x21, #1
	cmp	x21, #243
Lloh85:
	adrp	x8, _dl@PAGE
Lloh86:
	add	x8, x8, _dl@PAGEOFF
Lloh87:
	adrp	x11, _dz@PAGE
Lloh88:
	add	x11, x11, _dz@PAGEOFF
	b.ne	LBB29_38
; %bb.51:
	str	xzr, [sp, #672]
	str	xzr, [sp, #664]
	str	xzr, [sp, #680]
	adrp	x19, _T@PAGE
	ldrh	w8, [x19, _T@PAGEOFF]
Lloh89:
	adrp	x9, _p2@PAGE
Lloh90:
	add	x9, x9, _p2@PAGEOFF
	ldrh	w1, [x9, x8, lsl  #1]
	cbnz	x1, LBB29_281
LBB29_52:
	add	x10, sp, #1184
	add	x9, x10, #16
	add	x8, x10, #24
	stp	x8, x9, [sp, #8]                ; 16-byte Folded Spill
	add	x8, sp, #448
	add	x9, x8, #48
	add	x11, sp, #896
	add	x8, x11, #48
	stp	x8, x9, [sp, #192]              ; 16-byte Folded Spill
	add	x8, x11, #128
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	add	x9, x11, #16
	add	x8, x11, #24
	stp	x8, x9, [sp, #160]              ; 16-byte Folded Spill
Lloh91:
	adrp	x9, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh92:
	ldr	x9, [x9, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x9, #16]
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	ldr	x8, [x9, #24]
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	ldr	x8, [x9, #32]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	ldr	x8, [x9, #40]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	add	x25, sp, #896
	add	x8, x11, #88
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x11, [x9, #48]
	add	x8, sp, #2128
	add	x8, x8, #256
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	add	x8, sp, #688
	add	x8, x8, #16
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	stp	x8, x11, [sp, #56]              ; 16-byte Folded Spill
	ldr	x11, [x9]
	add	x8, x10, #128
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	w22, #48
	ldr	x8, [x9, #64]
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	ldr	x8, [x9, #72]
	stp	x8, x11, [sp, #128]             ; 16-byte Folded Spill
Lloh93:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh94:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB29_161
LBB29_53:
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	str	x8, [sp, #1200]
	str	x20, [sp, #1208]
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	str	x8, [sp, #1184]
	str	x12, [sp, #1192]
	str	x21, [sp, #1216]
	str	x7, [sp, #1224]
Ltmp326:
Lloh95:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh96:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh97:
	adrp	x1, l_.str.8@PAGE
Lloh98:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #13
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp327:
; %bb.54:
Ltmp328:
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp329:
; %bb.55:
Ltmp330:
Lloh99:
	adrp	x1, l_.str.9@PAGE
Lloh100:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp331:
; %bb.56:
Ltmp332:
	and	w1, w22, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp333:
; %bb.57:
Ltmp334:
Lloh101:
	adrp	x1, l_.str.9@PAGE
Lloh102:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp335:
; %bb.58:
Ltmp336:
	mov	x1, x23
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp337:
; %bb.59:
Ltmp338:
Lloh103:
	adrp	x1, l_.str.9@PAGE
Lloh104:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp339:
; %bb.60:
Ltmp340:
	mov	x21, x0
	add	x1, sp, #1184
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp341:
; %bb.61:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp342:
	add	x8, sp, #896
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp343:
; %bb.62:
Ltmp344:
Lloh105:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh106:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #896
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp345:
; %bb.63:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp346:
	mov	w1, #10
	blr	x8
Ltmp347:
; %bb.64:
	mov	x22, x0
	add	x0, sp, #896
	bl	__ZNSt3__16localeD1Ev
Ltmp349:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp350:
; %bb.65:
Ltmp351:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp352:
	b	LBB29_131
LBB29_66:
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	str	x8, [sp, #1200]
	str	x20, [sp, #1208]
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	str	x8, [sp, #1184]
	str	x0, [sp, #1192]
	str	x21, [sp, #1216]
	str	x17, [sp, #1224]
Ltmp290:
Lloh107:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh108:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh109:
	adrp	x1, l_.str.10@PAGE
Lloh110:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #11
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp291:
; %bb.67:
Ltmp292:
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp293:
; %bb.68:
Ltmp294:
Lloh111:
	adrp	x1, l_.str.9@PAGE
Lloh112:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp295:
; %bb.69:
Ltmp296:
	and	w1, w22, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp297:
; %bb.70:
Ltmp298:
Lloh113:
	adrp	x1, l_.str.9@PAGE
Lloh114:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp299:
; %bb.71:
Ltmp300:
	mov	x1, x23
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp301:
; %bb.72:
Ltmp302:
Lloh115:
	adrp	x1, l_.str.9@PAGE
Lloh116:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp303:
; %bb.73:
Ltmp304:
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp305:
; %bb.74:
Ltmp306:
Lloh117:
	adrp	x1, l_.str.9@PAGE
Lloh118:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp307:
; %bb.75:
Ltmp308:
	add	x1, sp, #896
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp309:
; %bb.76:
Ltmp310:
Lloh119:
	adrp	x1, l_.str.9@PAGE
Lloh120:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp311:
; %bb.77:
Ltmp312:
	mov	x21, x0
	add	x1, sp, #1184
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp313:
; %bb.78:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp314:
	add	x8, sp, #2128
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp315:
; %bb.79:
Ltmp316:
Lloh121:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh122:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2128
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp317:
; %bb.80:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp318:
	mov	w1, #10
	blr	x8
Ltmp319:
; %bb.81:
	mov	x22, x0
	add	x0, sp, #2128
	bl	__ZNSt3__16localeD1Ev
Ltmp321:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp322:
	b	LBB29_130
LBB29_82:
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	str	x8, [sp, #1200]
	ldr	x8, [sp, #360]                  ; 8-byte Folded Reload
	str	x8, [sp, #1208]
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	str	x8, [sp, #1184]
	str	x6, [sp, #1192]
	str	x21, [sp, #1216]
	str	x7, [sp, #1224]
Ltmp257:
Lloh123:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh124:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh125:
	adrp	x1, l_.str.11@PAGE
Lloh126:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #14
	ldr	x26, [sp, #112]                 ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp258:
	ldr	x19, [sp, #320]                 ; 8-byte Folded Reload
; %bb.83:
Ltmp259:
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp260:
; %bb.84:
Ltmp261:
Lloh127:
	adrp	x1, l_.str.9@PAGE
Lloh128:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp262:
; %bb.85:
Ltmp263:
	and	w1, w19, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp264:
; %bb.86:
Ltmp265:
Lloh129:
	adrp	x1, l_.str.9@PAGE
Lloh130:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp266:
; %bb.87:
Ltmp267:
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp268:
; %bb.88:
Ltmp269:
Lloh131:
	adrp	x1, l_.str.9@PAGE
Lloh132:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp270:
; %bb.89:
Ltmp271:
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp272:
; %bb.90:
Ltmp273:
Lloh133:
	adrp	x1, l_.str.9@PAGE
Lloh134:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp274:
; %bb.91:
Ltmp275:
	add	x1, sp, #896
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp276:
; %bb.92:
Ltmp277:
Lloh135:
	adrp	x1, l_.str.9@PAGE
Lloh136:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp278:
; %bb.93:
Ltmp279:
	mov	x21, x0
	add	x1, sp, #1184
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp280:
; %bb.94:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp281:
	add	x8, sp, #2128
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp282:
; %bb.95:
Ltmp283:
Lloh137:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh138:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2128
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp284:
; %bb.96:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp285:
	mov	w1, #10
	blr	x8
Ltmp286:
; %bb.97:
	mov	x22, x0
	add	x0, sp, #2128
	bl	__ZNSt3__16localeD1Ev
Ltmp288:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp289:
	b	LBB29_130
LBB29_98:
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	str	x8, [sp, #1200]
	str	x20, [sp, #1208]
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	str	x8, [sp, #1184]
	str	x6, [sp, #1192]
	str	x21, [sp, #1216]
	str	x7, [sp, #1224]
Ltmp224:
Lloh139:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh140:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh141:
	adrp	x1, l_.str.12@PAGE
Lloh142:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #15
	ldr	x26, [sp, #112]                 ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp225:
	ldr	x19, [sp, #320]                 ; 8-byte Folded Reload
; %bb.99:
Ltmp226:
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp227:
; %bb.100:
Ltmp228:
Lloh143:
	adrp	x1, l_.str.9@PAGE
Lloh144:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp229:
; %bb.101:
Ltmp230:
	and	w1, w19, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp231:
; %bb.102:
Ltmp232:
Lloh145:
	adrp	x1, l_.str.9@PAGE
Lloh146:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp233:
; %bb.103:
Ltmp234:
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp235:
; %bb.104:
Ltmp236:
Lloh147:
	adrp	x1, l_.str.9@PAGE
Lloh148:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp237:
; %bb.105:
Ltmp238:
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp239:
; %bb.106:
Ltmp240:
Lloh149:
	adrp	x1, l_.str.9@PAGE
Lloh150:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp241:
; %bb.107:
Ltmp242:
	add	x1, sp, #896
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp243:
; %bb.108:
Ltmp244:
Lloh151:
	adrp	x1, l_.str.9@PAGE
Lloh152:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp245:
; %bb.109:
Ltmp246:
	mov	x21, x0
	add	x1, sp, #1184
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp247:
; %bb.110:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp248:
	add	x8, sp, #2128
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp249:
; %bb.111:
Ltmp250:
Lloh153:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh154:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2128
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp251:
; %bb.112:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp252:
	mov	w1, #10
	blr	x8
Ltmp253:
; %bb.113:
	mov	x22, x0
	add	x0, sp, #2128
	bl	__ZNSt3__16localeD1Ev
Ltmp255:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp256:
	b	LBB29_130
LBB29_114:
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	str	x8, [sp, #1200]
	str	x20, [sp, #1208]
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	str	x8, [sp, #1184]
	str	x6, [sp, #1192]
	str	x21, [sp, #1216]
	str	x7, [sp, #1224]
Ltmp191:
Lloh155:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh156:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh157:
	adrp	x1, l_.str.13@PAGE
Lloh158:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp192:
; %bb.115:
Ltmp193:
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp194:
; %bb.116:
Ltmp195:
Lloh159:
	adrp	x1, l_.str.9@PAGE
Lloh160:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp196:
; %bb.117:
Ltmp197:
	and	w1, w22, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp198:
; %bb.118:
Ltmp199:
Lloh161:
	adrp	x1, l_.str.9@PAGE
Lloh162:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp200:
; %bb.119:
Ltmp201:
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp202:
; %bb.120:
Ltmp203:
Lloh163:
	adrp	x1, l_.str.9@PAGE
Lloh164:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp204:
; %bb.121:
Ltmp205:
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp206:
; %bb.122:
Ltmp207:
Lloh165:
	adrp	x1, l_.str.9@PAGE
Lloh166:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp208:
; %bb.123:
Ltmp209:
	add	x1, sp, #896
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp210:
; %bb.124:
Ltmp211:
Lloh167:
	adrp	x1, l_.str.9@PAGE
Lloh168:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp212:
; %bb.125:
Ltmp213:
	mov	x21, x0
	add	x1, sp, #1184
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp214:
; %bb.126:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp215:
	add	x8, sp, #2128
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp216:
; %bb.127:
Ltmp217:
Lloh169:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh170:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2128
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp218:
; %bb.128:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp219:
	mov	w1, #10
	blr	x8
Ltmp220:
; %bb.129:
	mov	x22, x0
	add	x0, sp, #2128
	bl	__ZNSt3__16localeD1Ev
Ltmp222:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp223:
LBB29_130:
Ltmp323:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp324:
LBB29_131:
Lloh171:
	adrp	x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh172:
	ldr	x19, [x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x19]
	str	x8, [sp, #1464]
	ldr	x9, [x19, #24]
	ldur	x8, [x8, #-24]
	add	x10, sp, #1464
	str	x9, [x10, x8]
	mov	x0, x26
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x19, #8
	add	x0, sp, #1464
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldur	x8, [x29, #-96]
Lloh173:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh174:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh175:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB29_158
; %bb.132:
	mov	w0, #0
	add	sp, sp, #2400
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB29_133:
Ltmp37:
Lloh176:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh177:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh178:
	adrp	x1, l_.str.14@PAGE
Lloh179:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #10
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp38:
	ldr	x25, [sp, #376]                 ; 8-byte Folded Reload
; %bb.134:
Ltmp39:
	and	w1, w21, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp40:
; %bb.135:
Ltmp41:
Lloh180:
	adrp	x1, l_.str.9@PAGE
Lloh181:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp42:
; %bb.136:
Ltmp43:
	and	w1, w19, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp44:
; %bb.137:
Ltmp45:
Lloh182:
	adrp	x1, l_.str.9@PAGE
Lloh183:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp46:
; %bb.138:
Ltmp47:
	mov	x21, x0
	add	x0, sp, #896
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp48:
; %bb.139:
	ldrb	w8, [sp, #896]
Lloh184:
	adrp	x19, l_.str@PAGE
Lloh185:
	add	x19, x19, l_.str@PAGEOFF
	cbz	w8, LBB29_145
; %bb.140:
	mov	x8, #0
                                        ; kill: def $w22 killed $w22 killed $x22 def $x22
	and	x9, x22, #0xffff
	ldr	x12, [sp, #368]                 ; 8-byte Folded Reload
	mov	x1, x12
LBB29_141:                              ; =>This Inner Loop Header: Depth=1
	and	x10, x9, #0x1
	ldrb	w10, [x19, x10]
	strb	w10, [x1, #-1]!
	cmp	x9, #1
	extr	x9, x8, x9, #1
	cset	w10, hi
	cmp	x8, #0
	lsr	x8, x8, #1
	cset	w11, ne
	csel	w10, w10, w11, eq
	tbnz	w10, #0, LBB29_141
; %bb.142:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x8, x21, x8
	ldr	x0, [x8, #40]
	sub	w8, w12, w1
	sxtw	x22, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp49:
	mov	x2, x22
	blr	x8
Ltmp50:
; %bb.143:
	cmp	x0, x22
	b.eq	LBB29_145
; %bb.144:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp51:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp52:
LBB29_145:
	add	x0, sp, #896
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp54:
Lloh186:
	adrp	x1, l_.str.9@PAGE
Lloh187:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	x0, x21
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp55:
; %bb.146:
Ltmp56:
	mov	x21, x0
	add	x0, sp, #448
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp57:
; %bb.147:
	ldrb	w8, [sp, #448]
	cbz	w8, LBB29_153
; %bb.148:
	ldp	q0, q1, [x24]
	str	q0, [sp, #2128]
	str	q1, [sp, #2144]
	ldr	q0, [x24, #32]
	str	q0, [sp, #2160]
	mov	w20, #10
	mov	x22, x25
LBB29_149:                              ; =>This Inner Loop Header: Depth=1
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x23]
	str	xzr, [sp, #744]
	str	x20, [sp, #736]
	add	x8, sp, #896
	add	x0, sp, #2128
	add	x1, sp, #736
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #944]
	ldrb	w8, [x19, x8]
	strb	w8, [x22, #-1]!
	ldr	q0, [sp, #928]
	str	q0, [sp, #2160]
	ldp	q1, q0, [sp, #896]
	str	q0, [sp, #2144]
	str	q1, [sp, #2128]
	ldr	x8, [sp, #2168]
	ldr	x9, [sp, #2160]
	ldr	x10, [sp, #2152]
	ldr	x11, [sp, #2144]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #2128]
	ldr	x11, [sp, #2136]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB29_149
; %bb.150:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x8, x21, x8
	ldr	x0, [x8, #40]
	sub	w8, w25, w22
	sxtw	x23, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp58:
	mov	x1, x22
	mov	x2, x23
	blr	x8
Ltmp59:
; %bb.151:
	cmp	x0, x23
	b.eq	LBB29_153
; %bb.152:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp60:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp61:
LBB29_153:
	add	x0, sp, #448
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp63:
	add	x8, sp, #1184
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp64:
; %bb.154:
Ltmp65:
Lloh188:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh189:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #1184
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp66:
; %bb.155:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp67:
	mov	w1, #10
	blr	x8
Ltmp68:
; %bb.156:
	mov	x22, x0
	add	x0, sp, #1184
	bl	__ZNSt3__16localeD1Ev
Ltmp70:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp71:
; %bb.157:
Ltmp72:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp73:
	b	LBB29_131
LBB29_158:
	bl	___stack_chk_fail
LBB29_159:                              ;   in Loop: Header=BB29_161 Depth=1
	ldr	x8, [sp, #152]                  ; 8-byte Folded Reload
	add	w8, w8, #1
	adrp	x9, _m@PAGE
	strh	w8, [x9, _m@PAGEOFF]
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x8, [sp, #1184]
	ldur	x8, [x8, #-24]
	ldr	x9, [sp, #120]                  ; 8-byte Folded Reload
	add	x10, sp, #1184
	str	x9, [x10, x8]
Lloh190:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh191:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	str	x9, [sp, #1200]
	str	x8, [sp, #1208]
	ldrsb	w8, [sp, #1295]
	tbnz	w8, #31, LBB29_280
LBB29_160:                              ;   in Loop: Header=BB29_161 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh192:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh193:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #1184
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB29_161:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_164 Depth 2
                                        ;     Child Loop BB29_204 Depth 2
                                        ;       Child Loop BB29_205 Depth 3
                                        ;         Child Loop BB29_206 Depth 4
                                        ;         Child Loop BB29_208 Depth 4
                                        ;       Child Loop BB29_213 Depth 3
                                        ;       Child Loop BB29_232 Depth 3
                                        ;       Child Loop BB29_256 Depth 3
                                        ;       Child Loop BB29_273 Depth 3
	mov	w12, #0
	adrp	x8, _m@PAGE
	ldrh	w8, [x8, _m@PAGEOFF]
Lloh194:
	adrp	x9, _p23@PAGE
Lloh195:
	add	x9, x9, _p23@PAGEOFF
	mov	w10, #11664
	madd	x9, x8, x10, x9
	ldp	q0, q1, [x9]
	stp	q0, q1, [sp, #608]
	ldr	q0, [x9, #32]
	str	q0, [sp, #640]
	ldp	x11, x10, [x9, #32]
	b	LBB29_164
LBB29_162:                              ;   in Loop: Header=BB29_164 Depth=2
Lloh196:
	adrp	x13, _yy@PAGE
Lloh197:
	add	x13, x13, _yy@PAGEOFF
	madd	x13, x12, x22, x13
	ldp	q0, q1, [x13]
	stp	q0, q1, [sp, #608]
	ldr	q0, [x13, #32]
	str	q0, [sp, #640]
LBB29_163:                              ;   in Loop: Header=BB29_164 Depth=2
	add	w12, w12, #1
	cmp	w8, w12, uxth
	b.lo	LBB29_180
LBB29_164:                              ;   Parent Loop BB29_161 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	x12, x12, #0xffff
Lloh198:
	adrp	x13, _p23@PAGE
Lloh199:
	add	x13, x13, _p23@PAGEOFF
	madd	x13, x12, x22, x13
	ldp	x17, x0, [x13, #32]
	eor	x14, x10, x0
	eor	x15, x11, x17
	orr	x14, x15, x14
	cbnz	x14, LBB29_167
; %bb.165:                              ;   in Loop: Header=BB29_164 Depth=2
	ldp	x16, x15, [x9, #16]
	ldp	x14, x1, [x13, #16]
	eor	x2, x15, x1
	eor	x3, x16, x14
	orr	x2, x3, x2
	cbnz	x2, LBB29_169
; %bb.166:                              ;   in Loop: Header=BB29_164 Depth=2
	ldp	x1, x14, [x9]
	ldp	x3, x2, [x13]
	cmp	x1, x3
	cset	w1, lo
	cmp	x14, x2
	cset	w14, lo
	csel	w14, w1, w14, eq
	tbz	w14, #0, LBB29_171
	b	LBB29_173
LBB29_167:                              ;   in Loop: Header=BB29_164 Depth=2
	cmp	x11, x17
	cset	w14, hi
	cmp	x10, x0
	cset	w15, hi
	csel	w14, w14, w15, eq
	tbz	w14, #0, LBB29_172
; %bb.168:                              ;   in Loop: Header=BB29_164 Depth=2
	ldp	x16, x15, [x13, #16]
	b	LBB29_171
LBB29_169:                              ;   in Loop: Header=BB29_164 Depth=2
	cmp	x16, x14
	cset	w2, ls
	cmp	x15, x1
	cset	w3, ls
	csel	w2, w2, w3, eq
	tbnz	w2, #0, LBB29_173
; %bb.170:                              ;   in Loop: Header=BB29_164 Depth=2
	mov	x16, x14
	mov	x15, x1
LBB29_171:                              ;   in Loop: Header=BB29_164 Depth=2
Lloh200:
	adrp	x14, _yy@PAGE
Lloh201:
	add	x14, x14, _yy@PAGEOFF
	madd	x1, x12, x22, x14
	ldp	q0, q1, [x9]
	stp	q0, q1, [x1]
	ldr	q0, [x9, #32]
	str	q0, [x1, #32]
	ldp	x3, x2, [x13]
	ldp	x13, x14, [x1]
	subs	x13, x13, x3
	sbc	x14, x14, x2
	stp	x13, x14, [x1]
	ldp	x5, x4, [x1, #16]
	subs	x5, x5, x16
	sbc	x4, x4, x15
	cmn	x5, x16
	adcs	xzr, x4, x15
	cset	w15, hs
	ldp	x6, x16, [x1, #32]
	subs	x17, x6, x17
	sbc	x16, x16, x0
	subs	x17, x17, x15
	sbc	x0, x16, xzr
	cmn	x13, x3
	adcs	xzr, x14, x2
	cset	w2, hs
	subs	x15, x5, x2
	sbc	x16, x4, xzr
	and	x3, x15, x16
	stp	x15, x16, [x1, #16]
	cmn	x3, #1
	cset	w3, eq
	and	w2, w2, w3
	subs	x17, x17, x2
	sbc	x0, x0, xzr
	b	LBB29_174
LBB29_172:                              ;   in Loop: Header=BB29_164 Depth=2
	ldp	x16, x15, [x9, #16]
LBB29_173:                              ;   in Loop: Header=BB29_164 Depth=2
Lloh202:
	adrp	x14, _yy@PAGE
Lloh203:
	add	x14, x14, _yy@PAGEOFF
	madd	x1, x12, x22, x14
	ldp	q0, q1, [x13]
	stp	q0, q1, [x1]
	ldr	q0, [x13, #32]
	str	q0, [x1, #32]
	ldp	x0, x17, [x9]
	ldp	x13, x14, [x1]
	subs	x13, x13, x0
	sbc	x14, x14, x17
	stp	x13, x14, [x1]
	ldp	x3, x2, [x1, #16]
	subs	x3, x3, x16
	sbc	x2, x2, x15
	cmn	x3, x16
	adcs	xzr, x2, x15
	cset	w15, hs
	ldp	x4, x16, [x1, #32]
	subs	x4, x4, x11
	sbc	x16, x16, x10
	subs	x4, x4, x15
	sbc	x5, x16, xzr
	cmn	x13, x0
	adcs	xzr, x14, x17
	cset	w17, hs
	subs	x15, x3, x17
	sbc	x16, x2, xzr
	and	x0, x15, x16
	stp	x15, x16, [x1, #16]
	cmn	x0, #1
	cset	w0, eq
	and	w17, w17, w0
	subs	x17, x4, x17
	sbc	x0, x5, xzr
LBB29_174:                              ;   in Loop: Header=BB29_164 Depth=2
	stp	x17, x0, [x1, #32]
	ldr	x1, [sp, #648]
	ldr	x2, [sp, #640]
	eor	x3, x2, x17
	eor	x4, x1, x0
	orr	x3, x3, x4
	cbnz	x3, LBB29_177
; %bb.175:                              ;   in Loop: Header=BB29_164 Depth=2
	ldr	x17, [sp, #632]
	ldr	x0, [sp, #624]
	eor	x1, x0, x15
	eor	x2, x17, x16
	orr	x1, x1, x2
	cbnz	x1, LBB29_178
; %bb.176:                              ;   in Loop: Header=BB29_164 Depth=2
	ldr	x15, [sp, #616]
	ldr	x16, [sp, #608]
	cmp	x16, x13
	cset	w13, lo
	cmp	x15, x14
	cset	w14, lo
	b	LBB29_179
LBB29_177:                              ;   in Loop: Header=BB29_164 Depth=2
	cmp	x2, x17
	cset	w13, hi
	cmp	x1, x0
	cset	w14, hi
	csel	w13, w13, w14, eq
	tbz	w13, #0, LBB29_163
	b	LBB29_162
LBB29_178:                              ;   in Loop: Header=BB29_164 Depth=2
	cmp	x0, x15
	cset	w13, ls
	cmp	x17, x16
	cset	w14, ls
LBB29_179:                              ;   in Loop: Header=BB29_164 Depth=2
	csel	w13, w13, w14, eq
	tbz	w13, #0, LBB29_162
	b	LBB29_163
LBB29_180:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp78:
	add	x0, sp, #1184
	bl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev
Ltmp79:
; %bb.181:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp81:
	mov	x0, #0
	bl	_time
Ltmp82:
; %bb.182:                              ;   in Loop: Header=BB29_161 Depth=1
Lloh204:
	adrp	x8, _start_time@PAGE
Lloh205:
	ldr	x1, [x8, _start_time@PAGEOFF]
Ltmp83:
	bl	_difftime
Ltmp84:
; %bb.183:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp85:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp86:
; %bb.184:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp87:
Lloh206:
	adrp	x1, l_.str.15@PAGE
Lloh207:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.185:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp89:
	mov	x21, x0
	bl	_pthread_self
	mov	x1, x0
Ltmp90:
; %bb.186:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp92:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp93:
; %bb.187:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp94:
Lloh208:
	adrp	x1, l_.str.16@PAGE
Lloh209:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp95:
; %bb.188:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp96:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
Lloh210:
	adrp	x1, l_.str.17@PAGE
Lloh211:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #9
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp97:
; %bb.189:                              ;   in Loop: Header=BB29_161 Depth=1
	adrp	x8, _m@PAGE
	ldrh	w1, [x8, _m@PAGEOFF]
Ltmp98:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp99:
; %bb.190:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp100:
Lloh212:
	adrp	x1, l_.str.9@PAGE
Lloh213:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp101:
; %bb.191:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp102:
	mov	x23, x0
	add	x1, sp, #608
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp103:
; %bb.192:                              ;   in Loop: Header=BB29_161 Depth=1
	ldr	x8, [x23]
	ldur	x8, [x8, #-24]
	add	x0, x23, x8
Ltmp104:
	add	x8, sp, #896
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp105:
; %bb.193:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp106:
	add	x0, sp, #896
Lloh214:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh215:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp107:
; %bb.194:                              ;   in Loop: Header=BB29_161 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp108:
	mov	w1, #10
	blr	x8
Ltmp109:
; %bb.195:                              ;   in Loop: Header=BB29_161 Depth=1
	mov	x21, x0
	add	x0, sp, #896
	bl	__ZNSt3__16localeD1Ev
Ltmp111:
	mov	x0, x23
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp112:
; %bb.196:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp113:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp114:
; %bb.197:                              ;   in Loop: Header=BB29_161 Depth=1
Ltmp116:
	add	x8, sp, #896
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp117:
; %bb.198:                              ;   in Loop: Header=BB29_161 Depth=1
	ldrb	w8, [sp, #919]
	sxtb	w9, w8
	ldr	x10, [sp, #896]
	ldr	x11, [sp, #904]
	cmp	w9, #0
	csel	x1, x10, x25, lt
	csel	x2, x11, x8, lt
Ltmp119:
Lloh216:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh217:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp120:
; %bb.199:                              ;   in Loop: Header=BB29_161 Depth=1
	ldrsb	w8, [sp, #919]
	tbz	w8, #31, LBB29_201
; %bb.200:                              ;   in Loop: Header=BB29_161 Depth=1
	ldr	x0, [sp, #896]
	bl	__ZdlPv
LBB29_201:                              ;   in Loop: Header=BB29_161 Depth=1
	mov	w8, #1
	strh	w8, [sp, #606]
	adrp	x8, _m@PAGE
	ldrh	w8, [x8, _m@PAGEOFF]
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	cmp	w8, #2
	b.lo	LBB29_159
; %bb.202:                              ;   in Loop: Header=BB29_161 Depth=1
	mov	w8, #1
	b	LBB29_204
LBB29_203:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh218:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh219:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #896
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldrh	w8, [sp, #606]
	add	w8, w8, #1
	strh	w8, [sp, #606]
	adrp	x9, _m@PAGE
	ldrh	w9, [x9, _m@PAGEOFF]
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	cmp	w9, w8, uxth
	b.ls	LBB29_159
LBB29_204:                              ;   Parent Loop BB29_161 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB29_205 Depth 3
                                        ;         Child Loop BB29_206 Depth 4
                                        ;         Child Loop BB29_208 Depth 4
                                        ;       Child Loop BB29_213 Depth 3
                                        ;       Child Loop BB29_232 Depth 3
                                        ;       Child Loop BB29_256 Depth 3
                                        ;       Child Loop BB29_273 Depth 3
	and	x9, x8, #0xffff
Lloh220:
	adrp	x8, _yy@PAGE
Lloh221:
	add	x8, x8, _yy@PAGEOFF
	str	x9, [sp, #376]                  ; 8-byte Folded Spill
	madd	x9, x9, x22, x8
	ldp	q0, q1, [x9]
Lloh222:
	adrp	x8, _dy@PAGE+96
Lloh223:
	add	x8, x8, _dy@PAGEOFF+96
	stp	q0, q1, [x8]
	ldr	q0, [x9, #32]
	str	q0, [x8, #32]
	ldp	x10, x8, [x9]
	stp	x8, x10, [sp, #360]             ; 16-byte Folded Spill
	ldp	x10, x11, [x9, #16]
	ldp	x13, x8, [x9, #32]
	stp	x8, x10, [sp, #344]             ; 16-byte Folded Spill
	str	x9, [sp, #256]                  ; 8-byte Folded Spill
	adrp	x8, _p2@PAGE+2
	ldrh	w16, [x8, _p2@PAGEOFF+2]
	mov	w15, #1
	ldr	x14, [sp, #168]                 ; 8-byte Folded Reload
	movi.2d	v3, #0000000000000000
LBB29_205:                              ;   Parent Loop BB29_161 Depth=1
                                        ;     Parent Loop BB29_204 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB29_206 Depth 4
                                        ;         Child Loop BB29_208 Depth 4
	mov	w2, #0
	stp	q3, q3, [x14]
	and	x16, x16, #0xffff
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	umulh	x17, x8, x16
	mul	x0, x8, x16
	ldr	x8, [sp, #360]                  ; 8-byte Folded Reload
	umulh	x1, x8, x16
	mul	x3, x8, x16
	adds	x17, x17, x3
	ldr	x3, [sp, #912]
	ldr	x4, [sp, #920]
	adc	x1, x3, x1
	str	x0, [sp, #896]
	str	x17, [sp, #904]
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	umulh	x17, x8, x16
	mul	x0, x8, x16
	adds	x0, x0, x1
	adc	x17, x17, x4
	umulh	x1, x11, x16
	mul	x3, x11, x16
	adds	x17, x17, x3
	ldr	x3, [sp, #928]
	ldr	x4, [sp, #936]
	adc	x1, x3, x1
	str	x0, [sp, #912]
	str	x17, [sp, #920]
	str	x1, [sp, #928]
	umulh	x17, x13, x16
	ldr	x8, [sp, #344]                  ; 8-byte Folded Reload
	madd	x17, x8, x16, x17
	mul	x16, x13, x16
	adds	x0, x1, x16
	adc	x1, x4, x17
	add	x17, x15, #1
Lloh224:
	adrp	x8, _p2@PAGE
Lloh225:
	add	x8, x8, _p2@PAGEOFF
	add	x16, x8, x15, lsl #1
	ldrh	w16, [x16, #2]
	sub	w3, w16, #1
	and	w20, w3, #0xffff
	ubfx	w3, w3, #1, #15
Lloh226:
	adrp	x8, _dy@PAGE
Lloh227:
	add	x8, x8, _dy@PAGEOFF
LBB29_206:                              ;   Parent Loop BB29_161 Depth=1
                                        ;     Parent Loop BB29_204 Depth=2
                                        ;       Parent Loop BB29_205 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	add	w4, w2, w3
	umaddl	x4, w4, w22, x8
	add	w5, w2, w20
	umaddl	x5, w5, w22, x8
	ldp	q0, q1, [x4]
	ldr	q2, [x4, #32]
	stp	q1, q2, [x5, #16]
	str	q0, [x5]
	add	w2, w2, #1
	and	w2, w2, #0xffff
	cmp	w2, w20
	b.ls	LBB29_206
; %bb.207:                              ;   in Loop: Header=BB29_205 Depth=3
	mov	x2, #0
	ldr	x3, [sp, #904]
	ldr	x4, [sp, #896]
	ldr	x5, [sp, #920]
	ldr	x6, [sp, #912]
	mov	w9, #128
	sub	x7, x9, x15
	cmp	w16, #1
	csinc	w19, w16, wzr, hi
	umaddl	x20, w20, w22, x8
	add	x20, x20, #32
LBB29_208:                              ;   Parent Loop BB29_161 Depth=1
                                        ;     Parent Loop BB29_204 Depth=2
                                        ;       Parent Loop BB29_205 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldp	x23, x21, [x20, #-32]
	ldp	x25, x24, [x20, #-16]
	ldp	x27, x26, [x20]
	adds	x28, x23, x2
	adcs	x30, x21, xzr
	cset	w12, hs
	add	x12, x25, x12
	lsl	x12, x12, x7
	tst	x7, #0x40
	csel	x12, xzr, x12, ne
	mvn	w8, w15
	lsl	x9, x30, #1
	lsl	x8, x9, x8
	lsr	x9, x28, x15
	orr	x8, x8, x9
	lsr	x9, x30, x15
	tst	x15, #0x40
	csel	x8, x9, x8, ne
	orr	w8, w12, w8
	sbfx	x8, x8, #0, #1
	and	x9, x8, x1
	and	x12, x8, x0
	and	x28, x8, x5
	and	x30, x8, x6
	and	x10, x8, x3
	and	x8, x8, x4
	adds	x12, x27, x12
	adc	x9, x26, x9
	adds	x25, x25, x30
	adcs	x24, x24, x28
	adcs	x12, x12, xzr
	cinc	x9, x9, hs
	adds	x8, x8, x23
	adcs	x10, x10, x21
	cset	w21, hs
	stp	x8, x10, [x20, #-32]
	adcs	x8, x25, xzr
	cinc	x10, x24, hs
	stp	x8, x10, [x20, #-16]
	orr	x8, x8, x10
	cmp	x8, #0
	cset	w8, eq
	and	w8, w21, w8
	adds	x8, x12, x8
	cinc	x9, x9, hs
	stp	x8, x9, [x20], #48
	add	x2, x2, #1
	cmp	x19, x2
	b.ne	LBB29_208
; %bb.209:                              ;   in Loop: Header=BB29_205 Depth=3
	mov	x15, x17
	cmp	x17, #12
	b.ne	LBB29_205
; %bb.210:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x8, [sp, #152]                  ; 8-byte Folded Reload
	and	x11, x8, #0xffff
	ldr	x19, [sp, #376]                 ; 8-byte Folded Reload
	mvn	x8, x19
	add	x8, x11, x8
Lloh228:
	adrp	x9, _p23@PAGE
Lloh229:
	add	x9, x9, _p23@PAGEOFF
	mov	w10, #11664
	madd	x8, x8, x10, x9
	madd	x8, x19, x22, x8
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #544]
	ldr	q0, [x8, #32]
	str	q0, [sp, #576]
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	madd	x8, x11, x10, x9
	mov	x9, #-11664
	add	x8, x8, x9
	ldp	x10, x9, [x8]
	ldr	x11, [sp, #552]
	ldr	x12, [sp, #544]
	subs	x12, x12, x10
	sbc	x11, x11, x9
	str	x12, [sp, #544]
	str	x11, [sp, #552]
	ldp	x14, x13, [x8, #16]
	ldr	x15, [sp, #568]
	ldr	x16, [sp, #560]
	subs	x16, x16, x14
	sbc	x15, x15, x13
	ldp	x8, x17, [x8, #32]
	cmn	x16, x14
	adcs	xzr, x15, x13
	cset	w13, hs
	ldr	x14, [sp, #584]
	ldr	x0, [sp, #576]
	subs	x8, x0, x8
	sbc	x14, x14, x17
	subs	x8, x8, x13
	sbc	x13, x14, xzr
	cmn	x12, x10
	adcs	xzr, x11, x9
	cset	w9, hs
	subs	x10, x16, x9
	sbc	x11, x15, xzr
	and	x12, x10, x11
	str	x10, [sp, #560]
	str	x11, [sp, #568]
	cmn	x12, #1
	cset	w10, eq
	and	w9, w9, w10
	subs	x8, x8, x9
	sbc	x9, x13, xzr
	str	x8, [sp, #576]
	str	x9, [sp, #584]
	add	x8, sp, #448
	add	x0, sp, #544
	ldr	x1, [sp, #256]                  ; 8-byte Folded Reload
	bl	__Z6divmodRK11__uint384_tS1_
	mov	w8, #0
	ldp	x9, x10, [sp, #456]
	ldp	x11, x13, [sp, #472]
	ldr	x12, [sp, #488]
	extr	x14, x13, x11, #63
	extr	x13, x12, x13, #63
	extr	x12, x10, x9, #63
	extr	x11, x11, x10, #63
	ldr	x10, [sp, #448]
	extr	x9, x9, x10, #63
	mov	w15, #1
	bfi	x15, x10, #1, #63
	stp	x15, x9, [sp, #176]             ; 16-byte Folded Spill
	str	x9, [sp, #616]
	str	x15, [sp, #608]
	stp	x11, x12, [sp, #240]            ; 16-byte Folded Spill
	str	x11, [sp, #632]
	str	x12, [sp, #624]
	stp	x13, x14, [sp, #352]            ; 16-byte Folded Spill
	str	x13, [sp, #648]
	str	x14, [sp, #640]
	strh	wzr, [sp, #444]
	cbz	w19, LBB29_228
; %bb.211:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x9, [sp, #152]                  ; 8-byte Folded Reload
	and	w10, w9, #0xffff
	ldr	x9, [sp, #376]                  ; 8-byte Folded Reload
	mvn	w9, w9
	str	w10, [sp, #224]                 ; 4-byte Folded Spill
	add	w9, w10, w9
	str	w9, [sp, #368]                  ; 4-byte Folded Spill
	cmp	w9, #1
	b.lt	LBB29_228
; %bb.212:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	w8, [sp, #368]                  ; 4-byte Folded Reload
	lsl	w8, w8, #1
	str	w8, [sp, #208]                  ; 4-byte Folded Spill
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	lsl	w8, w8, #1
	str	w8, [sp, #216]                  ; 4-byte Folded Spill
	mov	w21, #1
LBB29_213:                              ;   Parent Loop BB29_161 Depth=1
                                        ;     Parent Loop BB29_204 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	and	w8, w21, #0xffff
	str	w8, [sp, #336]                  ; 4-byte Folded Spill
	add	w8, w21, #1
	str	w8, [sp, #344]                  ; 4-byte Folded Spill
	lsr	w8, w8, #1
	str	w8, [sp, #328]                  ; 4-byte Folded Spill
	ldr	w9, [sp, #368]                  ; 4-byte Folded Reload
	sub	w8, w9, w8
	lsr	w10, w21, #1
	str	w10, [sp, #312]                 ; 4-byte Folded Spill
	ldr	x9, [sp, #376]                  ; 8-byte Folded Reload
	sub	w9, w9, w10
Lloh230:
	adrp	x28, _p23@PAGE
Lloh231:
	add	x28, x28, _p23@PAGEOFF
	mov	w10, #11664
	smaddl	x8, w8, w10, x28
	mov	w10, #11664
	smaddl	x8, w9, w22, x8
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #544]
	ldr	q0, [x8, #32]
	str	q0, [sp, #576]
	mov	w8, w21
	str	x8, [sp, #280]                  ; 8-byte Folded Spill
	mvn	x8, x8
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	madd	x8, x8, x10, x28
	ldp	x27, x26, [x8]
	ldr	x9, [sp, #552]
	ldr	x10, [sp, #544]
	subs	x10, x10, x27
	sbc	x9, x9, x26
	str	x10, [sp, #544]
	str	x9, [sp, #552]
	ldp	x24, x20, [x8, #16]
	ldr	x11, [sp, #568]
	ldr	x12, [sp, #560]
	subs	x12, x12, x24
	sbc	x11, x11, x20
	ldp	x25, x23, [x8, #32]
	cmn	x12, x24
	adcs	xzr, x11, x20
	cset	w8, hs
	ldr	x13, [sp, #584]
	ldr	x14, [sp, #576]
	subs	x14, x14, x25
	sbc	x13, x13, x23
	subs	x8, x14, x8
	sbc	x13, x13, xzr
	cmn	x10, x27
	adcs	xzr, x9, x26
	cset	w9, hs
	subs	x10, x12, x9
	sbc	x11, x11, xzr
	and	x12, x10, x11
	str	x10, [sp, #560]
	str	x11, [sp, #568]
	cmn	x12, #1
	cset	w10, eq
	and	w9, w9, w10
	subs	x8, x8, x9
	sbc	x9, x13, xzr
	str	x8, [sp, #576]
	str	x9, [sp, #584]
	add	x8, sp, #896
	add	x0, sp, #544
	ldr	x19, [sp, #256]                 ; 8-byte Folded Reload
	mov	x1, x19
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	q2, [sp, #928]
	ldp	q1, q0, [sp, #896]
	stp	q0, q2, [sp, #464]
	str	q1, [sp, #448]
	ldp	x9, x8, [sp, #448]
	str	x8, [sp, #320]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #472]
	stp	x8, x9, [sp, #296]              ; 16-byte Folded Spill
	ldr	x8, [sp, #464]
	str	x8, [sp, #288]                  ; 8-byte Folded Spill
	ldp	x8, x9, [sp, #480]
	stp	x8, x9, [sp, #264]              ; 16-byte Folded Spill
	ldr	w8, [sp, #368]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #312]                  ; 4-byte Folded Reload
	sub	w8, w8, w9
	ldr	w9, [sp, #328]                  ; 4-byte Folded Reload
	ldr	x10, [sp, #376]                 ; 8-byte Folded Reload
	sub	w9, w10, w9
	mov	w10, #11664
	smaddl	x8, w8, w10, x28
	smaddl	x8, w9, w22, x8
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #544]
	ldr	q0, [x8, #32]
	str	q0, [sp, #576]
	ldr	x8, [sp, #552]
	ldr	x9, [sp, #544]
	subs	x9, x9, x27
	sbc	x8, x8, x26
	str	x9, [sp, #544]
	str	x8, [sp, #552]
	ldr	x10, [sp, #568]
	ldr	x11, [sp, #560]
	subs	x11, x11, x24
	sbc	x10, x10, x20
	cmn	x11, x24
	adcs	xzr, x10, x20
	cset	w12, hs
	ldr	x13, [sp, #584]
	ldr	x14, [sp, #576]
	subs	x14, x14, x25
	sbc	x13, x13, x23
	subs	x12, x14, x12
	sbc	x13, x13, xzr
	cmn	x9, x27
	adcs	xzr, x8, x26
	cset	w8, hs
	subs	x9, x11, x8
	sbc	x10, x10, xzr
	and	x11, x9, x10
	str	x9, [sp, #560]
	str	x10, [sp, #568]
	cmn	x11, #1
	cset	w9, eq
	and	w8, w8, w9
	subs	x8, x12, x8
	sbc	x9, x13, xzr
	str	x8, [sp, #576]
	str	x9, [sp, #584]
	add	x8, sp, #896
	add	x0, sp, #544
	mov	x1, x19
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	w7, [sp, #336]                  ; 4-byte Folded Reload
	ldp	q1, q0, [sp, #896]
	stp	q1, q0, [sp, #448]
	ldr	q0, [sp, #928]
	str	q0, [sp, #480]
	ldp	x9, x8, [sp, #192]              ; 16-byte Folded Reload
	ldp	q0, q1, [x9]
	stp	q0, q1, [x8]
	ldr	q0, [x9, #32]
	str	q0, [x8, #32]
	ldp	x2, x1, [sp, #448]
	ldp	x13, x9, [sp, #464]
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	adds	x0, x13, x8
	ldr	x8, [sp, #296]                  ; 8-byte Folded Reload
	adc	x16, x9, x8
	ldr	x8, [sp, #304]                  ; 8-byte Folded Reload
	adds	x4, x2, x8
	ldr	x8, [sp, #320]                  ; 8-byte Folded Reload
	adcs	x3, x1, x8
	adcs	x12, x0, xzr
	cinc	x17, x16, hs
	mvn	w8, w21
	ldr	w10, [sp, #224]                 ; 4-byte Folded Reload
	add	w10, w10, w8
	mov	w11, #36409
	movk	w11, #14563, lsl #16
	smull	x10, w10, w11
	lsr	x11, x10, #32
	lsr	x10, x10, #63
	add	w10, w10, w11, asr #2
	add	w5, w10, #8
	sxtw	x10, w5
	asr	x11, x10, #63
	adds	x10, x4, x10
	adcs	x11, x3, x11
	adcs	x14, x12, xzr
	cinc	x15, x17, hs
	cmp	w7, #128
	b.hs	LBB29_215
; %bb.214:                              ;   in Loop: Header=BB29_213 Depth=3
	sxtw	x5, w5
	cmp	x10, x5
	cset	w6, lo
	cmp	x11, x5, asr #63
	cset	w5, lo
	csel	w5, w6, w5, eq
	cmp	x4, x2
	cset	w2, lo
	cmp	x3, x1
	cset	w1, lo
	csel	w1, w2, w1, eq
	ldp	x3, x2, [sp, #480]
	cmp	x0, x13
	cset	w13, lo
	cmp	x16, x9
	cset	w9, lo
	csel	w9, w13, w9, eq
	orr	x12, x12, x17
	cmp	x12, #0
	cset	w12, eq
	and	w12, w1, w12
	orr	x13, x14, x15
	cmp	x13, #0
	cset	w13, eq
	and	w13, w5, w13
	ldr	x16, [sp, #264]                 ; 8-byte Folded Reload
	adds	x9, x16, x9
	ldp	x16, x4, [sp, #272]             ; 16-byte Folded Reload
	cinc	x16, x16, hs
	adds	x9, x9, x12
	cinc	x12, x16, hs
	adds	x9, x9, x13
	cinc	x12, x12, hs
	adds	x9, x9, x3
	adc	x12, x12, x2
	lsl	x12, x12, x4
	lsr	x13, x9, #1
	lsr	x13, x13, x8
	orr	x12, x12, x13
	lsl	x9, x9, x4
	mov	w13, #128
	sub	w13, w13, w21
	mvn	w16, w13
	lsr	x17, x15, x13
	tst	x13, #0x40
	csel	x0, xzr, x17, ne
	lsr	x1, x14, x13
	lsl	x2, x15, #1
	lsl	x2, x2, x16
	orr	x1, x2, x1
	csel	x17, x17, x1, ne
	lsr	x1, x11, x13
	csel	x2, xzr, x1, ne
	lsr	x13, x10, x13
	lsl	x3, x11, #1
	lsl	x16, x3, x16
	orr	x13, x16, x13
	csel	x13, x1, x13, ne
	mov	x3, x7
	cmp	w7, #0
	csel	x16, xzr, x17, eq
	csel	x17, xzr, x0, eq
	csel	x0, xzr, x13, eq
	csel	x1, xzr, x2, eq
	tst	x4, #0x40
	csel	x12, x9, x12, ne
	csel	x9, xzr, x9, ne
	orr	x12, x12, x17
	orr	x13, x9, x16
	lsr	x9, x14, #1
	lsr	x9, x9, x8
	lsl	x15, x15, x4
	orr	x9, x15, x9
	lsl	x14, x14, x4
	csel	x9, x14, x9, ne
	csel	x15, xzr, x14, ne
	orr	x14, x9, x1
	orr	x15, x15, x0
	lsr	x9, x10, #1
	lsr	x8, x9, x8
	lsl	x9, x11, x4
	orr	x8, x9, x8
	lsl	x9, x10, x4
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	b	LBB29_218
LBB29_215:                              ;   in Loop: Header=BB29_213 Depth=3
	and	w16, w21, #0x7f
	lsr	x17, x10, #1
	mov	x3, x7
	cmp	w7, #256
	b.hs	LBB29_217
; %bb.216:                              ;   in Loop: Header=BB29_213 Depth=3
	mov	x9, #0
	mov	x8, #0
	lsr	x12, x14, #1
	mvn	w0, w16
	lsr	x12, x12, x0
	lsl	x13, x15, x16
	orr	x12, x13, x12
	lsl	x13, x14, x16
	mov	w14, #128
	sub	w14, w14, w16
	mvn	w15, w14
	lsl	x1, x11, #1
	lsl	x15, x1, x15
	lsr	x1, x11, x14
	tst	x14, #0x40
	lsr	x14, x10, x14
	orr	x14, x15, x14
	csel	x15, xzr, x1, ne
	csel	x14, x1, x14, ne
	cmp	w16, #0
	csel	x14, xzr, x14, eq
	csel	x15, xzr, x15, eq
	tst	x16, #0x40
	csel	x12, x13, x12, ne
	csel	x13, xzr, x13, ne
	orr	x12, x12, x15
	orr	x13, x13, x14
	lsr	x14, x17, x0
	lsl	x11, x11, x16
	orr	x11, x11, x14
	lsl	x10, x10, x16
	csel	x14, x10, x11, ne
	csel	x15, xzr, x10, ne
	b	LBB29_218
LBB29_217:                              ;   in Loop: Header=BB29_213 Depth=3
	mov	x15, #0
	mov	x14, #0
	mov	x9, #0
	mov	x8, #0
	mvn	w12, w16
	lsr	x12, x17, x12
	lsl	x11, x11, x16
	orr	x11, x11, x12
	lsl	x10, x10, x16
	tst	x16, #0x40
	csel	x12, x10, x11, ne
	csel	x13, xzr, x10, ne
LBB29_218:                              ;   in Loop: Header=BB29_213 Depth=3
	ldp	x11, x10, [sp, #352]            ; 16-byte Folded Reload
	eor	x10, x10, x13
	eor	x11, x11, x12
	orr	x10, x10, x11
	cbnz	x10, LBB29_221
; %bb.219:                              ;   in Loop: Header=BB29_213 Depth=3
	ldp	x11, x10, [sp, #240]            ; 16-byte Folded Reload
	eor	x10, x10, x15
	eor	x11, x11, x14
	orr	x10, x10, x11
	cbnz	x10, LBB29_226
; %bb.220:                              ;   in Loop: Header=BB29_213 Depth=3
	ldp	x10, x11, [sp, #176]            ; 16-byte Folded Reload
	cmp	x10, x9
	cset	w10, hi
	cmp	x11, x8
	b	LBB29_222
LBB29_221:                              ;   in Loop: Header=BB29_213 Depth=3
	ldp	x11, x10, [sp, #352]            ; 16-byte Folded Reload
	cmp	x10, x13
	cset	w10, hi
	cmp	x11, x12
LBB29_222:                              ;   in Loop: Header=BB29_213 Depth=3
	cset	w11, hi
	csel	w10, w10, w11, eq
	tbz	w10, #0, LBB29_224
LBB29_223:                              ;   in Loop: Header=BB29_213 Depth=3
	strh	w3, [sp, #444]
	str	x9, [sp, #608]
	str	x8, [sp, #616]
	stp	x14, x15, [sp, #240]            ; 16-byte Folded Spill
	str	x15, [sp, #624]
	str	x14, [sp, #632]
	stp	x12, x13, [sp, #352]            ; 16-byte Folded Spill
	stp	x9, x8, [sp, #176]              ; 16-byte Folded Spill
	str	x13, [sp, #640]
	str	x12, [sp, #648]
LBB29_224:                              ;   in Loop: Header=BB29_213 Depth=3
	ldr	w8, [sp, #344]                  ; 4-byte Folded Reload
	and	w21, w8, #0xffff
	ldr	w8, [sp, #216]                  ; 4-byte Folded Reload
	cmp	w8, w21
	b.lo	LBB29_227
; %bb.225:                              ;   in Loop: Header=BB29_213 Depth=3
	ldr	w8, [sp, #208]                  ; 4-byte Folded Reload
	cmp	w8, w21
	b.ge	LBB29_213
	b	LBB29_227
LBB29_226:                              ;   in Loop: Header=BB29_213 Depth=3
	ldp	x11, x10, [sp, #240]            ; 16-byte Folded Reload
	cmp	x10, x15
	cset	w10, ls
	cmp	x11, x14
	cset	w11, ls
	csel	w10, w10, w11, eq
	tbz	w10, #0, LBB29_223
	b	LBB29_224
LBB29_227:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrh	w8, [sp, #444]
LBB29_228:                              ;   in Loop: Header=BB29_204 Depth=2
	mvn	w9, w8
	ldr	x10, [sp, #152]                 ; 8-byte Folded Reload
	add	w9, w10, w9
	strh	w9, [sp, #446]
	and	w9, w9, #0xffff
	sub	w9, w9, #1
	mov	w10, #43691
	movk	w10, #10922, lsl #16
	smull	x10, w9, w10
	lsr	x11, x10, #63
	asr	x10, x10, #33
	add	w10, w10, w11
	mov	w12, #12
	msub	w9, w10, w12, w9
	and	w10, w9, #0xffff
Lloh232:
	adrp	x11, _p2@PAGE
Lloh233:
	add	x11, x11, _p2@PAGEOFF
	ldrh	w10, [x11, w10, uxtw  #1]
	strh	w9, [sp, #442]
	sub	w9, w10, #1
	strh	w9, [sp, #440]
	mov	w9, #43691
	mul	w9, w8, w9
	lsr	w9, w9, #19
	msub	w8, w9, w12, w8
	strh	w8, [sp, #438]
	and	x8, x8, #0xffff
	ldrh	w8, [x11, x8, lsl  #1]
	sub	w8, w8, #1
	strh	w8, [sp, #436]
Ltmp122:
	add	x8, sp, #384
	add	x1, sp, #434
	ldr	x0, [sp, #256]                  ; 8-byte Folded Reload
	bl	__ZNK11__uint384_t3invERt
Ltmp123:
; %bb.229:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrh	w8, [sp, #446]
Lloh234:
	adrp	x9, _p23@PAGE
Lloh235:
	add	x9, x9, _p23@PAGEOFF
	mov	w10, #11664
	madd	x8, x8, x10, x9
	mov	x9, #-11664
	add	x8, x8, x9
	ldp	q1, q0, [x8, #16]
	stp	q1, q0, [sp, #624]
	ldr	q0, [x8]
	str	q0, [sp, #608]
	ldr	x2, [sp, #256]                  ; 8-byte Folded Reload
	ldp	x9, x8, [x2, #32]
	ldr	x12, [sp, #648]
	ldr	x13, [sp, #640]
	ldr	x10, [sp, #616]
	ldr	x11, [sp, #608]
	ldr	x14, [sp, #632]
	ldr	x15, [sp, #624]
	b	LBB29_232
LBB29_230:                              ;   in Loop: Header=BB29_232 Depth=3
	cmp	x15, x16
	cset	w0, ls
	cmp	x14, x17
	cset	w1, ls
	csel	w0, w0, w1, eq
	tbnz	w0, #0, LBB29_237
LBB29_231:                              ;   in Loop: Header=BB29_232 Depth=3
	ldp	x1, x0, [x2]
	subs	x11, x11, x1
	sbc	x10, x10, x0
	str	x11, [sp, #608]
	str	x10, [sp, #616]
	subs	x15, x15, x16
	sbc	x14, x14, x17
	cmn	x15, x16
	adcs	xzr, x14, x17
	cset	w16, hs
	subs	x13, x13, x9
	sbc	x12, x12, x8
	subs	x13, x13, x16
	sbc	x12, x12, xzr
	cmn	x11, x1
	adcs	xzr, x10, x0
	cset	w16, hs
	subs	x15, x15, x16
	sbc	x14, x14, xzr
	and	x17, x15, x14
	str	x15, [sp, #624]
	str	x14, [sp, #632]
	cmn	x17, #1
	cset	w17, eq
	and	w16, w16, w17
	subs	x13, x13, x16
	sbc	x12, x12, xzr
	str	x13, [sp, #640]
	str	x12, [sp, #648]
LBB29_232:                              ;   Parent Loop BB29_161 Depth=1
                                        ;     Parent Loop BB29_204 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	eor	x16, x13, x9
	eor	x17, x12, x8
	orr	x16, x16, x17
	cbnz	x16, LBB29_235
; %bb.233:                              ;   in Loop: Header=BB29_232 Depth=3
	ldp	x16, x17, [x2, #16]
	eor	x0, x14, x17
	eor	x1, x15, x16
	orr	x0, x1, x0
	cbnz	x0, LBB29_230
; %bb.234:                              ;   in Loop: Header=BB29_232 Depth=3
	ldp	x17, x16, [x2]
	cmp	x11, x17
	cset	w17, lo
	cmp	x10, x16
	cset	w16, lo
	csel	w0, w17, w16, eq
	mov	x16, x15
	mov	x17, x14
	tbz	w0, #0, LBB29_231
	b	LBB29_237
LBB29_235:                              ;   in Loop: Header=BB29_232 Depth=3
	cmp	x13, x9
	cset	w16, ls
	cmp	x12, x8
	cset	w17, ls
	csel	w16, w16, w17, eq
	tbnz	w16, #0, LBB29_237
; %bb.236:                              ;   in Loop: Header=BB29_232 Depth=3
	ldp	x16, x17, [x2, #16]
	b	LBB29_231
LBB29_237:                              ;   in Loop: Header=BB29_204 Depth=2
Lloh236:
	adrp	x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh237:
	ldr	x8, [x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x19, x8, #104
	str	x19, [sp, #1024]
	add	x20, x8, #64
	str	x20, [sp, #912]
	ldp	x10, x8, [sp, #96]              ; 16-byte Folded Reload
	str	x8, [sp, #896]
	ldur	x8, [x8, #-24]
	add	x9, sp, #896
	str	x10, [x9, x8]
	str	xzr, [sp, #904]
	ldr	x8, [sp, #896]
	ldur	x8, [x8, #-24]
	add	x25, sp, #896
	add	x21, x9, x8
Ltmp125:
	mov	x0, x21
	ldr	x1, [sp, #160]                  ; 8-byte Folded Reload
	bl	__ZNSt3__18ios_base4initEPv
Ltmp126:
; %bb.238:                              ;   in Loop: Header=BB29_204 Depth=2
	str	xzr, [x21, #136]
	mov	w8, #-1
	str	w8, [x21, #144]
	ldp	x10, x8, [sp, #72]              ; 16-byte Folded Reload
	str	x8, [sp, #912]
	ldur	x9, [x8, #-24]
	ldp	x0, x8, [sp, #160]              ; 16-byte Folded Reload
	str	x10, [x8, x9]
	ldp	x8, x9, [sp, #56]               ; 16-byte Folded Reload
	str	x8, [sp, #896]
	ldur	x8, [x8, #-24]
	str	x9, [x25, x8]
Lloh238:
	adrp	x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh239:
	ldr	x8, [x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #24
	str	x19, [sp, #1024]
	str	x8, [sp, #896]
	str	x20, [sp, #912]
Ltmp128:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp129:
; %bb.239:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x8, [sp, #920]
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8]
	mov	w8, #24
	str	w8, [sp, #1016]
Ltmp131:
	mov	x0, #0
	bl	_time
Ltmp132:
; %bb.240:                              ;   in Loop: Header=BB29_204 Depth=2
Lloh240:
	adrp	x8, _start_time@PAGE
Lloh241:
	ldr	x1, [x8, _start_time@PAGEOFF]
Ltmp133:
	bl	_difftime
Ltmp134:
; %bb.241:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp135:
	ldr	x0, [sp, #168]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp136:
; %bb.242:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp137:
Lloh242:
	adrp	x1, l_.str.15@PAGE
Lloh243:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp138:
; %bb.243:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp139:
	mov	x21, x0
	bl	_pthread_self
	mov	x1, x0
Ltmp140:
; %bb.244:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp142:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp143:
; %bb.245:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp144:
Lloh244:
	adrp	x1, l_.str.16@PAGE
Lloh245:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp145:
; %bb.246:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp146:
	ldr	x0, [sp, #168]                  ; 8-byte Folded Reload
Lloh246:
	adrp	x1, l_.str.18@PAGE
Lloh247:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #12
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp147:
; %bb.247:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrh	w1, [sp, #606]
Ltmp148:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp149:
; %bb.248:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp150:
Lloh248:
	adrp	x1, l_.str.9@PAGE
Lloh249:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp151:
; %bb.249:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrh	w1, [sp, #446]
Ltmp152:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp153:
; %bb.250:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp154:
Lloh250:
	adrp	x1, l_.str.9@PAGE
Lloh251:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp155:
; %bb.251:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrh	w1, [sp, #444]
Ltmp156:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp157:
; %bb.252:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp158:
Lloh252:
	adrp	x1, l_.str.9@PAGE
Lloh253:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp159:
; %bb.253:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp160:
	mov	x26, x0
	add	x0, sp, #880
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp161:
; %bb.254:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrb	w8, [sp, #880]
	cbz	w8, LBB29_260
; %bb.255:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #832]
	ldr	q0, [x8, #32]
	str	q0, [sp, #864]
	ldr	x21, [sp, #144]                 ; 8-byte Folded Reload
	ldr	x19, [sp, #24]                  ; 8-byte Folded Reload
	mov	w20, #10
Lloh254:
	adrp	x23, l_.str@PAGE
Lloh255:
	add	x23, x23, l_.str@PAGEOFF
LBB29_256:                              ;   Parent Loop BB29_161 Depth=1
                                        ;     Parent Loop BB29_204 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19]
	str	xzr, [sp, #696]
	str	x20, [sp, #688]
	add	x8, sp, #736
	add	x0, sp, #832
	add	x1, sp, #688
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #784]
	ldrb	w8, [x23, x8]
	strb	w8, [x21, #-1]!
	ldr	q2, [sp, #768]
	ldp	q1, q0, [sp, #736]
	stp	q0, q2, [sp, #848]
	str	q1, [sp, #832]
	ldr	x8, [sp, #872]
	ldr	x9, [sp, #864]
	ldr	x10, [sp, #856]
	ldr	x11, [sp, #848]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #832]
	ldr	x11, [sp, #840]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB29_256
; %bb.257:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x8, [x26]
	ldur	x8, [x8, #-24]
	add	x8, x26, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #144]                  ; 8-byte Folded Reload
	sub	w8, w8, w21
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp162:
	mov	x1, x21
	mov	x2, x24
	blr	x8
Ltmp163:
; %bb.258:                              ;   in Loop: Header=BB29_204 Depth=2
	cmp	x0, x24
	b.eq	LBB29_260
; %bb.259:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x8, [x26]
	ldur	x8, [x8, #-24]
	add	x0, x26, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp164:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp165:
LBB29_260:                              ;   in Loop: Header=BB29_204 Depth=2
	add	x0, sp, #880
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldr	x8, [x26]
	ldur	x8, [x8, #-24]
	add	x0, x26, x8
Ltmp167:
	add	x8, sp, #2128
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp168:
; %bb.261:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp169:
	add	x0, sp, #2128
Lloh256:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh257:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp170:
; %bb.262:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp171:
	mov	w1, #10
	blr	x8
Ltmp172:
; %bb.263:                              ;   in Loop: Header=BB29_204 Depth=2
	mov	x21, x0
	add	x0, sp, #2128
	bl	__ZNSt3__16localeD1Ev
Ltmp174:
	mov	x0, x26
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp175:
; %bb.264:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp176:
	mov	x0, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp177:
; %bb.265:                              ;   in Loop: Header=BB29_204 Depth=2
Ltmp179:
	add	x8, sp, #2128
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp180:
; %bb.266:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrb	w8, [sp, #2151]
	sxtb	w9, w8
	ldr	x10, [sp, #2128]
	ldr	x11, [sp, #2136]
	cmp	w9, #0
	add	x9, sp, #2128
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp182:
Lloh258:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh259:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp183:
; %bb.267:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrsb	w8, [sp, #2151]
	tbz	w8, #31, LBB29_269
; %bb.268:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x0, [sp, #2128]
	bl	__ZdlPv
LBB29_269:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x19, [sp, #664]
	ldr	x20, [sp, #672]
Lloh260:
	adrp	x8, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh261:
	ldr	x8, [x8, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
	ldaprb	w8, [x8]
	tbz	w8, #0, LBB29_277
LBB29_270:                              ;   in Loop: Header=BB29_204 Depth=2
	sub	x8, x20, x19
	asr	x8, x8, #1
Lloh262:
	adrp	x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh263:
	ldr	x9, [x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
Lloh264:
	ldr	x9, [x9]
	lsl	x9, x9, #15
	cmp	x9, x8
	csel	x0, x9, x8, lo
	cmp	x0, #2
	b.lo	LBB29_272
; %bb.271:                              ;   in Loop: Header=BB29_204 Depth=2
	add	x9, sp, #444
	str	x9, [sp, #2160]
	add	x9, sp, #606
	str	x9, [sp, #2168]
	add	x9, sp, #446
	str	x9, [sp, #2176]
	add	x9, sp, #384
	str	x9, [sp, #2184]
	add	x9, sp, #434
	str	x9, [sp, #2192]
	ldr	x9, [sp, #256]                  ; 8-byte Folded Reload
	str	x9, [sp, #2200]
	add	x9, sp, #438
	str	x9, [sp, #2208]
	add	x9, sp, #436
	str	x9, [sp, #2216]
	add	x9, sp, #608
	str	x9, [sp, #2224]
	add	x9, sp, #442
	str	x9, [sp, #2232]
	add	x9, sp, #440
	str	x9, [sp, #2240]
	add	x9, sp, #1464
	str	x9, [sp, #2248]
	udiv	x9, x8, x0
	str	x19, [sp, #2128]
	str	x9, [sp, #2136]
	msub	x9, x9, x0, x8
	str	x9, [sp, #2144]
	str	x8, [sp, #2152]
	add	x2, sp, #2128
	mov	x1, #0
Lloh265:
	adrp	x3, __ZN5pstld8internal12DispatchableINS0_7ForEachINSt3__111__wrap_iterIPtEEZ4mainE3$_0EEE8dispatchEPvm@PAGE
Lloh266:
	add	x3, x3, __ZN5pstld8internal12DispatchableINS0_7ForEachINSt3__111__wrap_iterIPtEEZ4mainE3$_0EEE8dispatchEPvm@PAGEOFF
	bl	_dispatch_apply_f
	b	LBB29_275
LBB29_272:                              ;   in Loop: Header=BB29_204 Depth=2
	add	x8, sp, #444
	str	x8, [sp, #2128]
	add	x8, sp, #606
	str	x8, [sp, #2136]
	add	x8, sp, #446
	str	x8, [sp, #2144]
	add	x8, sp, #384
	str	x8, [sp, #2152]
	add	x8, sp, #434
	str	x8, [sp, #2160]
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	str	x8, [sp, #2168]
	add	x8, sp, #438
	str	x8, [sp, #2176]
	add	x8, sp, #436
	str	x8, [sp, #2184]
	add	x8, sp, #608
	str	x8, [sp, #2192]
	add	x8, sp, #442
	str	x8, [sp, #2200]
	add	x8, sp, #440
	str	x8, [sp, #2208]
	add	x8, sp, #1464
	str	x8, [sp, #2216]
	cmp	x19, x20
	b.eq	LBB29_275
LBB29_273:                              ;   Parent Loop BB29_161 Depth=1
                                        ;     Parent Loop BB29_204 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrh	w1, [x19]
Ltmp188:
	add	x0, sp, #2128
	bl	__ZZ4mainENK3$_0clERt
Ltmp189:
; %bb.274:                              ;   in Loop: Header=BB29_273 Depth=3
	add	x19, x19, #2
	cmp	x19, x20
	b.ne	LBB29_273
LBB29_275:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x8, [sp, #896]
	ldur	x8, [x8, #-24]
	ldr	x9, [sp, #120]                  ; 8-byte Folded Reload
	str	x9, [x25, x8]
Lloh267:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh268:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	str	x9, [sp, #912]
	str	x8, [sp, #920]
	ldrsb	w8, [sp, #1007]
	tbz	w8, #31, LBB29_203
; %bb.276:                              ;   in Loop: Header=BB29_204 Depth=2
	ldr	x0, [sp, #984]
	bl	__ZdlPv
	b	LBB29_203
LBB29_277:                              ;   in Loop: Header=BB29_204 Depth=2
Lloh269:
	adrp	x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh270:
	ldr	x0, [x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
	bl	___cxa_guard_acquire
	cbz	w0, LBB29_270
; %bb.278:                              ;   in Loop: Header=BB29_204 Depth=2
	mov	w8, #4
	str	x8, [sp, #2128]
Ltmp185:
	add	x1, sp, #736
	add	x2, sp, #2128
Lloh271:
	adrp	x0, l_.str.21@PAGE
Lloh272:
	add	x0, x0, l_.str.21@PAGEOFF
	mov	x3, #0
	mov	x4, #0
	bl	_sysctlbyname
Ltmp186:
; %bb.279:                              ;   in Loop: Header=BB29_204 Depth=2
	ldrsw	x8, [sp, #736]
Lloh273:
	adrp	x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh274:
	ldr	x9, [x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
Lloh275:
	str	x8, [x9]
Lloh276:
	adrp	x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh277:
	ldr	x0, [x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
	bl	___cxa_guard_release
	b	LBB29_270
LBB29_280:                              ;   in Loop: Header=BB29_161 Depth=1
	ldr	x0, [sp, #1272]
	bl	__ZdlPv
	b	LBB29_160
LBB29_281:
Ltmp75:
	add	x0, sp, #664
	bl	__ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm
Ltmp76:
; %bb.282:
	ldrh	w8, [x19, _T@PAGEOFF]
Lloh278:
	adrp	x9, _p2@PAGE
Lloh279:
	add	x9, x9, _p2@PAGEOFF
	ldrh	w8, [x9, x8, lsl  #1]
	cbz	w8, LBB29_52
; %bb.283:
	mov	x8, #0
	ldr	x9, [sp, #664]
Lloh280:
	adrp	x11, _p2@PAGE
Lloh281:
	add	x11, x11, _p2@PAGEOFF
LBB29_284:                              ; =>This Inner Loop Header: Depth=1
	strh	w8, [x9, x8, lsl  #1]
	add	x8, x8, #1
	ldrh	w10, [x19, _T@PAGEOFF]
	ldrh	w10, [x11, x10, lsl  #1]
	cmp	x8, x10
	b.lo	LBB29_284
	b	LBB29_52
LBB29_285:
Ltmp187:
	bl	___clang_call_terminate
LBB29_286:
Ltmp121:
	mov	x21, x0
	ldrsb	w8, [sp, #919]
	tbz	w8, #31, LBB29_308
; %bb.287:
	ldr	x0, [sp, #896]
	bl	__ZdlPv
	b	LBB29_308
LBB29_288:
Ltmp118:
	mov	x21, x0
	b	LBB29_308
LBB29_289:
Ltmp91:
	bl	___clang_call_terminate
LBB29_290:
Ltmp80:
	mov	x21, x0
	b	LBB29_311
LBB29_291:
Ltmp110:
	mov	x21, x0
	add	x0, sp, #896
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_308
LBB29_292:
Ltmp115:
	mov	x21, x0
	b	LBB29_308
LBB29_293:
Ltmp166:
	mov	x21, x0
	add	x0, sp, #880
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB29_307
LBB29_294:
Ltmp184:
	mov	x21, x0
	ldrsb	w8, [sp, #2151]
	tbz	w8, #31, LBB29_307
; %bb.295:
	ldr	x0, [sp, #2128]
	bl	__ZdlPv
	b	LBB29_307
LBB29_296:
Ltmp181:
	b	LBB29_306
LBB29_297:
Ltmp141:
	bl	___clang_call_terminate
LBB29_298:
Ltmp130:
	mov	x21, x0
Lloh282:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh283:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #896
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB29_300
LBB29_299:
Ltmp127:
	mov	x21, x0
LBB29_300:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB29_308
LBB29_301:
Ltmp124:
	mov	x21, x0
	b	LBB29_308
LBB29_302:
Ltmp173:
	mov	x21, x0
	add	x0, sp, #2128
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_307
LBB29_303:
Ltmp190:
	bl	___clang_call_terminate
LBB29_304:
Ltmp77:
	mov	x21, x0
	b	LBB29_311
LBB29_305:
Ltmp178:
LBB29_306:
	mov	x21, x0
LBB29_307:
	add	x0, sp, #896
	bl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
LBB29_308:
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x8, [sp, #1184]
	ldur	x8, [x8, #-24]
	add	x9, sp, #1184
	ldr	x10, [sp, #120]                 ; 8-byte Folded Reload
	str	x10, [x9, x8]
Lloh284:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh285:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	str	x9, [sp, #1200]
	str	x8, [sp, #1208]
	ldrsb	w8, [sp, #1295]
	tbz	w8, #31, LBB29_310
; %bb.309:
	ldr	x0, [sp, #1272]
	bl	__ZdlPv
LBB29_310:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh286:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh287:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #1184
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB29_311:
	ldr	x0, [sp, #664]
	cbz	x0, LBB29_329
; %bb.312:
	str	x0, [sp, #672]
	bl	__ZdlPv
	b	LBB29_329
LBB29_313:
Ltmp62:
	mov	x21, x0
	add	x0, sp, #448
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB29_329
LBB29_314:
Ltmp53:
	mov	x21, x0
	add	x0, sp, #896
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB29_329
LBB29_315:
Ltmp69:
	mov	x21, x0
	add	x0, sp, #1184
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_329
LBB29_316:
Ltmp74:
	b	LBB29_328
LBB29_317:
Ltmp221:
	b	LBB29_321
LBB29_318:
Ltmp254:
	b	LBB29_321
LBB29_319:
Ltmp287:
	b	LBB29_321
LBB29_320:
Ltmp320:
LBB29_321:
	mov	x21, x0
	add	x0, sp, #2128
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_329
LBB29_322:
Ltmp348:
	mov	x21, x0
	add	x0, sp, #896
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_329
LBB29_323:
Ltmp36:
	b	LBB29_328
LBB29_324:
Ltmp33:
	mov	x21, x0
Lloh288:
	adrp	x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh289:
	ldr	x8, [x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	b	LBB29_330
LBB29_325:
Ltmp30:
	mov	x21, x0
	b	LBB29_331
LBB29_326:
Ltmp353:
	b	LBB29_328
LBB29_327:
Ltmp325:
LBB29_328:
	mov	x21, x0
LBB29_329:
Lloh290:
	adrp	x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh291:
	ldr	x19, [x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x19]
	str	x8, [sp, #1464]
	ldr	x9, [x19, #24]
	ldur	x8, [x8, #-24]
	add	x10, sp, #1464
	str	x9, [x10, x8]
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x19, #8
LBB29_330:
	add	x0, sp, #1464
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
LBB29_331:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpLdrGot	Lloh51, Lloh52
	.loh AdrpLdrGotLdr	Lloh48, Lloh49, Lloh50
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpLdr	Lloh61, Lloh62
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdrp	Lloh57, Lloh61
	.loh AdrpLdr	Lloh57, Lloh58
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpLdrGot	Lloh93, Lloh94
	.loh AdrpLdrGot	Lloh91, Lloh92
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpLdrGot	Lloh95, Lloh96
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpLdrGot	Lloh105, Lloh106
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpLdrGot	Lloh107, Lloh108
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpLdrGot	Lloh121, Lloh122
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpLdrGot	Lloh123, Lloh124
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh129, Lloh130
	.loh AdrpAdd	Lloh131, Lloh132
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpLdrGot	Lloh137, Lloh138
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpLdrGot	Lloh139, Lloh140
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpAdd	Lloh147, Lloh148
	.loh AdrpAdd	Lloh149, Lloh150
	.loh AdrpAdd	Lloh151, Lloh152
	.loh AdrpLdrGot	Lloh153, Lloh154
	.loh AdrpAdd	Lloh157, Lloh158
	.loh AdrpLdrGot	Lloh155, Lloh156
	.loh AdrpAdd	Lloh159, Lloh160
	.loh AdrpAdd	Lloh161, Lloh162
	.loh AdrpAdd	Lloh163, Lloh164
	.loh AdrpAdd	Lloh165, Lloh166
	.loh AdrpAdd	Lloh167, Lloh168
	.loh AdrpLdrGot	Lloh169, Lloh170
	.loh AdrpLdrGotLdr	Lloh173, Lloh174, Lloh175
	.loh AdrpLdrGot	Lloh171, Lloh172
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpLdrGot	Lloh176, Lloh177
	.loh AdrpAdd	Lloh180, Lloh181
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpLdrGot	Lloh188, Lloh189
	.loh AdrpLdrGot	Lloh190, Lloh191
	.loh AdrpLdrGot	Lloh192, Lloh193
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpAdd	Lloh200, Lloh201
	.loh AdrpAdd	Lloh202, Lloh203
	.loh AdrpLdr	Lloh204, Lloh205
	.loh AdrpAdd	Lloh206, Lloh207
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpLdrGot	Lloh214, Lloh215
	.loh AdrpLdrGot	Lloh216, Lloh217
	.loh AdrpLdrGot	Lloh218, Lloh219
	.loh AdrpAdd	Lloh222, Lloh223
	.loh AdrpAdd	Lloh220, Lloh221
	.loh AdrpAdd	Lloh226, Lloh227
	.loh AdrpAdd	Lloh224, Lloh225
	.loh AdrpAdd	Lloh228, Lloh229
	.loh AdrpAdd	Lloh230, Lloh231
	.loh AdrpAdd	Lloh232, Lloh233
	.loh AdrpAdd	Lloh234, Lloh235
	.loh AdrpLdrGot	Lloh236, Lloh237
	.loh AdrpLdrGot	Lloh238, Lloh239
	.loh AdrpLdr	Lloh240, Lloh241
	.loh AdrpAdd	Lloh242, Lloh243
	.loh AdrpAdd	Lloh244, Lloh245
	.loh AdrpAdd	Lloh246, Lloh247
	.loh AdrpAdd	Lloh248, Lloh249
	.loh AdrpAdd	Lloh250, Lloh251
	.loh AdrpAdd	Lloh252, Lloh253
	.loh AdrpAdd	Lloh254, Lloh255
	.loh AdrpLdrGot	Lloh256, Lloh257
	.loh AdrpLdrGot	Lloh258, Lloh259
	.loh AdrpLdrGot	Lloh260, Lloh261
	.loh AdrpLdrGotLdr	Lloh262, Lloh263, Lloh264
	.loh AdrpAdd	Lloh265, Lloh266
	.loh AdrpLdrGot	Lloh267, Lloh268
	.loh AdrpLdrGot	Lloh269, Lloh270
	.loh AdrpAdd	Lloh271, Lloh272
	.loh AdrpLdrGot	Lloh276, Lloh277
	.loh AdrpLdrGotStr	Lloh273, Lloh274, Lloh275
	.loh AdrpAdd	Lloh278, Lloh279
	.loh AdrpAdd	Lloh280, Lloh281
	.loh AdrpLdrGot	Lloh282, Lloh283
	.loh AdrpLdrGot	Lloh284, Lloh285
	.loh AdrpLdrGot	Lloh286, Lloh287
	.loh AdrpLdrGot	Lloh288, Lloh289
	.loh AdrpLdrGot	Lloh290, Lloh291
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table29:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp28-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp29-Ltmp28                  ;   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin5            ;     jumps to Ltmp30
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp32-Ltmp31                  ;   Call between Ltmp31 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin5            ;     jumps to Ltmp33
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Ltmp35-Ltmp34                  ;   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin5            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp326-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp343-Ltmp326                ;   Call between Ltmp326 and Ltmp343
	.uleb128 Ltmp353-Lfunc_begin5           ;     jumps to Ltmp353
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp344-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp347-Ltmp344                ;   Call between Ltmp344 and Ltmp347
	.uleb128 Ltmp348-Lfunc_begin5           ;     jumps to Ltmp348
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp349-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp352-Ltmp349                ;   Call between Ltmp349 and Ltmp352
	.uleb128 Ltmp353-Lfunc_begin5           ;     jumps to Ltmp353
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp290-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp315-Ltmp290                ;   Call between Ltmp290 and Ltmp315
	.uleb128 Ltmp325-Lfunc_begin5           ;     jumps to Ltmp325
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp316-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp319-Ltmp316                ;   Call between Ltmp316 and Ltmp319
	.uleb128 Ltmp320-Lfunc_begin5           ;     jumps to Ltmp320
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp321-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Ltmp282-Ltmp321                ;   Call between Ltmp321 and Ltmp282
	.uleb128 Ltmp325-Lfunc_begin5           ;     jumps to Ltmp325
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp283-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Ltmp286-Ltmp283                ;   Call between Ltmp283 and Ltmp286
	.uleb128 Ltmp287-Lfunc_begin5           ;     jumps to Ltmp287
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp288-Lfunc_begin5           ; >> Call Site 11 <<
	.uleb128 Ltmp249-Ltmp288                ;   Call between Ltmp288 and Ltmp249
	.uleb128 Ltmp325-Lfunc_begin5           ;     jumps to Ltmp325
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp250-Lfunc_begin5           ; >> Call Site 12 <<
	.uleb128 Ltmp253-Ltmp250                ;   Call between Ltmp250 and Ltmp253
	.uleb128 Ltmp254-Lfunc_begin5           ;     jumps to Ltmp254
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp255-Lfunc_begin5           ; >> Call Site 13 <<
	.uleb128 Ltmp216-Ltmp255                ;   Call between Ltmp255 and Ltmp216
	.uleb128 Ltmp325-Lfunc_begin5           ;     jumps to Ltmp325
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp217-Lfunc_begin5           ; >> Call Site 14 <<
	.uleb128 Ltmp220-Ltmp217                ;   Call between Ltmp217 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin5           ;     jumps to Ltmp221
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp222-Lfunc_begin5           ; >> Call Site 15 <<
	.uleb128 Ltmp324-Ltmp222                ;   Call between Ltmp222 and Ltmp324
	.uleb128 Ltmp325-Lfunc_begin5           ;     jumps to Ltmp325
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin5            ; >> Call Site 16 <<
	.uleb128 Ltmp48-Ltmp37                  ;   Call between Ltmp37 and Ltmp48
	.uleb128 Ltmp74-Lfunc_begin5            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin5            ; >> Call Site 17 <<
	.uleb128 Ltmp52-Ltmp49                  ;   Call between Ltmp49 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin5            ;     jumps to Ltmp53
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin5            ; >> Call Site 18 <<
	.uleb128 Ltmp57-Ltmp54                  ;   Call between Ltmp54 and Ltmp57
	.uleb128 Ltmp74-Lfunc_begin5            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin5            ; >> Call Site 19 <<
	.uleb128 Ltmp61-Ltmp58                  ;   Call between Ltmp58 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin5            ;     jumps to Ltmp62
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin5            ; >> Call Site 20 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp74-Lfunc_begin5            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin5            ; >> Call Site 21 <<
	.uleb128 Ltmp68-Ltmp65                  ;   Call between Ltmp65 and Ltmp68
	.uleb128 Ltmp69-Lfunc_begin5            ;     jumps to Ltmp69
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin5            ; >> Call Site 22 <<
	.uleb128 Ltmp73-Ltmp70                  ;   Call between Ltmp70 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin5            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin5            ; >> Call Site 23 <<
	.uleb128 Ltmp78-Ltmp73                  ;   Call between Ltmp73 and Ltmp78
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin5            ; >> Call Site 24 <<
	.uleb128 Ltmp79-Ltmp78                  ;   Call between Ltmp78 and Ltmp79
	.uleb128 Ltmp80-Lfunc_begin5            ;     jumps to Ltmp80
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin5            ; >> Call Site 25 <<
	.uleb128 Ltmp88-Ltmp81                  ;   Call between Ltmp81 and Ltmp88
	.uleb128 Ltmp115-Lfunc_begin5           ;     jumps to Ltmp115
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp89-Lfunc_begin5            ; >> Call Site 26 <<
	.uleb128 Ltmp90-Ltmp89                  ;   Call between Ltmp89 and Ltmp90
	.uleb128 Ltmp91-Lfunc_begin5            ;     jumps to Ltmp91
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp92-Lfunc_begin5            ; >> Call Site 27 <<
	.uleb128 Ltmp105-Ltmp92                 ;   Call between Ltmp92 and Ltmp105
	.uleb128 Ltmp115-Lfunc_begin5           ;     jumps to Ltmp115
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin5           ; >> Call Site 28 <<
	.uleb128 Ltmp109-Ltmp106                ;   Call between Ltmp106 and Ltmp109
	.uleb128 Ltmp110-Lfunc_begin5           ;     jumps to Ltmp110
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp111-Lfunc_begin5           ; >> Call Site 29 <<
	.uleb128 Ltmp114-Ltmp111                ;   Call between Ltmp111 and Ltmp114
	.uleb128 Ltmp115-Lfunc_begin5           ;     jumps to Ltmp115
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp116-Lfunc_begin5           ; >> Call Site 30 <<
	.uleb128 Ltmp117-Ltmp116                ;   Call between Ltmp116 and Ltmp117
	.uleb128 Ltmp118-Lfunc_begin5           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin5           ; >> Call Site 31 <<
	.uleb128 Ltmp120-Ltmp119                ;   Call between Ltmp119 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin5           ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin5           ; >> Call Site 32 <<
	.uleb128 Ltmp123-Ltmp122                ;   Call between Ltmp122 and Ltmp123
	.uleb128 Ltmp124-Lfunc_begin5           ;     jumps to Ltmp124
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin5           ; >> Call Site 33 <<
	.uleb128 Ltmp126-Ltmp125                ;   Call between Ltmp125 and Ltmp126
	.uleb128 Ltmp127-Lfunc_begin5           ;     jumps to Ltmp127
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp128-Lfunc_begin5           ; >> Call Site 34 <<
	.uleb128 Ltmp129-Ltmp128                ;   Call between Ltmp128 and Ltmp129
	.uleb128 Ltmp130-Lfunc_begin5           ;     jumps to Ltmp130
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp131-Lfunc_begin5           ; >> Call Site 35 <<
	.uleb128 Ltmp138-Ltmp131                ;   Call between Ltmp131 and Ltmp138
	.uleb128 Ltmp178-Lfunc_begin5           ;     jumps to Ltmp178
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp139-Lfunc_begin5           ; >> Call Site 36 <<
	.uleb128 Ltmp140-Ltmp139                ;   Call between Ltmp139 and Ltmp140
	.uleb128 Ltmp141-Lfunc_begin5           ;     jumps to Ltmp141
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp142-Lfunc_begin5           ; >> Call Site 37 <<
	.uleb128 Ltmp161-Ltmp142                ;   Call between Ltmp142 and Ltmp161
	.uleb128 Ltmp178-Lfunc_begin5           ;     jumps to Ltmp178
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp162-Lfunc_begin5           ; >> Call Site 38 <<
	.uleb128 Ltmp165-Ltmp162                ;   Call between Ltmp162 and Ltmp165
	.uleb128 Ltmp166-Lfunc_begin5           ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp167-Lfunc_begin5           ; >> Call Site 39 <<
	.uleb128 Ltmp168-Ltmp167                ;   Call between Ltmp167 and Ltmp168
	.uleb128 Ltmp178-Lfunc_begin5           ;     jumps to Ltmp178
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin5           ; >> Call Site 40 <<
	.uleb128 Ltmp172-Ltmp169                ;   Call between Ltmp169 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin5           ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin5           ; >> Call Site 41 <<
	.uleb128 Ltmp177-Ltmp174                ;   Call between Ltmp174 and Ltmp177
	.uleb128 Ltmp178-Lfunc_begin5           ;     jumps to Ltmp178
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp179-Lfunc_begin5           ; >> Call Site 42 <<
	.uleb128 Ltmp180-Ltmp179                ;   Call between Ltmp179 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin5           ;     jumps to Ltmp181
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp182-Lfunc_begin5           ; >> Call Site 43 <<
	.uleb128 Ltmp183-Ltmp182                ;   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin5           ;     jumps to Ltmp184
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin5           ; >> Call Site 44 <<
	.uleb128 Ltmp189-Ltmp188                ;   Call between Ltmp188 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin5           ;     jumps to Ltmp190
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp185-Lfunc_begin5           ; >> Call Site 45 <<
	.uleb128 Ltmp186-Ltmp185                ;   Call between Ltmp185 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin5           ;     jumps to Ltmp187
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp75-Lfunc_begin5            ; >> Call Site 46 <<
	.uleb128 Ltmp76-Ltmp75                  ;   Call between Ltmp75 and Ltmp76
	.uleb128 Ltmp77-Lfunc_begin5            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp76-Lfunc_begin5            ; >> Call Site 47 <<
	.uleb128 Lfunc_end5-Ltmp76              ;   Call between Ltmp76 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_def_can_be_hidden	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #8
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp354:
Lloh292:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh293:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp355:
; %bb.1:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp356:
	mov	w1, #10
	blr	x8
Ltmp357:
; %bb.2:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB30_3:
Ltmp358:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh292, Lloh293
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table30:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp354-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp354
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp354-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp357-Ltmp354                ;   Call between Ltmp354 and Ltmp357
	.uleb128 Ltmp358-Lfunc_begin6           ;     jumps to Ltmp358
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp357-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp357             ;   Call between Ltmp357 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev ; -- Begin function _ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev
	.globl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev
	.p2align	2
__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev: ; @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x0
Lloh294:
	adrp	x25, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh295:
	ldr	x25, [x25, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x24, x25, #104
	mov	x19, x0
	str	x24, [x19, #128]!
	add	x26, x25, #64
	mov	x27, x0
	str	x26, [x27, #16]!
	add	x21, x0, #24
Lloh296:
	adrp	x23, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh297:
	ldr	x23, [x23, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #16]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp359:
	mov	x0, x22
	mov	x1, x21
	bl	__ZNSt3__18ios_base4initEPv
Ltmp360:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1
	str	w8, [x22, #144]
	ldp	x8, x9, [x23, #32]
	str	x8, [x20, #16]
	ldur	x8, [x8, #-24]
	str	x9, [x27, x8]
	ldr	x8, [x23, #8]
	str	x8, [x20]
	ldr	x9, [x23, #48]
	ldur	x8, [x8, #-24]
	str	x9, [x20, x8]
	add	x8, x25, #24
	str	x8, [x20]
	str	x24, [x20, #128]
	str	x26, [x20, #16]
Ltmp362:
	mov	x0, x21
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp363:
; %bb.2:
Lloh298:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh299:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x20, #24]
	movi.2d	v0, #0000000000000000
	stur	q0, [x20, #88]
	stur	q0, [x20, #104]
	mov	w8, #24
	str	w8, [x20, #120]
	mov	x0, x20
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB31_3:
Ltmp364:
	mov	x21, x0
	add	x1, x23, #8
	mov	x0, x20
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB31_5
LBB31_4:
Ltmp361:
	mov	x21, x0
LBB31_5:
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh296, Lloh297
	.loh AdrpLdrGot	Lloh294, Lloh295
	.loh AdrpLdrGot	Lloh298, Lloh299
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table31:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp359-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp360-Ltmp359                ;   Call between Ltmp359 and Ltmp360
	.uleb128 Ltmp361-Lfunc_begin7           ;     jumps to Ltmp361
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp362-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp363-Ltmp362                ;   Call between Ltmp362 and Ltmp363
	.uleb128 Ltmp364-Lfunc_begin7           ;     jumps to Ltmp364
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp363-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp363             ;   Call between Ltmp363 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK11__uint384_t3invERt       ; -- Begin function _ZNK11__uint384_t3invERt
	.weak_def_can_be_hidden	__ZNK11__uint384_t3invERt
	.p2align	2
__ZNK11__uint384_t3invERt:              ; @_ZNK11__uint384_t3invERt
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x28, x27, [sp, #144]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x0
	mov	x19, x8
	ldp	x22, x21, [x0, #32]
	orr	x8, x22, x21
	ldp	x24, x23, [x0, #16]
	orr	x9, x24, x23
	cmp	x9, #0
	cset	w9, ne
	cmp	x8, #0
	mov	w8, #2
	csel	w8, w9, w8, eq
	add	x9, x0, w8, uxtw #4
	ldp	x10, x11, [x9]
	cmp	x11, #0
	cset	w12, ne
	lsl	w9, w12, #6
	mov	w13, #32
	bfi	w13, w12, #6, #1
	lsr	x12, x11, #32
	tst	x13, #0x40
	csel	x13, xzr, x12, ne
	lsr	x14, x10, #32
	bfi	x14, x11, #32, #32
	csel	x12, x12, x14, ne
	orr	x12, x12, x13
	cmp	x12, #0
	cset	w13, ne
	lsl	x12, x11, #1
	bfi	w9, w13, #5, #1
	orr	w13, w9, #0x10
	and	x14, x13, #0x30
	lsr	x15, x11, x14
	tst	x13, #0x40
	csel	x16, xzr, x15, ne
	lsr	x14, x10, x14
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x12, x13
	orr	x13, x13, x14
	csel	x13, x15, x13, ne
	orr	x13, x13, x16
	cmp	x13, #0
	cset	w13, ne
	bfi	w9, w13, #4, #1
	orr	w13, w9, #0x8
	and	x14, x13, #0x38
	lsr	x15, x11, x14
	tst	x13, #0x40
	csel	x16, xzr, x15, ne
	lsr	x14, x10, x14
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x12, x13
	orr	x13, x13, x14
	csel	x13, x15, x13, ne
	orr	x13, x13, x16
	cmp	x13, #0
	cset	w13, ne
	bfi	w9, w13, #3, #1
	orr	w13, w9, #0x4
	and	x14, x13, #0x3c
	lsr	x15, x11, x14
	tst	x13, #0x40
	csel	x16, xzr, x15, ne
	lsr	x14, x10, x14
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x12, x13
	orr	x13, x13, x14
	csel	x13, x15, x13, ne
	orr	x13, x13, x16
	cmp	x13, #0
	cset	w13, ne
	bfi	w9, w13, #2, #1
	orr	w13, w9, #0x2
	lsr	x14, x11, x13
	tst	x13, #0x40
	csel	x15, xzr, x14, ne
	lsr	x16, x10, x13
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x12, x13
	orr	x13, x13, x16
	csel	x13, x14, x13, ne
	orr	x13, x13, x15
	cmp	x13, #0
	cset	w13, ne
	bfi	w9, w13, #1, #1
	orr	w13, w9, #0x1
	lsr	x11, x11, x13
	tst	x13, #0x40
	csel	x14, xzr, x11, ne
	lsr	x10, x10, x13
	mvn	w13, w9
	and	x13, x13, #0x3e
	lsl	x12, x12, x13
	orr	x10, x12, x10
	csel	x10, x11, x10, ne
	orr	x10, x10, x14
	cmp	x10, #0
	cset	w10, ne
	orr	w9, w9, w10
	add	w25, w9, w8, lsl #7
	strh	w25, [x1]
	movi.2d	v0, #0xffffffffffffffff
	stp	q0, q0, [sp, #16]
	str	q0, [sp]
	add	x8, sp, #48
	mov	x0, sp
	mov	x1, x20
	bl	__Z6divmodRK11__uint384_tS1_
	ldp	x9, x8, [sp, #96]
	adds	x15, x9, #2
	cinc	x16, x8, hs
	ldp	x11, x10, [sp, #112]
	ldp	x13, x12, [sp, #128]
	cmn	x9, #3
	cset	w9, hi
	cmn	x8, #1
	csel	w8, w9, wzr, eq
	adds	x17, x11, x8
	cinc	x0, x10, hs
	orr	x9, x17, x0
	cmp	x9, #0
	cset	w9, eq
	and	w8, w8, w9
	adds	x1, x13, x8
	eor	x8, x1, x22
	cinc	x2, x12, hs
	eor	x9, x2, x21
	orr	x8, x8, x9
	cbnz	x8, LBB32_3
; %bb.1:
	eor	x8, x17, x24
	eor	x9, x0, x23
	orr	x8, x8, x9
	cbnz	x8, LBB32_4
; %bb.2:
	ldp	x9, x8, [x20]
	cmp	x15, x9
	cset	w9, hs
	cmp	x16, x8
	cset	w8, hs
	csel	w14, w9, w8, eq
	b	LBB32_6
LBB32_3:
	cmp	x1, x22
	cset	w8, hi
	cmp	x2, x21
	b	LBB32_5
LBB32_4:
	cmp	x17, x24
	cset	w8, hi
	cmp	x0, x23
LBB32_5:
	cset	w9, hi
	csel	w14, w8, w9, eq
LBB32_6:
	ldp	x9, x8, [sp, #48]
	adds	x12, x9, w14, uxtw
	adcs	x13, x8, xzr
	cset	w10, hs
	ldp	x8, x9, [sp, #64]
	ldp	x3, x11, [sp, #80]
	adcs	x8, x8, xzr
	cinc	x9, x9, hs
	orr	x4, x8, x9
	cmp	x4, #0
	cset	w4, eq
	and	w10, w10, w4
	adds	x10, x3, x10
	cinc	x11, x11, hs
	cbz	w14, LBB32_17
; %bb.7:
	ldp	x5, x3, [x20]
	ldp	x6, x4, [x20, #16]
	ldp	x26, x7, [x20, #32]
	tst	w25, #0xffff
	b.eq	LBB32_18
LBB32_8:
	mov	w14, #0
	subs	x1, x1, x26
	sbc	x2, x2, x7
	subs	x17, x17, x6
	sbc	x0, x0, x4
	cmn	x17, x6
	adcs	xzr, x0, x4
	cset	w4, hs
	subs	x6, x1, x4
	sbc	x7, x2, xzr
	subs	x4, x15, x5
	sbc	x2, x16, x3
	cmn	x4, x5
	adcs	xzr, x2, x3
	cset	w15, hs
	subs	x1, x17, x15
	sbc	x0, x0, xzr
	and	x16, x1, x0
	cmn	x16, #1
	cset	w16, eq
	and	w15, w15, w16
	subs	x17, x6, x15
	sbc	x3, x7, xzr
	b	LBB32_11
LBB32_9:                                ;   in Loop: Header=BB32_11 Depth=1
	ldp	x5, x6, [x20]
	ldp	x7, x26, [x20, #16]
	ldp	x27, x28, [x20, #32]
LBB32_10:                               ;   in Loop: Header=BB32_11 Depth=1
	extr	x11, x11, x10, #63
	extr	x10, x10, x9, #63
	extr	x9, x9, x8, #63
	extr	x8, x8, x13, #63
	subs	x4, x3, x5
	sbc	x2, x2, x6
	subs	x13, x1, x7
	sbc	x0, x0, x26
	cmn	x13, x7
	adcs	xzr, x0, x26
	cset	w1, hs
	subs	x16, x16, x27
	sbc	x17, x17, x28
	subs	x16, x16, x1
	sbc	x3, x17, xzr
	cmn	x4, x5
	adcs	xzr, x2, x6
	cset	w17, hs
	subs	x1, x13, x17
	sbc	x0, x0, xzr
	and	x13, x1, x0
	cmn	x13, #1
	cset	w13, eq
	and	w13, w17, w13
	subs	x17, x16, x13
	sbc	x3, x3, xzr
	add	w14, w14, #1
	and	w13, w14, #0xffff
	cmp	w13, w25, uxth
	mov	x13, x15
	b.hs	LBB32_19
LBB32_11:                               ; =>This Inner Loop Header: Depth=1
	extr	x16, x17, x0, #63
	extr	x17, x3, x17, #63
	extr	x0, x0, x1, #63
	extr	x1, x1, x2, #63
	lsl	x3, x4, #1
	extr	x2, x2, x4, #63
	lsl	x4, x12, #1
	eor	x5, x17, x21
	eor	x6, x16, x22
	extr	x15, x13, x12, #63
	orr	x12, x6, x5
	cbnz	x12, LBB32_14
; %bb.12:                               ;   in Loop: Header=BB32_11 Depth=1
	eor	x12, x1, x24
	eor	x5, x0, x23
	orr	x12, x12, x5
	cbnz	x12, LBB32_15
; %bb.13:                               ;   in Loop: Header=BB32_11 Depth=1
	ldp	x5, x12, [x20]
	cmp	x3, x5
	cset	w5, hs
	cmp	x2, x12
	cset	w12, hs
	csel	w5, w5, w12, eq
	orr	x12, x4, x5
	tbnz	w5, #0, LBB32_9
	b	LBB32_16
LBB32_14:                               ;   in Loop: Header=BB32_11 Depth=1
	cmp	x16, x22
	cset	w12, hi
	cmp	x17, x21
	cset	w5, hi
	csel	w5, w12, w5, eq
	orr	x12, x4, x5
	tbnz	w5, #0, LBB32_9
	b	LBB32_16
LBB32_15:                               ;   in Loop: Header=BB32_11 Depth=1
	cmp	x1, x24
	cset	w12, hi
	cset	w5, ls
	cmp	x0, x23
	cset	w6, ls
	csel	w5, w5, w6, eq
	cset	w6, hi
	csel	w12, w12, w6, eq
	orr	x12, x4, x12
	tbz	w5, #0, LBB32_9
LBB32_16:                               ;   in Loop: Header=BB32_11 Depth=1
	mov	x5, #0
	mov	x6, #0
	mov	x7, #0
	mov	x26, #0
	mov	x27, #0
	mov	x28, #0
	b	LBB32_10
LBB32_17:
	mov	x6, #0
	mov	x4, #0
	mov	x26, #0
	mov	x7, #0
	mov	x5, #0
	mov	x3, #0
	tst	w25, #0xffff
	b.ne	LBB32_8
LBB32_18:
	mov	x15, x13
LBB32_19:
	stp	x10, x11, [sp, #80]
	stp	x8, x9, [sp, #64]
	stp	x12, x15, [sp, #48]
	ldp	q0, q1, [sp, #48]
	stp	q0, q1, [x19]
	ldr	q0, [sp, #80]
	str	q0, [x19, #32]
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
Lloh300:
	adrp	x21, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh301:
	ldr	x21, [x21, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x21]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	ldp	x9, x10, [x21, #64]
	str	x9, [x0, x8]
Lloh302:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh303:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	mov	x20, x0
	str	x8, [x20, #24]!
	stur	x10, [x20, #-8]
	ldrsb	w8, [x20, #87]
	tbz	w8, #31, LBB33_2
; %bb.1:
	ldr	x0, [x19, #88]
	bl	__ZdlPv
LBB33_2:
	mov	x0, x20
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	add	x1, x21, #8
	mov	x0, x19
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #128
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh302, Lloh303
	.loh AdrpLdrGot	Lloh300, Lloh301
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm ; -- Begin function _ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm
	.globl	__ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm
	.p2align	2
__ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm: ; @_ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x23, x1
	mov	x19, x0
	ldp	x25, x8, [x0, #8]
	mov	x20, x25
	sub	x9, x8, x25
	cmp	x1, x9, asr #1
	b.ls	LBB35_5
; %bb.1:
	ldr	x21, [x19]
	sub	x27, x25, x21
	asr	x26, x27, #1
	adds	x9, x26, x23
	b.mi	LBB35_19
; %bb.2:
	sub	x8, x8, x21
	cmp	x8, x9
	csel	x9, x8, x9, hi
	mov	x10, #9223372036854775806
	mov	x11, #9223372036854775807
	cmp	x8, x10
	csel	x28, x9, x11, lo
	cbz	x28, LBB35_8
; %bb.3:
	tbnz	x28, #63, LBB35_20
; %bb.4:
	lsl	x0, x28, #1
	bl	__Znwm
	mov	x24, x0
	b	LBB35_9
LBB35_5:
	cbz	x23, LBB35_7
; %bb.6:
	lsl	x1, x23, #1
	add	x21, x25, x1
	mov	x0, x20
	bl	_bzero
	mov	x20, x21
LBB35_7:
	str	x20, [x19, #8]
	b	LBB35_18
LBB35_8:
	mov	x24, #0
LBB35_9:
	add	x22, x24, x26, lsl #1
	lsl	x1, x23, #1
	add	x23, x22, x1
	mov	x0, x22
	bl	_bzero
	add	x8, x24, x28, lsl #1
	subs	x9, x25, x21
	b.eq	LBB35_16
; %bb.10:
	sub	x9, x9, #2
	cmp	x9, #62
	b.lo	LBB35_15
; %bb.11:
	sub	x10, x25, x24
	sub	x10, x10, x27
	cmp	x10, #64
	b.lo	LBB35_15
; %bb.12:
	lsr	x9, x9, #1
	add	x9, x9, #1
	and	x10, x9, #0xffffffffffffffe0
	lsl	x11, x10, #1
	sub	x20, x25, x11
	sub	x22, x22, x11
	sub	x11, x25, #32
	add	x12, x24, x26, lsl #1
	sub	x12, x12, #32
	mov	x13, x10
LBB35_13:                               ; =>This Inner Loop Header: Depth=1
	ldp	q1, q0, [x11]
	ldp	q3, q2, [x11, #-32]
	stp	q1, q0, [x12]
	stp	q3, q2, [x12, #-32]
	sub	x11, x11, #64
	sub	x12, x12, #64
	sub	x13, x13, #32
	cbnz	x13, LBB35_13
; %bb.14:
	cmp	x9, x10
	b.eq	LBB35_16
LBB35_15:                               ; =>This Inner Loop Header: Depth=1
	ldrh	w9, [x20, #-2]!
	strh	w9, [x22, #-2]!
	cmp	x20, x21
	b.ne	LBB35_15
LBB35_16:
	stp	x22, x23, [x19]
	str	x8, [x19, #16]
	cbz	x21, LBB35_18
; %bb.17:
	mov	x0, x21
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	b	__ZdlPv
LBB35_18:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB35_19:
	mov	x0, x19
	bl	__ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev
LBB35_20:
	bl	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev ; -- Begin function _ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev
	.globl	__ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev: ; @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh304:
	adrp	x0, l_.str.19@PAGE
Lloh305:
	add	x0, x0, l_.str.19@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.loh AdrpAdd	Lloh304, Lloh305
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB7v160006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB7v160006EPKc
	.globl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB7v160006EPKc: ; @_ZNSt3__120__throw_length_errorB7v160006EPKc
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp365:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B7v160006EPKc
Ltmp366:
; %bb.1:
Lloh306:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh307:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh308:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh309:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB37_2:
Ltmp367:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh308, Lloh309
	.loh AdrpLdrGot	Lloh306, Lloh307
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table37:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp365-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp365
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp365-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp366-Ltmp365                ;   Call between Ltmp365 and Ltmp366
	.uleb128 Ltmp367-Lfunc_begin8           ;     jumps to Ltmp367
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp366-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp366             ;   Call between Ltmp366 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B7v160006EPKc ; -- Begin function _ZNSt12length_errorC1B7v160006EPKc
	.globl	__ZNSt12length_errorC1B7v160006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B7v160006EPKc
	.p2align	2
__ZNSt12length_errorC1B7v160006EPKc:    ; @_ZNSt12length_errorC1B7v160006EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh310:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh311:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh310, Lloh311
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB7v160006v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB7v160006v
	.globl	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB7v160006v: ; @_ZSt28__throw_bad_array_new_lengthB7v160006v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh312:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh313:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh314:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh315:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh314, Lloh315
	.loh AdrpLdrGot	Lloh312, Lloh313
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp368:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp369:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB40_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB40_7
; %bb.3:
Ltmp371:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp372:
; %bb.4:
Ltmp373:
Lloh316:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh317:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp374:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp375:
	mov	w1, #32
	blr	x8
Ltmp376:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB40_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp378:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp379:
; %bb.8:
	cbnz	x0, LBB40_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp381:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp382:
LBB40_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB40_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB40_12:
Ltmp383:
	b	LBB40_15
LBB40_13:
Ltmp377:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB40_16
LBB40_14:
Ltmp380:
LBB40_15:
	mov	x20, x0
LBB40_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB40_18
LBB40_17:
Ltmp370:
	mov	x20, x0
LBB40_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp384:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp385:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB40_11
LBB40_20:
Ltmp386:
	mov	x19, x0
Ltmp387:
	bl	___cxa_end_catch
Ltmp388:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB40_22:
Ltmp389:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh316, Lloh317
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table40:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp368-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp369-Ltmp368                ;   Call between Ltmp368 and Ltmp369
	.uleb128 Ltmp370-Lfunc_begin9           ;     jumps to Ltmp370
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp371-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp372-Ltmp371                ;   Call between Ltmp371 and Ltmp372
	.uleb128 Ltmp380-Lfunc_begin9           ;     jumps to Ltmp380
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp373-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Ltmp376-Ltmp373                ;   Call between Ltmp373 and Ltmp376
	.uleb128 Ltmp377-Lfunc_begin9           ;     jumps to Ltmp377
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp378-Lfunc_begin9           ; >> Call Site 4 <<
	.uleb128 Ltmp379-Ltmp378                ;   Call between Ltmp378 and Ltmp379
	.uleb128 Ltmp380-Lfunc_begin9           ;     jumps to Ltmp380
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp381-Lfunc_begin9           ; >> Call Site 5 <<
	.uleb128 Ltmp382-Ltmp381                ;   Call between Ltmp381 and Ltmp382
	.uleb128 Ltmp383-Lfunc_begin9           ;     jumps to Ltmp383
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp382-Lfunc_begin9           ; >> Call Site 6 <<
	.uleb128 Ltmp384-Ltmp382                ;   Call between Ltmp382 and Ltmp384
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp384-Lfunc_begin9           ; >> Call Site 7 <<
	.uleb128 Ltmp385-Ltmp384                ;   Call between Ltmp384 and Ltmp385
	.uleb128 Ltmp386-Lfunc_begin9           ;     jumps to Ltmp386
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp385-Lfunc_begin9           ; >> Call Site 8 <<
	.uleb128 Ltmp387-Ltmp385                ;   Call between Ltmp385 and Ltmp387
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp387-Lfunc_begin9           ; >> Call Site 9 <<
	.uleb128 Ltmp388-Ltmp387                ;   Call between Ltmp387 and Ltmp388
	.uleb128 Ltmp389-Lfunc_begin9           ;     jumps to Ltmp389
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp388-Lfunc_begin9           ; >> Call Site 10 <<
	.uleb128 Lfunc_end9-Ltmp388             ;   Call between Ltmp388 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB41_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB41_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB41_15
LBB41_3:
	cmp	x23, #1
	b.lt	LBB41_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB41_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB41_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB41_8
LBB41_7:
	orr	x8, x23, #0xf
	add	x26, x8, #1
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB41_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp390:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp391:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB41_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB41_15
	b	LBB41_12
LBB41_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB41_15
LBB41_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB41_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB41_15
LBB41_14:
	str	xzr, [x20, #24]
	b	LBB41_16
LBB41_15:
	mov	x19, #0
LBB41_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB41_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev
LBB41_18:
Ltmp392:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB41_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB41_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table41:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp390-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp390
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp390-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp391-Ltmp390                ;   Call between Ltmp390 and Ltmp391
	.uleb128 Ltmp392-Lfunc_begin10          ;     jumps to Ltmp392
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp391-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp391            ;   Call between Ltmp391 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh318:
	adrp	x0, l_.str.20@PAGE
Lloh319:
	add	x0, x0, l_.str.20@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.loh AdrpAdd	Lloh318, Lloh319
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZN5pstld8internal12DispatchableINS0_7ForEachINSt3__111__wrap_iterIPtEEZ4mainE3$_0EEE8dispatchEPvm
__ZN5pstld8internal12DispatchableINS0_7ForEachINSt3__111__wrap_iterIPtEEZ4mainE3$_0EEE8dispatchEPvm: ; @"_ZN5pstld8internal12DispatchableINS0_7ForEachINSt3__111__wrap_iterIPtEEZ4mainE3$_0EEE8dispatchEPvm"
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	ldr	x8, [x0, #16]
	cbz	x8, LBB43_2
; %bb.1:
	ldp	x9, x10, [x0]
	add	x11, x10, #1
	mul	x12, x11, x1
	add	x12, x9, x12, lsl #1
	add	x13, x12, x10, lsl #1
	add	x13, x13, #2
	sub	x14, x1, x8
	mul	x14, x10, x14
	madd	x11, x11, x8, x14
	add	x9, x9, x11, lsl #1
	add	x10, x9, x10, lsl #1
	cmp	x8, x1
	csel	x20, x12, x9, hi
	csel	x21, x13, x10, hi
	cmp	x20, x21
	b.ne	LBB43_3
	b	LBB43_6
LBB43_2:
	ldp	x8, x9, [x0]
	mul	x10, x9, x1
	add	x20, x8, x10, lsl #1
	add	x21, x20, x9, lsl #1
	cmp	x20, x21
	b.eq	LBB43_6
LBB43_3:
	add	x19, x0, #32
LBB43_4:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w1, [x20]
Ltmp393:
	mov	x0, x19
	bl	__ZZ4mainENK3$_0clERt
Ltmp394:
; %bb.5:                                ;   in Loop: Header=BB43_4 Depth=1
	add	x20, x20, #2
	cmp	x20, x21
	b.ne	LBB43_4
LBB43_6:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB43_7:
Ltmp395:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table43:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp393-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp394-Ltmp393                ;   Call between Ltmp393 and Ltmp394
	.uleb128 Ltmp395-Lfunc_begin11          ;     jumps to Ltmp395
	.byte	1                               ;   On action: 1
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clERt
__ZZ4mainENK3$_0clERt:                  ; @"_ZZ4mainENK3$_0clERt"
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	sub	sp, sp, #1472
Lloh320:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh321:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh322:
	ldr	x8, [x8]
	stur	x8, [x29, #-104]
	and	w9, w1, #0xffff
	ldr	x8, [x0]
	ldrh	w8, [x8]
	adrp	x10, _T@PAGE
	ldrh	w10, [x10, _T@PAGEOFF]
	subs	w10, w8, w10
	csel	w10, wzr, w10, lo
	sub	x11, x8, x10
Lloh323:
	adrp	x12, _p2@PAGE
Lloh324:
	add	x12, x12, _p2@PAGEOFF
	ldrh	w11, [x12, x11, lsl  #1]
	cmp	w11, w9
	b.ls	LBB44_182
; %bb.1:
	mov	x25, x0
	mov	w11, #11664
	mul	x10, x10, x11
Lloh325:
	adrp	x30, _p23@PAGE
Lloh326:
	add	x30, x30, _p23@PAGEOFF
	ldr	x10, [x30, x10]
	mul	x11, x10, x9
	cbz	w8, LBB44_7
; %bb.2:
	mov	w21, #0
	mov	x6, #0
	mov	x7, #0
	mov	x19, #0
	mov	x20, #0
	mov	x22, #0
	mov	x23, #0
	mov	x5, x11
	sub	x11, x11, #1
	mov	w12, #1
	mov	w13, #48
	mov	w14, #11664
	mov	x15, x8
	b	LBB44_5
LBB44_3:                                ;   in Loop: Header=BB44_5 Depth=1
	and	x0, x21, #0xffff
	madd	x17, x17, x14, x30
	madd	x4, x0, x13, x17
	ldp	x0, x17, [x4]
	ldp	x2, x1, [x4, #16]
	ldp	x4, x3, [x4, #32]
LBB44_4:                                ;   in Loop: Header=BB44_5 Depth=1
	adds	x4, x4, x22
	adc	x3, x3, x23
	adds	x2, x2, x19
	adcs	x1, x1, x20
	adcs	x4, x4, xzr
	cinc	x3, x3, hs
	adds	x6, x0, x6
	adcs	x7, x17, x7
	cset	w17, hs
	adcs	x19, x2, xzr
	cinc	x20, x1, hs
	orr	x0, x19, x20
	cmp	x0, #0
	cset	w0, eq
	and	w17, w17, w0
	adds	x22, x4, x17
	cinc	x23, x3, hs
	cmp	x16, #0
	cinc	w21, w21, ne
	sub	x15, x15, #1
	tst	x15, #0xffff
	b.eq	LBB44_8
LBB44_5:                                ; =>This Inner Loop Header: Depth=1
	sub	w17, w15, #1
	lsl	x16, x12, x17
	ands	x16, x16, x11
	b.ne	LBB44_3
; %bb.6:                                ;   in Loop: Header=BB44_5 Depth=1
	mov	x0, #0
	mov	x17, #0
	mov	x2, #0
	mov	x1, #0
	mov	x4, #0
	mov	x3, #0
	b	LBB44_4
LBB44_7:
	mov	x5, x11
	mov	x22, #0
	mov	x23, #0
	mov	x19, #0
	mov	x20, #0
	mov	x6, #0
	mov	x7, #0
	mov	w21, #0
LBB44_8:
	mov	x11, x5
	add	x10, x5, x10
	str	x10, [sp, #16]                  ; 8-byte Folded Spill
	str	x21, [sp, #40]                  ; 8-byte Folded Spill
	cbz	w9, LBB44_10
; %bb.9:
	stp	x23, x22, [sp, #24]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x7, x6, [sp, #64]               ; 16-byte Folded Spill
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	cmp	x11, x9
	b.lo	LBB44_11
	b	LBB44_182
LBB44_10:
	mov	w9, #11664
	madd	x9, x8, x9, x30
	mov	x17, x11
	ldp	x11, x10, [x9]
	subs	x6, x6, x11
	sbc	x7, x7, x10
	ldp	x13, x12, [x9, #16]
	subs	x14, x19, x13
	sbc	x15, x20, x12
	ldp	x9, x16, [x9, #32]
	cmn	x14, x13
	adcs	xzr, x15, x12
	cset	w12, hs
	subs	x9, x22, x9
	sbc	x13, x23, x16
	subs	x9, x9, x12
	sbc	x12, x13, xzr
	stp	x7, x6, [sp, #64]               ; 16-byte Folded Spill
	cmn	x6, x11
	adcs	xzr, x7, x10
	cset	w10, hs
	subs	x11, x14, x10
	sbc	x13, x15, xzr
	stp	x13, x11, [sp, #48]             ; 16-byte Folded Spill
	and	x11, x11, x13
	cmn	x11, #1
	cset	w11, eq
	and	w10, w10, w11
	mov	x11, x17
	subs	x9, x9, x10
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	sbc	x9, x12, xzr
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	cmp	x17, x9
	b.hs	LBB44_182
LBB44_11:
	mov	w9, #11664
	mul	x8, x8, x9
	ldr	x8, [x30, x8]
	add	x27, sp, #480
	add	x8, x11, x8
	rbit	x8, x8
	clz	x8, x8
	add	x9, sp, #528
	add	x9, x9, #16
	str	x9, [sp]                        ; 8-byte Folded Spill
	add	x10, sp, #784
	add	x9, x10, #128
	str	x9, [sp, #120]                  ; 8-byte Folded Spill
	add	x9, x10, #16
	str	x9, [sp, #304]                  ; 8-byte Folded Spill
	add	x9, x10, #24
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
Lloh327:
	adrp	x12, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh328:
	ldr	x12, [x12, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x9, [x12, #16]
	str	x9, [sp, #192]                  ; 8-byte Folded Spill
	ldr	x9, [x12, #24]
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	ldr	x9, [x12, #32]
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x9, [x12, #40]
	str	x9, [sp, #160]                  ; 8-byte Folded Spill
	ldr	x9, [x12, #48]
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	add	x9, x10, #88
	str	x9, [sp, #136]                  ; 8-byte Folded Spill
	add	x9, sp, #1192
	add	x9, x9, #256
	str	x9, [sp, #352]                  ; 8-byte Folded Spill
	add	x9, sp, #576
	add	x21, x9, #16
	add	x9, sp, #384
	add	x9, x9, #48
	str	x9, [sp, #80]                   ; 8-byte Folded Spill
	ldr	x9, [x12, #8]
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [x12]
	str	x9, [sp, #112]                  ; 8-byte Folded Spill
	add	x9, sp, #1072
	ldr	x10, [x12, #64]
	str	x10, [sp, #104]                 ; 8-byte Folded Spill
	ldr	x10, [x12, #72]
	str	x10, [sp, #96]                  ; 8-byte Folded Spill
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	add	x9, sp, #480
	ldr	x10, [x25, #16]
	add	x9, x9, #16
	str	x9, [sp, #176]                  ; 8-byte Folded Spill
	mov	w26, #48
	ldrh	w9, [x10]
	movi.2d	v0, #0000000000000000
Lloh329:
	adrp	x10, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh330:
	ldr	x10, [x10, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x10, x10, #16
	str	x10, [sp, #128]                 ; 8-byte Folded Spill
	str	x25, [sp, #208]                 ; 8-byte Folded Spill
	b	LBB44_14
LBB44_12:                               ;   in Loop: Header=BB44_14 Depth=1
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
LBB44_13:                               ;   in Loop: Header=BB44_14 Depth=1
	add	x11, x11, #1
	rbit	x8, x11
	clz	x8, x8
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	cmp	x11, x10
	b.eq	LBB44_182
LBB44_14:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB44_41 Depth 2
                                        ;     Child Loop BB44_51 Depth 2
                                        ;       Child Loop BB44_66 Depth 3
                                        ;       Child Loop BB44_78 Depth 3
                                        ;       Child Loop BB44_93 Depth 3
                                        ;       Child Loop BB44_124 Depth 3
                                        ;       Child Loop BB44_133 Depth 3
                                        ;       Child Loop BB44_142 Depth 3
                                        ;       Child Loop BB44_151 Depth 3
                                        ;       Child Loop BB44_159 Depth 3
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	ldp	x0, x10, [sp, #32]              ; 16-byte Folded Reload
	sub	w10, w10, w8
	and	x11, x10, #0xffff
	mov	w12, #11664
	madd	x12, x8, x12, x30
	madd	x12, x11, x26, x12
	ldr	x13, [x12, #11672]
	ldr	x14, [x12, #11664]
	ldr	x15, [x12, #11688]
	ldr	x16, [x12, #11680]
	ldr	x17, [x12, #11704]
	ldr	x12, [x12, #11696]
	adds	x12, x12, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adc	x17, x17, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adds	x16, x16, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adcs	x15, x15, x0
	adcs	x12, x12, xzr
	cinc	x17, x17, hs
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adds	x14, x14, x0
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	adcs	x13, x13, x0
	cset	w0, hs
	adcs	x16, x16, xzr
	cinc	x15, x15, hs
	orr	x1, x16, x15
	cmp	x1, #0
	cset	w1, eq
	and	w0, w0, w1
	add	x8, x8, x11
	madd	x8, x8, x26, x30
	ldp	x1, x11, [x8]
	subs	x3, x14, x1
	sbc	x4, x13, x11
	ldp	x14, x13, [x8, #16]
	subs	x16, x16, x14
	sbc	x15, x15, x13
	ldp	x8, x2, [x8, #32]
	cmn	x16, x14
	adcs	xzr, x15, x13
	cset	w13, hs
	stp	x4, x3, [sp, #64]               ; 16-byte Folded Spill
	cmn	x3, x1
	adcs	xzr, x4, x11
	cset	w11, hs
	subs	x14, x16, x11
	sbc	x15, x15, xzr
	stp	x15, x14, [sp, #48]             ; 16-byte Folded Spill
	and	x14, x14, x15
	cmn	x14, #1
	cset	w14, eq
	and	w11, w11, w14
	subs	x8, x12, x8
	sbc	x12, x17, x2
	adds	x8, x8, x0
	cinc	x12, x12, hs
	subs	x8, x8, x13
	sbc	x12, x12, xzr
	subs	x8, x8, x11
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
	sbc	x8, x12, xzr
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	cmp	x11, #0
	cinc	w12, w10, ne
	ldr	x8, [x25, #8]
	ldrh	w8, [x8]
	and	w10, w9, #0xffff
	add	w10, w10, w12, uxth
	cmp	w10, w8
	str	x12, [sp, #40]                  ; 8-byte Folded Spill
	b.lo	LBB44_13
; %bb.15:                               ;   in Loop: Header=BB44_14 Depth=1
	cmp	w8, w12, uxth
	b.ls	LBB44_13
; %bb.16:                               ;   in Loop: Header=BB44_14 Depth=1
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	sub	w24, w8, w9
	and	x9, x24, #0xffff
	madd	x11, x9, x26, x30
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x10, x9, [x11]
	ldp	x20, x8, [sp, #64]              ; 16-byte Folded Reload
	umulh	x12, x10, x8
	mul	x13, x10, x8
	umulh	x14, x9, x8
	mul	x15, x9, x8
	umulh	x16, x10, x20
	mul	x17, x10, x20
	adds	x12, x12, x17
	ldr	x17, [sp, #544]
	ldr	x0, [sp, #552]
	adc	x16, x17, x16
	adds	x12, x12, x15
	cinc	x15, x16, hs
	str	x13, [sp, #528]
	str	x12, [sp, #536]
	umulh	x12, x9, x20
	mul	x13, x9, x20
	adds	x13, x14, x13
	cinc	x12, x12, hs
	adds	x13, x13, x15
	adc	x12, x12, x0
	ldp	x23, x22, [sp, #48]             ; 16-byte Folded Reload
	umulh	x14, x10, x22
	mul	x15, x10, x22
	umulh	x16, x9, x22
	mul	x17, x9, x22
	umulh	x0, x10, x23
	mul	x1, x10, x23
	adds	x17, x17, x1
	cinc	x0, x0, hs
	adds	x14, x17, x14
	ldr	x17, [sp, #560]
	ldr	x1, [sp, #568]
	adc	x17, x0, x17
	str	x15, [sp, #544]
	str	x14, [sp, #552]
	umulh	x0, x9, x23
	mul	x2, x9, x23
	ldp	x5, x4, [sp, #24]               ; 16-byte Folded Reload
	umulh	x3, x10, x4
	madd	x3, x10, x5, x3
	madd	x9, x9, x4, x3
	mul	x10, x10, x4
	ldp	x4, x3, [x11, #16]
	umulh	x5, x4, x8
	mul	x6, x3, x8
	umulh	x7, x4, x20
	mul	x19, x4, x20
	adds	x6, x6, x19
	cinc	x7, x7, hs
	adds	x5, x6, x5
	cinc	x6, x7, hs
	adds	x10, x2, x10
	adc	x9, x0, x9
	adds	x10, x10, x16
	cinc	x9, x9, hs
	adds	x10, x10, x17
	adc	x9, x9, x1
	adds	x13, x15, x13
	adcs	x12, x14, x12
	mul	x14, x4, x8
	umulh	x15, x3, x8
	umulh	x16, x3, x20
	mul	x0, x3, x20
	umulh	x1, x4, x22
	madd	x1, x4, x23, x1
	madd	x1, x3, x22, x1
	mul	x2, x4, x22
	adcs	x10, x10, xzr
	cinc	x9, x9, hs
	adds	x10, x10, x2
	adc	x9, x9, x1
	adds	x10, x10, x0
	adc	x9, x9, x16
	adds	x10, x10, x15
	cinc	x9, x9, hs
	adds	x15, x10, x6
	cinc	x16, x9, hs
	adds	x9, x14, x13
	adcs	x10, x5, x12
	ldp	x11, x12, [x11, #32]
	umulh	x13, x11, x8
	madd	x13, x11, x20, x13
	madd	x12, x12, x8, x13
	mul	x11, x11, x8
	adcs	x13, x15, xzr
	cinc	x14, x16, hs
	adds	x15, x13, x11
	adc	x16, x14, x12
	str	x17, [sp, #560]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x11, x12, [x25, #24]
	ldp	x14, x13, [x11, #16]
	umulh	x17, x14, x15
	mul	x0, x14, x15
	umulh	x1, x14, x16
	mul	x2, x14, x16
	umulh	x3, x13, x15
	mul	x4, x13, x15
	adds	x17, x17, x4
	ldr	x4, [sp, #1088]
	ldr	x5, [sp, #1096]
	adc	x3, x4, x3
	adds	x17, x17, x2
	cinc	x2, x3, hs
	umulh	x3, x13, x16
	mul	x4, x13, x16
	adds	x1, x1, x4
	cinc	x3, x3, hs
	adds	x1, x1, x2
	adc	x3, x3, x5
	ldp	x5, x4, [x11, #32]
	umulh	x6, x5, x15
	mul	x7, x5, x15
	umulh	x19, x4, x15
	mul	x20, x4, x15
	adds	x6, x6, x20
	ldr	x20, [sp, #1104]
	ldr	x22, [sp, #1112]
	adc	x19, x20, x19
	mul	x20, x5, x16
	adds	x6, x6, x20
	umulh	x20, x5, x16
	cinc	x19, x19, hs
	str	x2, [sp, #1088]
	str	x6, [sp, #1096]
	str	x7, [sp, #1088]
	str	x19, [sp, #1104]
	mul	x2, x4, x16
	adds	x2, x20, x2
	umulh	x20, x4, x16
	cinc	x20, x20, hs
	adds	x2, x2, x19
	adc	x19, x20, x22
	adds	x1, x7, x1
	adcs	x3, x6, x3
	adcs	x2, x2, xzr
	cinc	x6, x19, hs
	umulh	x7, x5, x9
	umulh	x19, x5, x10
	mul	x20, x5, x10
	mul	x22, x4, x9
	adds	x20, x20, x22
	umulh	x22, x4, x9
	cinc	x22, x22, hs
	adds	x7, x20, x7
	cinc	x20, x22, hs
	str	x20, [sp, #800]
	mul	x22, x4, x10
	adds	x19, x19, x22
	umulh	x22, x4, x10
	cinc	x22, x22, hs
	adds	x19, x19, x20
	mul	x20, x5, x9
	str	x20, [sp, #784]
	cinc	x22, x22, hs
	adds	x20, x0, x20
	str	x0, [sp, #1072]
	str	x17, [sp, #1080]
	str	x7, [sp, #792]
	adcs	x17, x17, x7
	adcs	x0, x19, xzr
	cinc	x7, x22, hs
	adds	x19, x0, x1
	adcs	x3, x7, x3
	adcs	x2, x2, xzr
	cinc	x6, x6, hs
	ldr	x0, [sp, #536]
	ldr	x8, [sp, #528]
	umulh	x5, x0, x5
	mul	x7, x0, x4
	adds	x5, x5, x7
	umulh	x7, x8, x4
	umulh	x4, x0, x4
	cinc	x4, x4, hs
	adds	x5, x5, x7
	str	xzr, [sp, #808]
	cinc	x4, x4, hs
	adds	x5, x5, x20
	adcs	x17, x4, x17
	cset	w4, hs
	adcs	x7, x19, xzr
	cinc	x3, x3, hs
	orr	x19, x7, x3
	cmp	x19, #0
	cset	w19, eq
	and	w4, w4, w19
	adds	x2, x2, x4
	cinc	x4, x6, hs
	ldp	x6, x11, [x11]
	umulh	x6, x6, x16
	mul	x19, x11, x16
	adds	x6, x6, x19
	umulh	x19, x11, x15
	umulh	x11, x11, x16
	cinc	x11, x11, hs
	adds	x6, x6, x19
	cinc	x11, x11, hs
	adds	x5, x6, x5
	adcs	x11, x11, x17
	cset	w17, hs
	adcs	x6, x7, xzr
	cinc	x3, x3, hs
	orr	x7, x6, x3
	cmp	x7, #0
	cset	w7, eq
	and	w17, w17, w7
	adds	x7, x2, x17
	cinc	x4, x4, hs
	umulh	x14, x14, x10
	mul	x17, x13, x10
	adds	x14, x14, x17
	umulh	x17, x13, x9
	umulh	x13, x13, x10
	cinc	x13, x13, hs
	adds	x14, x14, x17
	cinc	x13, x13, hs
	adds	x2, x5, x14
	adcs	x14, x11, x13
	cset	w11, hs
	adcs	x5, x6, xzr
	cinc	x17, x3, hs
	orr	x13, x5, x17
	cmp	x13, #0
	cset	w13, eq
	and	w11, w11, w13
	adds	x13, x7, x11
	str	x9, [sp, #544]
	str	x10, [sp, #552]
	str	x15, [sp, #560]
	str	x16, [sp, #568]
	cinc	x11, x4, hs
	ldrh	w12, [x12]
	cmp	w12, #128
	str	x24, [sp, #328]                 ; 8-byte Folded Spill
	str	x8, [sp, #344]                  ; 8-byte Folded Spill
	b.hs	LBB44_18
; %bb.17:                               ;   in Loop: Header=BB44_14 Depth=1
	lsr	x2, x2, x12
	lsl	x3, x14, #1
	mvn	w7, w12
	lsl	x3, x3, x7
	orr	x2, x3, x2
	lsr	x14, x14, x12
	mov	w8, #128
	sub	w3, w8, w12
	mvn	w4, w3
	lsl	x6, x5, x3
	tst	x3, #0x40
	csel	x19, xzr, x6, ne
	lsr	x20, x5, #1
	lsr	x20, x20, x4
	lsl	x22, x17, x3
	orr	x20, x22, x20
	csel	x6, x6, x20, ne
	lsl	x20, x13, x3
	csel	x22, xzr, x20, ne
	lsr	x23, x13, #1
	lsr	x4, x23, x4
	lsl	x3, x11, x3
	orr	x3, x3, x4
	csel	x3, x20, x3, ne
	cmp	w12, #0
	csel	x6, xzr, x6, eq
	csel	x4, xzr, x19, eq
	csel	x3, xzr, x3, eq
	csel	x19, xzr, x22, eq
	tst	x12, #0x40
	csel	x2, x14, x2, ne
	csel	x14, xzr, x14, ne
	orr	x4, x4, x2
	orr	x14, x6, x14
	str	x4, [sp, #1072]
	str	x14, [sp, #1080]
	lsr	x2, x5, x12
	lsl	x5, x17, #1
	lsl	x5, x5, x7
	orr	x2, x5, x2
	lsr	x17, x17, x12
	csel	x2, x17, x2, ne
	csel	x17, xzr, x17, ne
	orr	x5, x19, x2
	orr	x6, x3, x17
	str	x5, [sp, #1088]
	str	x6, [sp, #1096]
	lsr	x13, x13, x12
	lsl	x17, x11, #1
	lsl	x17, x17, x7
	orr	x13, x17, x13
	lsr	x11, x11, x12
	csel	x2, x11, x13, ne
	csel	x8, xzr, x11, ne
	str	x8, [sp, #336]                  ; 8-byte Folded Spill
	str	x8, [sp, #1112]
	str	x2, [sp, #1104]
	b	LBB44_21
LBB44_18:                               ;   in Loop: Header=BB44_14 Depth=1
	and	w7, w12, #0x7f
	cmp	w12, #256
	b.hs	LBB44_20
; %bb.19:                               ;   in Loop: Header=BB44_14 Depth=1
	mov	x2, #0
	str	xzr, [sp, #336]                 ; 8-byte Folded Spill
	lsr	x12, x5, x7
	lsl	x14, x17, #1
	mvn	w5, w7
	lsl	x14, x14, x5
	orr	x12, x14, x12
	lsr	x14, x17, x7
	mov	w8, #128
	sub	w17, w8, w7
	mvn	w4, w17
	lsr	x6, x13, #1
	lsr	x4, x6, x4
	lsl	x6, x13, x17
	tst	x17, #0x40
	lsl	x17, x11, x17
	orr	x17, x17, x4
	csel	x4, xzr, x6, ne
	csel	x17, x6, x17, ne
	cmp	w7, #0
	csel	x17, xzr, x17, eq
	csel	x4, xzr, x4, eq
	tst	x7, #0x40
	csel	x12, x14, x12, ne
	csel	x14, xzr, x14, ne
	orr	x4, x4, x12
	orr	x14, x17, x14
	str	x4, [sp, #1072]
	str	x14, [sp, #1080]
	lsr	x12, x13, x7
	lsl	x13, x11, #1
	lsl	x13, x13, x5
	orr	x12, x13, x12
	lsr	x11, x11, x7
	csel	x5, x11, x12, ne
	csel	x6, xzr, x11, ne
	str	x6, [sp, #1096]
	str	x5, [sp, #1088]
	str	xzr, [sp, #1112]
	str	xzr, [sp, #1104]
	b	LBB44_21
LBB44_20:                               ;   in Loop: Header=BB44_14 Depth=1
	mov	x2, #0
	str	xzr, [sp, #336]                 ; 8-byte Folded Spill
	mov	x5, #0
	mov	x6, #0
	mvn	w12, w7
	lsl	x14, x11, #1
	lsl	x12, x14, x12
	lsr	x13, x13, x7
	orr	x12, x12, x13
	lsr	x11, x11, x7
	tst	x7, #0x40
	csel	x4, x11, x12, ne
	csel	x14, xzr, x11, ne
	str	x14, [sp, #1080]
	str	x4, [sp, #1072]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stp	q0, q0, [x8]
LBB44_21:                               ;   in Loop: Header=BB44_14 Depth=1
	ldr	x17, [x25, #40]
	ldr	x8, [sp, #304]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x7, x20, [x17]
	umulh	x11, x7, x4
	umulh	x12, x7, x14
	mul	x13, x7, x14
	umulh	x19, x20, x4
	mul	x22, x20, x4
	adds	x11, x11, x22
	ldr	x22, [sp, #800]
	ldr	x23, [sp, #808]
	adc	x22, x22, x19
	adds	x19, x11, x13
	cinc	x11, x22, hs
	str	x11, [sp, #800]
	umulh	x13, x20, x14
	mul	x22, x20, x14
	adds	x12, x12, x22
	cinc	x13, x13, hs
	adds	x22, x12, x11
	adc	x23, x13, x23
	ldp	x12, x11, [x17, #16]
	umulh	x13, x12, x4
	umulh	x24, x12, x14
	mul	x25, x12, x14
	umulh	x26, x11, x4
	mul	x28, x11, x4
	adds	x13, x13, x28
	ldr	x28, [sp, #816]
	ldr	x30, [sp, #824]
	adc	x26, x28, x26
	adds	x25, x13, x25
	cinc	x26, x26, hs
	str	x26, [sp, #816]
	umulh	x28, x11, x14
	ldr	x13, [x17, #32]
	umulh	x8, x5, x7
	mul	x1, x6, x7
	mul	x3, x5, x20
	adds	x1, x1, x3
	umulh	x3, x5, x20
	cinc	x3, x3, hs
	adds	x8, x1, x8
	umulh	x1, x13, x4
	madd	x1, x13, x14, x1
	mul	x14, x11, x14
	cinc	x3, x3, hs
	adds	x14, x24, x14
	mul	x24, x13, x4
	cinc	x28, x28, hs
	adds	x24, x14, x24
	ldr	x14, [x17, #40]
	madd	x1, x14, x4, x1
	adc	x1, x28, x1
	adds	x24, x24, x26
	adc	x1, x1, x30
	mul	x26, x12, x4
	str	x26, [sp, #800]
	adds	x22, x26, x22
	adcs	x23, x25, x23
	mul	x25, x5, x12
	adcs	x24, x24, xzr
	cinc	x1, x1, hs
	adds	x24, x24, x25
	umulh	x25, x5, x12
	madd	x25, x5, x11, x25
	madd	x25, x6, x12, x25
	adc	x1, x1, x25
	mul	x25, x6, x20
	adds	x24, x24, x25
	umulh	x25, x6, x20
	adc	x1, x1, x25
	umulh	x6, x6, x7
	adds	x6, x24, x6
	cinc	x1, x1, hs
	adds	x3, x6, x3
	mul	x5, x5, x7
	cinc	x1, x1, hs
	adds	x5, x5, x22
	adcs	x8, x8, x23
	umulh	x6, x2, x7
	madd	x6, x2, x20, x6
	ldr	x20, [sp, #336]                 ; 8-byte Folded Reload
	madd	x6, x20, x7, x6
	mul	x4, x7, x4
	mul	x2, x2, x7
	adcs	x3, x3, xzr
	cinc	x1, x1, hs
	adds	x2, x3, x2
	adc	x3, x1, x6
	ldr	x1, [sp, #344]                  ; 8-byte Folded Reload
	subs	x1, x1, x4
	sbc	x0, x0, x19
	subs	x9, x9, x5
	sbc	x10, x10, x8
	cmn	x9, x5
	adcs	xzr, x10, x8
	cset	w8, hs
	subs	x15, x15, x2
	sbc	x16, x16, x3
	subs	x8, x15, x8
	str	x4, [sp, #784]
	str	x19, [sp, #792]
	sbc	x16, x16, xzr
	cmn	x1, x4
	adcs	xzr, x0, x19
	cset	w15, hs
	subs	x9, x9, x15
	sbc	x10, x10, xzr
	and	x2, x9, x10
	cmn	x2, #1
	cset	w2, eq
	and	w15, w15, w2
	subs	x15, x8, x15
	eor	x8, x15, x13
	sbc	x16, x16, xzr
	eor	x2, x16, x14
	orr	x8, x8, x2
	cbnz	x8, LBB44_24
; %bb.22:                               ;   in Loop: Header=BB44_14 Depth=1
	eor	x8, x9, x12
	eor	x2, x10, x11
	orr	x8, x8, x2
	cbnz	x8, LBB44_26
; %bb.23:                               ;   in Loop: Header=BB44_14 Depth=1
	ldp	x2, x8, [x17]
	cmp	x1, x2
	cset	w2, lo
	cmp	x0, x8
	cset	w8, lo
	csel	w8, w2, w8, eq
	ldr	x25, [sp, #208]                 ; 8-byte Folded Reload
Lloh331:
	adrp	x30, _p23@PAGE
Lloh332:
	add	x30, x30, _p23@PAGEOFF
	mov	w26, #48
	tbz	w8, #0, LBB44_25
	b	LBB44_27
LBB44_24:                               ;   in Loop: Header=BB44_14 Depth=1
	cmp	x15, x13
	cset	w8, hi
	cmp	x16, x14
	cset	w2, hi
	csel	w8, w8, w2, eq
	ldr	x25, [sp, #208]                 ; 8-byte Folded Reload
Lloh333:
	adrp	x30, _p23@PAGE
Lloh334:
	add	x30, x30, _p23@PAGEOFF
	mov	w26, #48
	tbz	w8, #0, LBB44_27
LBB44_25:                               ;   in Loop: Header=BB44_14 Depth=1
	ldp	x3, x4, [x17]
	mov	x5, x12
	mov	x6, x11
	mov	x7, x13
	mov	x19, x14
	b	LBB44_28
LBB44_26:                               ;   in Loop: Header=BB44_14 Depth=1
	cmp	x9, x12
	cset	w8, ls
	cmp	x10, x11
	cset	w2, ls
	csel	w8, w8, w2, eq
	ldr	x25, [sp, #208]                 ; 8-byte Folded Reload
Lloh335:
	adrp	x30, _p23@PAGE
Lloh336:
	add	x30, x30, _p23@PAGEOFF
	mov	w26, #48
	tbz	w8, #0, LBB44_25
LBB44_27:                               ;   in Loop: Header=BB44_14 Depth=1
	mov	x3, #0
	mov	x4, #0
	mov	x5, #0
	mov	x6, #0
	mov	x7, #0
	mov	x19, #0
LBB44_28:                               ;   in Loop: Header=BB44_14 Depth=1
	subs	x1, x1, x3
	sbc	x2, x0, x4
	str	x1, [sp, #528]
	str	x2, [sp, #536]
	subs	x8, x9, x5
	sbc	x10, x10, x6
	cmn	x8, x5
	adcs	xzr, x10, x6
	cset	w9, hs
	subs	x15, x15, x7
	sbc	x16, x16, x19
	subs	x15, x15, x9
	sbc	x16, x16, xzr
	cmn	x1, x3
	adcs	xzr, x2, x4
	cset	w0, hs
	subs	x9, x8, x0
	sbc	x10, x10, xzr
	and	x8, x9, x10
	str	x9, [sp, #544]
	str	x10, [sp, #552]
	cmn	x8, #1
	cset	w8, eq
	and	w8, w0, w8
	subs	x3, x15, x8
	eor	x8, x13, x3
	sbc	x4, x16, xzr
	str	x3, [sp, #560]
	str	x4, [sp, #568]
	eor	x15, x14, x4
	orr	x8, x8, x15
	cbnz	x8, LBB44_31
; %bb.29:                               ;   in Loop: Header=BB44_14 Depth=1
	eor	x8, x12, x9
	eor	x15, x11, x10
	orr	x8, x8, x15
	cbnz	x8, LBB44_32
; %bb.30:                               ;   in Loop: Header=BB44_14 Depth=1
	ldp	x15, x8, [x17]
	cmp	x1, x15
	cset	w15, lo
	cmp	x2, x8
	cset	w8, lo
	csel	w8, w15, w8, eq
	tbnz	w8, #0, LBB44_33
	b	LBB44_184
LBB44_31:                               ;   in Loop: Header=BB44_14 Depth=1
	cmp	x13, x3
	cset	w8, lo
	cmp	x14, x4
	cset	w15, lo
	csel	w8, w8, w15, eq
	tbz	w8, #0, LBB44_33
	b	LBB44_184
LBB44_32:                               ;   in Loop: Header=BB44_14 Depth=1
	cmp	x12, x9
	cset	w8, hs
	cmp	x11, x10
	cset	w15, hs
	csel	w8, w8, w15, eq
	tbz	w8, #0, LBB44_184
LBB44_33:                               ;   in Loop: Header=BB44_14 Depth=1
	ldp	x16, x15, [x17]
	subs	x17, x16, x1
	sbc	x0, x15, x2
	subs	x8, x12, x9
	sbc	x5, x11, x10
	cmn	x8, x9
	adcs	xzr, x5, x10
	cset	w9, hs
	subs	x10, x13, x3
	sbc	x3, x14, x4
	subs	x9, x10, x9
	sbc	x10, x3, xzr
	cmn	x17, x1
	adcs	xzr, x0, x2
	cset	w1, hs
	subs	x4, x8, x1
	sbc	x3, x5, xzr
	and	x8, x4, x3
	cmn	x8, #1
	cset	w8, eq
	and	w8, w1, w8
	subs	x1, x9, x8
	sbc	x2, x10, xzr
	ldr	x8, [x25, #48]
	ldrh	w5, [x8]
	cbz	w5, LBB44_39
; %bb.34:                               ;   in Loop: Header=BB44_14 Depth=1
	ldr	x8, [x25, #56]
	ldrh	w8, [x8]
	and	x9, x17, x8
	add	x8, x9, x8
Lloh337:
	adrp	x9, _dy@PAGE
Lloh338:
	add	x9, x9, _dy@PAGEOFF
	madd	x8, x8, x26, x9
	ldp	x10, x9, [x8]
	ldp	x7, x6, [x8, #16]
	ldp	x8, x19, [x8, #32]
	adds	x8, x8, x1
	adc	x1, x19, x2
	adds	x2, x7, x4
	adcs	x3, x6, x3
	adcs	x8, x8, xzr
	cinc	x6, x1, hs
	adds	x1, x10, x17
	adcs	x17, x9, x0
	cset	w9, hs
	adcs	x4, x2, xzr
	cinc	x3, x3, hs
	orr	x10, x4, x3
	cmp	x10, #0
	cset	w10, eq
	and	w9, w9, w10
	adds	x10, x8, x9
	cinc	x9, x6, hs
	cmp	w5, #128
	b.hs	LBB44_36
; %bb.35:                               ;   in Loop: Header=BB44_14 Depth=1
	lsr	x8, x1, x5
	lsl	x0, x17, #1
	mvn	w1, w5
	lsl	x0, x0, x1
	orr	x8, x0, x8
	lsr	x0, x4, #1
	mov	w2, #128
	sub	w2, w2, w5
	mvn	w6, w2
	lsr	x0, x0, x6
	lsl	x7, x3, x2
	orr	x0, x7, x0
	lsl	x7, x4, x2
	tst	x2, #0x40
	csel	x0, x7, x0, ne
	csel	x7, xzr, x7, ne
	lsr	x19, x10, #1
	lsr	x6, x19, x6
	lsl	x19, x9, x2
	orr	x6, x19, x6
	lsl	x2, x10, x2
	csel	x6, x2, x6, ne
	csel	x2, xzr, x2, ne
	lsr	x17, x17, x5
	tst	x5, #0x40
	csel	x8, x17, x8, ne
	csel	x19, xzr, x17, ne
	orr	x17, x7, x8
	orr	x0, x0, x19
	lsr	x8, x4, x5
	lsl	x4, x3, #1
	lsl	x4, x4, x1
	orr	x8, x4, x8
	lsr	x3, x3, x5
	csel	x8, x3, x8, ne
	csel	x3, xzr, x3, ne
	orr	x4, x2, x8
	orr	x3, x6, x3
	lsr	x8, x10, x5
	lsl	x10, x9, #1
	lsl	x10, x10, x1
	orr	x8, x10, x8
	lsr	x9, x9, x5
	csel	x1, x9, x8, ne
	csel	x2, xzr, x9, ne
	b	LBB44_39
LBB44_36:                               ;   in Loop: Header=BB44_14 Depth=1
	and	w6, w5, #0x7f
	cmp	w5, #256
	b.hs	LBB44_38
; %bb.37:                               ;   in Loop: Header=BB44_14 Depth=1
	mov	x1, #0
	mov	x2, #0
	lsr	x8, x4, x6
	lsl	x17, x3, #1
	mvn	w4, w6
	lsl	x17, x17, x4
	orr	x8, x17, x8
	lsr	x17, x3, x6
	mov	w0, #128
	sub	w0, w0, w6
	mvn	w3, w0
	lsr	x7, x10, #1
	lsr	x3, x7, x3
	lsl	x7, x10, x0
	tst	x0, #0x40
	lsl	x0, x9, x0
	orr	x0, x0, x3
	csel	x3, xzr, x7, ne
	csel	x0, x7, x0, ne
	cmp	w6, #0
	csel	x0, xzr, x0, eq
	csel	x3, xzr, x3, eq
	tst	x6, #0x40
	csel	x8, x17, x8, ne
	csel	x7, xzr, x17, ne
	orr	x17, x3, x8
	orr	x0, x0, x7
	lsr	x8, x10, x6
	lsl	x10, x9, #1
	lsl	x10, x10, x4
	orr	x8, x10, x8
	lsr	x9, x9, x6
	csel	x4, x9, x8, ne
	csel	x3, xzr, x9, ne
	b	LBB44_39
LBB44_38:                               ;   in Loop: Header=BB44_14 Depth=1
	mov	x4, #0
	mov	x3, #0
	mov	x1, #0
	mov	x2, #0
	lsr	x8, x10, x6
	mvn	w10, w6
	lsl	x17, x9, #1
	lsl	x10, x17, x10
	orr	x8, x10, x8
	lsr	x9, x9, x6
	tst	x6, #0x40
	csel	x17, x9, x8, ne
	csel	x0, xzr, x9, ne
LBB44_39:                               ;   in Loop: Header=BB44_14 Depth=1
	ldr	x10, [x25, #16]
	ldrh	w9, [x10]
	add	w8, w9, w5
	add	w5, w8, #1
	adrp	x8, _m@PAGE
	ldrh	w6, [x8, _m@PAGEOFF]
	cmp	w6, w5, uxth
	b.ls	LBB44_42
; %bb.40:                               ;   in Loop: Header=BB44_14 Depth=1
Lloh339:
	adrp	x8, _mask@PAGE
Lloh340:
	ldr	w7, [x8, _mask@PAGEOFF]
Lloh341:
	adrp	x28, _dy@PAGE
Lloh342:
	add	x28, x28, _dy@PAGEOFF
LBB44_41:                               ;   Parent Loop BB44_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w8, w7, w17
	add	w8, w8, w7
	smaddl	x8, w8, w26, x28
	ldp	x20, x19, [x8]
	ldp	x23, x22, [x8, #16]
	ldp	x8, x24, [x8, #32]
	adds	x8, x8, x1
	adc	x1, x24, x2
	adds	x2, x23, x4
	adcs	x3, x22, x3
	adcs	x8, x8, xzr
	cinc	x1, x1, hs
	adds	x17, x20, x17
	adcs	x4, x19, x0
	cset	w19, hs
	adcs	x2, x2, xzr
	cinc	x20, x3, hs
	orr	x3, x2, x20
	extr	x0, x2, x4, #12
	cmp	x3, #0
	extr	x17, x4, x17, #12
	cset	w3, eq
	and	w3, w19, w3
	adds	x8, x8, x3
	extr	x3, x8, x20, #12
	extr	x4, x20, x2, #12
	cinc	x2, x1, hs
	extr	x1, x2, x8, #12
	lsr	x2, x2, #12
	add	w5, w5, #12
	cmp	w6, w5, uxth
	b.hi	LBB44_41
LBB44_42:                               ;   in Loop: Header=BB44_14 Depth=1
	ldr	x5, [x25, #64]
	ldp	x6, x7, [x5, #32]
	eor	x8, x2, x7
	eor	x19, x1, x6
	orr	x8, x19, x8
	cbnz	x8, LBB44_45
; %bb.43:                               ;   in Loop: Header=BB44_14 Depth=1
	ldp	x20, x19, [x5, #16]
	eor	x8, x19, x3
	eor	x22, x20, x4
	orr	x8, x22, x8
	ldr	x22, [sp, #328]                 ; 8-byte Folded Reload
	cbnz	x8, LBB44_181
; %bb.44:                               ;   in Loop: Header=BB44_14 Depth=1
	ldp	x19, x8, [x5]
	cmp	x19, x17
	cset	w19, hi
	cmp	x8, x0
	cset	w8, hi
	csel	w8, w19, w8, eq
	tbz	w8, #0, LBB44_46
	b	LBB44_47
LBB44_45:                               ;   in Loop: Header=BB44_14 Depth=1
	cmp	x1, x6
	cset	w8, lo
	cmp	x2, x7
	cset	w19, lo
	csel	w8, w8, w19, eq
	ldr	x22, [sp, #328]                 ; 8-byte Folded Reload
	tbnz	w8, #0, LBB44_47
LBB44_46:                               ;   in Loop: Header=BB44_14 Depth=1
	mov	x16, #0
	mov	x15, #0
	mov	x12, #0
	mov	x11, #0
	mov	x13, #0
	mov	x14, #0
LBB44_47:                               ;   in Loop: Header=BB44_14 Depth=1
	sxth	w19, w22
	subs	x8, x1, x6
	sbc	x1, x2, x7
	adds	x8, x8, x13
	adc	x13, x1, x14
	adds	x12, x12, x4
	adcs	x11, x11, x3
	adcs	x8, x8, xzr
	cinc	x13, x13, hs
	adds	x14, x16, x17
	adcs	x15, x15, x0
	cset	w16, hs
	adcs	x12, x12, xzr
	cinc	x11, x11, hs
	orr	x17, x12, x11
	cmp	x17, #0
	cset	w17, eq
	and	w16, w16, w17
	ldp	x0, x17, [x5]
	subs	x1, x14, x0
	sbc	x2, x15, x17
	ldp	x15, x14, [x5, #16]
	subs	x12, x12, x15
	sbc	x11, x11, x14
	cmn	x12, x15
	adcs	xzr, x11, x14
	cset	w14, hs
	cmn	x1, x0
	adcs	xzr, x2, x17
	mov	x17, x2
	cset	w15, hs
	subs	x3, x12, x15
	sbc	x4, x11, xzr
	and	x11, x3, x4
	cmn	x11, #1
	cset	w11, eq
	and	w11, w15, w11
	adds	x8, x8, x16
	cinc	x12, x13, hs
	subs	x8, x8, x14
	sbc	x12, x12, xzr
	subs	x6, x8, x11
	sbc	x7, x12, xzr
	and	w8, w19, #0xffff
	sub	w8, w8, #1
	str	w8, [sp, #292]                  ; 4-byte Folded Spill
	and	x8, x19, #0xffff
	add	x8, x8, w19, uxth #1
	lsl	x8, x8, #4
	str	x8, [sp, #296]                  ; 8-byte Folded Spill
	sxtw	x8, w19
Lloh343:
	adrp	x11, _dz@PAGE
Lloh344:
	add	x11, x11, _dz@PAGEOFF
	mov	w12, #393216
	str	x19, [sp, #88]                  ; 8-byte Folded Spill
	smaddl	x11, w19, w12, x11
	str	x11, [sp, #224]                 ; 8-byte Folded Spill
	mov	x19, x1
Lloh345:
	adrp	x11, _dl@PAGE
Lloh346:
	add	x11, x11, _dl@PAGEOFF
	add	x8, x11, x8, lsl #14
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	b	LBB44_51
LBB44_48:                               ;   in Loop: Header=BB44_51 Depth=2
	ldr	x10, [x25, #16]
Lloh347:
	adrp	x30, _p23@PAGE
Lloh348:
	add	x30, x30, _p23@PAGEOFF
	mov	w26, #48
	movi.2d	v0, #0000000000000000
LBB44_49:                               ;   in Loop: Header=BB44_51 Depth=2
	ldp	x16, x17, [sp, #336]            ; 16-byte Folded Reload
	ldp	x1, x0, [sp, #320]              ; 16-byte Folded Reload
	ldr	x2, [sp, #312]                  ; 8-byte Folded Reload
LBB44_50:                               ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x25, #40]
	ldp	x11, x9, [x8]
	ldp	x13, x12, [x8, #16]
	ldp	x8, x14, [x8, #32]
	adds	x8, x8, x1
	adc	x14, x14, x2
	adds	x13, x13, x16
	adcs	x12, x12, x0
	adcs	x8, x8, xzr
	cinc	x14, x14, hs
	adds	x19, x11, x19
	adcs	x17, x9, x17
	cset	w9, hs
	adcs	x3, x13, xzr
	cinc	x4, x12, hs
	orr	x11, x3, x4
	cmp	x11, #0
	cset	w11, eq
	and	w9, w9, w11
	adds	x6, x8, x9
	cinc	x7, x14, hs
	ldrh	w9, [x10]
LBB44_51:                               ;   Parent Loop BB44_14 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB44_66 Depth 3
                                        ;       Child Loop BB44_78 Depth 3
                                        ;       Child Loop BB44_93 Depth 3
                                        ;       Child Loop BB44_124 Depth 3
                                        ;       Child Loop BB44_133 Depth 3
                                        ;       Child Loop BB44_142 Depth 3
                                        ;       Child Loop BB44_151 Depth 3
                                        ;       Child Loop BB44_159 Depth 3
	and	x8, x9, #0xffff
	mov	w11, #11664
	mul	x11, x8, x11
Lloh349:
	adrp	x12, _pp23@PAGE
Lloh350:
	add	x12, x12, _pp23@PAGEOFF
	add	x12, x12, x11
	ldr	x13, [sp, #296]                 ; 8-byte Folded Reload
	add	x12, x12, x13
	ldp	x14, x13, [x12, #-16]
	eor	x15, x13, x7
	eor	x16, x14, x6
	orr	x15, x16, x15
	cbnz	x15, LBB44_54
; %bb.52:                               ;   in Loop: Header=BB44_51 Depth=2
	ldp	x14, x13, [x12, #-32]
	eor	x15, x13, x4
	eor	x16, x14, x3
	orr	x15, x16, x15
	cbnz	x15, LBB44_55
; %bb.53:                               ;   in Loop: Header=BB44_51 Depth=2
	ldp	x12, x13, [x12, #-48]
	cmp	x12, x19
	cset	w12, lo
	cmp	x13, x17
	cset	w13, lo
	csel	w12, w12, w13, eq
	tbz	w12, #0, LBB44_56
	b	LBB44_12
LBB44_54:                               ;   in Loop: Header=BB44_51 Depth=2
	cmp	x14, x6
	cset	w12, hi
	cmp	x13, x7
	cset	w13, hi
	csel	w12, w12, w13, eq
	tbnz	w12, #0, LBB44_56
	b	LBB44_12
LBB44_55:                               ;   in Loop: Header=BB44_51 Depth=2
	cmp	x14, x3
	cset	w12, ls
	cmp	x13, x4
	cset	w13, ls
	csel	w12, w12, w13, eq
	tbnz	w12, #0, LBB44_12
LBB44_56:                               ;   in Loop: Header=BB44_51 Depth=2
	ldr	x12, [x25, #72]
	ldrh	w1, [x12]
	stp	x3, x17, [sp, #336]             ; 16-byte Folded Spill
	stp	x6, x4, [sp, #320]              ; 16-byte Folded Spill
	str	x7, [sp, #312]                  ; 8-byte Folded Spill
	cbz	w1, LBB44_59
; %bb.57:                               ;   in Loop: Header=BB44_51 Depth=2
	ldr	x12, [x25, #80]
	ldrh	w12, [x12]
	and	x13, x19, x12
	add	x0, x13, x12
	ldr	x12, [sp, #224]                 ; 8-byte Folded Reload
	madd	x12, x0, x26, x12
	sub	x14, x12, #96, lsl #12          ; =393216
	ldp	x16, x15, [x14]
	subs	x13, x19, x16
	sbc	x12, x17, x15
	ldp	x2, x17, [x14, #16]
	subs	x3, x3, x2
	sbc	x4, x4, x17
	ldp	x14, x5, [x14, #32]
	cmn	x3, x2
	adcs	xzr, x4, x17
	cset	w17, hs
	subs	x14, x6, x14
	sbc	x2, x7, x5
	subs	x14, x14, x17
	sbc	x2, x2, xzr
	cmn	x13, x16
	adcs	xzr, x12, x15
	cset	w15, hs
	subs	x17, x3, x15
	sbc	x16, x4, xzr
	and	x3, x17, x16
	cmn	x3, #1
	cset	w3, eq
	and	w15, w15, w3
	subs	x3, x14, x15
	sbc	x2, x2, xzr
	cmp	w1, #128
	b.hs	LBB44_60
; %bb.58:                               ;   in Loop: Header=BB44_51 Depth=2
	lsr	x13, x13, x1
	lsl	x14, x12, #1
	mvn	w4, w1
	lsl	x14, x14, x4
	orr	x13, x14, x13
	lsr	x14, x17, #1
	mov	w15, #128
	sub	w15, w15, w1
	mvn	w5, w15
	lsr	x14, x14, x5
	lsl	x6, x16, x15
	orr	x14, x6, x14
	lsl	x6, x17, x15
	tst	x15, #0x40
	csel	x7, x6, x14, ne
	csel	x14, xzr, x6, ne
	lsr	x6, x3, #1
	lsr	x5, x6, x5
	lsl	x6, x2, x15
	orr	x5, x6, x5
	lsl	x15, x3, x15
	csel	x5, x15, x5, ne
	csel	x6, xzr, x15, ne
	lsr	x12, x12, x1
	tst	x1, #0x40
	csel	x13, x12, x13, ne
	csel	x12, xzr, x12, ne
	orr	x14, x14, x13
	orr	x15, x7, x12
	lsr	x12, x17, x1
	lsl	x13, x16, #1
	lsl	x13, x13, x4
	orr	x12, x13, x12
	lsr	x13, x16, x1
	csel	x12, x13, x12, ne
	csel	x13, xzr, x13, ne
	orr	x16, x6, x12
	orr	x17, x5, x13
	lsr	x12, x3, x1
	lsl	x13, x2, #1
	lsl	x13, x13, x4
	orr	x12, x13, x12
	lsr	x13, x2, x1
	csel	x12, x13, x12, ne
	csel	x13, xzr, x13, ne
	b	LBB44_63
LBB44_59:                               ;   in Loop: Header=BB44_51 Depth=2
	mov	x14, x19
	mov	x15, x17
	mov	x16, x3
	mov	x17, x4
	mov	x12, x6
	mov	x13, x7
	ldr	w0, [sp, #292]                  ; 4-byte Folded Reload
	sxth	w2, w0
	mov	x23, x19
	cmp	w2, #1
	b.ge	LBB44_64
	b	LBB44_73
LBB44_60:                               ;   in Loop: Header=BB44_51 Depth=2
	and	w4, w1, #0x7f
	cmp	w1, #256
	b.hs	LBB44_62
; %bb.61:                               ;   in Loop: Header=BB44_51 Depth=2
	mov	x12, #0
	mov	x13, #0
	lsr	x14, x17, x4
	lsl	x15, x16, #1
	mvn	w17, w4
	lsl	x15, x15, x17
	orr	x14, x15, x14
	lsr	x15, x16, x4
	mov	w16, #128
	sub	w16, w16, w4
	mvn	w5, w16
	lsr	x6, x3, #1
	lsr	x5, x6, x5
	lsl	x6, x3, x16
	tst	x16, #0x40
	lsl	x16, x2, x16
	orr	x16, x16, x5
	csel	x5, xzr, x6, ne
	csel	x16, x6, x16, ne
	cmp	w4, #0
	csel	x16, xzr, x16, eq
	csel	x5, xzr, x5, eq
	tst	x4, #0x40
	csel	x14, x15, x14, ne
	csel	x15, xzr, x15, ne
	orr	x14, x5, x14
	orr	x15, x16, x15
	lsr	x16, x3, x4
	lsl	x3, x2, #1
	lsl	x17, x3, x17
	orr	x16, x17, x16
	lsr	x17, x2, x4
	csel	x16, x17, x16, ne
	csel	x17, xzr, x17, ne
	b	LBB44_63
LBB44_62:                               ;   in Loop: Header=BB44_51 Depth=2
	mov	x16, #0
	mov	x17, #0
	mov	x12, #0
	mov	x13, #0
	lsr	x14, x3, x4
	mvn	w15, w4
	lsl	x3, x2, #1
	lsl	x15, x3, x15
	orr	x14, x15, x14
	lsr	x15, x2, x4
	tst	x4, #0x40
	csel	x14, x15, x14, ne
	csel	x15, xzr, x15, ne
LBB44_63:                               ;   in Loop: Header=BB44_51 Depth=2
	ldr	x2, [sp, #216]                  ; 8-byte Folded Reload
	add	x0, x2, x0, lsl #1
	mov	x2, #-16384
	ldrh	w0, [x0, x2]
	ldr	w2, [sp, #292]                  ; 4-byte Folded Reload
	sub	w0, w2, w0
	sxth	w2, w0
	mov	x23, x19
	cmp	w2, #1
	b.lt	LBB44_73
LBB44_64:                               ;   in Loop: Header=BB44_51 Depth=2
	sub	w1, w9, w1
	and	w2, w0, #0xffff
	cmp	w2, w1, uxth
	b.hs	LBB44_73
; %bb.65:                               ;   in Loop: Header=BB44_51 Depth=2
Lloh351:
	adrp	x2, _mask@PAGE
Lloh352:
	ldr	w2, [x2, _mask@PAGEOFF]
LBB44_66:                               ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	and	x4, x1, #0xffff
	and	x3, x0, #0xffff
	mov	w5, #11664
Lloh353:
	adrp	x6, _pp23@PAGE
Lloh354:
	add	x6, x6, _pp23@PAGEOFF
	madd	x4, x4, x5, x6
	madd	x4, x3, x26, x4
	ldp	x6, x5, [x4, #32]
	eor	x7, x5, x13
	eor	x19, x6, x12
	orr	x7, x19, x7
	cbnz	x7, LBB44_69
; %bb.67:                               ;   in Loop: Header=BB44_66 Depth=3
	ldp	x6, x5, [x4, #16]
	eor	x7, x5, x17
	eor	x19, x6, x16
	orr	x7, x19, x7
	cbnz	x7, LBB44_70
; %bb.68:                               ;   in Loop: Header=BB44_66 Depth=3
	ldp	x4, x5, [x4]
	cmp	x4, x14
	cset	w4, lo
	cmp	x5, x15
	cset	w5, lo
	csel	w4, w4, w5, eq
	tbz	w4, #0, LBB44_71
	b	LBB44_73
LBB44_69:                               ;   in Loop: Header=BB44_66 Depth=3
	cmp	x6, x12
	cset	w4, hi
	cmp	x5, x13
	cset	w5, hi
	csel	w4, w4, w5, eq
	tbnz	w4, #0, LBB44_71
	b	LBB44_73
LBB44_70:                               ;   in Loop: Header=BB44_66 Depth=3
	cmp	x6, x16
	cset	w4, hi
	cmp	x5, x17
	cset	w5, hi
	csel	w4, w4, w5, eq
	tbz	w4, #0, LBB44_73
LBB44_71:                               ;   in Loop: Header=BB44_66 Depth=3
	and	w4, w2, w14
	add	w4, w4, w2
Lloh355:
	adrp	x5, _dz@PAGE
Lloh356:
	add	x5, x5, _dz@PAGEOFF
	mov	w6, #393216
	madd	x5, x3, x6, x5
	smaddl	x5, w4, w26, x5
	ldp	x7, x6, [x5]
	subs	x14, x14, x7
	sbc	x19, x15, x6
	ldp	x20, x15, [x5, #16]
	subs	x16, x16, x20
	sbc	x17, x17, x15
	ldp	x5, x22, [x5, #32]
	cmn	x16, x20
	adcs	xzr, x17, x15
	cset	w15, hs
	subs	x12, x12, x5
	sbc	x13, x13, x22
	subs	x12, x12, x15
	sbc	x13, x13, xzr
	cmn	x14, x7
	adcs	xzr, x19, x6
	cset	w15, hs
	subs	x16, x16, x15
	sbc	x17, x17, xzr
	and	x5, x16, x17
	cmn	x5, #1
	cset	w5, eq
	and	w15, w15, w5
	subs	x12, x12, x15
	extr	x15, x16, x19, #12
	extr	x14, x19, x14, #12
	extr	x16, x17, x16, #12
	sbc	x13, x13, xzr
	extr	x17, x12, x17, #12
	extr	x12, x13, x12, #12
	lsr	x13, x13, #12
Lloh357:
	adrp	x5, _dl@PAGE
Lloh358:
	add	x5, x5, _dl@PAGEOFF
	add	x3, x5, x3, lsl #14
	ldrh	w3, [x3, w4, sxtw  #1]
	sub	w0, w0, w3
	sxth	w3, w0
	cmp	w3, #1
	b.lt	LBB44_73
; %bb.72:                               ;   in Loop: Header=BB44_66 Depth=3
	sub	w1, w1, #12
	and	w3, w0, #0xffff
	cmp	w3, w1, uxth
	b.lo	LBB44_66
LBB44_73:                               ;   in Loop: Header=BB44_51 Depth=2
	str	x12, [sp, #560]
	str	x13, [sp, #568]
	str	x16, [sp, #544]
	str	x17, [sp, #552]
	str	x14, [sp, #528]
	str	x15, [sp, #536]
	orr	x13, x17, x13
	orr	x12, x16, x12
	orr	x12, x12, x14
	orr	x13, x13, x15
	orr	x12, x12, x13
	cbnz	x12, LBB44_87
; %bb.74:                               ;   in Loop: Header=BB44_51 Depth=2
	tst	w0, #0xffff
	mov	x19, x23
	ldp	x16, x17, [sp, #336]            ; 16-byte Folded Reload
	ldp	x1, x0, [sp, #320]              ; 16-byte Folded Reload
	ldr	x2, [sp, #312]                  ; 8-byte Folded Reload
	b.ne	LBB44_50
; %bb.75:                               ;   in Loop: Header=BB44_51 Depth=2
	mov	x20, #0
	add	x10, x30, x11
	mov	x11, #-11664
	add	x10, x10, x11
	ldp	x12, x11, [x10]
	ldp	x14, x13, [x10, #16]
	ldp	x10, x15, [x10, #32]
	adds	x10, x1, x10
	adc	x15, x2, x15
	adds	x14, x16, x14
	adcs	x13, x0, x13
	adcs	x16, x10, xzr
	cinc	x15, x15, hs
	adds	x10, x12, x19
	adcs	x11, x11, x17
	cset	w17, hs
	adcs	x12, x14, xzr
	cinc	x13, x13, hs
	orr	x14, x12, x13
	cmp	x14, #0
	cset	w14, eq
	and	w14, w17, w14
	adds	x14, x16, x14
	cinc	x15, x15, hs
	tst	w9, #0xffff
	b.eq	LBB44_88
; %bb.76:                               ;   in Loop: Header=BB44_51 Depth=2
	ldr	x16, [sp, #88]                  ; 8-byte Folded Reload
	cmp	w16, #1
	b.lt	LBB44_88
; %bb.77:                               ;   in Loop: Header=BB44_51 Depth=2
	mov	x9, #0
	mov	x7, #0
	mov	x22, #0
	mov	x24, #0
	mov	x6, #0
	mov	x20, #0
                                        ; kill: def $w16 killed $w16 killed $x16 def $x16
	ldr	x5, [sp, #232]                  ; 8-byte Folded Reload
LBB44_78:                               ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	orr	x17, x13, x15
	orr	x0, x12, x14
	orr	x0, x0, x10
	orr	x17, x17, x11
	orr	x17, x0, x17
	cbz	x17, LBB44_89
; %bb.79:                               ;   in Loop: Header=BB44_78 Depth=3
	and	w17, w10, #0x1
	sub	w16, w16, w17
	tbz	w10, #0, LBB44_81
; %bb.80:                               ;   in Loop: Header=BB44_78 Depth=3
	ldr	x17, [x25]
	ldrh	w17, [x17]
	add	x17, x9, x17
	mov	w0, #11664
	madd	x4, x17, x0, x30
	ldp	x0, x17, [x4]
	ldp	x2, x1, [x4, #16]
	ldp	x4, x3, [x4, #32]
	b	LBB44_82
LBB44_81:                               ;   in Loop: Header=BB44_78 Depth=3
	mov	x0, #0
	mov	x17, #0
	mov	x2, #0
	mov	x1, #0
	mov	x4, #0
	mov	x3, #0
LBB44_82:                               ;   in Loop: Header=BB44_78 Depth=3
	sxth	w16, w16
	adds	x4, x4, x7
	adc	x3, x3, x22
	adds	x2, x2, x24
	adcs	x1, x1, x6
	adcs	x4, x4, xzr
	cinc	x3, x3, hs
	adds	x5, x0, x5
	adcs	x20, x17, x20
	cset	w17, hs
	adcs	x24, x2, xzr
	cinc	x6, x1, hs
	orr	x0, x24, x6
	cmp	x0, #0
	cset	w0, eq
	and	w17, w17, w0
	adds	x7, x4, x17
	cinc	x22, x3, hs
	tbz	w10, #0, LBB44_84
; %bb.83:                               ;   in Loop: Header=BB44_78 Depth=3
	and	x17, x16, #0xffff
	madd	x4, x17, x26, x30
	ldp	x0, x17, [x4]
	ldp	x2, x1, [x4, #16]
	ldp	x4, x3, [x4, #32]
	b	LBB44_85
LBB44_84:                               ;   in Loop: Header=BB44_78 Depth=3
	mov	x0, #0
	mov	x17, #0
	mov	x2, #0
	mov	x1, #0
	mov	x4, #0
	mov	x3, #0
LBB44_85:                               ;   in Loop: Header=BB44_78 Depth=3
	subs	x10, x10, x0
	sbc	x11, x11, x17
	subs	x12, x12, x2
	sbc	x13, x13, x1
	cmn	x12, x2
	adcs	xzr, x13, x1
	cset	w1, hs
	subs	x14, x14, x4
	sbc	x15, x15, x3
	subs	x14, x14, x1
	sbc	x15, x15, xzr
	cmn	x10, x0
	adcs	xzr, x11, x17
	cset	w17, hs
	subs	x12, x12, x17
	sbc	x13, x13, xzr
	and	x0, x12, x13
	cmn	x0, #1
	extr	x10, x11, x10, #1
	cset	w0, eq
	extr	x11, x12, x11, #1
	and	w17, w17, w0
	extr	x12, x13, x12, #1
	subs	x14, x14, x17
	extr	x13, x14, x13, #1
	sbc	x15, x15, xzr
	extr	x14, x15, x14, #1
	lsr	x15, x15, #1
	add	x9, x9, #1
	cmp	x9, x8
	b.hs	LBB44_89
; %bb.86:                               ;   in Loop: Header=BB44_78 Depth=3
	cmp	w16, #0
	b.gt	LBB44_78
	b	LBB44_89
LBB44_87:                               ;   in Loop: Header=BB44_51 Depth=2
	mov	x19, x23
	b	LBB44_49
LBB44_88:                               ;   in Loop: Header=BB44_51 Depth=2
	ldr	x5, [sp, #232]                  ; 8-byte Folded Reload
	mov	x24, x20
	mov	x6, x20
	mov	x7, x20
	mov	x22, x20
LBB44_89:                               ;   in Loop: Header=BB44_51 Depth=2
	str	x14, [sp, #560]
	str	x15, [sp, #568]
	str	x12, [sp, #544]
	str	x13, [sp, #552]
	str	x10, [sp, #528]
	str	x11, [sp, #536]
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	adrp	x8, _m@PAGE
	ldrh	w23, [x8, _m@PAGEOFF]
	cbz	w23, LBB44_100
; %bb.90:                               ;   in Loop: Header=BB44_51 Depth=2
	mov	x15, #0
	mov	x14, #0
	mov	x13, #0
	mov	x12, #0
	mov	w28, #0
	mov	x8, #0
	mov	x9, #0
	sub	w10, w23, #1
	mov	w11, #129
	sub	w11, w11, w23
	b	LBB44_93
LBB44_91:                               ;   in Loop: Header=BB44_93 Depth=3
	and	x17, x28, #0xffff
	mov	w0, #11664
	umaddl	x0, w10, w0, x30
	madd	x4, x17, x26, x0
	ldp	x0, x17, [x4]
	ldp	x2, x1, [x4, #16]
	ldp	x4, x3, [x4, #32]
LBB44_92:                               ;   in Loop: Header=BB44_93 Depth=3
	and	x16, x16, #0x1
	adds	x15, x15, x4
	adc	x14, x14, x3
	adds	x13, x13, x2
	adcs	x12, x12, x1
	adcs	x15, x15, xzr
	cinc	x14, x14, hs
	adds	x8, x8, x0
	adcs	x9, x9, x17
	cset	w17, hs
	adcs	x13, x13, xzr
	cinc	x12, x12, hs
	orr	x0, x13, x12
	cmp	x0, #0
	cset	w0, eq
	and	w17, w17, w0
	adds	x15, x15, x17
	cinc	x14, x14, hs
	add	w28, w28, w16
	add	w11, w11, #1
	and	w16, w10, #0xffff
	sub	w10, w10, #1
	cbz	w16, LBB44_99
LBB44_93:                               ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w17, w10, #1
	cmp	w17, #129
	b.hs	LBB44_95
; %bb.94:                               ;   in Loop: Header=BB44_93 Depth=3
	mov	w16, w10
	lsr	x17, x5, x16
	mvn	w0, w10
	lsl	x1, x20, #1
	lsl	x0, x1, x0
	orr	x17, x0, x17
	lsr	x0, x20, x16
	tst	x16, #0x40
	csel	x16, x0, x17, ne
	mov	w17, w11
	lsl	x0, x24, x17
	tst	x17, #0x40
	csel	x17, xzr, x0, ne
	cmp	w10, #0
	csel	x17, xzr, x17, eq
	orr	x16, x17, x16
	tbnz	w16, #0, LBB44_91
	b	LBB44_98
LBB44_95:                               ;   in Loop: Header=BB44_93 Depth=3
	and	w16, w10, #0x7f
	cmp	w17, #257
	b.hs	LBB44_97
; %bb.96:                               ;   in Loop: Header=BB44_93 Depth=3
	lsr	x17, x24, x16
	mvn	w0, w16
	lsl	x1, x6, #1
	lsl	x0, x1, x0
	orr	x17, x0, x17
	lsr	x0, x6, x16
	tst	x16, #0x40
	csel	x17, x0, x17, ne
	mov	w0, #128
	sub	w0, w0, w16
	lsl	x1, x7, x0
	tst	x0, #0x40
	csel	x0, xzr, x1, ne
	cmp	w16, #0
	csel	x16, xzr, x0, eq
	orr	x16, x16, x17
	tbnz	w16, #0, LBB44_91
	b	LBB44_98
LBB44_97:                               ;   in Loop: Header=BB44_93 Depth=3
	lsr	x17, x7, x16
	mvn	w0, w16
	lsl	x1, x22, #1
	lsl	x0, x1, x0
	orr	x17, x0, x17
	lsr	x0, x22, x16
	tst	x16, #0x40
	csel	x16, x0, x17, ne
	tbnz	w16, #0, LBB44_91
LBB44_98:                               ;   in Loop: Header=BB44_93 Depth=3
	mov	x0, #0
	mov	x17, #0
	mov	x2, #0
	mov	x1, #0
	mov	x4, #0
	mov	x3, #0
	b	LBB44_92
LBB44_99:                               ;   in Loop: Header=BB44_51 Depth=2
	stp	x13, x12, [sp, #496]
	str	x15, [sp, #512]
	str	x14, [sp, #520]
	b	LBB44_101
LBB44_100:                              ;   in Loop: Header=BB44_51 Depth=2
	mov	x8, #0
	mov	x9, #0
	mov	w28, #0
LBB44_101:                              ;   in Loop: Header=BB44_51 Depth=2
	stp	x22, x7, [sp, #240]             ; 16-byte Folded Spill
	stp	x6, x5, [sp, #272]              ; 16-byte Folded Spill
	stp	x8, x9, [sp, #480]
	ldr	x1, [x25, #40]
	add	x8, sp, #384
	add	x0, sp, #480
	bl	__Z6divmodRK11__uint384_tS1_
Lloh359:
	adrp	x10, _p23@PAGE
Lloh360:
	add	x10, x10, _p23@PAGEOFF
	mov	w8, #11664
	umaddl	x8, w23, w8, x10
	mov	x9, x28
	and	x9, x28, #0xffff
	madd	x9, x9, x26, x10
	ldp	x11, x10, [x8, #32]
	ldp	x13, x12, [x9, #32]
	eor	x14, x10, x12
	eor	x15, x11, x13
	orr	x14, x15, x14
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	cbnz	x14, LBB44_104
; %bb.102:                              ;   in Loop: Header=BB44_51 Depth=2
	ldp	x11, x10, [x8, #16]
	ldp	x13, x12, [x9, #16]
	eor	x14, x10, x12
	eor	x15, x11, x13
	orr	x14, x15, x14
Lloh361:
	adrp	x22, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh362:
	ldr	x22, [x22, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	cbnz	x14, LBB44_105
; %bb.103:                              ;   in Loop: Header=BB44_51 Depth=2
	ldp	x8, x10, [x8]
	ldp	x9, x11, [x9]
	cmp	x8, x9
	cset	w8, hs
	cmp	x10, x11
	cset	w9, hs
	b	LBB44_106
LBB44_104:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	x11, x13
	cset	w8, hi
	cmp	x10, x12
	cset	w9, hi
	csel	w8, w8, w9, eq
Lloh363:
	adrp	x22, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh364:
	ldr	x22, [x22, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	b	LBB44_107
LBB44_105:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	x11, x13
	cset	w8, hi
	cmp	x10, x12
	cset	w9, hi
LBB44_106:                              ;   in Loop: Header=BB44_51 Depth=2
	csel	w8, w8, w9, eq
LBB44_107:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	w8, #0
Lloh365:
	adrp	x9, l_.str.1@PAGE
Lloh366:
	add	x9, x9, l_.str.1@PAGEOFF
Lloh367:
	adrp	x10, l_.str.23@PAGE
Lloh368:
	add	x10, x10, l_.str.23@PAGEOFF
	csel	x1, x10, x9, ne
	eor	w2, w8, #0x1
	strb	w2, [sp, #383]
	add	x8, sp, #360
	orr	x19, x8, x2
	add	x0, sp, #360
	bl	_memcpy
	strb	wzr, [x19]
	add	x19, x22, #104
	str	x19, [sp, #912]
	add	x25, x22, #64
	str	x25, [sp, #800]
	ldp	x9, x8, [sp, #184]              ; 16-byte Folded Reload
	str	x8, [sp, #784]
	ldur	x8, [x8, #-24]
	add	x20, sp, #784
	str	x9, [x20, x8]
	str	xzr, [sp, #792]
	ldr	x8, [sp, #784]
	ldur	x8, [x8, #-24]
	add	x23, x20, x8
Ltmp396:
	mov	x0, x23
	ldr	x26, [sp, #200]                 ; 8-byte Folded Reload
	mov	x1, x26
	bl	__ZNSt3__18ios_base4initEPv
Ltmp397:
; %bb.108:                              ;   in Loop: Header=BB44_51 Depth=2
	str	xzr, [x23, #136]
	mov	w8, #-1
	str	w8, [x23, #144]
	ldp	x10, x8, [sp, #160]             ; 16-byte Folded Reload
	ldur	x8, [x8, #-24]
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	str	x10, [x9, x8]
	ldp	x8, x9, [sp, #144]              ; 16-byte Folded Reload
	ldur	x8, [x8, #-24]
	str	x9, [x20, x8]
	add	x8, x22, #24
	str	x19, [sp, #912]
	str	x8, [sp, #784]
	str	x25, [sp, #800]
Ltmp399:
	mov	x0, x26
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp400:
; %bb.109:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x8, [sp, #808]
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8]
	mov	w8, #24
	str	w8, [sp, #904]
Ltmp402:
	mov	x0, #0
	bl	_time
Ltmp403:
	ldr	x25, [sp, #208]                 ; 8-byte Folded Reload
Lloh369:
	adrp	x20, l_.str@PAGE
Lloh370:
	add	x20, x20, l_.str@PAGEOFF
	ldp	x22, x19, [sp, #272]            ; 16-byte Folded Reload
; %bb.110:                              ;   in Loop: Header=BB44_51 Depth=2
Lloh371:
	adrp	x8, _start_time@PAGE
Lloh372:
	ldr	x1, [x8, _start_time@PAGEOFF]
Ltmp404:
	bl	_difftime
Ltmp405:
; %bb.111:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp406:
	ldr	x0, [sp, #304]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp407:
; %bb.112:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp408:
Lloh373:
	adrp	x1, l_.str.15@PAGE
Lloh374:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp409:
; %bb.113:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp410:
	mov	x23, x0
	bl	_pthread_self
	mov	x1, x0
Ltmp411:
; %bb.114:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp413:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp414:
; %bb.115:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp415:
Lloh375:
	adrp	x1, l_.str.16@PAGE
Lloh376:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp416:
; %bb.116:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp417:
	ldr	x0, [sp, #304]                  ; 8-byte Folded Reload
Lloh377:
	adrp	x1, l_.str.24@PAGE
Lloh378:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	w2, #3
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp418:
; %bb.117:                              ;   in Loop: Header=BB44_51 Depth=2
	adrp	x8, _m@PAGE
	ldrh	w1, [x8, _m@PAGEOFF]
Ltmp419:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp420:
; %bb.118:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp421:
Lloh379:
	adrp	x1, l_.str.25@PAGE
Lloh380:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp422:
; %bb.119:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp423:
	and	w1, w28, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp424:
; %bb.120:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp425:
Lloh381:
	adrp	x1, l_.str.26@PAGE
Lloh382:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp426:
; %bb.121:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp427:
	mov	x28, x0
	add	x0, sp, #768
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp428:
; %bb.122:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #768]
	cbz	w8, LBB44_128
; %bb.123:                              ;   in Loop: Header=BB44_51 Depth=2
	str	x19, [sp, #720]
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	str	x8, [sp, #728]
	str	x24, [sp, #736]
	str	x22, [sp, #744]
	ldr	x23, [sp, #352]                 ; 8-byte Folded Reload
	ldr	x8, [sp, #248]                  ; 8-byte Folded Reload
	str	x8, [sp, #752]
	ldr	x8, [sp, #240]                  ; 8-byte Folded Reload
	str	x8, [sp, #760]
	mov	w19, #2
LBB44_124:                              ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x21]
	str	xzr, [sp, #584]
	str	x19, [sp, #576]
	add	x8, sp, #624
	add	x0, sp, #720
	add	x1, sp, #576
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #672]
	ldrb	w8, [x20, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [x27, #176]
	ldp	q1, q0, [x27, #144]
	stp	q0, q2, [x27, #256]
	str	q1, [x27, #240]
	ldr	x8, [sp, #760]
	ldr	x9, [sp, #752]
	ldr	x10, [sp, #744]
	ldr	x11, [sp, #736]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #720]
	ldr	x11, [sp, #728]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB44_124
; %bb.125:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp429:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp430:
; %bb.126:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	x0, x24
	b.eq	LBB44_128
; %bb.127:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp431:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp432:
LBB44_128:                              ;   in Loop: Header=BB44_51 Depth=2
	add	x0, sp, #768
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	w8, #48
	strb	w8, [sp, #1192]
Ltmp434:
	add	x1, sp, #1192
	mov	x0, x28
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp435:
; %bb.129:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp436:
Lloh383:
	adrp	x1, l_.str.27@PAGE
Lloh384:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp437:
; %bb.130:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp438:
	mov	x28, x0
	add	x0, sp, #768
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp439:
; %bb.131:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #768]
	cbz	w8, LBB44_137
; %bb.132:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	ldp	q0, q1, [x8]
	stp	q0, q1, [x27, #240]
	ldr	q0, [x8, #32]
	str	q0, [x27, #272]
	ldr	x23, [sp, #352]                 ; 8-byte Folded Reload
	mov	w19, #10
LBB44_133:                              ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x21]
	str	xzr, [sp, #584]
	str	x19, [sp, #576]
	add	x8, sp, #624
	add	x0, sp, #720
	add	x1, sp, #576
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #672]
	ldrb	w8, [x20, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [x27, #176]
	ldp	q1, q0, [x27, #144]
	stp	q0, q2, [x27, #256]
	str	q1, [x27, #240]
	ldr	x8, [sp, #760]
	ldr	x9, [sp, #752]
	ldr	x10, [sp, #744]
	ldr	x11, [sp, #736]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #720]
	ldr	x11, [sp, #728]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB44_133
; %bb.134:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp440:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp441:
; %bb.135:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	x0, x24
	b.eq	LBB44_137
; %bb.136:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp442:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp443:
LBB44_137:                              ;   in Loop: Header=BB44_51 Depth=2
	add	x0, sp, #768
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp445:
	mov	x0, x28
Lloh385:
	adrp	x1, l_.str.28@PAGE
Lloh386:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp446:
; %bb.138:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #383]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #360]
	cmp	w9, #0
	add	x9, sp, #360
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp447:
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp448:
; %bb.139:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp449:
	mov	x28, x0
	add	x0, sp, #768
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp450:
; %bb.140:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #768]
	cbz	w8, LBB44_146
; %bb.141:                              ;   in Loop: Header=BB44_51 Depth=2
	ldp	q0, q1, [sp, #384]
	stp	q0, q1, [x27, #240]
	ldr	q0, [sp, #416]
	str	q0, [x27, #272]
	ldr	x23, [sp, #352]                 ; 8-byte Folded Reload
	mov	w19, #10
LBB44_142:                              ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x21]
	str	xzr, [sp, #584]
	str	x19, [sp, #576]
	add	x8, sp, #624
	add	x0, sp, #720
	add	x1, sp, #576
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #672]
	ldrb	w8, [x20, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [x27, #176]
	ldp	q1, q0, [x27, #144]
	stp	q0, q2, [x27, #256]
	str	q1, [x27, #240]
	ldr	x8, [sp, #760]
	ldr	x9, [sp, #752]
	ldr	x10, [sp, #744]
	ldr	x11, [sp, #736]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #720]
	ldr	x11, [sp, #728]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB44_142
; %bb.143:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp451:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp452:
; %bb.144:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	x0, x24
	b.eq	LBB44_146
; %bb.145:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp453:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp454:
LBB44_146:                              ;   in Loop: Header=BB44_51 Depth=2
	add	x0, sp, #768
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp456:
	mov	x0, x28
Lloh387:
	adrp	x1, l_.str.29@PAGE
Lloh388:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp457:
; %bb.147:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #383]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #360]
	cmp	w9, #0
	add	x9, sp, #360
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp458:
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp459:
; %bb.148:                              ;   in Loop: Header=BB44_51 Depth=2
	mov	x28, x0
	ldr	x19, [x25, #40]
Ltmp460:
	add	x0, sp, #768
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp461:
; %bb.149:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #768]
	cbz	w8, LBB44_155
; %bb.150:                              ;   in Loop: Header=BB44_51 Depth=2
	ldp	q0, q1, [x19]
	stp	q0, q1, [x27, #240]
	ldr	q0, [x19, #32]
	str	q0, [x27, #272]
	ldr	x23, [sp, #352]                 ; 8-byte Folded Reload
	mov	w19, #10
LBB44_151:                              ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x21]
	str	xzr, [sp, #584]
	str	x19, [sp, #576]
	add	x8, sp, #624
	add	x0, sp, #720
	add	x1, sp, #576
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #672]
	ldrb	w8, [x20, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [x27, #176]
	ldp	q1, q0, [x27, #144]
	stp	q0, q2, [x27, #256]
	str	q1, [x27, #240]
	ldr	x8, [sp, #760]
	ldr	x9, [sp, #752]
	ldr	x10, [sp, #744]
	ldr	x11, [sp, #736]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #720]
	ldr	x11, [sp, #728]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB44_151
; %bb.152:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp462:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp463:
; %bb.153:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	x0, x24
	b.eq	LBB44_155
; %bb.154:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp464:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp465:
LBB44_155:                              ;   in Loop: Header=BB44_51 Depth=2
	add	x0, sp, #768
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp467:
	mov	x0, x28
Lloh389:
	adrp	x1, l_.str.30@PAGE
Lloh390:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp468:
; %bb.156:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp469:
	mov	x28, x0
	add	x0, sp, #768
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp470:
; %bb.157:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #768]
	cbz	w8, LBB44_163
; %bb.158:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	q0, [sp, #480]
	ldp	q1, q2, [x27, #16]
	stp	q0, q1, [x27, #240]
	str	q2, [x27, #272]
	ldr	x23, [sp, #352]                 ; 8-byte Folded Reload
	mov	w19, #10
LBB44_159:                              ;   Parent Loop BB44_14 Depth=1
                                        ;     Parent Loop BB44_51 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x21]
	str	xzr, [sp, #584]
	str	x19, [sp, #576]
	add	x8, sp, #624
	add	x0, sp, #720
	add	x1, sp, #576
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #672]
	ldrb	w8, [x20, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [x27, #176]
	ldp	q1, q0, [x27, #144]
	stp	q0, q2, [x27, #256]
	str	q1, [x27, #240]
	ldr	x8, [sp, #760]
	ldr	x9, [sp, #752]
	ldr	x10, [sp, #744]
	ldr	x11, [sp, #736]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #720]
	ldr	x11, [sp, #728]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB44_159
; %bb.160:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp471:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp472:
; %bb.161:                              ;   in Loop: Header=BB44_51 Depth=2
	cmp	x0, x24
	b.eq	LBB44_163
; %bb.162:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp473:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp474:
LBB44_163:                              ;   in Loop: Header=BB44_51 Depth=2
	add	x0, sp, #768
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
Ltmp476:
	add	x8, sp, #1192
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp477:
; %bb.164:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp478:
	add	x0, sp, #1192
Lloh391:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh392:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp479:
; %bb.165:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp480:
	mov	w1, #10
	blr	x8
Ltmp481:
; %bb.166:                              ;   in Loop: Header=BB44_51 Depth=2
	mov	x23, x0
	add	x0, sp, #1192
	bl	__ZNSt3__16localeD1Ev
Ltmp483:
	mov	x0, x28
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp484:
; %bb.167:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp485:
	mov	x0, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp486:
; %bb.168:                              ;   in Loop: Header=BB44_51 Depth=2
Ltmp487:
	add	x8, sp, #1192
	mov	x0, x26
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp488:
; %bb.169:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #1215]
	sxtb	w9, w8
	ldr	x10, [sp, #1192]
	ldr	x11, [sp, #1200]
	cmp	w9, #0
	add	x9, sp, #1192
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp490:
Lloh393:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh394:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp491:
; %bb.170:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrsb	w8, [sp, #1215]
	tbz	w8, #31, LBB44_172
; %bb.171:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x0, [sp, #1192]
	bl	__ZdlPv
LBB44_172:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x23, [x25, #88]
Ltmp493:
	add	x8, sp, #1192
	mov	x0, x26
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp494:
; %bb.173:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrb	w8, [sp, #1215]
	sxtb	w9, w8
	ldr	x10, [sp, #1192]
	ldr	x11, [sp, #1200]
	cmp	w9, #0
	add	x9, sp, #1192
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp496:
	mov	x0, x23
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp497:
; %bb.174:                              ;   in Loop: Header=BB44_51 Depth=2
	ldrsb	w8, [sp, #1215]
	tbz	w8, #31, LBB44_176
; %bb.175:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x0, [sp, #1192]
	bl	__ZdlPv
LBB44_176:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x0, [x25, #88]
Ltmp499:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp500:
; %bb.177:                              ;   in Loop: Header=BB44_51 Depth=2
	ldp	x10, x8, [sp, #104]             ; 16-byte Folded Reload
	str	x8, [sp, #784]
	ldur	x8, [x8, #-24]
	add	x9, sp, #784
	str	x10, [x9, x8]
Lloh395:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh396:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	str	x9, [sp, #800]
	str	x8, [sp, #808]
	ldrsb	w8, [sp, #895]
	tbz	w8, #31, LBB44_179
; %bb.178:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x0, [sp, #872]
	bl	__ZdlPv
LBB44_179:                              ;   in Loop: Header=BB44_51 Depth=2
	mov	x0, x26
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh397:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh398:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #784
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldrsb	w8, [sp, #383]
	ldr	x19, [sp, #264]                 ; 8-byte Folded Reload
	tbz	w8, #31, LBB44_48
; %bb.180:                              ;   in Loop: Header=BB44_51 Depth=2
	ldr	x0, [sp, #360]
	bl	__ZdlPv
	b	LBB44_48
LBB44_181:                              ;   in Loop: Header=BB44_14 Depth=1
	cmp	x20, x4
	cset	w8, hi
	cmp	x19, x3
	cset	w19, hi
	csel	w8, w8, w19, eq
	tbz	w8, #0, LBB44_46
	b	LBB44_47
LBB44_182:
	ldur	x8, [x29, #-104]
Lloh399:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh400:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh401:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB44_185
; %bb.183:
	add	sp, sp, #1472
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB44_184:
Lloh402:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh403:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh404:
	adrp	x1, l_.str.22@PAGE
Lloh405:
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [x25, #40]
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Lloh406:
	adrp	x20, l_.str.9@PAGE
Lloh407:
	add	x20, x20, l_.str.9@PAGEOFF
	mov	x1, x20
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [x25, #24]
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x20
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [x25, #32]
	ldrh	w1, [x8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x20
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	add	x1, sp, #528
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x20
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x20, x0
	ldr	x1, [x25, #40]
	add	x8, sp, #784
	add	x0, sp, #528
	bl	__ZrmRK11__uint384_tS1_
	add	x1, sp, #784
	mov	x0, x20
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	bl	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	bl	___cxa_rethrow
LBB44_185:
	bl	___stack_chk_fail
LBB44_186:
Ltmp475:
	b	LBB44_191
LBB44_187:
Ltmp466:
	b	LBB44_191
LBB44_188:
Ltmp455:
	b	LBB44_191
LBB44_189:
Ltmp444:
	b	LBB44_191
LBB44_190:
Ltmp433:
LBB44_191:
	mov	x19, x0
	add	x0, sp, #768
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB44_205
LBB44_192:
Ltmp498:
	b	LBB44_195
LBB44_193:
Ltmp495:
	b	LBB44_204
LBB44_194:
Ltmp492:
LBB44_195:
	mov	x19, x0
	ldrsb	w8, [sp, #1215]
	tbz	w8, #31, LBB44_205
; %bb.196:
	ldr	x0, [sp, #1192]
	bl	__ZdlPv
	b	LBB44_205
LBB44_197:
Ltmp489:
	b	LBB44_204
LBB44_198:
Ltmp412:
	bl	___clang_call_terminate
LBB44_199:
Ltmp401:
	mov	x19, x0
Lloh408:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh409:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #784
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB44_201
LBB44_200:
Ltmp398:
	mov	x19, x0
LBB44_201:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB44_206
LBB44_202:
Ltmp482:
	mov	x19, x0
	add	x0, sp, #1192
	bl	__ZNSt3__16localeD1Ev
	b	LBB44_205
LBB44_203:
Ltmp501:
LBB44_204:
	mov	x19, x0
LBB44_205:
	add	x0, sp, #784
	bl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
LBB44_206:
	ldrsb	w8, [sp, #383]
	tbz	w8, #31, LBB44_208
; %bb.207:
	ldr	x0, [sp, #360]
	bl	__ZdlPv
LBB44_208:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh323, Lloh324
	.loh AdrpLdrGotLdr	Lloh320, Lloh321, Lloh322
	.loh AdrpAdd	Lloh325, Lloh326
	.loh AdrpLdrGot	Lloh329, Lloh330
	.loh AdrpLdrGot	Lloh327, Lloh328
	.loh AdrpAdd	Lloh331, Lloh332
	.loh AdrpAdd	Lloh333, Lloh334
	.loh AdrpAdd	Lloh335, Lloh336
	.loh AdrpAdd	Lloh337, Lloh338
	.loh AdrpAdd	Lloh341, Lloh342
	.loh AdrpLdr	Lloh339, Lloh340
	.loh AdrpAdd	Lloh345, Lloh346
	.loh AdrpAdd	Lloh343, Lloh344
	.loh AdrpAdd	Lloh347, Lloh348
	.loh AdrpAdd	Lloh349, Lloh350
	.loh AdrpLdr	Lloh351, Lloh352
	.loh AdrpAdd	Lloh353, Lloh354
	.loh AdrpAdd	Lloh357, Lloh358
	.loh AdrpAdd	Lloh355, Lloh356
	.loh AdrpAdd	Lloh359, Lloh360
	.loh AdrpLdrGot	Lloh361, Lloh362
	.loh AdrpLdrGot	Lloh363, Lloh364
	.loh AdrpAdd	Lloh367, Lloh368
	.loh AdrpAdd	Lloh365, Lloh366
	.loh AdrpAdd	Lloh369, Lloh370
	.loh AdrpLdr	Lloh371, Lloh372
	.loh AdrpAdd	Lloh373, Lloh374
	.loh AdrpAdd	Lloh375, Lloh376
	.loh AdrpAdd	Lloh377, Lloh378
	.loh AdrpAdd	Lloh379, Lloh380
	.loh AdrpAdd	Lloh381, Lloh382
	.loh AdrpAdd	Lloh383, Lloh384
	.loh AdrpAdd	Lloh385, Lloh386
	.loh AdrpAdd	Lloh387, Lloh388
	.loh AdrpAdd	Lloh389, Lloh390
	.loh AdrpLdrGot	Lloh391, Lloh392
	.loh AdrpLdrGot	Lloh393, Lloh394
	.loh AdrpLdrGot	Lloh395, Lloh396
	.loh AdrpLdrGot	Lloh397, Lloh398
	.loh AdrpLdrGotLdr	Lloh399, Lloh400, Lloh401
	.loh AdrpAdd	Lloh406, Lloh407
	.loh AdrpAdd	Lloh404, Lloh405
	.loh AdrpLdrGot	Lloh402, Lloh403
	.loh AdrpLdrGot	Lloh408, Lloh409
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table44:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp396-Lfunc_begin12          ;   Call between Lfunc_begin12 and Ltmp396
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp396-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp397-Ltmp396                ;   Call between Ltmp396 and Ltmp397
	.uleb128 Ltmp398-Lfunc_begin12          ;     jumps to Ltmp398
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp399-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Ltmp400-Ltmp399                ;   Call between Ltmp399 and Ltmp400
	.uleb128 Ltmp401-Lfunc_begin12          ;     jumps to Ltmp401
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp402-Lfunc_begin12          ; >> Call Site 4 <<
	.uleb128 Ltmp409-Ltmp402                ;   Call between Ltmp402 and Ltmp409
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp410-Lfunc_begin12          ; >> Call Site 5 <<
	.uleb128 Ltmp411-Ltmp410                ;   Call between Ltmp410 and Ltmp411
	.uleb128 Ltmp412-Lfunc_begin12          ;     jumps to Ltmp412
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp413-Lfunc_begin12          ; >> Call Site 6 <<
	.uleb128 Ltmp428-Ltmp413                ;   Call between Ltmp413 and Ltmp428
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp429-Lfunc_begin12          ; >> Call Site 7 <<
	.uleb128 Ltmp432-Ltmp429                ;   Call between Ltmp429 and Ltmp432
	.uleb128 Ltmp433-Lfunc_begin12          ;     jumps to Ltmp433
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp434-Lfunc_begin12          ; >> Call Site 8 <<
	.uleb128 Ltmp439-Ltmp434                ;   Call between Ltmp434 and Ltmp439
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp440-Lfunc_begin12          ; >> Call Site 9 <<
	.uleb128 Ltmp443-Ltmp440                ;   Call between Ltmp440 and Ltmp443
	.uleb128 Ltmp444-Lfunc_begin12          ;     jumps to Ltmp444
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp445-Lfunc_begin12          ; >> Call Site 10 <<
	.uleb128 Ltmp450-Ltmp445                ;   Call between Ltmp445 and Ltmp450
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp451-Lfunc_begin12          ; >> Call Site 11 <<
	.uleb128 Ltmp454-Ltmp451                ;   Call between Ltmp451 and Ltmp454
	.uleb128 Ltmp455-Lfunc_begin12          ;     jumps to Ltmp455
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp456-Lfunc_begin12          ; >> Call Site 12 <<
	.uleb128 Ltmp461-Ltmp456                ;   Call between Ltmp456 and Ltmp461
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp462-Lfunc_begin12          ; >> Call Site 13 <<
	.uleb128 Ltmp465-Ltmp462                ;   Call between Ltmp462 and Ltmp465
	.uleb128 Ltmp466-Lfunc_begin12          ;     jumps to Ltmp466
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp467-Lfunc_begin12          ; >> Call Site 14 <<
	.uleb128 Ltmp470-Ltmp467                ;   Call between Ltmp467 and Ltmp470
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp471-Lfunc_begin12          ; >> Call Site 15 <<
	.uleb128 Ltmp474-Ltmp471                ;   Call between Ltmp471 and Ltmp474
	.uleb128 Ltmp475-Lfunc_begin12          ;     jumps to Ltmp475
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp476-Lfunc_begin12          ; >> Call Site 16 <<
	.uleb128 Ltmp477-Ltmp476                ;   Call between Ltmp476 and Ltmp477
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp478-Lfunc_begin12          ; >> Call Site 17 <<
	.uleb128 Ltmp481-Ltmp478                ;   Call between Ltmp478 and Ltmp481
	.uleb128 Ltmp482-Lfunc_begin12          ;     jumps to Ltmp482
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp483-Lfunc_begin12          ; >> Call Site 18 <<
	.uleb128 Ltmp486-Ltmp483                ;   Call between Ltmp483 and Ltmp486
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp487-Lfunc_begin12          ; >> Call Site 19 <<
	.uleb128 Ltmp488-Ltmp487                ;   Call between Ltmp487 and Ltmp488
	.uleb128 Ltmp489-Lfunc_begin12          ;     jumps to Ltmp489
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp490-Lfunc_begin12          ; >> Call Site 20 <<
	.uleb128 Ltmp491-Ltmp490                ;   Call between Ltmp490 and Ltmp491
	.uleb128 Ltmp492-Lfunc_begin12          ;     jumps to Ltmp492
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp493-Lfunc_begin12          ; >> Call Site 21 <<
	.uleb128 Ltmp494-Ltmp493                ;   Call between Ltmp493 and Ltmp494
	.uleb128 Ltmp495-Lfunc_begin12          ;     jumps to Ltmp495
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp496-Lfunc_begin12          ; >> Call Site 22 <<
	.uleb128 Ltmp497-Ltmp496                ;   Call between Ltmp496 and Ltmp497
	.uleb128 Ltmp498-Lfunc_begin12          ;     jumps to Ltmp498
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp499-Lfunc_begin12          ; >> Call Site 23 <<
	.uleb128 Ltmp500-Ltmp499                ;   Call between Ltmp499 and Ltmp500
	.uleb128 Ltmp501-Lfunc_begin12          ;     jumps to Ltmp501
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp500-Lfunc_begin12          ; >> Call Site 24 <<
	.uleb128 Lfunc_end12-Ltmp500            ;   Call between Ltmp500 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	2                               ; -- Begin function _GLOBAL__sub_I_collatz_cycle_search_all2.cpp
__GLOBAL__sub_I_collatz_cycle_search_all2.cpp: ; @_GLOBAL__sub_I_collatz_cycle_search_all2.cpp
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #0
	bl	_time
	adrp	x8, _start_time@PAGE
	str	x0, [x8, _start_time@PAGEOFF]
Lloh410:
	adrp	x0, _p23@PAGE
Lloh411:
	add	x0, x0, _p23@PAGEOFF
	mov	w1, #16304
	movk	w1, #43, lsl #16
	bl	_bzero
Lloh412:
	adrp	x0, _pp23@PAGE
Lloh413:
	add	x0, x0, _pp23@PAGEOFF
	mov	w1, #16304
	movk	w1, #43, lsl #16
	bl	_bzero
Lloh414:
	adrp	x0, _yy@PAGE
Lloh415:
	add	x0, x0, _yy@PAGEOFF
	mov	w1, #11664
	bl	_bzero
Lloh416:
	adrp	x0, _dy@PAGE
Lloh417:
	add	x0, x0, _dy@PAGEOFF
	mov	w1, #393216
	bl	_bzero
Lloh418:
	adrp	x0, _dz@PAGE
Lloh419:
	add	x0, x0, _dz@PAGEOFF
	mov	w1, #95551488
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	_bzero
	.loh AdrpAdd	Lloh418, Lloh419
	.loh AdrpAdd	Lloh416, Lloh417
	.loh AdrpAdd	Lloh414, Lloh415
	.loh AdrpAdd	Lloh412, Lloh413
	.loh AdrpAdd	Lloh410, Lloh411
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"0123456789ABCDEF"

l_.str.1:                               ; @.str.1
	.asciz	"-"

	.globl	_start_time                     ; @start_time
.zerofill __DATA,__common,_start_time,8,3
	.section	__DATA,__data
	.globl	_m                              ; @m
	.p2align	1, 0x0
_m:
	.short	1                               ; 0x1

	.globl	_T                              ; @T
	.p2align	1, 0x0
_T:
	.short	11                              ; 0xb

	.globl	_p2                             ; @p2
.zerofill __DATA,__common,_p2,26,4
	.globl	_p23                            ; @p23
.zerofill __DATA,__common,_p23,2834352,4
	.globl	_pp23                           ; @pp23
.zerofill __DATA,__common,_pp23,2834352,4
	.globl	_yy                             ; @yy
.zerofill __DATA,__common,_yy,11664,4
	.globl	_dy                             ; @dy
.zerofill __DATA,__common,_dy,393216,4
	.globl	_dl                             ; @dl
.zerofill __DATA,__common,_dl,3981312,1
	.globl	_dz                             ; @dz
.zerofill __DATA,__common,_dz,95551488,4
	.globl	_mask                           ; @mask
	.p2align	2, 0x0
_mask:
	.long	4095                            ; 0xfff

	.section	__TEXT,__cstring,cstring_literals
l_.str.7:                               ; @.str.7
	.asciz	"solutions.txt"

l_.str.8:                               ; @.str.8
	.asciz	"shift error: "

l_.str.9:                               ; @.str.9
	.asciz	" "

l_.str.10:                              ; @.str.10
	.asciz	"mul error: "

l_.str.11:                              ; @.str.11
	.asciz	"mul ab error: "

l_.str.12:                              ; @.str.12
	.asciz	"mul 128 error: "

l_.str.13:                              ; @.str.13
	.asciz	"mul ba error: "

l_.str.14:                              ; @.str.14
	.asciz	"dz error: "

l_.str.15:                              ; @.str.15
	.asciz	"s\t"

l_.str.16:                              ; @.str.16
	.asciz	":"

l_.str.17:                              ; @.str.17
	.asciz	"\t m ymin "

l_.str.18:                              ; @.str.18
	.asciz	"\t l m1 m2 y "

l_.str.19:                              ; @.str.19
	.asciz	"vector"

l_.str.20:                              ; @.str.20
	.asciz	"basic_string"

	.section	__DATA,__data
	.globl	__ZZN5pstld8internal14max_hw_threadsEvE7threads ; @_ZZN5pstld8internal14max_hw_threadsEvE7threads
	.weak_definition	__ZZN5pstld8internal14max_hw_threadsEvE7threads
	.p2align	3, 0x0
__ZZN5pstld8internal14max_hw_threadsEvE7threads:
	.quad	0                               ; 0x0

	.globl	__ZGVZN5pstld8internal14max_hw_threadsEvE7threads ; @_ZGVZN5pstld8internal14max_hw_threadsEvE7threads
	.weak_definition	__ZGVZN5pstld8internal14max_hw_threadsEvE7threads
	.p2align	3, 0x0
__ZGVZN5pstld8internal14max_hw_threadsEvE7threads:
	.quad	0                               ; 0x0

	.section	__TEXT,__cstring,cstring_literals
l_.str.21:                              ; @.str.21
	.asciz	"hw.physicalcpu_max"

l_.str.22:                              ; @.str.22
	.asciz	"Incorrect fast reminder "

l_.str.23:                              ; @.str.23
	.space	1

l_.str.24:                              ; @.str.24
	.asciz	"\tm="

l_.str.25:                              ; @.str.25
	.asciz	",\tl="

l_.str.26:                              ; @.str.26
	.asciz	",\ts="

l_.str.27:                              ; @.str.27
	.asciz	",\tr="

l_.str.28:                              ; @.str.28
	.asciz	",\tn="

l_.str.29:                              ; @.str.29
	.asciz	",\ty="

l_.str.30:                              ; @.str.30
	.asciz	",\tx="

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3, 0x0
	.quad	__GLOBAL__sub_I_collatz_cycle_search_all2.cpp
.subsections_via_symbols
