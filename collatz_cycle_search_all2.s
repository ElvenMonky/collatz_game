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
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	ldp	x8, x9, [x0, #32]
	ldp	x10, x11, [x1, #32]
	eor	x12, x9, x11
	eor	x13, x8, x10
	orr	x12, x13, x12
	cbnz	x12, LBB24_3
; %bb.1:
	ldp	x12, x13, [x0, #16]
	ldp	x16, x17, [x1, #16]
	eor	x14, x13, x17
	eor	x15, x12, x16
	orr	x14, x15, x14
	cbnz	x14, LBB24_5
; %bb.2:
	ldp	x15, x14, [x0]
	ldp	x17, x16, [x1]
	cmp	x15, x17
	cset	w15, lo
	cmp	x14, x16
	cset	w14, lo
	csel	w14, w15, w14, eq
	mov	x16, x12
	mov	x17, x13
	tbz	w14, #0, LBB24_6
	b	LBB24_23
LBB24_3:
	cmp	x8, x10
	cset	w12, ls
	cmp	x9, x11
	cset	w13, ls
	csel	w12, w12, w13, eq
	tbnz	w12, #0, LBB24_23
; %bb.4:
	ldp	x16, x17, [x1, #16]
	ldp	x12, x13, [x0, #16]
	b	LBB24_6
LBB24_5:
	cmp	x12, x16
	cset	w14, ls
	cmp	x13, x17
	cset	w15, ls
	csel	w14, w14, w15, eq
	tbnz	w14, #0, LBB24_23
LBB24_6:
	ldp	x2, x3, [x1]
	orr	x14, x8, x9
	orr	x12, x12, x13
	cmp	x12, #0
	cset	w12, ne
	cmp	x14, #0
	mov	w14, #2
	csel	w12, w12, w14, eq
	add	x13, x0, w12, uxtw #4
	ldp	x15, x13, [x13]
	cmp	x13, #0
	cset	w4, ne
	lsl	w5, w4, #6
	tst	x5, #0x40
	csel	x13, x13, x15, ne
	clz	x13, x13
	mov	w15, #63
	mov	w5, #63
	bfi	w5, w4, #6, #1
	sub	w13, w5, w13
	add	w13, w13, w12, lsl #7
	orr	x12, x10, x11
	orr	x4, x16, x17
	cmp	x4, #0
	cset	w4, ne
	cmp	x12, #0
	csel	w12, w4, w14, eq
	add	x14, x1, w12, uxtw #4
	ldp	x4, x14, [x14]
	cmp	x14, #0
	cset	w5, ne
	lsl	w6, w5, #6
	tst	x6, #0x40
	csel	x14, x14, x4, ne
	clz	x14, x14
	bfi	w15, w5, #6, #1
	sub	w14, w15, w14
	add	w14, w14, w12, lsl #7
	sub	w15, w13, w14
	and	w12, w15, #0xffff
	cmp	w15, #128
	b.hs	LBB24_8
; %bb.7:
	lsr	x15, x10, #1
	mvn	w4, w12
	lsr	x15, x15, x4
	lsl	x5, x11, x12
	orr	x15, x5, x15
	lsl	x5, x10, x12
	mov	w6, #128
	sub	w6, w6, w12
	mvn	w7, w6
	lsr	x19, x17, x6
	tst	x6, #0x40
	csel	x20, xzr, x19, ne
	lsr	x21, x16, x6
	lsl	x22, x17, #1
	lsl	x22, x22, x7
	orr	x21, x22, x21
	csel	x19, x19, x21, ne
	lsr	x21, x3, x6
	csel	x22, xzr, x21, ne
	lsr	x6, x2, x6
	lsl	x23, x3, #1
	lsl	x7, x23, x7
	orr	x6, x7, x6
	csel	x6, x21, x6, ne
	cmp	w13, w14
	csel	x14, xzr, x19, eq
	csel	x13, xzr, x20, eq
	csel	x6, xzr, x6, eq
	csel	x7, xzr, x22, eq
	tst	x12, #0x40
	csel	x15, x5, x15, ne
	csel	x5, xzr, x5, ne
	orr	x13, x15, x13
	orr	x15, x5, x14
	lsr	x14, x16, #1
	lsr	x14, x14, x4
	lsl	x17, x17, x12
	orr	x14, x17, x14
	lsl	x16, x16, x12
	csel	x14, x16, x14, ne
	csel	x16, xzr, x16, ne
	orr	x17, x7, x14
	orr	x16, x6, x16
	lsr	x14, x2, #1
	lsr	x14, x14, x4
	lsl	x3, x3, x12
	orr	x14, x3, x14
	lsl	x12, x2, x12
	csel	x14, x12, x14, ne
	csel	x12, xzr, x12, ne
	b	LBB24_13
LBB24_8:
	and	w4, w12, #0x7f
	cmp	w12, #256
	b.hs	LBB24_10
; %bb.9:
	mov	x12, #0
	mov	x14, #0
	lsr	x13, x16, #1
	mvn	w5, w4
	lsr	x13, x13, x5
	lsl	x15, x17, x4
	orr	x13, x15, x13
	lsl	x15, x16, x4
	mov	w16, #128
	sub	w16, w16, w4
	mvn	w17, w16
	lsl	x6, x3, #1
	lsl	x17, x6, x17
	lsr	x6, x3, x16
	tst	x16, #0x40
	lsr	x16, x2, x16
	orr	x16, x17, x16
	csel	x17, xzr, x6, ne
	csel	x16, x6, x16, ne
	cmp	w4, #0
	csel	x16, xzr, x16, eq
	csel	x17, xzr, x17, eq
	tst	x4, #0x40
	csel	x13, x15, x13, ne
	csel	x15, xzr, x15, ne
	orr	x13, x17, x13
	orr	x15, x16, x15
	lsr	x16, x2, #1
	lsr	x16, x16, x5
	lsl	x17, x3, x4
	orr	x16, x17, x16
	lsl	x2, x2, x4
	csel	x17, x2, x16, ne
	csel	x16, xzr, x2, ne
	b	LBB24_13
LBB24_10:
	mov	x12, #0
	mov	x14, #0
	mov	x16, #0
	mov	x17, #0
	mvn	w13, w4
	lsr	x15, x2, #1
	lsr	x13, x15, x13
	lsl	x15, x3, x4
	orr	x13, x15, x13
	lsl	x15, x2, x4
	tst	x4, #0x40
	csel	x13, x15, x13, ne
	csel	x15, xzr, x15, ne
	b	LBB24_13
LBB24_11:                               ;   in Loop: Header=BB24_13 Depth=1
	mov	x10, #0
	mov	x11, #0
	mov	x2, #0
	mov	x3, #0
	mov	x4, #0
	mov	x5, #0
LBB24_12:                               ;   in Loop: Header=BB24_13 Depth=1
	ldp	x7, x6, [x0]
	subs	x7, x7, x10
	sbc	x6, x6, x11
	stp	x7, x6, [x0]
	ldp	x20, x19, [x0, #16]
	subs	x20, x20, x2
	sbc	x19, x19, x3
	cmn	x20, x2
	adcs	xzr, x19, x3
	cset	w2, hs
	subs	x8, x8, x4
	sbc	x9, x9, x5
	subs	x8, x8, x2
	sbc	x9, x9, xzr
	cmn	x7, x10
	adcs	xzr, x6, x11
	cset	w10, hs
	subs	x11, x20, x10
	sbc	x2, x19, xzr
	and	x3, x11, x2
	stp	x11, x2, [x0, #16]
	cmn	x3, #1
	cset	w11, eq
	and	w10, w10, w11
	subs	x8, x8, x10
	extr	x12, x14, x12, #1
	extr	x14, x16, x14, #1
	extr	x16, x17, x16, #1
	sbc	x9, x9, xzr
	extr	x17, x15, x17, #1
	extr	x15, x13, x15, #1
	stp	x8, x9, [x0, #32]
	lsr	x13, x13, #1
	ldp	x10, x11, [x1, #32]
LBB24_13:                               ; =>This Inner Loop Header: Depth=1
	eor	x2, x8, x10
	eor	x3, x9, x11
	orr	x2, x2, x3
	cbnz	x2, LBB24_16
; %bb.14:                               ;   in Loop: Header=BB24_13 Depth=1
	ldp	x11, x10, [x0, #16]
	ldp	x3, x2, [x1, #16]
	eor	x4, x10, x2
	eor	x5, x11, x3
	orr	x4, x5, x4
	cbnz	x4, LBB24_17
; %bb.15:                               ;   in Loop: Header=BB24_13 Depth=1
	ldp	x11, x10, [x0]
	ldp	x3, x2, [x1]
	cmp	x11, x3
	cset	w11, lo
	cmp	x10, x2
	cset	w10, lo
	csel	w10, w11, w10, eq
	tbz	w10, #0, LBB24_18
	b	LBB24_23
LBB24_16:                               ;   in Loop: Header=BB24_13 Depth=1
	cmp	x8, x10
	cset	w10, hi
	cmp	x9, x11
	cset	w11, hi
	csel	w10, w10, w11, eq
	tbnz	w10, #0, LBB24_18
	b	LBB24_23
LBB24_17:                               ;   in Loop: Header=BB24_13 Depth=1
	cmp	x11, x3
	cset	w11, ls
	cmp	x10, x2
	cset	w10, ls
	csel	w10, w11, w10, eq
	tbnz	w10, #0, LBB24_23
LBB24_18:                               ;   in Loop: Header=BB24_13 Depth=1
	eor	x10, x8, x15
	eor	x11, x9, x13
	orr	x10, x10, x11
	cbnz	x10, LBB24_21
; %bb.19:                               ;   in Loop: Header=BB24_13 Depth=1
	ldp	x11, x10, [x0, #16]
	eor	x2, x10, x17
	eor	x3, x11, x16
	orr	x2, x3, x2
	cbnz	x2, LBB24_22
; %bb.20:                               ;   in Loop: Header=BB24_13 Depth=1
	ldp	x11, x10, [x0]
	cmp	x11, x12
	cset	w11, lo
	cmp	x10, x14
	cset	w10, lo
	csel	w6, w11, w10, eq
	mov	x10, x12
	mov	x11, x14
	mov	x2, x16
	mov	x3, x17
	mov	x4, x8
	mov	x5, x9
	tbnz	w6, #0, LBB24_11
	b	LBB24_12
LBB24_21:                               ;   in Loop: Header=BB24_13 Depth=1
	cmp	x8, x15
	cset	w10, hi
	cmp	x9, x13
	cset	w11, hi
	csel	w6, w10, w11, eq
	mov	x10, x12
	mov	x11, x14
	mov	x2, x16
	mov	x3, x17
	mov	x4, x15
	mov	x5, x13
	tbz	w6, #0, LBB24_11
	b	LBB24_12
LBB24_22:                               ;   in Loop: Header=BB24_13 Depth=1
	cmp	x11, x16
	cset	w11, hi
	cmp	x10, x17
	cset	w10, hi
	csel	w6, w11, w10, eq
	mov	x10, x12
	mov	x11, x14
	mov	x2, x16
	mov	x3, x17
	mov	x4, x8
	mov	x5, x9
	tbz	w6, #0, LBB24_11
	b	LBB24_12
LBB24_23:
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
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
	mov	x5, x8
	ldp	x8, x27, [x0]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	ldp	x12, x11, [x0, #16]
	ldp	x13, x14, [x0, #32]
	ldp	x19, x7, [x1, #32]
	eor	x8, x14, x7
	eor	x9, x13, x19
	orr	x8, x9, x8
	cbnz	x8, LBB26_3
; %bb.1:
	ldp	x22, x25, [x1, #16]
	eor	x8, x11, x25
	eor	x9, x12, x22
	orr	x8, x9, x8
	cbnz	x8, LBB26_5
; %bb.2:
	ldp	x9, x8, [x1]
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
	cmp	x10, x9
	cset	w9, lo
	cmp	x27, x8
	cset	w8, lo
	csel	w8, w9, w8, eq
	mov	x22, x12
	mov	x25, x11
	tbz	w8, #0, LBB26_6
	b	LBB26_8
LBB26_3:
	cmp	x13, x19
	cset	w8, ls
	cmp	x14, x7
	cset	w9, ls
	csel	w8, w8, w9, eq
	tbnz	w8, #0, LBB26_8
; %bb.4:
	ldp	x22, x25, [x1, #16]
	b	LBB26_6
LBB26_5:
	cmp	x12, x22
	cset	w8, ls
	cmp	x11, x25
	cset	w9, ls
	csel	w8, w8, w9, eq
	tbnz	w8, #0, LBB26_8
LBB26_6:
	mov	x30, x27
	ldp	x27, x26, [x1]
	orr	x8, x13, x14
	orr	x9, x12, x11
	cmp	x9, #0
	cset	w9, ne
	cmp	x8, #0
	mov	w8, #2
	csel	w9, w9, w8, eq
	add	x10, x0, w9, uxtw #4
	ldp	x15, x10, [x10]
	cmp	x10, #0
	cset	w16, ne
	lsl	w17, w16, #6
	tst	x17, #0x40
	csel	x10, x10, x15, ne
	clz	x10, x10
	mov	w15, #63
	mov	w17, #63
	bfi	w17, w16, #6, #1
	sub	w10, w17, w10
	add	w3, w10, w9, lsl #7
	orr	x9, x19, x7
	orr	x10, x22, x25
	cmp	x10, #0
	cset	w10, ne
	cmp	x9, #0
	csel	w8, w10, w8, eq
	add	x9, x1, w8, uxtw #4
	ldp	x10, x9, [x9]
	cmp	x9, #0
	cset	w16, ne
	lsl	w17, w16, #6
	tst	x17, #0x40
	csel	x9, x9, x10, ne
	clz	x9, x9
	bfi	w15, w16, #6, #1
	sub	w9, w15, w9
	add	w8, w9, w8, lsl #7
	sub	w9, w3, w8
	and	w2, w9, #0xffff
	cmp	w9, #128
	stp	x25, x22, [sp, #24]             ; 16-byte Folded Spill
	stp	x5, x27, [sp]                   ; 16-byte Folded Spill
	str	x26, [sp, #16]                  ; 8-byte Folded Spill
	b.hs	LBB26_9
; %bb.7:
	mov	x15, #0
	mov	x16, #0
	mov	x9, #0
	mov	x10, #0
	lsr	x17, x19, #1
	mvn	w0, w2
	lsr	x17, x17, x0
	lsl	x1, x7, x2
	orr	x17, x1, x17
	mov	w1, #128
	sub	w1, w1, w2
	mvn	w4, w1
	lsr	x5, x22, x1
	lsl	x6, x25, #1
	lsl	x6, x6, x4
	orr	x5, x6, x5
	lsl	x6, x26, #1
	lsl	x4, x6, x4
	lsr	x6, x27, x1
	orr	x4, x4, x6
	lsr	x6, x25, x1
	tst	x1, #0x40
	csel	x5, x6, x5, ne
	csel	x6, xzr, x6, ne
	lsr	x1, x26, x1
	csel	x4, x1, x4, ne
	csel	x1, xzr, x1, ne
	cmp	w3, w8
	lsl	x8, x19, x2
	csel	x3, xzr, x5, eq
	csel	x5, xzr, x6, eq
	csel	x4, xzr, x4, eq
	csel	x1, xzr, x1, eq
	tst	x2, #0x40
	csel	x17, x8, x17, ne
	csel	x8, xzr, x8, ne
	orr	x20, x17, x5
	orr	x21, x8, x3
	lsr	x8, x22, #1
	lsr	x8, x8, x0
	lsl	x17, x25, x2
	orr	x8, x17, x8
	lsl	x17, x22, x2
	csel	x8, x17, x8, ne
	csel	x17, xzr, x17, ne
	orr	x25, x1, x8
	orr	x22, x4, x17
	lsr	x8, x27, #1
	lsr	x8, x8, x0
	lsl	x17, x26, x2
	orr	x8, x17, x8
	lsl	x17, x27, x2
	csel	x23, x17, x8, ne
	csel	x8, xzr, x17, ne
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	mov	w8, #1
	lsl	x8, x8, x2
	csel	x17, x8, xzr, ne
	csel	x5, xzr, x8, ne
	b	LBB26_12
LBB26_8:
	mov	x30, #0
	mov	x8, #0
	mov	x9, #0
	mov	x4, #0
	mov	x6, #0
	mov	x28, #0
	b	LBB26_29
LBB26_9:
	and	w3, w2, #0x7f
	cmp	w2, #256
	b.hs	LBB26_11
; %bb.10:
	str	xzr, [sp, #64]                  ; 8-byte Folded Spill
	mov	x23, #0
	mov	x5, #0
	mov	x17, #0
	mov	x9, #0
	mov	x10, #0
	lsr	x15, x22, #1
	mvn	w16, w3
	lsr	x15, x15, x16
	lsl	x0, x25, x3
	orr	x15, x0, x15
	mov	w0, #128
	sub	w0, w0, w3
	mvn	w1, w0
	lsl	x2, x26, #1
	lsl	x1, x2, x1
	lsr	x2, x27, x0
	orr	x1, x1, x2
	lsl	x2, x22, x3
	tst	x0, #0x40
	lsr	x0, x26, x0
	csel	x1, x0, x1, ne
	csel	x0, xzr, x0, ne
	cmp	w3, #0
	csel	x1, xzr, x1, eq
	csel	x0, xzr, x0, eq
	tst	x3, #0x40
	csel	x15, x2, x15, ne
	csel	x2, xzr, x2, ne
	orr	x20, x0, x15
	orr	x21, x1, x2
	lsr	x15, x27, #1
	lsr	x15, x15, x16
	lsl	x16, x26, x3
	orr	x15, x16, x15
	lsl	x16, x27, x3
	csel	x25, x16, x15, ne
	csel	x22, xzr, x16, ne
	mov	w15, #1
	lsl	x15, x15, x3
	csel	x16, x15, xzr, ne
	csel	x15, xzr, x15, ne
	b	LBB26_12
LBB26_11:
	str	xzr, [sp, #64]                  ; 8-byte Folded Spill
	mov	x23, #0
	mov	x22, #0
	mov	x25, #0
	mov	x5, #0
	mov	x17, #0
	mov	x15, #0
	mov	x16, #0
	mvn	w9, w3
	lsr	x10, x27, #1
	lsr	x9, x10, x9
	lsl	x10, x26, x3
	orr	x9, x10, x9
	lsl	x10, x27, x3
	tst	x3, #0x40
	csel	x20, x10, x9, ne
	csel	x21, xzr, x10, ne
	mov	w9, #1
	lsl	x9, x9, x3
	csel	x10, x9, xzr, ne
	csel	x9, xzr, x9, ne
LBB26_12:
	mov	x4, #0
	mov	x8, #0
	stp	x7, xzr, [sp, #48]              ; 16-byte Folded Spill
	mov	x24, #0
	mov	x6, #0
	mov	x28, #0
	str	x19, [sp, #40]                  ; 8-byte Folded Spill
	mov	x27, x30
	b	LBB26_15
LBB26_13:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	w2, #0
	mov	x7, #0
	mov	x24, #0
	mov	x3, x5
	mov	x5, #0
	mov	x19, #0
	mov	x1, #0
	mov	x0, #0
LBB26_14:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	x26, x10
	ldr	x10, [sp, #56]                  ; 8-byte Folded Reload
	adds	x1, x1, x30
	adc	x0, x0, x8
	adds	x5, x5, x10
	adcs	x19, x19, x4
	adcs	x1, x1, xzr
	cinc	x0, x0, hs
	adds	x6, x7, x6
	adcs	x28, x24, x28
	cset	w7, hs
	adcs	x8, x5, xzr
	cinc	x10, x19, hs
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	mov	x24, x10
	orr	x5, x8, x10
	cmp	x5, #0
	cset	w5, eq
	and	w5, w7, w5
	adds	x4, x1, x5
	cinc	x8, x0, hs
	cmp	w2, #0
	csel	x0, x25, xzr, ne
	csel	x1, x22, xzr, ne
	csel	x2, x23, xzr, ne
	ldp	x10, x30, [sp, #64]             ; 16-byte Folded Reload
	csel	x5, x10, xzr, ne
	csel	x7, x20, xzr, ne
	csel	x19, x21, xzr, ne
	subs	x30, x30, x5
	sbc	x27, x27, x2
	subs	x12, x12, x1
	sbc	x11, x11, x0
	cmn	x12, x1
	adcs	xzr, x11, x0
	cset	w0, hs
	subs	x13, x13, x19
	sbc	x14, x14, x7
	subs	x13, x13, x0
	extr	x10, x23, x10, #1
	stp	x10, x30, [sp, #64]             ; 16-byte Folded Spill
	sbc	x14, x14, xzr
	cmn	x30, x5
	extr	x23, x22, x23, #1
	extr	x22, x25, x22, #1
	adcs	xzr, x27, x2
	cset	w0, hs
	extr	x25, x21, x25, #1
	extr	x21, x20, x21, #1
	subs	x12, x12, x0
	sbc	x11, x11, xzr
	extr	x5, x17, x3, #1
	extr	x17, x15, x17, #1
	and	x1, x12, x11
	cmn	x1, #1
	cset	w1, eq
	extr	x15, x16, x15, #1
	and	w0, w0, w1
	subs	x13, x13, x0
	sbc	x14, x14, xzr
	extr	x16, x9, x16, #1
	extr	x9, x26, x9, #1
	lsr	x20, x20, #1
	lsr	x10, x26, #1
	ldp	x19, x7, [sp, #40]              ; 16-byte Folded Reload
LBB26_15:                               ; =>This Inner Loop Header: Depth=1
	eor	x0, x13, x19
	eor	x1, x14, x7
	orr	x0, x0, x1
	cbnz	x0, LBB26_18
; %bb.16:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	x3, x5
	ldp	x5, x2, [sp, #24]               ; 16-byte Folded Reload
	eor	x0, x12, x2
	eor	x1, x11, x5
	orr	x0, x0, x1
	cbnz	x0, LBB26_19
; %bb.17:                               ;   in Loop: Header=BB26_15 Depth=1
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	cmp	x0, x1
	cset	w0, lo
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	cmp	x27, x1
	cset	w1, lo
	csel	w0, w0, w1, eq
	mov	x30, x4
	mov	x5, x3
	mov	x4, x24
	tbz	w0, #0, LBB26_20
	b	LBB26_26
LBB26_18:                               ;   in Loop: Header=BB26_15 Depth=1
	cmp	x13, x19
	cset	w0, hi
	cmp	x14, x7
	cset	w1, hi
	csel	w0, w0, w1, eq
	mov	x30, x4
	mov	x4, x24
	tbnz	w0, #0, LBB26_20
	b	LBB26_28
LBB26_19:                               ;   in Loop: Header=BB26_15 Depth=1
	cmp	x12, x2
	cset	w0, ls
	cmp	x11, x5
	cset	w1, ls
	csel	w0, w0, w1, eq
	mov	x30, x4
	mov	x5, x3
	mov	x4, x24
	tbnz	w0, #0, LBB26_27
LBB26_20:                               ;   in Loop: Header=BB26_15 Depth=1
	eor	x0, x13, x21
	eor	x1, x14, x20
	orr	x0, x0, x1
	cbnz	x0, LBB26_23
; %bb.21:                               ;   in Loop: Header=BB26_15 Depth=1
	eor	x0, x12, x22
	eor	x1, x11, x25
	orr	x0, x0, x1
	cbnz	x0, LBB26_24
; %bb.22:                               ;   in Loop: Header=BB26_15 Depth=1
	ldp	x1, x0, [sp, #64]               ; 16-byte Folded Reload
	cmp	x0, x1
	cset	w0, lo
	mov	x1, x27
	cmp	x27, x23
	cset	w1, lo
	csel	w0, w0, w1, eq
	tbnz	w0, #0, LBB26_13
	b	LBB26_25
LBB26_23:                               ;   in Loop: Header=BB26_15 Depth=1
	cmp	x13, x21
	cset	w0, hi
	cmp	x14, x20
	cset	w1, hi
	csel	w0, w0, w1, eq
	tbz	w0, #0, LBB26_13
	b	LBB26_25
LBB26_24:                               ;   in Loop: Header=BB26_15 Depth=1
	cmp	x12, x22
	cset	w0, hi
	cmp	x11, x25
	cset	w1, hi
	csel	w0, w0, w1, eq
	tbz	w0, #0, LBB26_13
LBB26_25:                               ;   in Loop: Header=BB26_15 Depth=1
	mov	w2, #1
	mov	x7, x5
	mov	x24, x17
	mov	x3, x5
	mov	x5, x15
	mov	x19, x16
	mov	x1, x9
	mov	x0, x10
	b	LBB26_14
LBB26_26:
	mov	x13, x19
	mov	x14, x7
	ldp	x11, x12, [sp, #24]             ; 16-byte Folded Reload
	b	LBB26_28
LBB26_27:
	mov	x13, x19
	mov	x14, x7
LBB26_28:
	ldr	x5, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
LBB26_29:
	stp	x6, x28, [x5]
	stp	x9, x4, [x5, #16]
	stp	x30, x8, [x5, #32]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	stp	x8, x27, [x5, #48]
	stp	x12, x11, [x5, #64]
	stp	x13, x14, [x5, #80]
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
	sub	sp, sp, #2368
	add	x28, sp, #496
Lloh48:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh49:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh50:
	ldr	x8, [x8]
	stur	x8, [x29, #-104]
	add	x8, sp, #1416
	add	x9, x8, #416
	str	x9, [sp, #80]                   ; 8-byte Folded Spill
Lloh51:
	adrp	x20, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh52:
	ldr	x20, [x20, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x19, x20, #64
	str	x19, [x28, #1336]
	add	x22, x8, #8
Lloh53:
	adrp	x10, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh54:
	ldr	x10, [x10, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x9, x10, [x10, #8]
	str	x9, [x28, #920]
	ldur	x9, [x9, #-24]
	str	x10, [x8, x9]
	ldr	x9, [x28, #920]
	ldur	x9, [x9, #-24]
	add	x21, x8, x9
Ltmp28:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp29:
; %bb.1:
	str	xzr, [x21, #136]
	mov	w8, #-1
	str	w8, [x21, #144]
	add	x8, x20, #24
	str	x8, [x28, #920]
	str	x19, [x28, #1336]
Ltmp31:
	mov	x0, x22
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp32:
; %bb.2:
Ltmp34:
Lloh55:
	adrp	x1, l_.str.10@PAGE
Lloh56:
	add	x1, x1, l_.str.10@PAGEOFF
	add	x0, sp, #1416
	mov	w2, #16
	str	x22, [sp, #88]                  ; 8-byte Folded Spill
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
	add	x9, sp, #1136
	add	x9, x9, #16
	mov	w10, #242
	mov	w11, #11664
LBB29_4:                                ; =>This Inner Loop Header: Depth=1
	stp	q0, q0, [x9]
	ldp	x13, x12, [x8]
	lsl	x14, x13, #1
	str	x14, [x28, #640]
	ldr	x14, [x28, #656]
	extr	x13, x12, x13, #63
	add	x12, x14, x12, lsr #63
	str	x12, [x28, #656]
	str	x13, [x28, #648]
	ldp	x14, x13, [x8, #16]
	ldr	x15, [x28, #664]
	adds	x12, x12, x14, lsl #1
	lsr	x14, x14, #63
	adc	x14, x14, x15
	str	x12, [x28, #656]
	lsr	x12, x13, #63
	ldr	x15, [x28, #672]
	adds	x13, x14, x13, lsl #1
	adc	x12, x15, x12
	str	x13, [x28, #664]
	ldp	x13, x14, [x8, #32]
	extr	x14, x14, x13, #63
	ldr	x15, [x28, #680]
	adds	x12, x12, x13, lsl #1
	adc	x13, x15, x14
	str	x12, [x28, #672]
	str	x13, [x28, #680]
	ldr	q1, [x28, #640]
	str	q1, [x8, #11664]
	ldr	q1, [x28, #656]
	str	q1, [x8, #11680]
	ldr	q1, [x28, #672]
	str	q1, [x8, #11696]
	add	x8, x8, x11
	subs	x10, x10, #1
	b.ne	LBB29_4
; %bb.5:
	mov	x8, #0
	add	x9, sp, #1136
	add	x9, x9, #16
Lloh65:
	adrp	x23, _p23@PAGE
Lloh66:
	add	x23, x23, _p23@PAGEOFF
	movi.2d	v0, #0000000000000000
	mov	w10, #3
	mov	w11, #11664
	mov	x12, x23
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
	str	x16, [x28, #640]
	umulh	x16, x15, x10
	add	x15, x15, x15, lsl #1
	ldr	x0, [x28, #656]
	adds	x15, x17, x15
	adc	x16, x0, x16
	str	x16, [x28, #656]
	str	x15, [x28, #648]
	ldr	x15, [x14, #11640]
	ldr	x17, [x14, #11632]
	umulh	x0, x17, x10
	add	x17, x17, x17, lsl #1
	ldr	x1, [x28, #664]
	adds	x16, x17, x16
	adc	x17, x0, x1
	str	x16, [x28, #656]
	umulh	x16, x15, x10
	add	x15, x15, x15, lsl #1
	ldr	x0, [x28, #672]
	adds	x15, x17, x15
	adc	x16, x0, x16
	str	x15, [x28, #664]
	ldr	x15, [x14, #11656]
	ldr	x17, [x14, #11648]
	umulh	x0, x17, x10
	add	x15, x15, x15, lsl #1
	add	x15, x0, x15
	add	x17, x17, x17, lsl #1
	ldr	x0, [x28, #680]
	adds	x16, x16, x17
	adc	x15, x0, x15
	str	x16, [x28, #672]
	str	x15, [x28, #680]
	ldr	q1, [x28, #640]
	str	q1, [x14, #11664]
	ldr	q1, [x28, #656]
	str	q1, [x14, #11680]
	ldr	q1, [x28, #672]
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
	madd	x14, x10, x11, x23
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
	add	x9, sp, #848
	add	x11, x9, #16
Lloh71:
	adrp	x10, _dy@PAGE
Lloh72:
	add	x10, x10, _dy@PAGEOFF
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x10, #64]
	add	x9, sp, #2080
	stp	q0, q0, [x10, #32]
	add	x30, x9, #16
	mov	w27, #48
	mov	w4, #2
	add	x5, sp, #1136
	stp	q0, q0, [x10]
	str	x23, [sp, #136]                 ; 8-byte Folded Spill
	stp	x30, x11, [sp, #112]            ; 16-byte Folded Spill
LBB29_14:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_17 Depth 2
	mov	x6, #0
	mov	x26, #0
	and	x8, x8, #0xffff
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	madd	x8, x8, x27, x23
	ldr	q3, [x8, #32]
	ldp	q2, q1, [x8]
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	stp	q1, q3, [x28, #656]
	str	q2, [x28, #640]
	ldr	x9, [x28, #680]
	ldr	x8, [x28, #672]
	orr	x12, x8, x9
	ldr	x11, [x28, #664]
	ldr	x10, [x28, #656]
	orr	x13, x10, x11
	cmp	x13, #0
	cset	w13, ne
	cmp	x12, #0
	csel	w12, w13, w4, eq
	add	x13, x5, w12, uxtw #4
	ldp	x14, x13, [x13]
	cmp	x13, #0
	cset	w15, ne
	lsl	w16, w15, #6
	tst	x16, #0x40
	csel	x13, x13, x14, ne
	mov	w14, #63
	bfi	w14, w15, #6, #1
	clz	x13, x13
	sub	w13, w14, w13
	add	w12, w13, w12, lsl #7
	and	w13, w12, #0xffff
	str	w13, [sp, #144]                 ; 4-byte Folded Spill
	and	x12, x12, #0xffff
	str	x12, [sp, #96]                  ; 8-byte Folded Spill
	mov	w7, #128
	b	LBB29_17
LBB29_15:                               ;   in Loop: Header=BB29_17 Depth=2
	ldr	w7, [sp, #308]                  ; 4-byte Folded Reload
	mov	w8, w7
	lsr	x9, x13, x26
	mvn	w13, w26
	lsl	x14, x15, #1
	lsl	x14, x14, x13
	orr	x9, x14, x9
	lsr	x14, x15, x26
	mvn	w15, w7
	lsr	x16, x3, #1
	lsr	x16, x16, x15
	lsl	x17, x2, x8
	orr	x16, x17, x16
	lsl	x17, x3, x8
	tst	x8, #0x40
	csel	x16, x17, x16, ne
	csel	x17, xzr, x17, ne
	lsr	x11, x11, x15
	lsl	x15, x1, x8
	orr	x11, x15, x11
	lsl	x8, x0, x8
	csel	x11, x8, x11, ne
	csel	x8, xzr, x8, ne
	ldr	x6, [sp, #312]                  ; 8-byte Folded Reload
	cmp	x6, #0
	csel	x15, xzr, x16, eq
	csel	x16, xzr, x17, eq
	csel	x11, xzr, x11, eq
	csel	x8, xzr, x8, eq
	tst	x26, #0x40
	csel	x9, x14, x9, ne
	csel	x14, xzr, x14, ne
	orr	x9, x9, x16
	orr	x14, x14, x15
	str	x14, [x28, #648]
	str	x9, [x28, #640]
	lsr	x9, x3, x26
	lsl	x10, x10, x13
	orr	x9, x10, x9
	lsr	x10, x2, x26
	csel	x9, x10, x9, ne
	csel	x14, xzr, x10, ne
	orr	x10, x8, x9
	orr	x11, x11, x14
	str	x11, [x28, #664]
	str	x10, [x28, #656]
	lsr	x8, x0, x26
	lsl	x9, x12, x13
	orr	x8, x9, x8
	lsr	x9, x1, x26
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
Lloh73:
	adrp	x23, _p23@PAGE
Lloh74:
	add	x23, x23, _p23@PAGEOFF
	mov	w27, #48
	mov	w4, #2
	add	x5, sp, #1136
LBB29_16:                               ;   in Loop: Header=BB29_17 Depth=2
	str	x8, [x28, #672]
	str	x9, [x28, #680]
	add	x26, x26, #1
	mov	w12, #11664
	add	x6, x6, x12
	sub	w7, w7, #1
	cmp	x26, #243
	b.eq	LBB29_40
LBB29_17:                               ;   Parent Loop BB29_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lsr	x12, x10, #1
	cmp	x26, #128
	b.hs	LBB29_19
; %bb.18:                               ;   in Loop: Header=BB29_17 Depth=2
	lsl	x9, x9, x26
	mvn	w13, w26
	lsr	x14, x8, #1
	lsr	x14, x14, x13
	orr	x9, x9, x14
	lsl	x8, x8, x26
	mov	w14, w7
	lsr	x15, x10, x14
	mvn	w16, w7
	lsl	x17, x11, #1
	lsl	x17, x17, x16
	orr	x15, x17, x15
	lsr	x17, x11, x14
	tst	x14, #0x40
	csel	x15, x17, x15, ne
	csel	x17, xzr, x17, ne
	ldr	x0, [x28, #648]
	ldr	x1, [x28, #640]
	lsr	x2, x1, x14
	lsl	x3, x0, #1
	lsl	x16, x3, x16
	orr	x16, x16, x2
	lsr	x14, x0, x14
	csel	x16, x14, x16, ne
	csel	x14, xzr, x14, ne
	cmp	x6, #0
	csel	x15, xzr, x15, eq
	csel	x17, xzr, x17, eq
	csel	x16, xzr, x16, eq
	csel	x14, xzr, x14, eq
	tst	x26, #0x40
	csel	x9, x8, x9, ne
	csel	x8, xzr, x8, ne
	orr	x15, x15, x8
	orr	x17, x17, x9
	str	x17, [x28, #680]
	str	x15, [x28, #672]
	lsl	x8, x11, x26
	lsr	x9, x12, x13
	orr	x8, x8, x9
	lsl	x9, x10, x26
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	orr	x3, x16, x9
	orr	x2, x14, x8
	str	x2, [x28, #664]
	str	x3, [x28, #656]
	lsl	x8, x0, x26
	mov	x0, x15
	lsr	x9, x1, #1
	lsr	x9, x9, x13
	orr	x8, x8, x9
	lsl	x9, x1, x26
	csel	x20, x9, x8, ne
	csel	x21, xzr, x9, ne
	b	LBB29_20
LBB29_19:                               ;   in Loop: Header=BB29_17 Depth=2
	mov	x21, #0
	mov	x20, #0
	ldr	x8, [x28, #640]
	ldr	x9, [x28, #648]
	ands	w13, w26, #0x7f
	mov	w14, #128
	sub	w13, w14, w13
	mvn	w14, w13
	lsr	x15, x9, x13
	tst	x13, #0x40
	lsl	x16, x9, #1
	lsl	x14, x16, x14
	csel	x16, xzr, x15, ne
	lsr	x13, x8, x13
	orr	x13, x14, x13
	csel	x13, x15, x13, ne
	ands	w14, w26, #0x7f
	mvn	w15, w14
	lsr	x12, x12, x15
	lsl	x11, x11, x14
	orr	x11, x11, x12
	lsl	x10, x10, x14
	csel	x12, xzr, x13, eq
	csel	x13, xzr, x16, eq
	tst	x14, #0x40
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x17, x13, x11
	orr	x0, x12, x10
	str	x17, [x28, #680]
	str	x0, [x28, #672]
	lsr	x10, x8, #1
	lsr	x10, x10, x15
	lsl	x9, x9, x14
	orr	x9, x9, x10
	lsl	x8, x8, x14
	csel	x2, x8, x9, ne
	csel	x3, xzr, x8, ne
	str	x3, [x28, #656]
	str	x2, [x28, #664]
LBB29_20:                               ;   in Loop: Header=BB29_17 Depth=2
	str	x21, [x28, #640]
	str	x20, [x28, #648]
	orr	x8, x0, x17
	orr	x9, x3, x2
	cmp	x9, #0
	cset	w9, ne
	cmp	x8, #0
	csel	w9, w9, w4, eq
	add	x10, x5, w9, uxtw #4
	ldp	x8, x10, [x10]
	cmp	x10, #0
	cset	w11, ne
	lsl	w12, w11, #6
	tst	x12, #0x40
	csel	x13, x10, x8, ne
	clz	x13, x13
	mov	w14, #63
	bfi	w14, w11, #6, #1
	lsl	w25, w9, #7
	sub	w9, w14, w13
	add	w24, w25, w9
	and	w11, w24, #0xffff
	ldr	w13, [sp, #144]                 ; 4-byte Folded Reload
	sub	w11, w11, w13
	cmp	w26, w11
	b.eq	LBB29_22
; %bb.21:                               ;   in Loop: Header=BB29_17 Depth=2
	ldr	x11, [sp, #96]                  ; 8-byte Folded Reload
	add	w11, w11, w26
	cmp	w11, #255
	b.ls	LBB29_61
LBB29_22:                               ;   in Loop: Header=BB29_17 Depth=2
	orr	w13, w12, #0x20
	lsr	x14, x8, x13
	mvn	w11, w12
	and	x15, x11, #0x1f
	lsl	x11, x10, #1
	lsl	x15, x11, x15
	orr	x14, x15, x14
	lsr	x15, x10, x13
	tst	x13, #0x40
	csel	x13, x15, x14, ne
	csel	x14, xzr, x15, ne
	orr	x13, x13, x14
	cmp	x13, #0
	cset	w13, ne
	orr	w12, w12, w13, lsl #5
	orr	w13, w12, #0x10
	lsr	x14, x10, x13
	tst	x13, #0x40
	csel	x15, xzr, x14, ne
	lsr	x16, x8, x13
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x11, x13
	orr	x13, x13, x16
	csel	x13, x14, x13, ne
	orr	x13, x13, x15
	cmp	x13, #0
	cset	w13, ne
	orr	w12, w12, w13, lsl #4
	orr	w13, w12, #0x8
	lsr	x14, x10, x13
	tst	x13, #0x40
	csel	x15, xzr, x14, ne
	lsr	x16, x8, x13
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x11, x13
	orr	x13, x13, x16
	csel	x13, x14, x13, ne
	orr	x13, x13, x15
	cmp	x13, #0
	cset	w13, ne
	orr	w12, w12, w13, lsl #3
	orr	w13, w12, #0x4
	lsr	x14, x10, x13
	tst	x13, #0x40
	csel	x15, xzr, x14, ne
	lsr	x16, x8, x13
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x11, x13
	orr	x13, x13, x16
	csel	x13, x14, x13, ne
	orr	x13, x13, x15
	cmp	x13, #0
	cset	w13, ne
	orr	w12, w12, w13, lsl #2
	orr	w13, w12, #0x2
	lsr	x14, x10, x13
	tst	x13, #0x40
	csel	x15, xzr, x14, ne
	lsr	x16, x8, x13
	mvn	x13, x13
	and	x13, x13, #0x3f
	lsl	x13, x11, x13
	orr	x13, x13, x16
	csel	x13, x14, x13, ne
	orr	x13, x13, x15
	cmp	x13, #0
	cset	w13, ne
	orr	w12, w12, w13, lsl #1
	orr	w13, w12, #0x1
	lsr	x10, x10, x13
	tst	x13, #0x40
	csel	x14, xzr, x10, ne
	lsr	x8, x8, x13
	mvn	w13, w12
	and	x13, x13, #0x3e
	lsl	x11, x11, x13
	orr	x8, x11, x8
	csel	x8, x10, x8, ne
	orr	x8, x8, x14
	cmp	x8, #0
	cset	w8, ne
	orr	w19, w12, w8
	and	w8, w19, #0xffff
	cmp	w8, w9, uxth
	b.ne	LBB29_75
; %bb.23:                               ;   in Loop: Header=BB29_17 Depth=2
	ldr	x10, [sp, #136]                 ; 8-byte Folded Reload
	add	x8, x10, x6
	mov	w9, #11696
	add	x8, x8, x9
	add	x24, x10, x6
	prfm	pldl1keep, [x8]
	ldp	x8, x9, [x24, #32]
	eor	x9, x17, x9
	eor	x8, x0, x8
	orr	x8, x8, x9
	cbnz	x8, LBB29_89
; %bb.24:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x24, #16]
	eor	x9, x3, x9
	eor	x8, x2, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_89
; %bb.25:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x24]
	eor	x9, x21, x9
	eor	x8, x20, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_89
; %bb.26:                               ;   in Loop: Header=BB29_17 Depth=2
	stp	x3, x2, [sp, #352]              ; 16-byte Folded Spill
	stp	x17, x0, [sp, #336]             ; 16-byte Folded Spill
	str	w7, [sp, #308]                  ; 4-byte Folded Spill
	add	x8, x23, x6
	mov	w9, #11664
	add	x8, x8, x9
	str	x6, [sp, #312]                  ; 8-byte Folded Spill
	add	x24, x23, x6
	ldp	x9, x6, [sp, #120]              ; 16-byte Folded Reload
	stp	q0, q0, [x9]
	prfm	pldl1keep, [x8]
	ldp	x11, x10, [x24]
	ldp	x9, x8, [x6]
	umulh	x12, x9, x11
	mul	x13, x9, x11
	umulh	x14, x9, x10
	mul	x15, x9, x10
	umulh	x16, x8, x11
	mul	x17, x8, x11
	adds	x12, x12, x17
	ldp	x17, x0, [x28, #368]
	adc	x16, x17, x16
	adds	x12, x12, x15
	cinc	x15, x16, hs
	stp	x13, x12, [x28, #352]
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
	ldp	x3, x4, [x28, #384]
	adc	x2, x3, x2
	adds	x16, x16, x1
	cinc	x1, x2, hs
	stp	x17, x16, [x28, #368]
	umulh	x2, x14, x10
	mul	x3, x14, x10
	ldp	x6, x5, [x6, #32]
	umulh	x7, x6, x11
	madd	x10, x6, x10, x7
	madd	x10, x5, x11, x10
	mul	x11, x6, x11
	ldp	x6, x5, [x24, #16]
	umulh	x7, x6, x9
	mul	x19, x5, x9
	stp	x21, x20, [sp, #368]            ; 16-byte Folded Spill
	umulh	x20, x6, x8
	mul	x21, x6, x8
	adds	x19, x19, x21
	cinc	x20, x20, hs
	adds	x7, x19, x7
	cinc	x19, x20, hs
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
	adds	x10, x10, x13
	adcs	x11, x7, x12
	stp	x10, x11, [x28, #368]
	ldp	x16, x13, [x24, #32]
	mul	x12, x16, x9
	adcs	x14, x14, xzr
	cinc	x15, x15, hs
	adds	x12, x14, x12
	umulh	x14, x16, x9
	madd	x8, x16, x8, x14
	madd	x8, x13, x9, x8
	adc	x8, x15, x8
	stp	x1, x8, [x28, #384]
	str	x12, [x28, #384]
	ldp	x9, x13, [x28, #352]
	ldr	x14, [sp, #376]                 ; 8-byte Folded Reload
	eor	x13, x14, x13
	ldr	x14, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x14, x9
	orr	x9, x9, x13
	cbnz	x9, LBB29_102
; %bb.27:                               ;   in Loop: Header=BB29_17 Depth=2
	ldr	x9, [sp, #352]                  ; 8-byte Folded Reload
	eor	x9, x9, x10
	ldr	x10, [sp, #360]                 ; 8-byte Folded Reload
	eor	x10, x10, x11
	orr	x9, x9, x10
	cbnz	x9, LBB29_102
; %bb.28:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x10, x9, [sp, #336]             ; 16-byte Folded Reload
	eor	x9, x9, x12
	eor	x8, x10, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_102
; %bb.29:                               ;   in Loop: Header=BB29_17 Depth=2
	ubfx	x8, x26, #1, #31
	mov	w9, #11664
	umaddl	x22, w8, w9, x23
	add	w8, w26, #1
	lsr	w8, w8, #1
	umaddl	x8, w8, w9, x23
	ldr	x9, [sp, #152]                  ; 8-byte Folded Reload
	madd	x16, x9, x27, x8
	stp	q0, q0, [x30]
	ldp	x19, x8, [x22]
	ldp	x20, x25, [x16]
	umulh	x10, x20, x19
	umulh	x12, x20, x8
	mul	x13, x20, x8
	umulh	x11, x25, x19
	mul	x14, x25, x19
	ldr	x9, [x28, #1600]
	stp	x14, x13, [sp, #264]            ; 16-byte Folded Spill
	adds	x15, x13, x14
	stp	x12, x11, [sp, #288]            ; 16-byte Folded Spill
	cinc	x14, x11, hs
	stp	x10, x26, [sp, #320]            ; 16-byte Folded Spill
	adds	x10, x15, x10
	adc	x9, x14, x9
	str	x10, [x28, #1592]
	umulh	x11, x25, x8
	mul	x10, x25, x8
	str	x10, [sp, #240]                 ; 8-byte Folded Spill
	adds	x10, x12, x10
	str	x11, [sp, #256]                 ; 8-byte Folded Spill
	cinc	x11, x11, hs
	ldr	x12, [x28, #1608]
	adds	x2, x10, x9
	adc	x3, x11, x12
	ldp	x24, x4, [x16, #16]
	umulh	x1, x24, x19
	mul	x12, x24, x8
	umulh	x13, x4, x19
	mul	x17, x4, x19
	ldr	x9, [x28, #1616]
	str	x12, [sp, #248]                 ; 8-byte Folded Spill
	str	x17, [sp, #232]                 ; 8-byte Folded Spill
	adds	x12, x12, x17
	str	x13, [sp, #280]                 ; 8-byte Folded Spill
	cinc	x0, x13, hs
	ldp	x17, x13, [x16, #32]
	str	x16, [sp, #104]                 ; 8-byte Folded Spill
	umulh	x16, x17, x19
	madd	x16, x17, x8, x16
	madd	x7, x13, x19, x16
	mov	x5, x1
	adds	x6, x12, x1
	adc	x21, x0, x9
	str	x6, [x28, #1608]
	str	x21, [x28, #1616]
	umulh	x13, x24, x8
	umulh	x9, x4, x8
	mul	x8, x4, x8
	mul	x1, x17, x19
	stp	x13, x8, [sp, #184]             ; 16-byte Folded Spill
	adds	x13, x13, x8
	stp	x1, x9, [sp, #200]              ; 16-byte Folded Spill
	cinc	x27, x9, hs
	ldp	x9, x8, [x22, #16]
	umulh	x17, x9, x20
	mul	x23, x8, x20
	umulh	x16, x9, x25
	mul	x26, x9, x25
	stp	x26, x23, [sp, #160]            ; 16-byte Folded Spill
	adds	x23, x23, x26
	stp	x16, x7, [sp, #216]             ; 16-byte Folded Spill
	cinc	x16, x16, hs
	str	x17, [sp, #176]                 ; 8-byte Folded Spill
	adds	x17, x23, x17
	cinc	x16, x16, hs
	adds	x23, x1, x13
	adc	x13, x7, x27
	adds	x1, x23, x21
	ldr	x21, [x28, #1624]
	adc	x30, x13, x21
	mul	x21, x24, x19
	adds	x26, x21, x2
	adcs	x7, x6, x3
	umulh	x2, x9, x24
	madd	x2, x9, x4, x2
	madd	x2, x8, x24, x2
	umulh	x27, x8, x20
	umulh	x6, x8, x25
	mul	x3, x8, x25
	mul	x24, x9, x24
	adcs	x8, x1, xzr
	cinc	x1, x30, hs
	adds	x8, x8, x24
	adc	x1, x1, x2
	adds	x8, x8, x3
	adc	x1, x1, x6
	adds	x8, x8, x27
	cinc	x1, x1, hs
	adds	x8, x8, x16
	mul	x4, x9, x20
	cinc	x9, x1, hs
	adds	x16, x4, x26
	adcs	x1, x17, x7
	str	x21, [x28, #1600]
	str	x16, [x28, #1600]
	str	x1, [x28, #1608]
	ldp	x16, x7, [x22, #32]
	umulh	x1, x16, x20
	madd	x1, x16, x25, x1
	madd	x25, x7, x20, x1
	mul	x19, x20, x19
	mul	x20, x16, x20
	adcs	x8, x8, xzr
	cinc	x9, x9, hs
	adds	x8, x8, x20
	str	x8, [x28, #1616]
	adc	x8, x9, x25
	str	x8, [x28, #1624]
	str	x19, [x28, #1584]
	ldr	q3, [x28, #1584]
	ldr	q2, [x28, #1616]
	str	q2, [x28, #384]
	ldp	x9, x8, [x28, #384]
	ldp	x1, x16, [sp, #336]             ; 16-byte Folded Reload
	eor	x8, x1, x8
	eor	x9, x16, x9
	orr	x8, x9, x8
	ldr	q1, [x28, #1600]
	stp	q3, q1, [x28, #352]
	cbnz	x8, LBB29_118
; %bb.30:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x28, #368]
	ldr	x16, [sp, #352]                 ; 8-byte Folded Reload
	eor	x9, x16, x9
	ldr	x16, [sp, #360]                 ; 8-byte Folded Reload
	eor	x8, x16, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_118
; %bb.31:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x28, #352]
	ldr	x16, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x16, x9
	ldr	x16, [sp, #376]                 ; 8-byte Folded Reload
	eor	x8, x16, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_118
; %bb.32:                               ;   in Loop: Header=BB29_17 Depth=2
	ldr	x30, [sp, #112]                 ; 8-byte Folded Reload
	stp	q0, q0, [x30]
	str	x19, [x28, #1584]
	ldr	x8, [x28, #1600]
	ldr	x16, [sp, #320]                 ; 8-byte Folded Reload
	adds	x9, x15, x16
	adc	x8, x14, x8
	str	x8, [x28, #1600]
	str	x9, [x28, #1592]
	ldr	x9, [x28, #1608]
	adds	x8, x8, x10
	adc	x9, x9, x11
	ldr	x10, [x28, #1616]
	adds	x11, x12, x5
	adc	x10, x0, x10
	ldr	x12, [x28, #1624]
	adds	x10, x23, x10
	adc	x12, x13, x12
	adds	x8, x21, x8
	adcs	x9, x11, x9
	str	x8, [x28, #1600]
	str	x9, [x28, #1608]
	adcs	x8, x10, xzr
	cinc	x9, x12, hs
	str	x8, [x28, #1616]
	str	x9, [x28, #1624]
	ldr	q1, [x28, #1584]
	ldr	q2, [x28, #1600]
	ldr	q3, [x28, #1616]
	stp	q2, q3, [x28, #368]
	str	q1, [x28, #352]
	ldp	x8, x9, [x28, #384]
	eor	x9, x1, x9
	ldr	x0, [sp, #344]                  ; 8-byte Folded Reload
	eor	x8, x0, x8
	orr	x8, x8, x9
	cbnz	x8, LBB29_134
; %bb.33:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x28, #368]
	ldr	x10, [sp, #352]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	ldr	x10, [sp, #360]                 ; 8-byte Folded Reload
	eor	x8, x10, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_134
; %bb.34:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x28, #352]
	ldr	x10, [sp, #368]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	ldr	x10, [sp, #376]                 ; 8-byte Folded Reload
	eor	x8, x10, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_134
; %bb.35:                               ;   in Loop: Header=BB29_17 Depth=2
	mov	x15, x16
	str	x19, [x28, #1584]
	ldp	x9, x8, [sp, #264]              ; 16-byte Folded Reload
	adds	x8, x9, x8
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	cinc	x9, x9, hs
	adds	x8, x8, x16
	stp	q0, q0, [x30]
	ldr	x10, [x28, #1600]
	adc	x9, x9, x10
	str	x8, [x28, #1592]
	ldr	x8, [sp, #296]                  ; 8-byte Folded Reload
	ldp	x13, x10, [sp, #232]            ; 16-byte Folded Reload
	adds	x8, x8, x10
	str	x9, [x28, #1600]
	ldr	x10, [sp, #256]                 ; 8-byte Folded Reload
	cinc	x10, x10, hs
	adds	x8, x8, x9
	ldr	x9, [x28, #1608]
	adc	x9, x10, x9
	ldp	x11, x10, [sp, #160]            ; 16-byte Folded Reload
	adds	x10, x11, x10
	cinc	x11, x27, hs
	ldr	x12, [sp, #176]                 ; 8-byte Folded Reload
	adds	x10, x10, x12
	ldr	x12, [x28, #1616]
	adc	x11, x11, x12
	ldr	x12, [sp, #248]                 ; 8-byte Folded Reload
	adds	x12, x13, x12
	ldp	x13, x15, [sp, #184]            ; 16-byte Folded Reload
	cinc	x13, x13, hs
	adds	x12, x12, x5
	cinc	x13, x13, hs
	ldr	x14, [sp, #280]                 ; 8-byte Folded Reload
	adds	x14, x14, x15
	ldp	x16, x15, [sp, #200]            ; 16-byte Folded Reload
	cinc	x15, x15, hs
	adds	x14, x14, x16
	ldr	x16, [sp, #224]                 ; 8-byte Folded Reload
	adc	x15, x15, x16
	adds	x14, x14, x24
	adc	x15, x15, x2
	adds	x14, x14, x3
	adc	x15, x15, x6
	ldr	x16, [sp, #216]                 ; 8-byte Folded Reload
	adds	x14, x14, x16
	cinc	x15, x15, hs
	adds	x14, x14, x20
	adc	x15, x15, x25
	str	x11, [x28, #1616]
	adds	x11, x14, x11
	ldr	x14, [x28, #1624]
	adc	x14, x15, x14
	str	x4, [x28, #1600]
	adds	x8, x4, x8
	str	x10, [x28, #1608]
	adcs	x9, x10, x9
	adcs	x10, x11, xzr
	cinc	x11, x14, hs
	adds	x10, x10, x13
	cinc	x11, x11, hs
	adds	x8, x21, x8
	adcs	x9, x12, x9
	str	x8, [x28, #1600]
	str	x9, [x28, #1608]
	adcs	x8, x10, xzr
	cinc	x9, x11, hs
	str	x8, [x28, #1616]
	str	x9, [x28, #1624]
	ldr	q3, [x28, #1584]
	ldr	q2, [x28, #1616]
	str	q2, [x28, #384]
	ldp	x8, x9, [x28, #384]
	eor	x9, x1, x9
	eor	x8, x0, x8
	orr	x8, x8, x9
	ldr	q1, [x28, #1600]
	stp	q3, q1, [x28, #352]
	ldp	x3, x2, [sp, #352]              ; 16-byte Folded Reload
	ldp	x13, x15, [sp, #368]            ; 16-byte Folded Reload
	cbnz	x8, LBB29_150
; %bb.36:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x28, #368]
	eor	x9, x3, x9
	eor	x8, x2, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_150
; %bb.37:                               ;   in Loop: Header=BB29_17 Depth=2
	ldp	x9, x8, [x28, #352]
	eor	x9, x13, x9
	eor	x8, x15, x8
	orr	x8, x9, x8
	cbnz	x8, LBB29_150
; %bb.38:                               ;   in Loop: Header=BB29_17 Depth=2
	lsr	x11, x0, #1
	lsl	x10, x2, #1
	lsl	x12, x1, #1
	ldr	x26, [sp, #328]                 ; 8-byte Folded Reload
	cmp	x26, #128
	b.lo	LBB29_15
; %bb.39:                               ;   in Loop: Header=BB29_17 Depth=2
	mov	x8, #0
	mov	x9, #0
	ands	w13, w26, #0x7f
	mov	w14, #128
	sub	w13, w14, w13
	mvn	w14, w13
	lsl	x15, x0, x13
	tst	x13, #0x40
	lsr	x11, x11, x14
	csel	x14, xzr, x15, ne
	lsl	x13, x1, x13
	orr	x11, x13, x11
	csel	x11, x15, x11, ne
	ands	w13, w26, #0x7f
	lsr	x15, x3, x13
	mvn	w16, w13
	lsl	x10, x10, x16
	orr	x10, x10, x15
	lsr	x15, x2, x13
	csel	x11, xzr, x11, eq
	csel	x14, xzr, x14, eq
	tst	x13, #0x40
	csel	x10, x15, x10, ne
	csel	x15, xzr, x15, ne
	orr	x10, x14, x10
	orr	x11, x11, x15
	str	x10, [x28, #640]
	str	x11, [x28, #648]
	lsr	x10, x0, x13
	lsl	x11, x12, x16
	orr	x10, x11, x10
	lsr	x11, x1, x13
	csel	x10, x11, x10, ne
	csel	x11, xzr, x11, ne
	str	x11, [x28, #664]
	str	x10, [x28, #656]
Lloh75:
	adrp	x23, _p23@PAGE
Lloh76:
	add	x23, x23, _p23@PAGEOFF
	mov	w27, #48
	mov	w4, #2
	add	x5, sp, #1136
	ldr	x6, [sp, #312]                  ; 8-byte Folded Reload
	ldr	w7, [sp, #308]                  ; 4-byte Folded Reload
	b	LBB29_16
LBB29_40:                               ;   in Loop: Header=BB29_14 Depth=1
	ldr	x9, [sp, #152]                  ; 8-byte Folded Reload
	add	w8, w9, #1
	ldr	x10, [sp, #136]                 ; 8-byte Folded Reload
	add	x10, x10, #48
	str	x10, [sp, #136]                 ; 8-byte Folded Spill
	cmp	w9, #242
	b.lo	LBB29_14
; %bb.41:
	mov	x21, #0
	add	x8, sp, #1136
	add	x9, x8, #128
	add	x8, x8, #256
	stp	x9, x8, [sp, #360]              ; 16-byte Folded Spill
	add	x8, sp, #688
	add	x24, x8, #16
Lloh77:
	adrp	x9, _dl@PAGE
Lloh78:
	add	x9, x9, _dl@PAGEOFF
	movi.2d	v0, #0000000000000000
	mov	w10, #48
	mov	w12, #11664
Lloh79:
	adrp	x13, _dz@PAGE
Lloh80:
	add	x13, x13, _dz@PAGEOFF
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
LBB29_42:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_44 Depth 2
                                        ;       Child Loop BB29_45 Depth 3
                                        ;       Child Loop BB29_50 Depth 3
	mov	x27, #0
	mov	w11, #393216
	madd	x14, x21, x11, x13
	stp	q0, q0, [x14, #16]
	add	x15, x9, x21, lsl #14
	str	q0, [x14]
	strh	wzr, [x15]
	add	w16, w21, #1
	b	LBB29_44
LBB29_43:                               ;   in Loop: Header=BB29_44 Depth=2
	ldr	x9, [sp, #376]                  ; 8-byte Folded Reload
	mov	x27, x9
	cmp	x9, #12
	b.eq	LBB29_54
LBB29_44:                               ;   Parent Loop BB29_42 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB29_45 Depth 3
                                        ;       Child Loop BB29_50 Depth 3
	mov	x11, x8
	mov	w1, #0
	add	x8, x27, #1
	str	x8, [sp, #376]                  ; 8-byte Folded Spill
Lloh81:
	adrp	x8, _p2@PAGE
Lloh82:
	add	x8, x8, _p2@PAGEOFF
	add	x8, x8, x27, lsl #1
	ldrh	w9, [x8, #2]
	sub	w9, w9, #1
	and	w0, w9, #0xffff
	ldrh	w8, [x8]
LBB29_45:                               ;   Parent Loop BB29_42 Depth=1
                                        ;     Parent Loop BB29_44 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x9, x8, w1, sxtw
	madd	x13, x9, x10, x14
	add	w2, w1, w0
	umaddl	x3, w2, w10, x14
	ldp	q1, q2, [x13, #-48]
	ldur	q3, [x13, #-16]
	stp	q2, q3, [x3, #16]
	str	q1, [x3]
	add	x9, x15, x9, lsl #1
	ldurh	w9, [x9, #-2]
	strh	w9, [x15, w2, uxtw  #1]
	add	w9, w1, #1
	and	w1, w9, #0xffff
	cmp	w1, w0
	b.ls	LBB29_45
; %bb.46:                               ;   in Loop: Header=BB29_44 Depth=2
	mov	w23, #0
	mov	w9, #128
	sub	x1, x9, x27
	sub	w2, w8, #1
	mov	x8, x11
	b	LBB29_50
LBB29_47:                               ;   in Loop: Header=BB29_50 Depth=3
	sub	w8, w21, w4
Lloh83:
	adrp	x9, _p23@PAGE
Lloh84:
	add	x9, x9, _p23@PAGEOFF
	madd	x9, x27, x12, x9
	smaddl	x13, w8, w10, x9
	ldp	x26, x20, [x13]
	ldp	x8, x30, [x13, #16]
	ldp	x13, x9, [x13, #32]
LBB29_48:                               ;   in Loop: Header=BB29_50 Depth=3
	ldp	x17, x22, [x25, #32]
	ldr	x11, [x25, #24]
	and	x19, x19, #0x1
	adds	x13, x13, x17
	adc	x9, x9, x22
	adds	x8, x8, x7
	adcs	x11, x30, x11
	adcs	x13, x13, xzr
	cinc	x9, x9, hs
	adds	x17, x26, x6
	adcs	x5, x20, x5
	cset	w6, hs
	stp	x17, x5, [x25]
	adcs	x8, x8, xzr
	cinc	x11, x11, hs
	stp	x8, x11, [x25, #16]
	orr	x8, x8, x11
	cmp	x8, #0
	cset	w8, eq
	and	w8, w6, w8
	adds	x8, x13, x8
	cinc	x9, x9, hs
	stp	x8, x9, [x25, #32]
	add	w8, w4, w19
	strh	w8, [x15, x3, lsl  #1]
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
LBB29_49:                               ;   in Loop: Header=BB29_50 Depth=3
	add	w23, w23, #1
	cmp	w0, w23, uxth
	b.lo	LBB29_43
LBB29_50:                               ;   Parent Loop BB29_42 Depth=1
                                        ;     Parent Loop BB29_44 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w3, w0, w23, uxth
	ldrh	w4, [x15, w3, uxtw  #1]
	cmp	w16, w4
	b.lo	LBB29_49
; %bb.51:                               ;   in Loop: Header=BB29_50 Depth=3
	sxtw	x13, w2
	madd	x25, x3, x10, x14
	and	x8, x23, #0xffff
	ldp	x6, x5, [x25]
	subs	x9, x8, x6
	and	x7, x9, x13
	ngc	x8, x5
	and	x13, x8, x13, asr #63
	orr	x13, x7, x13
	cbnz	x13, LBB29_169
; %bb.52:                               ;   in Loop: Header=BB29_50 Depth=3
	ldr	x7, [x25, #16]
	cmn	x9, x6
	adcs	xzr, x8, x5
	cset	w13, hs
	sub	x13, x13, x7
	lsl	x13, x13, x1
	tst	x1, #0x40
	csel	x13, xzr, x13, ne
	lsr	x9, x9, x27
	mvn	w19, w27
	lsl	x20, x8, #1
	lsl	x19, x20, x19
	orr	x9, x19, x9
	lsr	x8, x8, x27
	tst	x27, #0x40
	csel	x8, x8, x9, ne
	cmp	x27, #0
	csel	w9, wzr, w13, eq
	orr	w19, w9, w8
	tbnz	w19, #0, LBB29_47
; %bb.53:                               ;   in Loop: Header=BB29_50 Depth=3
	mov	x13, #0
	mov	x9, #0
	mov	x8, #0
	mov	x30, #0
	mov	x26, #0
	mov	x20, #0
	b	LBB29_48
LBB29_54:                               ;   in Loop: Header=BB29_42 Depth=1
	add	x21, x21, #1
	cmp	x21, #243
Lloh85:
	adrp	x9, _dl@PAGE
Lloh86:
	add	x9, x9, _dl@PAGEOFF
Lloh87:
	adrp	x13, _dz@PAGE
Lloh88:
	add	x13, x13, _dz@PAGEOFF
	b.ne	LBB29_42
; %bb.55:
	stp	xzr, xzr, [x28, #120]
	str	xzr, [x28, #136]
	adrp	x19, _p2@PAGE+22
	ldrh	w1, [x19, _p2@PAGEOFF+22]
	cbz	x1, LBB29_60
; %bb.56:
Ltmp104:
	add	x0, sp, #616
	bl	__ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm
Ltmp105:
; %bb.57:
	ldrh	w8, [x19, _p2@PAGEOFF+22]
	cbz	w8, LBB29_60
; %bb.58:
	mov	x8, #0
	ldr	x9, [x28, #120]
LBB29_59:                               ; =>This Inner Loop Header: Depth=1
	strh	w8, [x9, x8, lsl  #1]
	add	x8, x8, #1
	ldrh	w10, [x19, _p2@PAGEOFF+22]
	cmp	x8, x10
	b.lo	LBB29_59
LBB29_60:
	add	x10, sp, #1136
	add	x9, x10, #16
	add	x8, x10, #24
	stp	x8, x9, [sp, #16]               ; 16-byte Folded Spill
	add	x8, sp, #400
	add	x9, x8, #48
	add	x11, sp, #848
	add	x8, x11, #48
	stp	x8, x9, [sp, #184]              ; 16-byte Folded Spill
	add	x8, x11, #128
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	add	x8, x11, #16
	str	x8, [sp, #360]                  ; 8-byte Folded Spill
	add	x8, x11, #24
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
Lloh89:
	adrp	x9, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh90:
	ldr	x9, [x9, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x9, #16]
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	ldr	x8, [x9, #24]
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	ldr	x8, [x9, #32]
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	ldr	x8, [x9, #40]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	add	x24, sp, #848
	add	x8, x11, #88
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x11, [x9, #48]
	add	x8, sp, #2080
	add	x8, x8, #256
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	add	x8, sp, #640
	add	x8, x8, #16
	str	x8, [sp, #224]                  ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	stp	x8, x11, [sp, #56]              ; 16-byte Folded Spill
	ldr	x11, [x9]
	add	x8, x10, #128
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	w22, #48
	ldr	x8, [x9, #64]
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	ldr	x8, [x9, #72]
	stp	x8, x11, [sp, #128]             ; 16-byte Folded Spill
Lloh91:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh92:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB29_197
LBB29_61:
Ltmp386:
Lloh93:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh94:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh95:
	adrp	x1, l_.str.11@PAGE
Lloh96:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #11
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp387:
; %bb.62:
Ltmp388:
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp389:
; %bb.63:
Ltmp390:
Lloh97:
	adrp	x1, l_.str.12@PAGE
Lloh98:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp391:
; %bb.64:
Ltmp392:
	and	w1, w26, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp393:
; %bb.65:
Ltmp394:
Lloh99:
	adrp	x1, l_.str.12@PAGE
Lloh100:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp395:
; %bb.66:
Ltmp396:
	add	x1, sp, #1136
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp397:
; %bb.67:
Ltmp398:
Lloh101:
	adrp	x1, l_.str.12@PAGE
Lloh102:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp399:
; %bb.68:
Ltmp400:
	and	w1, w24, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp401:
; %bb.69:
Ltmp402:
Lloh103:
	adrp	x1, l_.str.12@PAGE
Lloh104:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp403:
; %bb.70:
Ltmp404:
	ldr	w1, [sp, #144]                  ; 4-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp405:
; %bb.71:
	mov	x21, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp406:
	add	x8, sp, #848
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp407:
; %bb.72:
Ltmp408:
Lloh105:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh106:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #848
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp409:
; %bb.73:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp410:
	mov	w1, #10
	blr	x8
Ltmp411:
; %bb.74:
	mov	x22, x0
	add	x0, sp, #848
	bl	__ZNSt3__16localeD1Ev
Ltmp413:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp414:
	b	LBB29_101
LBB29_75:
Ltmp37:
Lloh107:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh108:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh109:
	adrp	x1, l_.str.13@PAGE
Lloh110:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #12
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp38:
; %bb.76:
Ltmp39:
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp40:
; %bb.77:
Ltmp41:
Lloh111:
	adrp	x1, l_.str.12@PAGE
Lloh112:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp42:
; %bb.78:
Ltmp43:
	and	w1, w26, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp44:
; %bb.79:
Ltmp45:
Lloh113:
	adrp	x1, l_.str.12@PAGE
Lloh114:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp46:
; %bb.80:
Ltmp47:
	add	x1, sp, #1136
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp48:
; %bb.81:
Ltmp49:
Lloh115:
	adrp	x1, l_.str.12@PAGE
Lloh116:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp50:
; %bb.82:
Ltmp51:
	add	w8, w25, w19
	and	w1, w8, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp52:
; %bb.83:
Ltmp53:
Lloh117:
	adrp	x1, l_.str.12@PAGE
Lloh118:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp54:
; %bb.84:
Ltmp55:
	and	w1, w24, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp56:
; %bb.85:
	mov	x21, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp57:
	add	x8, sp, #848
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp58:
; %bb.86:
Ltmp59:
Lloh119:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh120:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #848
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp60:
; %bb.87:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp61:
	mov	w1, #10
	blr	x8
Ltmp62:
; %bb.88:
	mov	x22, x0
	add	x0, sp, #848
	bl	__ZNSt3__16localeD1Ev
Ltmp64:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp65:
	b	LBB29_101
LBB29_89:
Ltmp361:
Lloh121:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh122:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh123:
	adrp	x1, l_.str.14@PAGE
Lloh124:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #13
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp362:
; %bb.90:
Ltmp363:
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp364:
; %bb.91:
Ltmp365:
Lloh125:
	adrp	x1, l_.str.12@PAGE
Lloh126:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp366:
; %bb.92:
Ltmp367:
	and	w1, w26, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp368:
; %bb.93:
Ltmp369:
Lloh127:
	adrp	x1, l_.str.12@PAGE
Lloh128:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp370:
; %bb.94:
Ltmp371:
	mov	x1, x24
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp372:
; %bb.95:
Ltmp373:
Lloh129:
	adrp	x1, l_.str.12@PAGE
Lloh130:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp374:
; %bb.96:
Ltmp375:
	mov	x21, x0
	add	x1, sp, #1136
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp376:
; %bb.97:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp377:
	add	x8, sp, #848
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp378:
; %bb.98:
Ltmp379:
Lloh131:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh132:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #848
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp380:
; %bb.99:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp381:
	mov	w1, #10
	blr	x8
Ltmp382:
; %bb.100:
	mov	x22, x0
	add	x0, sp, #848
	bl	__ZNSt3__16localeD1Ev
Ltmp384:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp385:
LBB29_101:
Ltmp415:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp416:
	b	LBB29_167
LBB29_102:
Ltmp325:
Lloh133:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh134:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh135:
	adrp	x1, l_.str.15@PAGE
Lloh136:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #11
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp326:
; %bb.103:
Ltmp327:
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp328:
; %bb.104:
Ltmp329:
Lloh137:
	adrp	x1, l_.str.12@PAGE
Lloh138:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp330:
; %bb.105:
Ltmp331:
	and	w1, w26, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp332:
; %bb.106:
Ltmp333:
Lloh139:
	adrp	x1, l_.str.12@PAGE
Lloh140:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp334:
; %bb.107:
Ltmp335:
	mov	x1, x24
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp336:
; %bb.108:
Ltmp337:
Lloh141:
	adrp	x1, l_.str.12@PAGE
Lloh142:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp338:
; %bb.109:
Ltmp339:
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp340:
; %bb.110:
Ltmp341:
Lloh143:
	adrp	x1, l_.str.12@PAGE
Lloh144:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp342:
; %bb.111:
Ltmp343:
	add	x1, sp, #848
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp344:
; %bb.112:
Ltmp345:
Lloh145:
	adrp	x1, l_.str.12@PAGE
Lloh146:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp346:
; %bb.113:
Ltmp347:
	mov	x21, x0
	add	x1, sp, #1136
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp348:
; %bb.114:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp349:
	add	x8, sp, #2080
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp350:
; %bb.115:
Ltmp351:
Lloh147:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh148:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2080
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp352:
; %bb.116:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp353:
	mov	w1, #10
	blr	x8
Ltmp354:
; %bb.117:
	mov	x22, x0
	add	x0, sp, #2080
	bl	__ZNSt3__16localeD1Ev
Ltmp356:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp357:
	b	LBB29_166
LBB29_118:
Ltmp292:
Lloh149:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh150:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh151:
	adrp	x1, l_.str.16@PAGE
Lloh152:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp293:
	ldr	x19, [sp, #328]                 ; 8-byte Folded Reload
; %bb.119:
Ltmp294:
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp295:
; %bb.120:
Ltmp296:
Lloh153:
	adrp	x1, l_.str.12@PAGE
Lloh154:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp297:
; %bb.121:
Ltmp298:
	and	w1, w19, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp299:
; %bb.122:
Ltmp300:
Lloh155:
	adrp	x1, l_.str.12@PAGE
Lloh156:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp301:
; %bb.123:
Ltmp302:
	mov	x1, x22
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp303:
; %bb.124:
Ltmp304:
Lloh157:
	adrp	x1, l_.str.12@PAGE
Lloh158:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp305:
; %bb.125:
Ltmp306:
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp307:
; %bb.126:
Ltmp308:
Lloh159:
	adrp	x1, l_.str.12@PAGE
Lloh160:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp309:
; %bb.127:
Ltmp310:
	add	x1, sp, #848
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp311:
; %bb.128:
Ltmp312:
Lloh161:
	adrp	x1, l_.str.12@PAGE
Lloh162:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp313:
; %bb.129:
Ltmp314:
	mov	x21, x0
	add	x1, sp, #1136
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp315:
; %bb.130:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp316:
	add	x8, sp, #2080
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp317:
; %bb.131:
Ltmp318:
Lloh163:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh164:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2080
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp319:
; %bb.132:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp320:
	mov	w1, #10
	blr	x8
Ltmp321:
; %bb.133:
	mov	x22, x0
	add	x0, sp, #2080
	bl	__ZNSt3__16localeD1Ev
Ltmp323:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp324:
	b	LBB29_166
LBB29_134:
Ltmp259:
Lloh165:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh166:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh167:
	adrp	x1, l_.str.17@PAGE
Lloh168:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #15
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp260:
	ldr	x19, [sp, #328]                 ; 8-byte Folded Reload
; %bb.135:
Ltmp261:
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp262:
; %bb.136:
Ltmp263:
Lloh169:
	adrp	x1, l_.str.12@PAGE
Lloh170:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp264:
; %bb.137:
Ltmp265:
	and	w1, w19, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp266:
; %bb.138:
Ltmp267:
Lloh171:
	adrp	x1, l_.str.12@PAGE
Lloh172:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp268:
; %bb.139:
Ltmp269:
	mov	x1, x22
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp270:
; %bb.140:
Ltmp271:
Lloh173:
	adrp	x1, l_.str.12@PAGE
Lloh174:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp272:
; %bb.141:
Ltmp273:
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp274:
; %bb.142:
Ltmp275:
Lloh175:
	adrp	x1, l_.str.12@PAGE
Lloh176:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp276:
; %bb.143:
Ltmp277:
	add	x1, sp, #848
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp278:
; %bb.144:
Ltmp279:
Lloh177:
	adrp	x1, l_.str.12@PAGE
Lloh178:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp280:
; %bb.145:
Ltmp281:
	mov	x21, x0
	add	x1, sp, #1136
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp282:
; %bb.146:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp283:
	add	x8, sp, #2080
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp284:
; %bb.147:
Ltmp285:
Lloh179:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh180:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2080
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp286:
; %bb.148:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp287:
	mov	w1, #10
	blr	x8
Ltmp288:
; %bb.149:
	mov	x22, x0
	add	x0, sp, #2080
	bl	__ZNSt3__16localeD1Ev
Ltmp290:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp291:
	b	LBB29_166
LBB29_150:
Ltmp226:
Lloh181:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh182:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh183:
	adrp	x1, l_.str.18@PAGE
Lloh184:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp227:
	ldr	x19, [sp, #328]                 ; 8-byte Folded Reload
; %bb.151:
Ltmp228:
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp229:
; %bb.152:
Ltmp230:
Lloh185:
	adrp	x1, l_.str.12@PAGE
Lloh186:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp231:
; %bb.153:
Ltmp232:
	and	w1, w19, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp233:
; %bb.154:
Ltmp234:
Lloh187:
	adrp	x1, l_.str.12@PAGE
Lloh188:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp235:
; %bb.155:
Ltmp236:
	mov	x1, x22
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp237:
; %bb.156:
Ltmp238:
Lloh189:
	adrp	x1, l_.str.12@PAGE
Lloh190:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp239:
; %bb.157:
Ltmp240:
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp241:
; %bb.158:
Ltmp242:
Lloh191:
	adrp	x1, l_.str.12@PAGE
Lloh192:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp243:
; %bb.159:
Ltmp244:
	add	x1, sp, #848
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp245:
; %bb.160:
Ltmp246:
Lloh193:
	adrp	x1, l_.str.12@PAGE
Lloh194:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp247:
; %bb.161:
Ltmp248:
	mov	x21, x0
	add	x1, sp, #1136
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp249:
; %bb.162:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp250:
	add	x8, sp, #2080
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp251:
; %bb.163:
Ltmp252:
Lloh195:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh196:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2080
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp253:
; %bb.164:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp254:
	mov	w1, #10
	blr	x8
Ltmp255:
; %bb.165:
	mov	x22, x0
	add	x0, sp, #2080
	bl	__ZNSt3__16localeD1Ev
Ltmp257:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp258:
LBB29_166:
Ltmp358:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp359:
LBB29_167:
Lloh197:
	adrp	x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh198:
	ldr	x19, [x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x19]
	str	x8, [x28, #920]
	ldr	x9, [x19, #24]
	ldur	x8, [x8, #-24]
	add	x10, sp, #1416
	str	x9, [x10, x8]
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x19, #8
	add	x0, sp, #1416
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldur	x8, [x29, #-104]
Lloh199:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh200:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh201:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB29_194
; %bb.168:
	mov	w0, #0
	add	sp, sp, #2368
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB29_169:
Ltmp66:
Lloh202:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh203:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh204:
	adrp	x1, l_.str.19@PAGE
Lloh205:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #10
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
; %bb.170:
Ltmp68:
	and	w1, w21, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp69:
; %bb.171:
Ltmp70:
Lloh206:
	adrp	x1, l_.str.12@PAGE
Lloh207:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp71:
; %bb.172:
Ltmp72:
	and	w1, w27, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp73:
; %bb.173:
Ltmp74:
Lloh208:
	adrp	x1, l_.str.12@PAGE
Lloh209:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp75:
; %bb.174:
Ltmp76:
	mov	x21, x0
	add	x0, sp, #848
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp77:
; %bb.175:
	ldrb	w8, [sp, #848]
Lloh210:
	adrp	x19, l_.str@PAGE
Lloh211:
	add	x19, x19, l_.str@PAGEOFF
	cbz	w8, LBB29_181
; %bb.176:
	mov	x8, #0
                                        ; kill: def $w23 killed $w23 killed $x23 def $x23
	and	x9, x23, #0xffff
	ldr	x12, [sp, #360]                 ; 8-byte Folded Reload
	mov	x1, x12
LBB29_177:                              ; =>This Inner Loop Header: Depth=1
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
	tbnz	w10, #0, LBB29_177
; %bb.178:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x8, x21, x8
	ldr	x0, [x8, #40]
	sub	w8, w12, w1
	sxtw	x22, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp78:
	mov	x2, x22
	blr	x8
Ltmp79:
; %bb.179:
	cmp	x0, x22
	b.eq	LBB29_181
; %bb.180:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp80:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp81:
LBB29_181:
	add	x0, sp, #848
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp83:
Lloh212:
	adrp	x1, l_.str.12@PAGE
Lloh213:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	x0, x21
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp84:
; %bb.182:
Ltmp85:
	mov	x21, x0
	add	x0, sp, #400
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp86:
; %bb.183:
	ldrb	w8, [sp, #400]
	cbz	w8, LBB29_189
; %bb.184:
	ldp	q0, q1, [x25]
	str	q0, [x28, #1584]
	str	q1, [x28, #1600]
	ldr	q0, [x25, #32]
	str	q0, [x28, #1616]
	mov	w20, #10
	ldr	x22, [sp, #368]                 ; 8-byte Folded Reload
LBB29_185:                              ; =>This Inner Loop Header: Depth=1
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x24]
	stp	x20, xzr, [x28, #192]
	add	x8, sp, #848
	add	x0, sp, #2080
	add	x1, sp, #688
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	q0, [x28, #384]
	str	q0, [x28, #1616]
	ldp	q1, q0, [x28, #352]
	str	q0, [x28, #1600]
	ldr	x8, [x28, #400]
	ldrb	w8, [x19, x8]
	strb	w8, [x22, #-1]!
	str	q1, [x28, #1584]
	ldr	x8, [x28, #1624]
	ldr	x9, [x28, #1616]
	ldr	x10, [x28, #1608]
	ldr	x11, [x28, #1600]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [x28, #1584]
	ldr	x11, [x28, #1592]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB29_185
; %bb.186:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x8, x21, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	sub	w8, w8, w22
	sxtw	x23, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp87:
	mov	x1, x22
	mov	x2, x23
	blr	x8
Ltmp88:
; %bb.187:
	cmp	x0, x23
	b.eq	LBB29_189
; %bb.188:
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp89:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp90:
LBB29_189:
	add	x0, sp, #400
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldr	x8, [x21]
	ldur	x8, [x8, #-24]
	add	x0, x21, x8
Ltmp92:
	add	x8, sp, #1136
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp93:
; %bb.190:
Ltmp94:
Lloh214:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh215:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #1136
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp95:
; %bb.191:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp96:
	mov	w1, #10
	blr	x8
Ltmp97:
; %bb.192:
	mov	x22, x0
	add	x0, sp, #1136
	bl	__ZNSt3__16localeD1Ev
Ltmp99:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp100:
; %bb.193:
Ltmp101:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp102:
	b	LBB29_167
LBB29_194:
	bl	___stack_chk_fail
LBB29_195:                              ;   in Loop: Header=BB29_197 Depth=1
	ldr	x8, [sp, #152]                  ; 8-byte Folded Reload
	add	w8, w8, #1
	adrp	x9, _m@PAGE
	strh	w8, [x9, _m@PAGEOFF]
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x8, [x28, #640]
	ldur	x8, [x8, #-24]
	ldr	x9, [sp, #120]                  ; 8-byte Folded Reload
	add	x10, sp, #1136
	str	x9, [x10, x8]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x8, [x28, #656]
Lloh216:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh217:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x28, #664]
	ldrsb	w8, [sp, #1247]
	tbnz	w8, #31, LBB29_334
LBB29_196:                              ;   in Loop: Header=BB29_197 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh218:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh219:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #1136
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB29_197:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_200 Depth 2
                                        ;     Child Loop BB29_240 Depth 2
                                        ;       Child Loop BB29_241 Depth 3
                                        ;         Child Loop BB29_242 Depth 4
                                        ;         Child Loop BB29_244 Depth 4
                                        ;       Child Loop BB29_249 Depth 3
                                        ;       Child Loop BB29_268 Depth 3
                                        ;       Child Loop BB29_276 Depth 3
                                        ;         Child Loop BB29_281 Depth 4
                                        ;         Child Loop BB29_285 Depth 4
                                        ;       Child Loop BB29_290 Depth 3
                                        ;       Child Loop BB29_310 Depth 3
                                        ;       Child Loop BB29_327 Depth 3
	mov	w12, #0
	adrp	x8, _m@PAGE
	ldrh	w8, [x8, _m@PAGEOFF]
Lloh220:
	adrp	x9, _p23@PAGE
Lloh221:
	add	x9, x9, _p23@PAGEOFF
	mov	w10, #11664
	madd	x9, x8, x10, x9
	ldp	q0, q1, [x9]
	stp	q0, q1, [x28, #64]
	ldr	q0, [x9, #32]
	str	q0, [x28, #96]
	ldp	x11, x10, [x9, #32]
	b	LBB29_200
LBB29_198:                              ;   in Loop: Header=BB29_200 Depth=2
Lloh222:
	adrp	x13, _yy@PAGE
Lloh223:
	add	x13, x13, _yy@PAGEOFF
	madd	x13, x12, x22, x13
	ldp	q0, q1, [x13]
	stp	q0, q1, [x28, #64]
	ldr	q0, [x13, #32]
	str	q0, [x28, #96]
LBB29_199:                              ;   in Loop: Header=BB29_200 Depth=2
	add	w12, w12, #1
	cmp	w8, w12, uxth
	b.lo	LBB29_216
LBB29_200:                              ;   Parent Loop BB29_197 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	x12, x12, #0xffff
Lloh224:
	adrp	x13, _p23@PAGE
Lloh225:
	add	x13, x13, _p23@PAGEOFF
	madd	x13, x12, x22, x13
	ldp	x17, x0, [x13, #32]
	eor	x14, x10, x0
	eor	x15, x11, x17
	orr	x14, x15, x14
	cbnz	x14, LBB29_203
; %bb.201:                              ;   in Loop: Header=BB29_200 Depth=2
	ldp	x16, x15, [x9, #16]
	ldp	x14, x1, [x13, #16]
	eor	x2, x15, x1
	eor	x3, x16, x14
	orr	x2, x3, x2
	cbnz	x2, LBB29_205
; %bb.202:                              ;   in Loop: Header=BB29_200 Depth=2
	ldp	x1, x14, [x9]
	ldp	x3, x2, [x13]
	cmp	x1, x3
	cset	w1, lo
	cmp	x14, x2
	cset	w14, lo
	csel	w14, w1, w14, eq
	tbz	w14, #0, LBB29_207
	b	LBB29_209
LBB29_203:                              ;   in Loop: Header=BB29_200 Depth=2
	cmp	x11, x17
	cset	w14, hi
	cmp	x10, x0
	cset	w15, hi
	csel	w14, w14, w15, eq
	tbz	w14, #0, LBB29_208
; %bb.204:                              ;   in Loop: Header=BB29_200 Depth=2
	ldp	x16, x15, [x13, #16]
	b	LBB29_207
LBB29_205:                              ;   in Loop: Header=BB29_200 Depth=2
	cmp	x16, x14
	cset	w2, ls
	cmp	x15, x1
	cset	w3, ls
	csel	w2, w2, w3, eq
	tbnz	w2, #0, LBB29_209
; %bb.206:                              ;   in Loop: Header=BB29_200 Depth=2
	mov	x16, x14
	mov	x15, x1
LBB29_207:                              ;   in Loop: Header=BB29_200 Depth=2
Lloh226:
	adrp	x14, _yy@PAGE
Lloh227:
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
	b	LBB29_210
LBB29_208:                              ;   in Loop: Header=BB29_200 Depth=2
	ldp	x16, x15, [x9, #16]
LBB29_209:                              ;   in Loop: Header=BB29_200 Depth=2
Lloh228:
	adrp	x14, _yy@PAGE
Lloh229:
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
LBB29_210:                              ;   in Loop: Header=BB29_200 Depth=2
	stp	x17, x0, [x1, #32]
	ldp	x2, x1, [x28, #96]
	eor	x3, x2, x17
	eor	x4, x1, x0
	orr	x3, x3, x4
	cbnz	x3, LBB29_213
; %bb.211:                              ;   in Loop: Header=BB29_200 Depth=2
	ldp	x0, x17, [x28, #80]
	eor	x1, x0, x15
	eor	x2, x17, x16
	orr	x1, x1, x2
	cbnz	x1, LBB29_214
; %bb.212:                              ;   in Loop: Header=BB29_200 Depth=2
	ldp	x16, x15, [x28, #64]
	cmp	x16, x13
	cset	w13, lo
	cmp	x15, x14
	cset	w14, lo
	b	LBB29_215
LBB29_213:                              ;   in Loop: Header=BB29_200 Depth=2
	cmp	x2, x17
	cset	w13, hi
	cmp	x1, x0
	cset	w14, hi
	csel	w13, w13, w14, eq
	tbz	w13, #0, LBB29_199
	b	LBB29_198
LBB29_214:                              ;   in Loop: Header=BB29_200 Depth=2
	cmp	x0, x15
	cset	w13, ls
	cmp	x17, x16
	cset	w14, ls
LBB29_215:                              ;   in Loop: Header=BB29_200 Depth=2
	csel	w13, w13, w14, eq
	tbz	w13, #0, LBB29_198
	b	LBB29_199
LBB29_216:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp107:
	add	x0, sp, #1136
	bl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Ev
Ltmp108:
; %bb.217:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp110:
	mov	x0, #0
	bl	_time
Ltmp111:
; %bb.218:                              ;   in Loop: Header=BB29_197 Depth=1
Lloh230:
	adrp	x8, _start_time@PAGE
Lloh231:
	ldr	x1, [x8, _start_time@PAGEOFF]
Ltmp112:
	bl	_difftime
Ltmp113:
; %bb.219:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp114:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp115:
; %bb.220:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp116:
Lloh232:
	adrp	x1, l_.str.20@PAGE
Lloh233:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp117:
; %bb.221:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp118:
	mov	x21, x0
	bl	_pthread_self
	mov	x1, x0
Ltmp119:
; %bb.222:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp121:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp122:
; %bb.223:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp123:
Lloh234:
	adrp	x1, l_.str.21@PAGE
Lloh235:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp124:
; %bb.224:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp125:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Lloh236:
	adrp	x1, l_.str.22@PAGE
Lloh237:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #9
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp126:
; %bb.225:                              ;   in Loop: Header=BB29_197 Depth=1
	adrp	x8, _m@PAGE
	ldrh	w1, [x8, _m@PAGEOFF]
Ltmp127:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp128:
; %bb.226:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp129:
Lloh238:
	adrp	x1, l_.str.12@PAGE
Lloh239:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp130:
; %bb.227:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp131:
	mov	x23, x0
	add	x1, sp, #560
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Ltmp132:
; %bb.228:                              ;   in Loop: Header=BB29_197 Depth=1
	ldr	x8, [x23]
	ldur	x8, [x8, #-24]
	add	x0, x23, x8
Ltmp133:
	add	x8, sp, #848
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp134:
; %bb.229:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp135:
	add	x0, sp, #848
Lloh240:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh241:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp136:
; %bb.230:                              ;   in Loop: Header=BB29_197 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp137:
	mov	w1, #10
	blr	x8
Ltmp138:
; %bb.231:                              ;   in Loop: Header=BB29_197 Depth=1
	mov	x21, x0
	add	x0, sp, #848
	bl	__ZNSt3__16localeD1Ev
Ltmp140:
	mov	x0, x23
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp141:
; %bb.232:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp142:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp143:
; %bb.233:                              ;   in Loop: Header=BB29_197 Depth=1
Ltmp145:
	add	x8, sp, #848
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp146:
; %bb.234:                              ;   in Loop: Header=BB29_197 Depth=1
	ldrb	w8, [sp, #871]
	sxtb	w9, w8
	ldp	x10, x11, [x28, #352]
	cmp	w9, #0
	csel	x1, x10, x24, lt
	csel	x2, x11, x8, lt
Ltmp148:
Lloh242:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh243:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp149:
; %bb.235:                              ;   in Loop: Header=BB29_197 Depth=1
	ldrsb	w8, [sp, #871]
	tbz	w8, #31, LBB29_237
; %bb.236:                              ;   in Loop: Header=BB29_197 Depth=1
	ldr	x0, [x28, #352]
	bl	__ZdlPv
LBB29_237:                              ;   in Loop: Header=BB29_197 Depth=1
	mov	w8, #1
	strh	w8, [sp, #558]
	adrp	x8, _m@PAGE
	ldrh	w8, [x8, _m@PAGEOFF]
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	cmp	w8, #2
	b.lo	LBB29_195
; %bb.238:                              ;   in Loop: Header=BB29_197 Depth=1
	mov	w8, #1
	b	LBB29_240
LBB29_239:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh244:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh245:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #848
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldrh	w8, [sp, #558]
	add	w8, w8, #1
	strh	w8, [sp, #558]
	adrp	x9, _m@PAGE
	ldrh	w9, [x9, _m@PAGEOFF]
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	cmp	w9, w8, uxth
	b.ls	LBB29_195
LBB29_240:                              ;   Parent Loop BB29_197 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB29_241 Depth 3
                                        ;         Child Loop BB29_242 Depth 4
                                        ;         Child Loop BB29_244 Depth 4
                                        ;       Child Loop BB29_249 Depth 3
                                        ;       Child Loop BB29_268 Depth 3
                                        ;       Child Loop BB29_276 Depth 3
                                        ;         Child Loop BB29_281 Depth 4
                                        ;         Child Loop BB29_285 Depth 4
                                        ;       Child Loop BB29_290 Depth 3
                                        ;       Child Loop BB29_310 Depth 3
                                        ;       Child Loop BB29_327 Depth 3
	and	x9, x8, #0xffff
Lloh246:
	adrp	x8, _yy@PAGE
Lloh247:
	add	x8, x8, _yy@PAGEOFF
	str	x9, [sp, #368]                  ; 8-byte Folded Spill
	madd	x23, x9, x22, x8
	ldp	q1, q0, [x23, #16]
Lloh248:
	adrp	x12, _ynn@PAGE
Lloh249:
	add	x12, x12, _ynn@PAGEOFF
	stp	q1, q0, [x12, #16]
	ldr	q2, [x23]
	str	q2, [x12]
	ldp	x8, x9, [x12, #32]
	ldp	x10, x11, [x12, #16]
	extr	x9, x9, x8, #63
	extr	x8, x8, x11, #63
	stp	x8, x9, [x12, #32]
	ldp	x8, x9, [x12]
	extr	x11, x11, x10, #63
	extr	x10, x10, x9, #63
	stp	x10, x11, [x12, #16]
	extr	x9, x9, x8, #63
	lsl	x8, x8, #1
	stp	x8, x9, [x12]
Lloh250:
	adrp	x8, _dy@PAGE+96
Lloh251:
	add	x8, x8, _dy@PAGEOFF+96
	stp	q1, q0, [x8, #16]
	str	q2, [x8]
	ldr	x8, [x23]
	str	x8, [sp, #376]                  ; 8-byte Folded Spill
	ldr	x8, [x23, #8]
	str	x8, [sp, #352]                  ; 8-byte Folded Spill
	ldr	x8, [x23, #16]
	str	x8, [sp, #344]                  ; 8-byte Folded Spill
	ldp	x8, x13, [x23, #24]
	str	x8, [sp, #336]                  ; 8-byte Folded Spill
	ldr	x8, [x23, #40]
	str	x8, [sp, #328]                  ; 8-byte Folded Spill
	adrp	x8, _p2@PAGE+2
	ldrh	w15, [x8, _p2@PAGEOFF+2]
	mov	w14, #1
LBB29_241:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB29_242 Depth 4
                                        ;         Child Loop BB29_244 Depth 4
	mov	w1, #0
	ldr	x8, [sp, #360]                  ; 8-byte Folded Reload
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8]
	and	x15, x15, #0xffff
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	umulh	x16, x8, x15
	mul	x17, x8, x15
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	umulh	x0, x8, x15
	mul	x2, x8, x15
	adds	x16, x16, x2
	ldp	x2, x3, [x28, #368]
	adc	x0, x2, x0
	stp	x17, x16, [x28, #352]
	ldr	x8, [sp, #344]                  ; 8-byte Folded Reload
	umulh	x16, x8, x15
	mul	x17, x8, x15
	adds	x17, x17, x0
	adc	x16, x16, x3
	ldr	x8, [sp, #336]                  ; 8-byte Folded Reload
	umulh	x0, x8, x15
	mul	x2, x8, x15
	adds	x16, x16, x2
	ldp	x2, x3, [x28, #384]
	adc	x0, x2, x0
	stp	x17, x16, [x28, #368]
	str	x0, [x28, #384]
	umulh	x16, x13, x15
	ldr	x8, [sp, #328]                  ; 8-byte Folded Reload
	madd	x16, x8, x15, x16
	mul	x15, x13, x15
	adds	x17, x0, x15
	adc	x0, x3, x16
	add	x16, x14, #1
Lloh252:
	adrp	x8, _p2@PAGE
Lloh253:
	add	x8, x8, _p2@PAGEOFF
	add	x15, x8, x14, lsl #1
	ldrh	w15, [x15, #2]
	sub	w2, w15, #1
	and	w19, w2, #0xffff
	ubfx	w2, w2, #1, #15
Lloh254:
	adrp	x8, _dy@PAGE
Lloh255:
	add	x8, x8, _dy@PAGEOFF
LBB29_242:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ;       Parent Loop BB29_241 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	add	w3, w1, w2
	umaddl	x3, w3, w22, x8
	add	w4, w1, w19
	umaddl	x4, w4, w22, x8
	ldp	q0, q1, [x3]
	ldr	q2, [x3, #32]
	stp	q1, q2, [x4, #16]
	str	q0, [x4]
	add	w1, w1, #1
	and	w1, w1, #0xffff
	cmp	w1, w19
	b.ls	LBB29_242
; %bb.243:                              ;   in Loop: Header=BB29_241 Depth=3
	mov	x1, #0
	ldp	x3, x2, [x28, #352]
	ldp	x5, x4, [x28, #368]
	mov	w9, #128
	sub	x6, x9, x14
	cmp	w15, #1
	csinc	w7, w15, wzr, hi
	umaddl	x19, w19, w22, x8
	add	x19, x19, #32
LBB29_244:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ;       Parent Loop BB29_241 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldp	x21, x20, [x19, #-32]
	ldp	x25, x24, [x19, #-16]
	ldp	x27, x26, [x19]
	adds	x30, x21, x1
	adcs	x12, x20, xzr
	cset	w8, hs
	add	x8, x25, x8
	lsl	x8, x8, x6
	tst	x6, #0x40
	csel	x8, xzr, x8, ne
	mvn	w9, w14
	lsl	x10, x12, #1
	lsl	x9, x10, x9
	lsr	x10, x30, x14
	orr	x9, x9, x10
	lsr	x10, x12, x14
	tst	x14, #0x40
	csel	x9, x10, x9, ne
	orr	w8, w8, w9
	sbfx	x8, x8, #0, #1
	and	x9, x8, x0
	and	x10, x8, x17
	and	x12, x8, x4
	and	x30, x8, x5
	and	x11, x8, x2
	and	x8, x8, x3
	adds	x10, x27, x10
	adc	x9, x26, x9
	adds	x25, x25, x30
	adcs	x12, x24, x12
	adcs	x10, x10, xzr
	cinc	x9, x9, hs
	adds	x8, x8, x21
	adcs	x11, x11, x20
	cset	w20, hs
	stp	x8, x11, [x19, #-32]
	adcs	x8, x25, xzr
	cinc	x11, x12, hs
	stp	x8, x11, [x19, #-16]
	orr	x8, x8, x11
	cmp	x8, #0
	cset	w8, eq
	and	w8, w20, w8
	adds	x8, x10, x8
	cinc	x9, x9, hs
	stp	x8, x9, [x19], #48
	add	x1, x1, #1
	cmp	x7, x1
	b.ne	LBB29_244
; %bb.245:                              ;   in Loop: Header=BB29_241 Depth=3
	mov	x14, x16
	cmp	x16, #12
	b.ne	LBB29_241
; %bb.246:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x8, [sp, #152]                  ; 8-byte Folded Reload
	and	x11, x8, #0xffff
	ldr	x19, [sp, #368]                 ; 8-byte Folded Reload
	mvn	x8, x19
	add	x8, x11, x8
Lloh256:
	adrp	x9, _p23@PAGE
Lloh257:
	add	x9, x9, _p23@PAGEOFF
	mov	w10, #11664
	madd	x8, x8, x10, x9
	madd	x8, x19, x22, x8
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #496]
	ldr	q0, [x8, #32]
	str	q0, [x28, #32]
	str	x11, [sp, #216]                 ; 8-byte Folded Spill
	madd	x8, x11, x10, x9
	mov	x9, #-11664
	add	x8, x8, x9
	ldp	x10, x9, [x8]
	ldp	x12, x11, [sp, #496]
	subs	x12, x12, x10
	sbc	x11, x11, x9
	stp	x12, x11, [sp, #496]
	ldp	x14, x13, [x8, #16]
	ldr	x15, [sp, #512]
	subs	x15, x15, x14
	ldp	x16, x17, [x28, #24]
	sbc	x16, x16, x13
	ldp	x8, x0, [x8, #32]
	cmn	x15, x14
	adcs	xzr, x16, x13
	cset	w13, hs
	ldr	x14, [x28, #40]
	subs	x8, x17, x8
	sbc	x14, x14, x0
	subs	x8, x8, x13
	sbc	x13, x14, xzr
	cmn	x12, x10
	adcs	xzr, x11, x9
	cset	w9, hs
	subs	x10, x15, x9
	sbc	x11, x16, xzr
	and	x12, x10, x11
	str	x10, [sp, #512]
	cmn	x12, #1
	cset	w10, eq
	and	w9, w9, w10
	subs	x8, x8, x9
	sbc	x9, x13, xzr
	stp	x11, x8, [x28, #24]
	str	x9, [x28, #40]
	add	x8, sp, #400
	add	x0, sp, #496
	mov	x1, x23
	bl	__Z6divmodRK11__uint384_tS1_
	mov	w8, #0
	ldp	x9, x10, [sp, #408]
	ldp	x11, x13, [sp, #424]
	ldr	x12, [sp, #440]
	extr	x14, x13, x11, #63
	extr	x13, x12, x13, #63
	extr	x12, x10, x9, #63
	extr	x11, x11, x10, #63
	ldr	x10, [sp, #400]
	extr	x9, x9, x10, #63
	mov	w15, #1
	bfi	x15, x10, #1, #63
	stp	x15, x9, [sp, #168]             ; 16-byte Folded Spill
	stp	x15, x9, [x28, #64]
	stp	x11, x12, [sp, #232]            ; 16-byte Folded Spill
	stp	x12, x11, [x28, #80]
	stp	x13, x14, [sp, #336]            ; 16-byte Folded Spill
	stp	x14, x13, [x28, #96]
	strh	wzr, [sp, #396]
	cbz	w19, LBB29_264
; %bb.247:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x9, [sp, #152]                  ; 8-byte Folded Reload
	and	w10, w9, #0xffff
	ldr	x9, [sp, #368]                  ; 8-byte Folded Reload
	mvn	w9, w9
	str	w10, [sp, #208]                 ; 4-byte Folded Spill
	add	w9, w10, w9
	str	w9, [sp, #352]                  ; 4-byte Folded Spill
	cmp	w9, #1
	b.lt	LBB29_264
; %bb.248:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	w8, [sp, #352]                  ; 4-byte Folded Reload
	lsl	w8, w8, #1
	str	w8, [sp, #200]                  ; 4-byte Folded Spill
	mov	w8, #1
	str	w8, [sp, #376]                  ; 4-byte Folded Spill
LBB29_249:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w27, [sp, #376]                 ; 4-byte Folded Reload
	and	w8, w27, #0xffff
	str	w8, [sp, #328]                  ; 4-byte Folded Spill
	add	w8, w27, #1
	lsr	w8, w8, #1
	str	w8, [sp, #320]                  ; 4-byte Folded Spill
	ldr	w9, [sp, #352]                  ; 4-byte Folded Reload
	sub	w8, w9, w8
	lsr	w10, w27, #1
	str	w10, [sp, #308]                 ; 4-byte Folded Spill
	ldr	x9, [sp, #368]                  ; 8-byte Folded Reload
	sub	w9, w9, w10
Lloh258:
	adrp	x19, _p23@PAGE
Lloh259:
	add	x19, x19, _p23@PAGEOFF
	mov	w10, #11664
	smaddl	x8, w8, w10, x19
	mov	w10, #11664
	smaddl	x8, w9, w22, x8
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #496]
	ldr	q0, [x8, #32]
	str	q0, [x28, #32]
	mov	w8, w27
	str	x8, [sp, #264]                  ; 8-byte Folded Spill
	mvn	x8, x8
	ldr	x9, [sp, #216]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	madd	x8, x8, x10, x19
	ldp	x26, x25, [x8]
	ldp	x10, x9, [sp, #496]
	subs	x10, x10, x26
	sbc	x9, x9, x25
	stp	x10, x9, [sp, #496]
	ldp	x21, x24, [x8, #16]
	ldr	x11, [sp, #512]
	subs	x11, x11, x21
	ldp	x12, x13, [x28, #24]
	sbc	x12, x12, x24
	ldp	x20, x15, [x8, #32]
	str	x15, [sp, #272]                 ; 8-byte Folded Spill
	cmn	x11, x21
	adcs	xzr, x12, x24
	cset	w8, hs
	ldr	x14, [x28, #40]
	subs	x13, x13, x20
	sbc	x14, x14, x15
	subs	x8, x13, x8
	sbc	x13, x14, xzr
	cmn	x10, x26
	adcs	xzr, x9, x25
	cset	w9, hs
	subs	x10, x11, x9
	sbc	x11, x12, xzr
	and	x12, x10, x11
	str	x10, [sp, #512]
	cmn	x12, #1
	cset	w10, eq
	and	w9, w9, w10
	subs	x8, x8, x9
	sbc	x9, x13, xzr
	stp	x11, x8, [x28, #24]
	str	x9, [x28, #40]
	add	x8, sp, #848
	add	x0, sp, #496
	mov	x1, x23
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	q2, [x28, #384]
	ldp	q1, q0, [x28, #352]
	stp	q0, q2, [sp, #416]
	str	q1, [sp, #400]
	ldp	x9, x8, [sp, #400]
	str	x8, [sp, #312]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	stp	x8, x9, [sp, #288]              ; 16-byte Folded Spill
	ldr	x8, [sp, #416]
	str	x8, [sp, #280]                  ; 8-byte Folded Spill
	ldp	x8, x9, [sp, #432]
	stp	x8, x9, [sp, #248]              ; 16-byte Folded Spill
	ldr	w8, [sp, #352]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #308]                  ; 4-byte Folded Reload
	sub	w8, w8, w9
	ldr	w9, [sp, #320]                  ; 4-byte Folded Reload
	ldr	x10, [sp, #368]                 ; 8-byte Folded Reload
	sub	w9, w10, w9
	mov	w10, #11664
	smaddl	x8, w8, w10, x19
	smaddl	x8, w9, w22, x8
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #496]
	ldr	q0, [x8, #32]
	str	q0, [x28, #32]
	ldp	x9, x8, [sp, #496]
	subs	x9, x9, x26
	sbc	x8, x8, x25
	stp	x9, x8, [sp, #496]
	ldr	x10, [sp, #512]
	subs	x10, x10, x21
	ldp	x11, x12, [x28, #24]
	sbc	x11, x11, x24
	cmn	x10, x21
	adcs	xzr, x11, x24
	cset	w13, hs
	ldr	x14, [x28, #40]
	subs	x12, x12, x20
	ldr	x15, [sp, #272]                 ; 8-byte Folded Reload
	sbc	x14, x14, x15
	subs	x12, x12, x13
	sbc	x13, x14, xzr
	cmn	x9, x26
	adcs	xzr, x8, x25
	cset	w8, hs
	subs	x9, x10, x8
	sbc	x10, x11, xzr
	and	x11, x9, x10
	str	x9, [sp, #512]
	cmn	x11, #1
	cset	w9, eq
	and	w8, w8, w9
	subs	x8, x12, x8
	sbc	x9, x13, xzr
	stp	x10, x8, [x28, #24]
	str	x9, [x28, #40]
	add	x8, sp, #848
	add	x0, sp, #496
	mov	x1, x23
	bl	__Z6divmodRK11__uint384_tS1_
	ldp	q1, q0, [x28, #352]
	stp	q1, q0, [sp, #400]
	ldr	q0, [x28, #384]
	str	q0, [sp, #432]
	ldp	x9, x8, [sp, #184]              ; 16-byte Folded Reload
	ldp	q0, q1, [x9]
	stp	q0, q1, [x8]
	ldr	q0, [x9, #32]
	str	q0, [x8, #32]
	ldp	x2, x1, [sp, #400]
	ldp	x13, x9, [sp, #416]
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	adds	x0, x13, x8
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	adc	x16, x9, x8
	ldr	x8, [sp, #296]                  ; 8-byte Folded Reload
	adds	x4, x2, x8
	ldr	x8, [sp, #312]                  ; 8-byte Folded Reload
	adcs	x3, x1, x8
	adcs	x12, x0, xzr
	cinc	x17, x16, hs
	mvn	w8, w27
	ldr	w10, [sp, #208]                 ; 4-byte Folded Reload
	add	w10, w10, w8
	add	w11, w10, #31
	cmp	w10, #0
	csel	w10, w11, w10, lt
	asr	w10, w10, #5
	add	w5, w10, #8
	sxtw	x10, w5
	asr	x11, x10, #63
	adds	x10, x4, x10
	adcs	x11, x3, x11
	adcs	x14, x12, xzr
	cinc	x15, x17, hs
	ldr	w7, [sp, #328]                  ; 4-byte Folded Reload
	cmp	w7, #128
	b.hs	LBB29_251
; %bb.250:                              ;   in Loop: Header=BB29_249 Depth=3
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
	ldp	x3, x2, [sp, #432]
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
	ldr	x16, [sp, #248]                 ; 8-byte Folded Reload
	adds	x9, x16, x9
	ldp	x16, x5, [sp, #256]             ; 16-byte Folded Reload
	cinc	x16, x16, hs
	adds	x9, x9, x12
	cinc	x12, x16, hs
	adds	x9, x9, x13
	cinc	x12, x12, hs
	adds	x9, x9, x3
	adc	x12, x12, x2
	lsl	x12, x12, x5
	lsr	x13, x9, #1
	lsr	x13, x13, x8
	orr	x12, x12, x13
	lsl	x9, x9, x5
	mov	w13, #128
	ldr	w4, [sp, #376]                  ; 4-byte Folded Reload
	sub	w13, w13, w4
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
	tst	w4, #0xffff
	csel	x16, xzr, x17, eq
	csel	x17, xzr, x0, eq
	csel	x0, xzr, x13, eq
	csel	x1, xzr, x2, eq
	tst	x5, #0x40
	csel	x12, x9, x12, ne
	csel	x9, xzr, x9, ne
	orr	x12, x12, x17
	orr	x13, x9, x16
	lsr	x9, x14, #1
	lsr	x9, x9, x8
	lsl	x15, x15, x5
	orr	x9, x15, x9
	lsl	x14, x14, x5
	csel	x9, x14, x9, ne
	csel	x15, xzr, x14, ne
	orr	x14, x9, x1
	orr	x15, x15, x0
	lsr	x9, x10, #1
	lsr	x8, x9, x8
	lsl	x9, x11, x5
	orr	x8, x9, x8
	lsl	x9, x10, x5
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	b	LBB29_254
LBB29_251:                              ;   in Loop: Header=BB29_249 Depth=3
	mov	x6, x7
	ldr	w8, [sp, #376]                  ; 4-byte Folded Reload
	and	w16, w8, #0x7f
	cmp	w7, #256
	b.hs	LBB29_253
; %bb.252:                              ;   in Loop: Header=BB29_249 Depth=3
	mov	x9, #0
	mov	x8, #0
	lsr	x12, x14, #1
	mvn	w17, w16
	lsr	x12, x12, x17
	lsl	x13, x15, x16
	orr	x12, x13, x12
	lsl	x13, x14, x16
	mov	w14, #128
	sub	w14, w14, w16
	mvn	w15, w14
	lsl	x0, x11, #1
	lsl	x15, x0, x15
	lsr	x0, x11, x14
	tst	x14, #0x40
	lsr	x14, x10, x14
	orr	x14, x15, x14
	csel	x15, xzr, x0, ne
	csel	x14, x0, x14, ne
	cmp	w16, #0
	csel	x14, xzr, x14, eq
	csel	x15, xzr, x15, eq
	tst	x16, #0x40
	csel	x12, x13, x12, ne
	csel	x13, xzr, x13, ne
	orr	x12, x12, x15
	orr	x13, x13, x14
	lsr	x14, x10, #1
	lsr	x14, x14, x17
	lsl	x11, x11, x16
	orr	x11, x11, x14
	lsl	x10, x10, x16
	csel	x14, x10, x11, ne
	csel	x15, xzr, x10, ne
	b	LBB29_254
LBB29_253:                              ;   in Loop: Header=BB29_249 Depth=3
	mov	x15, #0
	mov	x14, #0
	mov	x9, #0
	mov	x8, #0
	mvn	w12, w16
	lsr	x13, x10, #1
	lsr	x12, x13, x12
	lsl	x11, x11, x16
	orr	x11, x11, x12
	lsl	x10, x10, x16
	tst	x16, #0x40
	csel	x12, x10, x11, ne
	csel	x13, xzr, x10, ne
LBB29_254:                              ;   in Loop: Header=BB29_249 Depth=3
	ldp	x11, x10, [sp, #336]            ; 16-byte Folded Reload
	eor	x10, x10, x13
	eor	x11, x11, x12
	orr	x10, x10, x11
	cbnz	x10, LBB29_257
; %bb.255:                              ;   in Loop: Header=BB29_249 Depth=3
	ldp	x11, x10, [sp, #232]            ; 16-byte Folded Reload
	eor	x10, x10, x15
	eor	x11, x11, x14
	orr	x10, x10, x11
	cbnz	x10, LBB29_262
; %bb.256:                              ;   in Loop: Header=BB29_249 Depth=3
	ldp	x10, x11, [sp, #168]            ; 16-byte Folded Reload
	cmp	x10, x9
	cset	w10, hi
	cmp	x11, x8
	b	LBB29_258
LBB29_257:                              ;   in Loop: Header=BB29_249 Depth=3
	ldp	x11, x10, [sp, #336]            ; 16-byte Folded Reload
	cmp	x10, x13
	cset	w10, hi
	cmp	x11, x12
LBB29_258:                              ;   in Loop: Header=BB29_249 Depth=3
	cset	w11, hi
	csel	w10, w10, w11, eq
	tbz	w10, #0, LBB29_260
LBB29_259:                              ;   in Loop: Header=BB29_249 Depth=3
	ldr	w10, [sp, #376]                 ; 4-byte Folded Reload
	strh	w10, [sp, #396]
	stp	x9, x8, [x28, #64]
	stp	x14, x15, [sp, #232]            ; 16-byte Folded Spill
	stp	x15, x14, [x28, #80]
	stp	x12, x13, [sp, #336]            ; 16-byte Folded Spill
	stp	x9, x8, [sp, #168]              ; 16-byte Folded Spill
	stp	x13, x12, [x28, #96]
LBB29_260:                              ;   in Loop: Header=BB29_249 Depth=3
	ldr	w8, [sp, #376]                  ; 4-byte Folded Reload
	add	w8, w8, #1
	and	w9, w8, #0xffff
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	str	w9, [sp, #376]                  ; 4-byte Folded Spill
	cmp	w9, w8
	b.hi	LBB29_263
; %bb.261:                              ;   in Loop: Header=BB29_249 Depth=3
	ldr	w8, [sp, #200]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #376]                  ; 4-byte Folded Reload
	cmp	w8, w9
	b.ge	LBB29_249
	b	LBB29_263
LBB29_262:                              ;   in Loop: Header=BB29_249 Depth=3
	ldp	x11, x10, [sp, #232]            ; 16-byte Folded Reload
	cmp	x10, x15
	cset	w10, ls
	cmp	x11, x14
	cset	w11, ls
	csel	w10, w10, w11, eq
	tbz	w10, #0, LBB29_259
	b	LBB29_260
LBB29_263:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrh	w8, [sp, #396]
LBB29_264:                              ;   in Loop: Header=BB29_240 Depth=2
	mvn	w9, w8
	ldr	x10, [sp, #152]                 ; 8-byte Folded Reload
	add	w9, w10, w9
	strh	w9, [sp, #398]
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
Lloh260:
	adrp	x11, _p2@PAGE
Lloh261:
	add	x11, x11, _p2@PAGEOFF
	ldrh	w10, [x11, w10, uxtw  #1]
	strh	w9, [sp, #394]
	sub	w9, w10, #1
	strh	w9, [sp, #392]
	mov	w9, #43691
	mul	w9, w8, w9
	lsr	w9, w9, #19
	msub	w8, w9, w12, w8
	strh	w8, [sp, #390]
	and	x8, x8, #0xffff
	ldrh	w8, [x11, x8, lsl  #1]
	sub	w8, w8, #1
	strh	w8, [sp, #388]
Ltmp151:
	add	x8, sp, #848
	mov	x0, x23
Lloh262:
	adrp	x1, _ys@PAGE
Lloh263:
	add	x1, x1, _ys@PAGEOFF
	bl	__ZNK11__uint384_t3invERt
Ltmp152:
; %bb.265:                              ;   in Loop: Header=BB29_240 Depth=2
	ldp	q0, q1, [x28, #352]
Lloh264:
	adrp	x8, _ym@PAGE
Lloh265:
	add	x8, x8, _ym@PAGEOFF
	stp	q0, q1, [x8]
	ldr	q0, [x28, #384]
	str	q0, [x8, #32]
	ldrh	w8, [sp, #398]
Lloh266:
	adrp	x9, _p23@PAGE
Lloh267:
	add	x9, x9, _p23@PAGEOFF
	mov	w10, #11664
	madd	x8, x8, x10, x9
	mov	x9, #-11664
	add	x8, x8, x9
	ldp	q1, q0, [x8, #16]
	stp	q1, q0, [x28, #80]
	ldr	q0, [x8]
	str	q0, [x28, #64]
	ldp	x9, x8, [x23, #32]
	ldp	x13, x12, [x28, #96]
	ldp	x11, x10, [x28, #64]
	ldp	x15, x14, [x28, #80]
	b	LBB29_268
LBB29_266:                              ;   in Loop: Header=BB29_268 Depth=3
	cmp	x15, x16
	cset	w0, ls
	cmp	x14, x17
	cset	w1, ls
	csel	w0, w0, w1, eq
	tbnz	w0, #0, LBB29_273
LBB29_267:                              ;   in Loop: Header=BB29_268 Depth=3
	ldp	x1, x0, [x23]
	subs	x11, x11, x1
	sbc	x10, x10, x0
	stp	x11, x10, [x28, #64]
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
	stp	x15, x14, [x28, #80]
	cmn	x17, #1
	cset	w17, eq
	and	w16, w16, w17
	subs	x13, x13, x16
	sbc	x12, x12, xzr
	stp	x13, x12, [x28, #96]
LBB29_268:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	eor	x16, x13, x9
	eor	x17, x12, x8
	orr	x16, x16, x17
	cbnz	x16, LBB29_271
; %bb.269:                              ;   in Loop: Header=BB29_268 Depth=3
	ldp	x16, x17, [x23, #16]
	eor	x0, x14, x17
	eor	x1, x15, x16
	orr	x0, x1, x0
	cbnz	x0, LBB29_266
; %bb.270:                              ;   in Loop: Header=BB29_268 Depth=3
	ldp	x17, x16, [x23]
	cmp	x11, x17
	cset	w17, hi
	cmp	x10, x16
	cset	w16, hi
	csel	w0, w17, w16, eq
	mov	x16, x15
	mov	x17, x14
	tbnz	w0, #0, LBB29_267
	b	LBB29_273
LBB29_271:                              ;   in Loop: Header=BB29_268 Depth=3
	cmp	x13, x9
	cset	w16, ls
	cmp	x12, x8
	cset	w17, ls
	csel	w16, w16, w17, eq
	tbnz	w16, #0, LBB29_273
; %bb.272:                              ;   in Loop: Header=BB29_268 Depth=3
	ldp	x16, x17, [x23, #16]
	b	LBB29_267
LBB29_273:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrh	w8, [sp, #396]
	cbz	w8, LBB29_287
; %bb.274:                              ;   in Loop: Header=BB29_240 Depth=2
	mov	x21, #0
	mov	w26, #0
	mov	w24, #0
	b	LBB29_276
LBB29_275:                              ;   in Loop: Header=BB29_276 Depth=3
	add	x21, x21, #1
	ldrh	w8, [sp, #396]
	sub	w26, w26, #1
	mov	x24, x21
	cmp	x21, x8
	b.hs	LBB29_288
LBB29_276:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB29_281 Depth 4
                                        ;         Child Loop BB29_285 Depth 4
	ldrh	w9, [sp, #558]
	sub	x8, x9, w24, sxtw
	mov	w10, #11664
Lloh268:
	adrp	x11, _p23y@PAGE
Lloh269:
	add	x11, x11, _p23y@PAGEOFF
	madd	x10, x21, x10, x11
	madd	x10, x8, x22, x10
	sub	w8, w9, w21
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x10, #48]
	str	q0, [x10, #80]
	tbnz	w8, #15, LBB29_275
; %bb.277:                              ;   in Loop: Header=BB29_276 Depth=3
	cbz	x21, LBB29_284
; %bb.278:                              ;   in Loop: Header=BB29_276 Depth=3
	sxth	w8, w8
	mvn	w25, w24
	and	w8, w8, #0xffff
	add	w9, w9, w26
	sxth	x27, w9
	mov	w4, #11664
	b	LBB29_281
LBB29_279:                              ;   in Loop: Header=BB29_281 Depth=4
	movi.2d	v0, #0000000000000000
	str	q0, [x28, #1616]
	str	q0, [x28, #1600]
	str	q0, [x28, #1584]
LBB29_280:                              ;   in Loop: Header=BB29_281 Depth=4
	mov	w4, #11664
Lloh270:
	adrp	x14, _p23y@PAGE
Lloh271:
	add	x14, x14, _p23y@PAGEOFF
	madd	x14, x21, x4, x14
	add	x14, x14, x19
	ldr	q0, [x28, #1584]
	ldr	q1, [x28, #1600]
	stp	q0, q1, [x14]
	ldr	q0, [x28, #1616]
	str	q0, [x14, #32]
	ldp	x16, x15, [x14]
	subs	x16, x16, x11
	sbc	x15, x15, x9
	stp	x16, x15, [x14]
	ldp	x0, x17, [x14, #16]
	subs	x0, x0, x13
	sbc	x17, x17, x12
	cmn	x0, x13
	adcs	xzr, x17, x12
	cset	w12, hs
	ldp	x1, x13, [x14, #32]
	subs	x10, x1, x10
	sbc	x8, x13, x8
	subs	x10, x10, x12
	sbc	x8, x8, xzr
	cmn	x16, x11
	adcs	xzr, x15, x9
	cset	w9, hs
	subs	x11, x0, x9
	sbc	x12, x17, xzr
	and	x13, x11, x12
	stp	x11, x12, [x14, #16]
	cmn	x13, #1
	cset	w11, eq
	and	w9, w9, w11
	subs	x9, x10, x9
	sbc	x8, x8, xzr
	stp	x9, x8, [x14, #32]
	sub	x8, x27, #1
	cmp	x27, #0
	mov	x27, x8
	b.le	LBB29_275
LBB29_281:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ;       Parent Loop BB29_276 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	and	x9, x27, #0xffff
	add	x9, x9, w27, uxth #1
	lsl	x19, x9, #4
	ldrh	w9, [sp, #396]
	sub	w10, w9, w24
	add	w8, w8, w24
Lloh272:
	adrp	x3, _p23@PAGE
Lloh273:
	add	x3, x3, _p23@PAGEOFF
	smaddl	x10, w10, w4, x3
	umaddl	x10, w8, w22, x10
	ldp	q0, q1, [x10]
	stp	q0, q1, [x28, #352]
	ldr	q0, [x10, #32]
	str	q0, [x28, #384]
	madd	x10, x9, x4, x3
	add	x10, x10, x19
	ldp	x12, x11, [x10]
	ldp	x14, x13, [x28, #352]
	subs	x14, x14, x12
	sbc	x13, x13, x11
	ldp	x16, x15, [x10, #16]
	ldp	x0, x17, [x28, #368]
	subs	x0, x0, x16
	sbc	x17, x17, x15
	ldp	x10, x1, [x10, #32]
	cmn	x0, x16
	adcs	xzr, x17, x15
	cset	w15, hs
	ldp	x2, x16, [x28, #384]
	subs	x10, x2, x10
	sbc	x16, x16, x1
	subs	x10, x10, x15
	sbc	x15, x16, xzr
	cmn	x14, x12
	adcs	xzr, x13, x11
	cset	w11, hs
	subs	x12, x0, x11
	sbc	x16, x17, xzr
	and	x17, x12, x16
	cmn	x17, #1
	cset	w17, eq
	and	w11, w11, w17
	subs	x10, x10, x11
	sbc	x11, x15, xzr
	add	w9, w9, w25
	sub	w8, w8, #1
	smaddl	x9, w9, w4, x3
	umaddl	x8, w8, w22, x9
	ldp	x15, x9, [x8]
	subs	x14, x14, x15
	sbc	x13, x13, x9
	stp	x14, x13, [x28, #352]
	ldp	x0, x17, [x8, #16]
	subs	x12, x12, x0
	sbc	x16, x16, x17
	ldp	x8, x1, [x8, #32]
	cmn	x12, x0
	adcs	xzr, x16, x17
	cset	w17, hs
	subs	x8, x10, x8
	sbc	x10, x11, x1
	subs	x8, x8, x17
	sbc	x10, x10, xzr
	cmn	x14, x15
	adcs	xzr, x13, x9
	cset	w9, hs
	subs	x11, x12, x9
	sbc	x12, x16, xzr
	and	x13, x11, x12
	stp	x11, x12, [x28, #368]
	cmn	x13, #1
	cset	w11, eq
	and	w9, w9, w11
	subs	x8, x8, x9
	sbc	x9, x10, xzr
	stp	x8, x9, [x28, #384]
Ltmp154:
	add	x0, sp, #848
	mov	x1, x23
	bl	__Z13fast_reminderR11__uint384_tRKS_
Ltmp155:
; %bb.282:                              ;   in Loop: Header=BB29_281 Depth=4
	ldp	x10, x8, [x28, #384]
	ldp	x13, x12, [x28, #368]
	orr	x14, x13, x10
	orr	x15, x12, x8
	ldp	x11, x9, [x28, #352]
	orr	x15, x15, x9
	orr	x14, x14, x11
	orr	x14, x14, x15
	cbz	x14, LBB29_279
; %bb.283:                              ;   in Loop: Header=BB29_281 Depth=4
	ldp	q0, q1, [x23]
	str	q0, [x28, #1584]
	str	q1, [x28, #1600]
	ldr	q0, [x23, #32]
	str	q0, [x28, #1616]
	b	LBB29_280
LBB29_284:                              ;   in Loop: Header=BB29_276 Depth=3
	add	w8, w9, w26
	sxth	x19, w8
Lloh274:
	adrp	x8, _p23@PAGE
Lloh275:
	add	x8, x8, _p23@PAGEOFF
	madd	x8, x19, x22, x8
	mov	x9, #-11712
	add	x20, x8, x9
	mov	w24, #11664
LBB29_285:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ;       Parent Loop BB29_276 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	and	x8, x19, #0xffff
Lloh276:
	adrp	x9, _p23y@PAGE
Lloh277:
	add	x9, x9, _p23y@PAGEOFF
	madd	x0, x8, x22, x9
	ldrh	w8, [sp, #396]
	madd	x8, x8, x24, x20
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldr	q0, [x8, #32]
	str	q0, [x0, #32]
Ltmp157:
	mov	x1, x23
	bl	__Z13fast_reminderR11__uint384_tRKS_
Ltmp158:
; %bb.286:                              ;   in Loop: Header=BB29_285 Depth=4
	sub	x19, x19, #1
	sub	x20, x20, #48
	add	x8, x19, #1
	cmp	x8, #0
	b.gt	LBB29_285
	b	LBB29_275
LBB29_287:                              ;   in Loop: Header=BB29_240 Depth=2
	mov	x8, #0
LBB29_288:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrsh	w9, [sp, #558]
	tbnz	w9, #31, LBB29_291
; %bb.289:                              ;   in Loop: Header=BB29_240 Depth=2
	and	x9, x9, #0xffff
	add	x9, x9, x9, lsl #1
	lsl	x9, x9, #4
	mov	w10, #11664
Lloh278:
	adrp	x11, _p23y@PAGE
Lloh279:
	add	x11, x11, _p23y@PAGEOFF
	madd	x8, x8, x10, x11
LBB29_290:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x10, x8, x9
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x10, #16]
	str	q0, [x10]
	sub	x9, x9, #48
	cmn	x9, #48
	b.ne	LBB29_290
LBB29_291:                              ;   in Loop: Header=BB29_240 Depth=2
Lloh280:
	adrp	x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh281:
	ldr	x8, [x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x19, x8, #104
	str	x19, [x28, #480]
	add	x20, x8, #64
	str	x20, [x28, #368]
	ldp	x10, x8, [sp, #104]             ; 16-byte Folded Reload
	str	x8, [x28, #352]
	ldur	x8, [x8, #-24]
	add	x9, sp, #848
	str	x10, [x9, x8]
	str	xzr, [x28, #360]
	ldr	x8, [x28, #352]
	ldur	x8, [x8, #-24]
	add	x24, sp, #848
	add	x21, x9, x8
Ltmp160:
	mov	x0, x21
	ldr	x1, [sp, #160]                  ; 8-byte Folded Reload
	bl	__ZNSt3__18ios_base4initEPv
Ltmp161:
; %bb.292:                              ;   in Loop: Header=BB29_240 Depth=2
	str	xzr, [x21, #136]
	mov	w8, #-1
	str	w8, [x21, #144]
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	str	x8, [x28, #368]
	ldur	x8, [x8, #-24]
	ldr	x9, [sp, #360]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
	str	x10, [x9, x8]
	ldp	x8, x9, [sp, #56]               ; 16-byte Folded Reload
	str	x8, [x28, #352]
	ldur	x8, [x8, #-24]
	str	x9, [x24, x8]
Lloh282:
	adrp	x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh283:
	ldr	x8, [x8, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #24
	str	x8, [x28, #352]
	str	x19, [x28, #480]
	str	x20, [x28, #368]
Ltmp163:
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp164:
; %bb.293:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x8, [x28, #376]
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8]
	mov	w8, #24
	str	w8, [sp, #968]
Ltmp166:
	mov	x0, #0
	bl	_time
Ltmp167:
; %bb.294:                              ;   in Loop: Header=BB29_240 Depth=2
Lloh284:
	adrp	x8, _start_time@PAGE
Lloh285:
	ldr	x1, [x8, _start_time@PAGEOFF]
Ltmp168:
	bl	_difftime
Ltmp169:
; %bb.295:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp170:
	ldr	x0, [sp, #360]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp171:
; %bb.296:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp172:
Lloh286:
	adrp	x1, l_.str.20@PAGE
Lloh287:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp173:
; %bb.297:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp174:
	mov	x21, x0
	bl	_pthread_self
	mov	x1, x0
Ltmp175:
; %bb.298:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp177:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp178:
; %bb.299:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp179:
Lloh288:
	adrp	x1, l_.str.21@PAGE
Lloh289:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp180:
; %bb.300:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp181:
	ldr	x0, [sp, #360]                  ; 8-byte Folded Reload
Lloh290:
	adrp	x1, l_.str.23@PAGE
Lloh291:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #12
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp182:
; %bb.301:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrh	w1, [sp, #558]
Ltmp183:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp184:
; %bb.302:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp185:
Lloh292:
	adrp	x1, l_.str.12@PAGE
Lloh293:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp186:
; %bb.303:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrh	w1, [sp, #398]
Ltmp187:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp188:
; %bb.304:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp189:
Lloh294:
	adrp	x1, l_.str.12@PAGE
Lloh295:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp190:
; %bb.305:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrh	w1, [sp, #396]
Ltmp191:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp192:
; %bb.306:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp193:
Lloh296:
	adrp	x1, l_.str.12@PAGE
Lloh297:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp194:
; %bb.307:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp195:
	mov	x19, x0
	add	x0, sp, #832
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp196:
; %bb.308:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrb	w8, [sp, #832]
	cbz	w8, LBB29_314
; %bb.309:                              ;   in Loop: Header=BB29_240 Depth=2
	ldp	q0, q1, [x23]
	stp	q0, q1, [x28, #288]
	ldr	q0, [x23, #32]
	str	q0, [x28, #320]
	ldr	x21, [sp, #144]                 ; 8-byte Folded Reload
LBB29_310:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8]
	mov	w8, #10
	stp	x8, xzr, [x28, #144]
	add	x8, sp, #688
	add	x0, sp, #784
	add	x1, sp, #640
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [x28, #240]
Lloh298:
	adrp	x9, l_.str@PAGE
Lloh299:
	add	x9, x9, l_.str@PAGEOFF
	ldrb	w8, [x9, x8]
	strb	w8, [x21, #-1]!
	ldr	q2, [x28, #224]
	ldp	q1, q0, [x28, #192]
	stp	q0, q2, [x28, #304]
	str	q1, [x28, #288]
	ldp	x9, x8, [x28, #320]
	ldp	x11, x10, [x28, #304]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldp	x10, x11, [x28, #288]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB29_310
; %bb.311:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #144]                  ; 8-byte Folded Reload
	sub	w8, w8, w21
	sxtw	x20, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp197:
	mov	x1, x21
	mov	x2, x20
	blr	x8
Ltmp198:
; %bb.312:                              ;   in Loop: Header=BB29_240 Depth=2
	cmp	x0, x20
	b.eq	LBB29_314
; %bb.313:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp199:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp200:
LBB29_314:                              ;   in Loop: Header=BB29_240 Depth=2
	add	x0, sp, #832
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp202:
	add	x8, sp, #2080
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp203:
; %bb.315:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp204:
	add	x0, sp, #2080
Lloh300:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh301:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp205:
; %bb.316:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp206:
	mov	w1, #10
	blr	x8
Ltmp207:
; %bb.317:                              ;   in Loop: Header=BB29_240 Depth=2
	mov	x21, x0
	add	x0, sp, #2080
	bl	__ZNSt3__16localeD1Ev
Ltmp209:
	mov	x0, x19
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp210:
; %bb.318:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp211:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp212:
; %bb.319:                              ;   in Loop: Header=BB29_240 Depth=2
Ltmp214:
	add	x8, sp, #2080
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp215:
; %bb.320:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrb	w8, [sp, #2103]
	sxtb	w9, w8
	ldr	x10, [x28, #1584]
	ldr	x11, [x28, #1592]
	cmp	w9, #0
	add	x9, sp, #2080
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp217:
Lloh302:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh303:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp218:
; %bb.321:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrsb	w8, [sp, #2103]
	tbz	w8, #31, LBB29_323
; %bb.322:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x0, [x28, #1584]
	bl	__ZdlPv
LBB29_323:                              ;   in Loop: Header=BB29_240 Depth=2
	ldp	x19, x20, [x28, #120]
Lloh304:
	adrp	x8, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh305:
	ldr	x8, [x8, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
	ldaprb	w8, [x8]
	tbz	w8, #0, LBB29_331
LBB29_324:                              ;   in Loop: Header=BB29_240 Depth=2
	sub	x8, x20, x19
	asr	x8, x8, #1
Lloh306:
	adrp	x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh307:
	ldr	x9, [x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
Lloh308:
	ldr	x9, [x9]
	lsl	x9, x9, #15
	cmp	x9, x8
	csel	x0, x9, x8, lo
	cmp	x0, #2
	b.lo	LBB29_326
; %bb.325:                              ;   in Loop: Header=BB29_240 Depth=2
	add	x9, sp, #396
	str	x9, [x28, #1616]
	add	x9, sp, #558
	str	x9, [x28, #1624]
	str	x23, [x28, #1632]
	add	x9, sp, #398
	str	x9, [x28, #1640]
	add	x9, sp, #390
	str	x9, [x28, #1648]
	add	x9, sp, #388
	str	x9, [x28, #1656]
	add	x9, sp, #560
	str	x9, [x28, #1664]
	add	x9, sp, #394
	str	x9, [x28, #1672]
	add	x9, sp, #392
	str	x9, [x28, #1680]
	add	x9, sp, #1416
	str	x9, [x28, #1688]
	str	x19, [x28, #1584]
	udiv	x9, x8, x0
	str	x9, [x28, #1592]
	msub	x9, x9, x0, x8
	str	x9, [x28, #1600]
	str	x8, [x28, #1608]
	add	x2, sp, #2080
	mov	x1, #0
Lloh309:
	adrp	x3, __ZN5pstld8internal12DispatchableINS0_7ForEachINSt3__111__wrap_iterIPtEEZ4mainE3$_0EEE8dispatchEPvm@PAGE
Lloh310:
	add	x3, x3, __ZN5pstld8internal12DispatchableINS0_7ForEachINSt3__111__wrap_iterIPtEEZ4mainE3$_0EEE8dispatchEPvm@PAGEOFF
	bl	_dispatch_apply_f
	b	LBB29_329
LBB29_326:                              ;   in Loop: Header=BB29_240 Depth=2
	add	x8, sp, #396
	str	x8, [x28, #1584]
	add	x8, sp, #558
	str	x8, [x28, #1592]
	str	x23, [x28, #1600]
	add	x8, sp, #398
	str	x8, [x28, #1608]
	add	x8, sp, #390
	str	x8, [x28, #1616]
	add	x8, sp, #388
	str	x8, [x28, #1624]
	add	x8, sp, #560
	str	x8, [x28, #1632]
	add	x8, sp, #394
	str	x8, [x28, #1640]
	add	x8, sp, #392
	str	x8, [x28, #1648]
	add	x8, sp, #1416
	str	x8, [x28, #1656]
	cmp	x19, x20
	b.eq	LBB29_329
LBB29_327:                              ;   Parent Loop BB29_197 Depth=1
                                        ;     Parent Loop BB29_240 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrh	w1, [x19]
Ltmp223:
	add	x0, sp, #2080
	bl	__ZZ4mainENK3$_0clERt
Ltmp224:
; %bb.328:                              ;   in Loop: Header=BB29_327 Depth=3
	add	x19, x19, #2
	cmp	x19, x20
	b.ne	LBB29_327
LBB29_329:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x8, [x28, #352]
	ldur	x8, [x8, #-24]
	ldr	x9, [sp, #120]                  ; 8-byte Folded Reload
	str	x9, [x24, x8]
Lloh311:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh312:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	stp	x9, x8, [x28, #368]
	ldrsb	w8, [sp, #959]
	tbz	w8, #31, LBB29_239
; %bb.330:                              ;   in Loop: Header=BB29_240 Depth=2
	ldr	x0, [x28, #440]
	bl	__ZdlPv
	b	LBB29_239
LBB29_331:                              ;   in Loop: Header=BB29_240 Depth=2
Lloh313:
	adrp	x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh314:
	ldr	x0, [x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
	bl	___cxa_guard_acquire
	cbz	w0, LBB29_324
; %bb.332:                              ;   in Loop: Header=BB29_240 Depth=2
	mov	w8, #4
	str	x8, [x28, #1584]
Ltmp220:
	add	x1, sp, #688
	add	x2, sp, #2080
Lloh315:
	adrp	x0, l_.str.27@PAGE
Lloh316:
	add	x0, x0, l_.str.27@PAGEOFF
	mov	x3, #0
	mov	x4, #0
	bl	_sysctlbyname
Ltmp221:
; %bb.333:                              ;   in Loop: Header=BB29_240 Depth=2
	ldrsw	x8, [sp, #688]
Lloh317:
	adrp	x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh318:
	ldr	x9, [x9, __ZZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
Lloh319:
	str	x8, [x9]
Lloh320:
	adrp	x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGE
Lloh321:
	ldr	x0, [x0, __ZGVZN5pstld8internal14max_hw_threadsEvE7threads@GOTPAGEOFF]
	bl	___cxa_guard_release
	b	LBB29_324
LBB29_334:                              ;   in Loop: Header=BB29_197 Depth=1
	ldr	x0, [x28, #728]
	bl	__ZdlPv
	b	LBB29_196
LBB29_335:
Ltmp222:
	bl	___clang_call_terminate
LBB29_336:
Ltmp150:
	mov	x21, x0
	ldrsb	w8, [sp, #871]
	tbz	w8, #31, LBB29_361
; %bb.337:
	ldr	x0, [x28, #352]
	bl	__ZdlPv
	b	LBB29_361
LBB29_338:
Ltmp147:
	b	LBB29_360
LBB29_339:
Ltmp120:
	bl	___clang_call_terminate
LBB29_340:
Ltmp109:
	mov	x21, x0
	b	LBB29_364
LBB29_341:
Ltmp139:
	mov	x21, x0
	add	x0, sp, #848
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_361
LBB29_342:
Ltmp144:
	b	LBB29_360
LBB29_343:
Ltmp201:
	mov	x21, x0
	add	x0, sp, #832
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB29_356
LBB29_344:
Ltmp219:
	mov	x21, x0
	ldrsb	w8, [sp, #2103]
	tbz	w8, #31, LBB29_356
; %bb.345:
	ldr	x0, [x28, #1584]
	bl	__ZdlPv
	b	LBB29_356
LBB29_346:
Ltmp216:
	b	LBB29_355
LBB29_347:
Ltmp176:
	bl	___clang_call_terminate
LBB29_348:
Ltmp165:
	mov	x21, x0
Lloh322:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh323:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #848
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB29_350
LBB29_349:
Ltmp162:
	mov	x21, x0
LBB29_350:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB29_361
LBB29_351:
Ltmp153:
	b	LBB29_360
LBB29_352:
Ltmp208:
	mov	x21, x0
	add	x0, sp, #2080
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_356
LBB29_353:
Ltmp225:
	bl	___clang_call_terminate
LBB29_354:
Ltmp213:
LBB29_355:
	mov	x21, x0
LBB29_356:
	add	x0, sp, #848
	bl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB29_361
LBB29_357:
Ltmp106:
	mov	x21, x0
	b	LBB29_364
LBB29_358:
Ltmp159:
	b	LBB29_360
LBB29_359:
Ltmp156:
LBB29_360:
	mov	x21, x0
LBB29_361:
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x8, [x28, #640]
	ldur	x8, [x8, #-24]
	add	x9, sp, #1136
	ldr	x10, [sp, #120]                 ; 8-byte Folded Reload
	str	x10, [x9, x8]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x8, [x28, #656]
Lloh324:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh325:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x28, #664]
	ldrsb	w8, [sp, #1247]
	tbz	w8, #31, LBB29_363
; %bb.362:
	ldr	x0, [x28, #728]
	bl	__ZdlPv
LBB29_363:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh326:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh327:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #1136
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB29_364:
	ldr	x0, [x28, #120]
	cbz	x0, LBB29_385
; %bb.365:
	str	x0, [x28, #128]
	bl	__ZdlPv
	b	LBB29_385
LBB29_366:
Ltmp91:
	mov	x21, x0
	add	x0, sp, #400
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB29_385
LBB29_367:
Ltmp82:
	mov	x21, x0
	add	x0, sp, #848
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB29_385
LBB29_368:
Ltmp98:
	mov	x21, x0
	add	x0, sp, #1136
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_385
LBB29_369:
Ltmp103:
	b	LBB29_384
LBB29_370:
Ltmp256:
	b	LBB29_374
LBB29_371:
Ltmp289:
	b	LBB29_374
LBB29_372:
Ltmp322:
	b	LBB29_374
LBB29_373:
Ltmp355:
LBB29_374:
	mov	x21, x0
	add	x0, sp, #2080
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_385
LBB29_375:
Ltmp383:
	b	LBB29_378
LBB29_376:
Ltmp63:
	b	LBB29_378
LBB29_377:
Ltmp412:
LBB29_378:
	mov	x21, x0
	add	x0, sp, #848
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_385
LBB29_379:
Ltmp36:
	b	LBB29_384
LBB29_380:
Ltmp33:
	mov	x21, x0
Lloh328:
	adrp	x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh329:
	ldr	x8, [x8, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	b	LBB29_386
LBB29_381:
Ltmp30:
	mov	x21, x0
	b	LBB29_387
LBB29_382:
Ltmp417:
	b	LBB29_384
LBB29_383:
Ltmp360:
LBB29_384:
	mov	x21, x0
LBB29_385:
Lloh330:
	adrp	x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh331:
	ldr	x19, [x19, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x19]
	str	x8, [x28, #920]
	ldr	x9, [x19, #24]
	ldur	x8, [x8, #-24]
	add	x10, sp, #1416
	str	x9, [x10, x8]
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x19, #8
LBB29_386:
	add	x0, sp, #1416
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
LBB29_387:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
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
	.loh AdrpLdrGot	Lloh91, Lloh92
	.loh AdrpLdrGot	Lloh89, Lloh90
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpLdrGot	Lloh93, Lloh94
	.loh AdrpAdd	Lloh97, Lloh98
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
	.loh AdrpLdrGot	Lloh119, Lloh120
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpLdrGot	Lloh121, Lloh122
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh129, Lloh130
	.loh AdrpLdrGot	Lloh131, Lloh132
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpLdrGot	Lloh133, Lloh134
	.loh AdrpAdd	Lloh137, Lloh138
	.loh AdrpAdd	Lloh139, Lloh140
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpLdrGot	Lloh147, Lloh148
	.loh AdrpAdd	Lloh151, Lloh152
	.loh AdrpLdrGot	Lloh149, Lloh150
	.loh AdrpAdd	Lloh153, Lloh154
	.loh AdrpAdd	Lloh155, Lloh156
	.loh AdrpAdd	Lloh157, Lloh158
	.loh AdrpAdd	Lloh159, Lloh160
	.loh AdrpAdd	Lloh161, Lloh162
	.loh AdrpLdrGot	Lloh163, Lloh164
	.loh AdrpAdd	Lloh167, Lloh168
	.loh AdrpLdrGot	Lloh165, Lloh166
	.loh AdrpAdd	Lloh169, Lloh170
	.loh AdrpAdd	Lloh171, Lloh172
	.loh AdrpAdd	Lloh173, Lloh174
	.loh AdrpAdd	Lloh175, Lloh176
	.loh AdrpAdd	Lloh177, Lloh178
	.loh AdrpLdrGot	Lloh179, Lloh180
	.loh AdrpAdd	Lloh183, Lloh184
	.loh AdrpLdrGot	Lloh181, Lloh182
	.loh AdrpAdd	Lloh185, Lloh186
	.loh AdrpAdd	Lloh187, Lloh188
	.loh AdrpAdd	Lloh189, Lloh190
	.loh AdrpAdd	Lloh191, Lloh192
	.loh AdrpAdd	Lloh193, Lloh194
	.loh AdrpLdrGot	Lloh195, Lloh196
	.loh AdrpLdrGotLdr	Lloh199, Lloh200, Lloh201
	.loh AdrpLdrGot	Lloh197, Lloh198
	.loh AdrpAdd	Lloh204, Lloh205
	.loh AdrpLdrGot	Lloh202, Lloh203
	.loh AdrpAdd	Lloh206, Lloh207
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpLdrGot	Lloh214, Lloh215
	.loh AdrpLdrGot	Lloh216, Lloh217
	.loh AdrpLdrGot	Lloh218, Lloh219
	.loh AdrpAdd	Lloh220, Lloh221
	.loh AdrpAdd	Lloh222, Lloh223
	.loh AdrpAdd	Lloh224, Lloh225
	.loh AdrpAdd	Lloh226, Lloh227
	.loh AdrpAdd	Lloh228, Lloh229
	.loh AdrpLdr	Lloh230, Lloh231
	.loh AdrpAdd	Lloh232, Lloh233
	.loh AdrpAdd	Lloh234, Lloh235
	.loh AdrpAdd	Lloh236, Lloh237
	.loh AdrpAdd	Lloh238, Lloh239
	.loh AdrpLdrGot	Lloh240, Lloh241
	.loh AdrpLdrGot	Lloh242, Lloh243
	.loh AdrpLdrGot	Lloh244, Lloh245
	.loh AdrpAdd	Lloh250, Lloh251
	.loh AdrpAdd	Lloh248, Lloh249
	.loh AdrpAdd	Lloh246, Lloh247
	.loh AdrpAdd	Lloh254, Lloh255
	.loh AdrpAdd	Lloh252, Lloh253
	.loh AdrpAdd	Lloh256, Lloh257
	.loh AdrpAdd	Lloh258, Lloh259
	.loh AdrpAdd	Lloh262, Lloh263
	.loh AdrpAdd	Lloh260, Lloh261
	.loh AdrpAdd	Lloh266, Lloh267
	.loh AdrpAdd	Lloh264, Lloh265
	.loh AdrpAdd	Lloh268, Lloh269
	.loh AdrpAdd	Lloh270, Lloh271
	.loh AdrpAdd	Lloh272, Lloh273
	.loh AdrpAdd	Lloh274, Lloh275
	.loh AdrpAdd	Lloh276, Lloh277
	.loh AdrpAdd	Lloh278, Lloh279
	.loh AdrpLdrGot	Lloh280, Lloh281
	.loh AdrpLdrGot	Lloh282, Lloh283
	.loh AdrpLdr	Lloh284, Lloh285
	.loh AdrpAdd	Lloh286, Lloh287
	.loh AdrpAdd	Lloh288, Lloh289
	.loh AdrpAdd	Lloh290, Lloh291
	.loh AdrpAdd	Lloh292, Lloh293
	.loh AdrpAdd	Lloh294, Lloh295
	.loh AdrpAdd	Lloh296, Lloh297
	.loh AdrpAdd	Lloh298, Lloh299
	.loh AdrpLdrGot	Lloh300, Lloh301
	.loh AdrpLdrGot	Lloh302, Lloh303
	.loh AdrpLdrGot	Lloh304, Lloh305
	.loh AdrpLdrGotLdr	Lloh306, Lloh307, Lloh308
	.loh AdrpAdd	Lloh309, Lloh310
	.loh AdrpLdrGot	Lloh311, Lloh312
	.loh AdrpLdrGot	Lloh313, Lloh314
	.loh AdrpAdd	Lloh315, Lloh316
	.loh AdrpLdrGot	Lloh320, Lloh321
	.loh AdrpLdrGotStr	Lloh317, Lloh318, Lloh319
	.loh AdrpLdrGot	Lloh322, Lloh323
	.loh AdrpLdrGot	Lloh324, Lloh325
	.loh AdrpLdrGot	Lloh326, Lloh327
	.loh AdrpLdrGot	Lloh328, Lloh329
	.loh AdrpLdrGot	Lloh330, Lloh331
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
	.uleb128 Ltmp104-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp105-Ltmp104                ;   Call between Ltmp104 and Ltmp105
	.uleb128 Ltmp106-Lfunc_begin5           ;     jumps to Ltmp106
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp386-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp407-Ltmp386                ;   Call between Ltmp386 and Ltmp407
	.uleb128 Ltmp417-Lfunc_begin5           ;     jumps to Ltmp417
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp408-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp411-Ltmp408                ;   Call between Ltmp408 and Ltmp411
	.uleb128 Ltmp412-Lfunc_begin5           ;     jumps to Ltmp412
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp413-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp58-Ltmp413                 ;   Call between Ltmp413 and Ltmp58
	.uleb128 Ltmp417-Lfunc_begin5           ;     jumps to Ltmp417
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin5            ; >> Call Site 8 <<
	.uleb128 Ltmp62-Ltmp59                  ;   Call between Ltmp59 and Ltmp62
	.uleb128 Ltmp63-Lfunc_begin5            ;     jumps to Ltmp63
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp64-Lfunc_begin5            ; >> Call Site 9 <<
	.uleb128 Ltmp378-Ltmp64                 ;   Call between Ltmp64 and Ltmp378
	.uleb128 Ltmp417-Lfunc_begin5           ;     jumps to Ltmp417
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp379-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Ltmp382-Ltmp379                ;   Call between Ltmp379 and Ltmp382
	.uleb128 Ltmp383-Lfunc_begin5           ;     jumps to Ltmp383
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp384-Lfunc_begin5           ; >> Call Site 11 <<
	.uleb128 Ltmp416-Ltmp384                ;   Call between Ltmp384 and Ltmp416
	.uleb128 Ltmp417-Lfunc_begin5           ;     jumps to Ltmp417
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp325-Lfunc_begin5           ; >> Call Site 12 <<
	.uleb128 Ltmp350-Ltmp325                ;   Call between Ltmp325 and Ltmp350
	.uleb128 Ltmp360-Lfunc_begin5           ;     jumps to Ltmp360
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp351-Lfunc_begin5           ; >> Call Site 13 <<
	.uleb128 Ltmp354-Ltmp351                ;   Call between Ltmp351 and Ltmp354
	.uleb128 Ltmp355-Lfunc_begin5           ;     jumps to Ltmp355
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp356-Lfunc_begin5           ; >> Call Site 14 <<
	.uleb128 Ltmp317-Ltmp356                ;   Call between Ltmp356 and Ltmp317
	.uleb128 Ltmp360-Lfunc_begin5           ;     jumps to Ltmp360
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp318-Lfunc_begin5           ; >> Call Site 15 <<
	.uleb128 Ltmp321-Ltmp318                ;   Call between Ltmp318 and Ltmp321
	.uleb128 Ltmp322-Lfunc_begin5           ;     jumps to Ltmp322
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp323-Lfunc_begin5           ; >> Call Site 16 <<
	.uleb128 Ltmp284-Ltmp323                ;   Call between Ltmp323 and Ltmp284
	.uleb128 Ltmp360-Lfunc_begin5           ;     jumps to Ltmp360
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp285-Lfunc_begin5           ; >> Call Site 17 <<
	.uleb128 Ltmp288-Ltmp285                ;   Call between Ltmp285 and Ltmp288
	.uleb128 Ltmp289-Lfunc_begin5           ;     jumps to Ltmp289
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp290-Lfunc_begin5           ; >> Call Site 18 <<
	.uleb128 Ltmp251-Ltmp290                ;   Call between Ltmp290 and Ltmp251
	.uleb128 Ltmp360-Lfunc_begin5           ;     jumps to Ltmp360
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp252-Lfunc_begin5           ; >> Call Site 19 <<
	.uleb128 Ltmp255-Ltmp252                ;   Call between Ltmp252 and Ltmp255
	.uleb128 Ltmp256-Lfunc_begin5           ;     jumps to Ltmp256
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp257-Lfunc_begin5           ; >> Call Site 20 <<
	.uleb128 Ltmp359-Ltmp257                ;   Call between Ltmp257 and Ltmp359
	.uleb128 Ltmp360-Lfunc_begin5           ;     jumps to Ltmp360
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin5            ; >> Call Site 21 <<
	.uleb128 Ltmp77-Ltmp66                  ;   Call between Ltmp66 and Ltmp77
	.uleb128 Ltmp103-Lfunc_begin5           ;     jumps to Ltmp103
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin5            ; >> Call Site 22 <<
	.uleb128 Ltmp81-Ltmp78                  ;   Call between Ltmp78 and Ltmp81
	.uleb128 Ltmp82-Lfunc_begin5            ;     jumps to Ltmp82
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp83-Lfunc_begin5            ; >> Call Site 23 <<
	.uleb128 Ltmp86-Ltmp83                  ;   Call between Ltmp83 and Ltmp86
	.uleb128 Ltmp103-Lfunc_begin5           ;     jumps to Ltmp103
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp87-Lfunc_begin5            ; >> Call Site 24 <<
	.uleb128 Ltmp90-Ltmp87                  ;   Call between Ltmp87 and Ltmp90
	.uleb128 Ltmp91-Lfunc_begin5            ;     jumps to Ltmp91
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp92-Lfunc_begin5            ; >> Call Site 25 <<
	.uleb128 Ltmp93-Ltmp92                  ;   Call between Ltmp92 and Ltmp93
	.uleb128 Ltmp103-Lfunc_begin5           ;     jumps to Ltmp103
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp94-Lfunc_begin5            ; >> Call Site 26 <<
	.uleb128 Ltmp97-Ltmp94                  ;   Call between Ltmp94 and Ltmp97
	.uleb128 Ltmp98-Lfunc_begin5            ;     jumps to Ltmp98
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin5            ; >> Call Site 27 <<
	.uleb128 Ltmp102-Ltmp99                 ;   Call between Ltmp99 and Ltmp102
	.uleb128 Ltmp103-Lfunc_begin5           ;     jumps to Ltmp103
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp102-Lfunc_begin5           ; >> Call Site 28 <<
	.uleb128 Ltmp107-Ltmp102                ;   Call between Ltmp102 and Ltmp107
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp107-Lfunc_begin5           ; >> Call Site 29 <<
	.uleb128 Ltmp108-Ltmp107                ;   Call between Ltmp107 and Ltmp108
	.uleb128 Ltmp109-Lfunc_begin5           ;     jumps to Ltmp109
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp110-Lfunc_begin5           ; >> Call Site 30 <<
	.uleb128 Ltmp117-Ltmp110                ;   Call between Ltmp110 and Ltmp117
	.uleb128 Ltmp144-Lfunc_begin5           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin5           ; >> Call Site 31 <<
	.uleb128 Ltmp119-Ltmp118                ;   Call between Ltmp118 and Ltmp119
	.uleb128 Ltmp120-Lfunc_begin5           ;     jumps to Ltmp120
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp121-Lfunc_begin5           ; >> Call Site 32 <<
	.uleb128 Ltmp134-Ltmp121                ;   Call between Ltmp121 and Ltmp134
	.uleb128 Ltmp144-Lfunc_begin5           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp135-Lfunc_begin5           ; >> Call Site 33 <<
	.uleb128 Ltmp138-Ltmp135                ;   Call between Ltmp135 and Ltmp138
	.uleb128 Ltmp139-Lfunc_begin5           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp140-Lfunc_begin5           ; >> Call Site 34 <<
	.uleb128 Ltmp143-Ltmp140                ;   Call between Ltmp140 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin5           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin5           ; >> Call Site 35 <<
	.uleb128 Ltmp146-Ltmp145                ;   Call between Ltmp145 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin5           ;     jumps to Ltmp147
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin5           ; >> Call Site 36 <<
	.uleb128 Ltmp149-Ltmp148                ;   Call between Ltmp148 and Ltmp149
	.uleb128 Ltmp150-Lfunc_begin5           ;     jumps to Ltmp150
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp151-Lfunc_begin5           ; >> Call Site 37 <<
	.uleb128 Ltmp152-Ltmp151                ;   Call between Ltmp151 and Ltmp152
	.uleb128 Ltmp153-Lfunc_begin5           ;     jumps to Ltmp153
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp154-Lfunc_begin5           ; >> Call Site 38 <<
	.uleb128 Ltmp155-Ltmp154                ;   Call between Ltmp154 and Ltmp155
	.uleb128 Ltmp156-Lfunc_begin5           ;     jumps to Ltmp156
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp157-Lfunc_begin5           ; >> Call Site 39 <<
	.uleb128 Ltmp158-Ltmp157                ;   Call between Ltmp157 and Ltmp158
	.uleb128 Ltmp159-Lfunc_begin5           ;     jumps to Ltmp159
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin5           ; >> Call Site 40 <<
	.uleb128 Ltmp161-Ltmp160                ;   Call between Ltmp160 and Ltmp161
	.uleb128 Ltmp162-Lfunc_begin5           ;     jumps to Ltmp162
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp163-Lfunc_begin5           ; >> Call Site 41 <<
	.uleb128 Ltmp164-Ltmp163                ;   Call between Ltmp163 and Ltmp164
	.uleb128 Ltmp165-Lfunc_begin5           ;     jumps to Ltmp165
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp166-Lfunc_begin5           ; >> Call Site 42 <<
	.uleb128 Ltmp173-Ltmp166                ;   Call between Ltmp166 and Ltmp173
	.uleb128 Ltmp213-Lfunc_begin5           ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin5           ; >> Call Site 43 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin5           ;     jumps to Ltmp176
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp177-Lfunc_begin5           ; >> Call Site 44 <<
	.uleb128 Ltmp196-Ltmp177                ;   Call between Ltmp177 and Ltmp196
	.uleb128 Ltmp213-Lfunc_begin5           ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp197-Lfunc_begin5           ; >> Call Site 45 <<
	.uleb128 Ltmp200-Ltmp197                ;   Call between Ltmp197 and Ltmp200
	.uleb128 Ltmp201-Lfunc_begin5           ;     jumps to Ltmp201
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin5           ; >> Call Site 46 <<
	.uleb128 Ltmp203-Ltmp202                ;   Call between Ltmp202 and Ltmp203
	.uleb128 Ltmp213-Lfunc_begin5           ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp204-Lfunc_begin5           ; >> Call Site 47 <<
	.uleb128 Ltmp207-Ltmp204                ;   Call between Ltmp204 and Ltmp207
	.uleb128 Ltmp208-Lfunc_begin5           ;     jumps to Ltmp208
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp209-Lfunc_begin5           ; >> Call Site 48 <<
	.uleb128 Ltmp212-Ltmp209                ;   Call between Ltmp209 and Ltmp212
	.uleb128 Ltmp213-Lfunc_begin5           ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp214-Lfunc_begin5           ; >> Call Site 49 <<
	.uleb128 Ltmp215-Ltmp214                ;   Call between Ltmp214 and Ltmp215
	.uleb128 Ltmp216-Lfunc_begin5           ;     jumps to Ltmp216
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp217-Lfunc_begin5           ; >> Call Site 50 <<
	.uleb128 Ltmp218-Ltmp217                ;   Call between Ltmp217 and Ltmp218
	.uleb128 Ltmp219-Lfunc_begin5           ;     jumps to Ltmp219
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp223-Lfunc_begin5           ; >> Call Site 51 <<
	.uleb128 Ltmp224-Ltmp223                ;   Call between Ltmp223 and Ltmp224
	.uleb128 Ltmp225-Lfunc_begin5           ;     jumps to Ltmp225
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp220-Lfunc_begin5           ; >> Call Site 52 <<
	.uleb128 Ltmp221-Ltmp220                ;   Call between Ltmp220 and Ltmp221
	.uleb128 Ltmp222-Lfunc_begin5           ;     jumps to Ltmp222
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp221-Lfunc_begin5           ; >> Call Site 53 <<
	.uleb128 Lfunc_end5-Ltmp221             ;   Call between Ltmp221 and Lfunc_end5
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
Ltmp418:
Lloh332:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh333:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp419:
; %bb.1:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp420:
	mov	w1, #10
	blr	x8
Ltmp421:
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
Ltmp422:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh332, Lloh333
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
	.uleb128 Ltmp418-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp418
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp418-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp421-Ltmp418                ;   Call between Ltmp418 and Ltmp421
	.uleb128 Ltmp422-Lfunc_begin6           ;     jumps to Ltmp422
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp421-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp421             ;   Call between Ltmp421 and Lfunc_end6
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
Lloh334:
	adrp	x25, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh335:
	ldr	x25, [x25, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x24, x25, #104
	mov	x19, x0
	str	x24, [x19, #128]!
	add	x26, x25, #64
	mov	x27, x0
	str	x26, [x27, #16]!
	add	x21, x0, #24
Lloh336:
	adrp	x23, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh337:
	ldr	x23, [x23, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #16]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp423:
	mov	x0, x22
	mov	x1, x21
	bl	__ZNSt3__18ios_base4initEPv
Ltmp424:
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
Ltmp426:
	mov	x0, x21
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp427:
; %bb.2:
Lloh338:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh339:
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
Ltmp428:
	mov	x21, x0
	add	x1, x23, #8
	mov	x0, x20
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB31_5
LBB31_4:
Ltmp425:
	mov	x21, x0
LBB31_5:
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh336, Lloh337
	.loh AdrpLdrGot	Lloh334, Lloh335
	.loh AdrpLdrGot	Lloh338, Lloh339
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
	.uleb128 Ltmp423-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp424-Ltmp423                ;   Call between Ltmp423 and Ltmp424
	.uleb128 Ltmp425-Lfunc_begin7           ;     jumps to Ltmp425
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp426-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp427-Ltmp426                ;   Call between Ltmp426 and Ltmp427
	.uleb128 Ltmp428-Lfunc_begin7           ;     jumps to Ltmp428
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp427-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp427             ;   Call between Ltmp427 and Lfunc_end7
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
	ldp	x10, x9, [x9]
	cmp	x9, #0
	cset	w11, ne
	lsl	w12, w11, #6
	tst	x12, #0x40
	csel	x9, x9, x10, ne
	clz	x9, x9
	mov	w10, #63
	bfi	w10, w11, #6, #1
	sub	w9, w10, w9
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
	cbz	w25, LBB32_18
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
	cbnz	w25, LBB32_8
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
	.globl	__Z13fast_reminderR11__uint384_tRKS_ ; -- Begin function _Z13fast_reminderR11__uint384_tRKS_
	.weak_def_can_be_hidden	__Z13fast_reminderR11__uint384_tRKS_
	.p2align	2
__Z13fast_reminderR11__uint384_tRKS_:   ; @_Z13fast_reminderR11__uint384_tRKS_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x28, x27, [sp, #192]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #208]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #224]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #240]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
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
Lloh340:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh341:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh342:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
Lloh343:
	adrp	x10, _ynn@PAGE+32
Lloh344:
	add	x10, x10, _ynn@PAGEOFF+32
	ldp	x9, x8, [x0, #32]
	ldp	x11, x10, [x10]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB33_3
; %bb.1:
Lloh345:
	adrp	x12, _ynn@PAGE+16
Lloh346:
	add	x12, x12, _ynn@PAGEOFF+16
	ldp	x11, x10, [x0, #16]
	ldp	x13, x12, [x12]
	eor	x14, x10, x12
	eor	x15, x11, x13
	orr	x14, x15, x14
	cbnz	x14, LBB33_5
; %bb.2:
	ldp	x13, x12, [x0]
Lloh347:
	adrp	x14, _ynn@PAGE
Lloh348:
	add	x14, x14, _ynn@PAGEOFF
	ldp	x14, x15, [x14]
	cmp	x13, x14
	cset	w13, lo
	cmp	x12, x15
	cset	w12, lo
	csel	w12, w13, w12, eq
	tbz	w12, #0, LBB33_6
	b	LBB33_12
LBB33_3:
	cmp	x9, x11
	cset	w11, ls
	cmp	x8, x10
	cset	w10, ls
	csel	w10, w11, w10, eq
	tbnz	w10, #0, LBB33_12
; %bb.4:
	ldp	x11, x10, [x0, #16]
	b	LBB33_6
LBB33_5:
	cmp	x11, x13
	cset	w13, ls
	cmp	x10, x12
	cset	w12, ls
	csel	w12, w13, w12, eq
	tbnz	w12, #0, LBB33_12
LBB33_6:
	movi.2d	v0, #0000000000000000
Lloh349:
	adrp	x16, _ym@PAGE
Lloh350:
	add	x16, x16, _ym@PAGEOFF
	stp	q0, q0, [sp, #80]
	ldp	x15, x14, [x16, #16]
	umulh	x13, x15, x9
	mul	x12, x15, x9
	umulh	x17, x15, x8
	mul	x2, x15, x8
	umulh	x3, x14, x9
	mul	x4, x14, x9
	adds	x13, x13, x4
	ldp	x4, x5, [sp, #80]
	adc	x3, x4, x3
	adds	x13, x13, x2
	cinc	x2, x3, hs
	stp	x12, x13, [sp, #64]
	umulh	x3, x14, x8
	mul	x4, x14, x8
	adds	x17, x17, x4
	cinc	x3, x3, hs
	adds	x17, x17, x2
	adc	x2, x3, x5
	ldp	x4, x3, [x16, #32]
	umulh	x5, x4, x9
	mul	x6, x4, x9
	umulh	x7, x4, x8
	mul	x19, x4, x8
	umulh	x20, x3, x9
	mul	x21, x3, x9
	adds	x5, x5, x21
	ldp	x21, x22, [sp, #96]
	adc	x20, x21, x20
	adds	x5, x5, x19
	cinc	x19, x20, hs
	stp	x6, x5, [sp, #80]
	str	x19, [sp, #96]
	umulh	x20, x3, x8
	mul	x21, x3, x8
	adds	x7, x7, x21
	cinc	x20, x20, hs
	adds	x7, x7, x19
	adc	x19, x20, x22
	adds	x17, x6, x17
	adcs	x2, x5, x2
	adcs	x5, x7, xzr
	cinc	x6, x19, hs
	mul	x7, x11, x4
	umulh	x19, x11, x4
	umulh	x20, x10, x4
	mul	x21, x10, x4
	umulh	x22, x11, x3
	mul	x23, x11, x3
	adds	x21, x21, x23
	cinc	x22, x22, hs
	adds	x19, x21, x19
	cinc	x21, x22, hs
	umulh	x22, x10, x3
	mul	x23, x10, x3
	adds	x20, x20, x23
	cinc	x22, x22, hs
	adds	x20, x20, x21
	cinc	x21, x22, hs
	adds	x7, x12, x7
	adcs	x19, x13, x19
	adcs	x12, x20, xzr
	cinc	x13, x21, hs
	adds	x17, x12, x17
	adcs	x2, x13, x2
	adcs	x5, x5, xzr
	cinc	x6, x6, hs
	ldp	x13, x12, [x0]
	str	x13, [sp, #8]                   ; 8-byte Folded Spill
	umulh	x20, x13, x3
	umulh	x4, x12, x4
	umulh	x21, x12, x3
	mul	x3, x12, x3
	adds	x3, x4, x3
	cinc	x4, x21, hs
	adds	x3, x3, x20
	cinc	x4, x4, hs
	adds	x3, x3, x7
	adcs	x4, x4, x19
	cset	w7, hs
	adcs	x17, x17, xzr
	cinc	x2, x2, hs
	orr	x19, x17, x2
	cmp	x19, #0
	cset	w19, eq
	and	w7, w7, w19
	adds	x5, x5, x7
	cinc	x6, x6, hs
	ldp	x7, x16, [x16]
	umulh	x19, x16, x9
	umulh	x7, x7, x8
	umulh	x20, x16, x8
	mul	x16, x16, x8
	adds	x16, x7, x16
	cinc	x7, x20, hs
	adds	x16, x16, x19
	cinc	x7, x7, hs
	adds	x16, x16, x3
	adcs	x3, x7, x4
	cset	w4, hs
	adcs	x17, x17, xzr
	cinc	x7, x2, hs
	orr	x2, x17, x7
	cmp	x2, #0
	cset	w2, eq
	and	w2, w4, w2
	adds	x4, x5, x2
	cinc	x6, x6, hs
	umulh	x2, x11, x14
	umulh	x15, x10, x15
	umulh	x5, x10, x14
	mul	x14, x10, x14
	adds	x14, x15, x14
	cinc	x15, x5, hs
	adds	x14, x14, x2
	cinc	x15, x15, hs
	adds	x16, x16, x14
	adcs	x15, x3, x15
	cset	w14, hs
	adcs	x2, x17, xzr
	cinc	x17, x7, hs
	orr	x3, x2, x17
	cmp	x3, #0
	cset	w3, eq
	and	w14, w14, w3
	adds	x5, x4, x14
	cinc	x4, x6, hs
	adrp	x14, _ys@PAGE
	ldrh	w14, [x14, _ys@PAGEOFF]
	cmp	w14, #128
	b.hs	LBB33_8
; %bb.7:
	lsr	x16, x16, x14
	lsl	x3, x15, #1
	mvn	w6, w14
	lsl	x3, x3, x6
	orr	x16, x3, x16
	lsr	x15, x15, x14
	mov	w3, #128
	sub	w3, w3, w14
	mvn	w7, w3
	lsl	x19, x2, x3
	tst	x3, #0x40
	csel	x20, xzr, x19, ne
	lsr	x21, x2, #1
	lsr	x21, x21, x7
	lsl	x22, x17, x3
	orr	x21, x22, x21
	csel	x19, x19, x21, ne
	lsl	x21, x5, x3
	csel	x22, xzr, x21, ne
	lsr	x23, x5, #1
	lsr	x7, x23, x7
	lsl	x3, x4, x3
	orr	x3, x3, x7
	csel	x3, x21, x3, ne
	cmp	w14, #0
	csel	x7, xzr, x19, eq
	csel	x19, xzr, x20, eq
	csel	x20, xzr, x3, eq
	csel	x21, xzr, x22, eq
	tst	x14, #0x40
	csel	x16, x15, x16, ne
	csel	x15, xzr, x15, ne
	orr	x16, x19, x16
	orr	x3, x7, x15
	lsr	x15, x2, x14
	lsl	x2, x17, #1
	lsl	x2, x2, x6
	orr	x15, x2, x15
	lsr	x17, x17, x14
	csel	x15, x17, x15, ne
	csel	x2, xzr, x17, ne
	orr	x17, x21, x15
	orr	x2, x20, x2
	lsr	x15, x5, x14
	lsl	x5, x4, #1
	lsl	x5, x5, x6
	orr	x15, x5, x15
	lsr	x4, x4, x14
	csel	x14, x4, x15, ne
	csel	x15, xzr, x4, ne
	b	LBB33_11
LBB33_8:
	and	w6, w14, #0x7f
	cmp	w14, #256
	b.hs	LBB33_10
; %bb.9:
	mov	x14, #0
	mov	x15, #0
	lsr	x16, x2, x6
	lsl	x2, x17, #1
	mvn	w7, w6
	lsl	x2, x2, x7
	orr	x16, x2, x16
	lsr	x17, x17, x6
	mov	w2, #128
	sub	w2, w2, w6
	mvn	w3, w2
	lsr	x19, x5, #1
	lsr	x3, x19, x3
	lsl	x19, x5, x2
	tst	x2, #0x40
	lsl	x2, x4, x2
	orr	x2, x2, x3
	csel	x3, xzr, x19, ne
	csel	x2, x19, x2, ne
	cmp	w6, #0
	csel	x2, xzr, x2, eq
	csel	x3, xzr, x3, eq
	tst	x6, #0x40
	csel	x16, x17, x16, ne
	csel	x17, xzr, x17, ne
	orr	x16, x3, x16
	orr	x3, x2, x17
	lsr	x17, x5, x6
	lsl	x2, x4, #1
	lsl	x2, x2, x7
	orr	x17, x2, x17
	lsr	x2, x4, x6
	csel	x17, x2, x17, ne
	csel	x2, xzr, x2, ne
	b	LBB33_11
LBB33_10:
	mov	x14, #0
	mov	x15, #0
	mov	x17, #0
	mov	x2, #0
	lsr	x16, x5, x6
	mvn	w3, w6
	lsl	x5, x4, #1
	lsl	x3, x5, x3
	orr	x16, x3, x16
	lsr	x3, x4, x6
	tst	x6, #0x40
	csel	x16, x3, x16, ne
	csel	x3, xzr, x3, ne
LBB33_11:
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #32]
	ldp	x5, x6, [x1]
	umulh	x4, x5, x16
	umulh	x7, x5, x3
	mul	x19, x5, x3
	umulh	x20, x6, x16
	mul	x21, x6, x16
	adds	x4, x4, x21
	ldp	x21, x22, [sp, #32]
	adc	x20, x21, x20
	adds	x4, x4, x19
	cinc	x19, x20, hs
	umulh	x20, x6, x3
	mul	x21, x6, x3
	adds	x7, x7, x21
	cinc	x20, x20, hs
	adds	x7, x7, x19
	adc	x19, x20, x22
	ldp	x21, x20, [x1, #16]
	umulh	x22, x21, x16
	umulh	x23, x21, x3
	mul	x24, x21, x3
	umulh	x25, x20, x16
	mul	x26, x20, x16
	adds	x22, x22, x26
	ldp	x26, x27, [sp, #48]
	adc	x25, x26, x25
	adds	x22, x22, x24
	cinc	x24, x25, hs
	ldp	x26, x25, [x1, #32]
	umulh	x28, x26, x16
	madd	x28, x26, x3, x28
	madd	x25, x25, x16, x28
	umulh	x28, x17, x5
	mul	x30, x2, x5
	mul	x13, x17, x6
	adds	x13, x30, x13
	umulh	x30, x17, x6
	cinc	x30, x30, hs
	adds	x13, x13, x28
	mul	x28, x20, x3
	cinc	x30, x30, hs
	adds	x23, x23, x28
	umulh	x3, x20, x3
	mul	x26, x26, x16
	cinc	x3, x3, hs
	adds	x23, x23, x26
	adc	x3, x3, x25
	stp	x22, x24, [sp, #40]
	adds	x23, x23, x24
	adc	x3, x3, x27
	mul	x24, x21, x16
	adds	x7, x24, x7
	str	x24, [sp, #32]
	adcs	x19, x22, x19
	umulh	x22, x17, x21
	madd	x20, x17, x20, x22
	madd	x20, x2, x21, x20
	mul	x21, x17, x21
	adcs	x22, x23, xzr
	cinc	x3, x3, hs
	adds	x21, x22, x21
	adc	x3, x3, x20
	mul	x20, x2, x6
	adds	x20, x21, x20
	umulh	x21, x2, x6
	adc	x3, x3, x21
	umulh	x2, x2, x5
	adds	x2, x20, x2
	cinc	x3, x3, hs
	adds	x2, x2, x30
	mul	x17, x17, x5
	cinc	x3, x3, hs
	adds	x17, x17, x7
	adcs	x13, x13, x19
	umulh	x7, x14, x5
	madd	x6, x14, x6, x7
	madd	x15, x15, x5, x6
	mul	x16, x5, x16
	mul	x14, x14, x5
	adcs	x2, x2, xzr
	cinc	x3, x3, hs
	adds	x14, x2, x14
	adc	x15, x3, x15
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	subs	x2, x2, x16
	sbc	x12, x12, x4
	subs	x11, x11, x17
	sbc	x10, x10, x13
	cmn	x11, x17
	adcs	xzr, x10, x13
	cset	w13, hs
	subs	x9, x9, x14
	sbc	x8, x8, x15
	subs	x9, x9, x13
	stp	x2, x12, [x0]
	sbc	x8, x8, xzr
	cmn	x2, x16
	stp	x16, x4, [sp, #16]
	adcs	xzr, x12, x4
	cset	w12, hs
	subs	x11, x11, x12
	sbc	x10, x10, xzr
	and	x13, x11, x10
	stp	x11, x10, [x0, #16]
	cmn	x13, #1
	cset	w10, eq
	and	w10, w12, w10
	subs	x9, x9, x10
	sbc	x8, x8, xzr
	stp	x9, x8, [x0, #32]
LBB33_12:
	ldp	x10, x11, [x1, #32]
	eor	x12, x8, x11
	eor	x13, x9, x10
	orr	x12, x13, x12
	cbnz	x12, LBB33_15
; %bb.13:
	ldp	x12, x13, [x0, #16]
	ldp	x14, x15, [x1, #16]
	eor	x16, x13, x15
	eor	x17, x12, x14
	orr	x16, x17, x16
	cbnz	x16, LBB33_17
; %bb.14:
	ldp	x15, x14, [x0]
	ldp	x17, x16, [x1]
	cmp	x15, x17
	cset	w15, lo
	cmp	x14, x16
	cset	w14, lo
	csel	w14, w15, w14, eq
	tbz	w14, #0, LBB33_19
	b	LBB33_20
LBB33_15:
	cmp	x9, x10
	cset	w12, ls
	cmp	x8, x11
	cset	w13, ls
	csel	w12, w12, w13, eq
	tbnz	w12, #0, LBB33_20
; %bb.16:
	ldp	x12, x13, [x1, #16]
	b	LBB33_19
LBB33_17:
	cmp	x12, x14
	cset	w12, ls
	cmp	x13, x15
	cset	w13, ls
	csel	w12, w12, w13, eq
	tbnz	w12, #0, LBB33_20
; %bb.18:
	mov	x12, x14
	mov	x13, x15
LBB33_19:
	ldp	x14, x15, [x1]
	b	LBB33_21
LBB33_20:
	mov	x14, #0
	mov	x15, #0
	mov	x12, #0
	mov	x13, #0
	mov	x10, #0
	mov	x11, #0
LBB33_21:
	ldp	x17, x16, [x0]
	subs	x17, x17, x14
	sbc	x16, x16, x15
	stp	x17, x16, [x0]
	ldp	x3, x2, [x0, #16]
	subs	x3, x3, x12
	sbc	x2, x2, x13
	cmn	x3, x12
	adcs	xzr, x2, x13
	cset	w12, hs
	subs	x9, x9, x10
	sbc	x8, x8, x11
	subs	x10, x9, x12
	sbc	x12, x8, xzr
	cmn	x17, x14
	adcs	xzr, x16, x15
	cset	w11, hs
	subs	x9, x3, x11
	sbc	x8, x2, xzr
	and	x13, x9, x8
	stp	x9, x8, [x0, #16]
	cmn	x13, #1
	cset	w13, eq
	and	w11, w11, w13
	subs	x11, x10, x11
	sbc	x10, x12, xzr
	stp	x11, x10, [x0, #32]
	ldp	x13, x12, [x1, #32]
	eor	x14, x11, x13
	eor	x15, x10, x12
	orr	x14, x14, x15
	cbnz	x14, LBB33_24
; %bb.22:
	ldp	x11, x10, [x1, #16]
	eor	x12, x8, x10
	eor	x13, x9, x11
	orr	x12, x13, x12
	cbnz	x12, LBB33_26
; %bb.23:
	ldp	x9, x8, [x1]
	cmp	x17, x9
	cset	w9, lo
	cmp	x16, x8
	cset	w8, lo
	b	LBB33_27
LBB33_24:
	cmp	x11, x13
	cset	w8, hi
	cmp	x10, x12
	cset	w9, hi
	csel	w8, w8, w9, eq
	tbz	w8, #0, LBB33_28
LBB33_25:
Lloh351:
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
Lloh352:
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh353:
	adrp	x9, l_.str.25@PAGE
Lloh354:
	add	x9, x9, l_.str.25@PAGEOFF
	mov	x19, x0
	mov	x0, x8
	mov	x20, x1
	mov	x1, x9
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x20
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
Lloh355:
	adrp	x21, l_.str.12@PAGE
Lloh356:
	add	x21, x21, l_.str.12@PAGEOFF
	mov	x1, x21
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Lloh357:
	adrp	x1, _ym@PAGE
Lloh358:
	add	x1, x1, _ym@PAGEOFF
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x21
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x8, _ys@PAGE
	ldrh	w1, [x8, _ys@PAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x21
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x19
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x21
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x21, x0
	add	x8, sp, #64
	mov	x0, x19
	mov	x1, x20
	bl	__ZrmRK11__uint384_tS1_
	add	x1, sp, #64
	mov	x0, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	bl	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	bl	___cxa_rethrow
LBB33_26:
	cmp	x9, x11
	cset	w9, ls
	cmp	x8, x10
	cset	w8, ls
LBB33_27:
	csel	w8, w9, w8, eq
	tbz	w8, #0, LBB33_25
LBB33_28:
	ldur	x8, [x29, #-96]
Lloh359:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh360:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh361:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB33_30
; %bb.29:
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #256]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #240]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #224]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #208]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
LBB33_30:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh343, Lloh344
	.loh AdrpLdrGotLdr	Lloh340, Lloh341, Lloh342
	.loh AdrpAdd	Lloh345, Lloh346
	.loh AdrpAdd	Lloh347, Lloh348
	.loh AdrpAdd	Lloh349, Lloh350
	.loh AdrpAdd	Lloh357, Lloh358
	.loh AdrpAdd	Lloh355, Lloh356
	.loh AdrpAdd	Lloh353, Lloh354
	.loh AdrpLdrGot	Lloh351, Lloh352
	.loh AdrpLdrGotLdr	Lloh359, Lloh360, Lloh361
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
Lloh362:
	adrp	x21, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh363:
	ldr	x21, [x21, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x21]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	ldp	x9, x10, [x21, #64]
	str	x9, [x0, x8]
Lloh364:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh365:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	mov	x20, x0
	str	x8, [x20, #24]!
	stur	x10, [x20, #-8]
	ldrsb	w8, [x20, #87]
	tbz	w8, #31, LBB34_2
; %bb.1:
	ldr	x0, [x19, #88]
	bl	__ZdlPv
LBB34_2:
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
	.loh AdrpLdrGot	Lloh364, Lloh365
	.loh AdrpLdrGot	Lloh362, Lloh363
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
	b.ls	LBB36_5
; %bb.1:
	ldr	x21, [x19]
	sub	x27, x25, x21
	asr	x26, x27, #1
	adds	x9, x26, x23
	b.mi	LBB36_19
; %bb.2:
	sub	x8, x8, x21
	cmp	x8, x9
	csel	x9, x8, x9, hi
	mov	x10, #9223372036854775806
	mov	x11, #9223372036854775807
	cmp	x8, x10
	csel	x28, x9, x11, lo
	cbz	x28, LBB36_8
; %bb.3:
	tbnz	x28, #63, LBB36_20
; %bb.4:
	lsl	x0, x28, #1
	bl	__Znwm
	mov	x24, x0
	b	LBB36_9
LBB36_5:
	cbz	x23, LBB36_7
; %bb.6:
	lsl	x1, x23, #1
	add	x21, x25, x1
	mov	x0, x20
	bl	_bzero
	mov	x20, x21
LBB36_7:
	str	x20, [x19, #8]
	b	LBB36_18
LBB36_8:
	mov	x24, #0
LBB36_9:
	add	x22, x24, x26, lsl #1
	lsl	x1, x23, #1
	add	x23, x22, x1
	mov	x0, x22
	bl	_bzero
	add	x8, x24, x28, lsl #1
	subs	x9, x25, x21
	b.eq	LBB36_16
; %bb.10:
	sub	x9, x9, #2
	cmp	x9, #62
	b.lo	LBB36_15
; %bb.11:
	sub	x10, x25, x24
	sub	x10, x10, x27
	cmp	x10, #64
	b.lo	LBB36_15
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
LBB36_13:                               ; =>This Inner Loop Header: Depth=1
	ldp	q1, q0, [x11]
	ldp	q3, q2, [x11, #-32]
	stp	q1, q0, [x12]
	stp	q3, q2, [x12, #-32]
	sub	x11, x11, #64
	sub	x12, x12, #64
	sub	x13, x13, #32
	cbnz	x13, LBB36_13
; %bb.14:
	cmp	x9, x10
	b.eq	LBB36_16
LBB36_15:                               ; =>This Inner Loop Header: Depth=1
	ldrh	w9, [x20, #-2]!
	strh	w9, [x22, #-2]!
	cmp	x20, x21
	b.ne	LBB36_15
LBB36_16:
	stp	x22, x23, [x19]
	str	x8, [x19, #16]
	cbz	x21, LBB36_18
; %bb.17:
	mov	x0, x21
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	b	__ZdlPv
LBB36_18:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB36_19:
	mov	x0, x19
	bl	__ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB7v160006Ev
LBB36_20:
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
Lloh366:
	adrp	x0, l_.str.24@PAGE
Lloh367:
	add	x0, x0, l_.str.24@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.loh AdrpAdd	Lloh366, Lloh367
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
Ltmp429:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B7v160006EPKc
Ltmp430:
; %bb.1:
Lloh368:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh369:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh370:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh371:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB38_2:
Ltmp431:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh370, Lloh371
	.loh AdrpLdrGot	Lloh368, Lloh369
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table38:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp429-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp429
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp429-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp430-Ltmp429                ;   Call between Ltmp429 and Ltmp430
	.uleb128 Ltmp431-Lfunc_begin8           ;     jumps to Ltmp431
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp430-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp430             ;   Call between Ltmp430 and Lfunc_end8
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
Lloh372:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh373:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh372, Lloh373
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
Lloh374:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh375:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh376:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh377:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh376, Lloh377
	.loh AdrpLdrGot	Lloh374, Lloh375
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
Ltmp432:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp433:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB41_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB41_7
; %bb.3:
Ltmp435:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp436:
; %bb.4:
Ltmp437:
Lloh378:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh379:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp438:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp439:
	mov	w1, #32
	blr	x8
Ltmp440:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB41_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp442:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp443:
; %bb.8:
	cbnz	x0, LBB41_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp445:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp446:
LBB41_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB41_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB41_12:
Ltmp447:
	b	LBB41_15
LBB41_13:
Ltmp441:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB41_16
LBB41_14:
Ltmp444:
LBB41_15:
	mov	x20, x0
LBB41_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB41_18
LBB41_17:
Ltmp434:
	mov	x20, x0
LBB41_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp448:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp449:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB41_11
LBB41_20:
Ltmp450:
	mov	x19, x0
Ltmp451:
	bl	___cxa_end_catch
Ltmp452:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB41_22:
Ltmp453:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh378, Lloh379
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table41:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp432-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp433-Ltmp432                ;   Call between Ltmp432 and Ltmp433
	.uleb128 Ltmp434-Lfunc_begin9           ;     jumps to Ltmp434
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp435-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp436-Ltmp435                ;   Call between Ltmp435 and Ltmp436
	.uleb128 Ltmp444-Lfunc_begin9           ;     jumps to Ltmp444
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp437-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Ltmp440-Ltmp437                ;   Call between Ltmp437 and Ltmp440
	.uleb128 Ltmp441-Lfunc_begin9           ;     jumps to Ltmp441
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp442-Lfunc_begin9           ; >> Call Site 4 <<
	.uleb128 Ltmp443-Ltmp442                ;   Call between Ltmp442 and Ltmp443
	.uleb128 Ltmp444-Lfunc_begin9           ;     jumps to Ltmp444
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp445-Lfunc_begin9           ; >> Call Site 5 <<
	.uleb128 Ltmp446-Ltmp445                ;   Call between Ltmp445 and Ltmp446
	.uleb128 Ltmp447-Lfunc_begin9           ;     jumps to Ltmp447
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp446-Lfunc_begin9           ; >> Call Site 6 <<
	.uleb128 Ltmp448-Ltmp446                ;   Call between Ltmp446 and Ltmp448
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp448-Lfunc_begin9           ; >> Call Site 7 <<
	.uleb128 Ltmp449-Ltmp448                ;   Call between Ltmp448 and Ltmp449
	.uleb128 Ltmp450-Lfunc_begin9           ;     jumps to Ltmp450
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp449-Lfunc_begin9           ; >> Call Site 8 <<
	.uleb128 Ltmp451-Ltmp449                ;   Call between Ltmp449 and Ltmp451
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp451-Lfunc_begin9           ; >> Call Site 9 <<
	.uleb128 Ltmp452-Ltmp451                ;   Call between Ltmp451 and Ltmp452
	.uleb128 Ltmp453-Lfunc_begin9           ;     jumps to Ltmp453
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp452-Lfunc_begin9           ; >> Call Site 10 <<
	.uleb128 Lfunc_end9-Ltmp452             ;   Call between Ltmp452 and Lfunc_end9
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
	cbz	x0, LBB42_16
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
	b.lt	LBB42_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB42_15
LBB42_3:
	cmp	x23, #1
	b.lt	LBB42_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB42_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB42_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB42_8
LBB42_7:
	orr	x8, x23, #0xf
	add	x26, x8, #1
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB42_8:
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
Ltmp454:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp455:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB42_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB42_15
	b	LBB42_12
LBB42_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB42_15
LBB42_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB42_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB42_15
LBB42_14:
	str	xzr, [x20, #24]
	b	LBB42_16
LBB42_15:
	mov	x19, #0
LBB42_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB42_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev
LBB42_18:
Ltmp456:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB42_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB42_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table42:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp454-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp454
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp454-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp455-Ltmp454                ;   Call between Ltmp454 and Ltmp455
	.uleb128 Ltmp456-Lfunc_begin10          ;     jumps to Ltmp456
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp455-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp455            ;   Call between Ltmp455 and Lfunc_end10
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
Lloh380:
	adrp	x0, l_.str.26@PAGE
Lloh381:
	add	x0, x0, l_.str.26@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.loh AdrpAdd	Lloh380, Lloh381
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
	cbz	x8, LBB44_2
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
	b.ne	LBB44_3
	b	LBB44_6
LBB44_2:
	ldp	x8, x9, [x0]
	mul	x10, x9, x1
	add	x20, x8, x10, lsl #1
	add	x21, x20, x9, lsl #1
	cmp	x20, x21
	b.eq	LBB44_6
LBB44_3:
	add	x19, x0, #32
LBB44_4:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w1, [x20]
Ltmp457:
	mov	x0, x19
	bl	__ZZ4mainENK3$_0clERt
Ltmp458:
; %bb.5:                                ;   in Loop: Header=BB44_4 Depth=1
	add	x20, x20, #2
	cmp	x20, x21
	b.ne	LBB44_4
LBB44_6:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB44_7:
Ltmp459:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table44:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp457-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp458-Ltmp457                ;   Call between Ltmp457 and Ltmp458
	.uleb128 Ltmp459-Lfunc_begin11          ;     jumps to Ltmp459
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
	sub	sp, sp, #1248
                                        ; kill: def $w1 killed $w1 def $x1
Lloh382:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh383:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh384:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	ldr	x8, [x0]
	ldrh	w10, [x8]
	subs	w9, w10, #11
	csel	w9, wzr, w9, lo
	sub	x10, x10, x9
Lloh385:
	adrp	x11, _p2@PAGE
Lloh386:
	add	x11, x11, _p2@PAGEOFF
	ldrh	w10, [x11, x10, lsl  #1]
	cmp	w10, w1, uxth
	b.ls	LBB45_169
; %bb.1:
	mov	x27, x0
	ldr	x10, [x0, #8]
	ldrh	w19, [x10]
	and	x10, x1, #0xffff
	mov	w11, #11664
	mul	x9, x9, x11
Lloh387:
	adrp	x11, _p23@PAGE
Lloh388:
	add	x11, x11, _p23@PAGEOFF
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #736]
	str	q0, [sp, #720]
	ldr	x9, [x11, x9]
	mul	x28, x9, x10
	add	x9, x28, x9
	str	x9, [sp]                        ; 8-byte Folded Spill
	cbz	x28, LBB45_10
; %bb.2:
	ldrh	w11, [x8]
	cbz	x11, LBB45_9
; %bb.3:
	mov	x1, #0
	mov	x0, #0
	mov	x13, #0
	mov	x12, #0
	mov	x9, #0
	mov	x8, #0
	sub	x10, x28, #1
	sub	x11, x11, #1
	mov	w14, #1
	mov	w15, #48
	mov	w16, #11664
Lloh389:
	adrp	x17, _p23@PAGE
Lloh390:
	add	x17, x17, _p23@PAGEOFF
	b	LBB45_6
LBB45_4:                                ;   in Loop: Header=BB45_6 Depth=1
	and	x2, x19, #0xffff
	madd	x7, x2, x15, x17
	ldp	x3, x2, [x7]
	ldp	x5, x4, [x7, #16]
	ldp	x7, x6, [x7, #32]
LBB45_5:                                ;   in Loop: Header=BB45_6 Depth=1
	adds	x1, x1, x7
	adc	x0, x0, x6
	adds	x13, x13, x5
	adcs	x12, x12, x4
	adcs	x1, x1, xzr
	cinc	x0, x0, hs
	adds	x9, x9, x3
	adcs	x8, x8, x2
	cset	w2, hs
	adcs	x13, x13, xzr
	cinc	x12, x12, hs
	orr	x3, x13, x12
	cmp	x3, #0
	cset	w3, eq
	and	w2, w2, w3
	adds	x1, x1, x2
	cinc	x0, x0, hs
	add	x17, x17, x16
	and	w2, w11, #0xffff
	sub	x11, x11, #1
	cbz	w2, LBB45_8
LBB45_6:                                ; =>This Inner Loop Header: Depth=1
	lsl	x2, x14, x11
	ands	x2, x2, x10
	cset	w3, ne
	sub	w19, w19, w3
	cbnz	x2, LBB45_4
; %bb.7:                                ;   in Loop: Header=BB45_6 Depth=1
	mov	x7, #0
	mov	x6, #0
	mov	x5, #0
	mov	x4, #0
	mov	x3, #0
	b	LBB45_5
LBB45_8:
	str	x9, [sp, #720]
	str	x8, [sp, #728]
	str	x13, [sp, #736]
	str	x12, [sp, #744]
	str	x1, [sp, #752]
	str	x0, [sp, #760]
LBB45_9:
	ldr	x1, [x27, #16]
	add	x0, sp, #720
	bl	__Z13fast_reminderR11__uint384_tRKS_
	rbit	x8, x28
	clz	x9, x8
                                        ; kill: def $w19 killed $w19 killed $x19 def $x19
	str	x19, [sp, #8]                   ; 8-byte Folded Spill
                                        ; kill: def $w9 killed $w9 killed $x9 def $x9
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	cmp	x28, x8
	b.lo	LBB45_11
	b	LBB45_169
LBB45_10:
	mov	w9, #0
	add	w8, w19, #1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	cmp	x28, x8
	b.hs	LBB45_169
LBB45_11:
	add	x10, sp, #272
	add	x8, x10, #128
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	add	x8, x10, #16
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	add	x20, x10, #24
Lloh391:
	adrp	x11, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh392:
	ldr	x11, [x11, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x10, #88
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	ldp	x10, x8, [x11, #16]
	stp	x8, x10, [sp, #120]             ; 16-byte Folded Spill
	add	x8, sp, #976
	add	x8, x8, #256
	str	x8, [sp, #224]                  ; 8-byte Folded Spill
	add	x8, sp, #768
	add	x8, x8, #16
	str	x8, [sp, #192]                  ; 8-byte Folded Spill
	ldp	x10, x8, [x11, #32]
	stp	x8, x10, [sp, #96]              ; 16-byte Folded Spill
	add	x8, sp, #576
	add	x10, x8, #48
	ldr	x8, [x11, #48]
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	add	x8, sp, #672
	add	x8, x8, #16
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	ldr	x8, [x11, #8]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	ldr	x8, [x11]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	mov	w30, #11664
	ldr	x8, [x11, #64]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldr	x8, [x11, #72]
	stp	x10, x8, [sp, #16]              ; 16-byte Folded Spill
	ldr	x1, [x27, #16]
	movi.2d	v0, #0000000000000000
Lloh393:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh394:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	str	x27, [sp, #72]                  ; 8-byte Folded Spill
	str	x20, [sp, #216]                 ; 8-byte Folded Spill
	b	LBB45_13
LBB45_12:                               ;   in Loop: Header=BB45_13 Depth=1
	add	x28, x28, #1
	rbit	x8, x28
	clz	x9, x8
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	cmp	x28, x8
	b.eq	LBB45_169
LBB45_13:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB45_29 Depth 2
                                        ;     Child Loop BB45_38 Depth 2
                                        ;       Child Loop BB45_54 Depth 3
                                        ;       Child Loop BB45_66 Depth 3
                                        ;       Child Loop BB45_72 Depth 3
                                        ;       Child Loop BB45_81 Depth 3
                                        ;       Child Loop BB45_108 Depth 3
                                        ;       Child Loop BB45_117 Depth 3
                                        ;       Child Loop BB45_126 Depth 3
                                        ;       Child Loop BB45_135 Depth 3
                                        ;       Child Loop BB45_143 Depth 3
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
	and	x8, x8, #0xffff
Lloh395:
	adrp	x10, _p23y@PAGE
Lloh396:
	add	x10, x10, _p23y@PAGEOFF
	umaddl	x10, w9, w30, x10
	mov	w11, #48
	madd	x8, x8, x11, x10
	ldp	x11, x10, [x8]
	ldr	x12, [sp, #728]
	ldr	x13, [sp, #720]
	ldp	x15, x14, [x8, #16]
	ldr	x16, [sp, #744]
	ldr	x17, [sp, #736]
	ldp	x8, x0, [x8, #32]
	ldr	x2, [sp, #760]
	ldr	x3, [sp, #752]
	adds	x8, x3, x8
	adc	x0, x2, x0
	adds	x15, x17, x15
	adcs	x14, x16, x14
	adcs	x16, x8, xzr
	cinc	x17, x0, hs
	adds	x8, x13, x11
	adcs	x10, x12, x10
	cset	w13, hs
	str	x8, [sp, #720]
	str	x10, [sp, #728]
	adcs	x11, x15, xzr
	cinc	x12, x14, hs
	str	x11, [sp, #736]
	str	x12, [sp, #744]
	orr	x14, x11, x12
	cmp	x14, #0
	cset	w14, eq
	and	w13, w13, w14
	adds	x13, x16, x13
	cinc	x14, x17, hs
	str	x13, [sp, #752]
	str	x14, [sp, #760]
	ldp	x15, x16, [x1, #32]
	eor	x17, x14, x16
	eor	x0, x13, x15
	orr	x17, x0, x17
	cbnz	x17, LBB45_17
; %bb.14:                               ;   in Loop: Header=BB45_13 Depth=1
	ldp	x17, x0, [x1, #16]
	eor	x2, x12, x0
	eor	x3, x11, x17
	orr	x2, x3, x2
	cbnz	x2, LBB45_19
; %bb.15:                               ;   in Loop: Header=BB45_13 Depth=1
	ldp	x0, x17, [x1]
	cmp	x8, x0
	cset	w0, lo
	cmp	x10, x17
	cset	w17, lo
	csel	w17, w0, w17, eq
	tbnz	w17, #0, LBB45_21
; %bb.16:                               ;   in Loop: Header=BB45_13 Depth=1
	mov	x17, x11
	mov	x0, x12
	b	LBB45_20
LBB45_17:                               ;   in Loop: Header=BB45_13 Depth=1
	cmp	x13, x15
	cset	w17, ls
	cmp	x14, x16
	cset	w0, ls
	csel	w17, w17, w0, eq
	tbnz	w17, #0, LBB45_21
; %bb.18:                               ;   in Loop: Header=BB45_13 Depth=1
	ldp	x17, x0, [x1, #16]
	b	LBB45_20
LBB45_19:                               ;   in Loop: Header=BB45_13 Depth=1
	cmp	x11, x17
	cset	w2, ls
	cmp	x12, x0
	cset	w3, ls
	csel	w2, w2, w3, eq
	tbnz	w2, #0, LBB45_21
LBB45_20:                               ;   in Loop: Header=BB45_13 Depth=1
	ldp	x2, x3, [x1]
	b	LBB45_22
LBB45_21:                               ;   in Loop: Header=BB45_13 Depth=1
	mov	x2, #0
	mov	x3, #0
	mov	x17, #0
	mov	x0, #0
	mov	x15, #0
	mov	x16, #0
LBB45_22:                               ;   in Loop: Header=BB45_13 Depth=1
	subs	x8, x8, x2
	sbc	x4, x10, x3
	str	x4, [sp, #728]
	str	x8, [sp, #720]
	subs	x10, x11, x17
	sbc	x11, x12, x0
	cmn	x10, x17
	adcs	xzr, x11, x0
	cset	w12, hs
	subs	x13, x13, x15
	sbc	x14, x14, x16
	subs	x12, x13, x12
	sbc	x13, x14, xzr
	cmn	x8, x2
	adcs	xzr, x4, x3
	cset	w14, hs
	subs	x0, x10, x14
	sbc	x2, x11, xzr
	and	x10, x0, x2
	str	x2, [sp, #744]
	str	x0, [sp, #736]
	cmn	x10, #1
	cset	w10, eq
	and	w10, w14, w10
	subs	x3, x12, x10
	sbc	x5, x13, xzr
	str	x5, [sp, #760]
	str	x3, [sp, #752]
	ldp	x11, x10, [x1]
	ldp	x13, x12, [x1, #16]
	ldp	x15, x14, [x1, #32]
	subs	x16, x11, x8
	sbc	x17, x10, x4
	subs	x6, x13, x0
	sbc	x7, x12, x2
	cmn	x6, x0
	adcs	xzr, x7, x2
	cset	w0, hs
	subs	x2, x15, x3
	sbc	x3, x14, x5
	subs	x0, x2, x0
	sbc	x2, x3, xzr
	cmn	x16, x8
	adcs	xzr, x17, x4
	cset	w8, hs
	subs	x4, x6, x8
	sbc	x3, x7, xzr
	and	x5, x4, x3
	cmn	x5, #1
	cset	w5, eq
	and	w8, w8, w5
	subs	x0, x0, x8
	sbc	x2, x2, xzr
	ldp	x8, x5, [x27, #24]
	ldrh	w8, [x8]
	ldrh	w5, [x5]
	cbz	w5, LBB45_27
; %bb.23:                               ;   in Loop: Header=BB45_13 Depth=1
	ldr	x6, [x27, #40]
	ldrh	w6, [x6]
	and	x7, x16, x6
	add	x6, x7, x6
	mov	w7, #48
Lloh397:
	adrp	x19, _dy@PAGE
Lloh398:
	add	x19, x19, _dy@PAGEOFF
	madd	x6, x6, x7, x19
	ldp	x19, x7, [x6]
	ldp	x21, x20, [x6, #16]
	ldp	x6, x22, [x6, #32]
	adds	x0, x6, x0
	adc	x2, x22, x2
	adds	x4, x21, x4
	adcs	x3, x20, x3
	adcs	x6, x0, xzr
	cinc	x2, x2, hs
	adds	x0, x19, x16
	adcs	x16, x7, x17
	cset	w17, hs
	adcs	x4, x4, xzr
	cinc	x3, x3, hs
	orr	x7, x4, x3
	cmp	x7, #0
	cset	w7, eq
	and	w17, w17, w7
	adds	x7, x6, x17
	cinc	x6, x2, hs
	cmp	w5, #128
	b.hs	LBB45_25
; %bb.24:                               ;   in Loop: Header=BB45_13 Depth=1
	lsr	x17, x0, x5
	lsl	x0, x16, #1
	mvn	w2, w5
	lsl	x0, x0, x2
	orr	x17, x0, x17
	lsr	x0, x4, #1
	mov	w19, #128
	sub	w19, w19, w5
	mvn	w20, w19
	lsr	x0, x0, x20
	lsl	x21, x3, x19
	orr	x0, x21, x0
	lsl	x21, x4, x19
	tst	x19, #0x40
	csel	x0, x21, x0, ne
	csel	x21, xzr, x21, ne
	lsr	x22, x7, #1
	lsr	x20, x22, x20
	lsl	x22, x6, x19
	orr	x20, x22, x20
	lsl	x19, x7, x19
	csel	x20, x19, x20, ne
	csel	x19, xzr, x19, ne
	lsr	x16, x16, x5
	tst	x5, #0x40
	csel	x17, x16, x17, ne
	csel	x22, xzr, x16, ne
	orr	x16, x21, x17
	orr	x17, x0, x22
	lsr	x0, x4, x5
	lsl	x4, x3, #1
	lsl	x4, x4, x2
	orr	x0, x4, x0
	lsr	x3, x3, x5
	csel	x0, x3, x0, ne
	csel	x3, xzr, x3, ne
	orr	x4, x19, x0
	orr	x3, x20, x3
	lsr	x0, x7, x5
	lsl	x7, x6, #1
	lsl	x2, x7, x2
	orr	x0, x2, x0
	lsr	x2, x6, x5
	csel	x0, x2, x0, ne
	csel	x2, xzr, x2, ne
	add	w5, w8, w5
	add	w5, w5, #1
	adrp	x6, _m@PAGE
	ldrh	w6, [x6, _m@PAGEOFF]
	cmp	w6, w5, uxth
	b.hi	LBB45_28
	b	LBB45_30
LBB45_25:                               ;   in Loop: Header=BB45_13 Depth=1
	and	w19, w5, #0x7f
	lsl	x21, x6, #1
	cmp	w5, #256
	b.hs	LBB45_168
; %bb.26:                               ;   in Loop: Header=BB45_13 Depth=1
	mov	x0, #0
	mov	x2, #0
	lsr	x16, x4, x19
	lsl	x17, x3, #1
	mvn	w4, w19
	lsl	x17, x17, x4
	orr	x16, x17, x16
	lsr	x17, x3, x19
	mov	w3, #128
	sub	w3, w3, w19
	mvn	w20, w3
	lsr	x22, x7, #1
	lsr	x20, x22, x20
	lsl	x22, x7, x3
	tst	x3, #0x40
	lsl	x3, x6, x3
	orr	x3, x3, x20
	csel	x20, xzr, x22, ne
	csel	x3, x22, x3, ne
	cmp	w19, #0
	csel	x3, xzr, x3, eq
	csel	x20, xzr, x20, eq
	tst	x19, #0x40
	csel	x16, x17, x16, ne
	csel	x17, xzr, x17, ne
	orr	x16, x20, x16
	orr	x17, x3, x17
	lsr	x3, x7, x19
	lsl	x4, x21, x4
	orr	x3, x4, x3
	lsr	x6, x6, x19
	csel	x4, x6, x3, ne
	csel	x3, xzr, x6, ne
LBB45_27:                               ;   in Loop: Header=BB45_13 Depth=1
	add	w5, w8, w5
	add	w5, w5, #1
	adrp	x6, _m@PAGE
	ldrh	w6, [x6, _m@PAGEOFF]
	cmp	w6, w5, uxth
	b.ls	LBB45_30
LBB45_28:                               ;   in Loop: Header=BB45_13 Depth=1
	mov	w24, #48
	mov	x25, #17587891077120
Lloh399:
	adrp	x26, _dy@PAGE
Lloh400:
	add	x26, x26, _dy@PAGEOFF
LBB45_29:                               ;   Parent Loop BB45_13 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ubfiz	x7, x16, #32, #12
	add	x7, x7, x25
	lsr	x7, x7, #32
	madd	x7, x7, x24, x26
	ldp	x20, x19, [x7]
	ldp	x22, x21, [x7, #16]
	ldp	x7, x23, [x7, #32]
	adds	x0, x7, x0
	adc	x2, x23, x2
	adds	x4, x22, x4
	adcs	x3, x21, x3
	adcs	x0, x0, xzr
	cinc	x2, x2, hs
	adds	x16, x20, x16
	adcs	x7, x19, x17
	cset	w19, hs
	adcs	x4, x4, xzr
	cinc	x20, x3, hs
	orr	x3, x4, x20
	extr	x17, x4, x7, #12
	cmp	x3, #0
	extr	x16, x7, x16, #12
	cset	w3, eq
	and	w3, w19, w3
	adds	x0, x0, x3
	extr	x3, x0, x20, #12
	extr	x4, x20, x4, #12
	cinc	x2, x2, hs
	extr	x0, x2, x0, #12
	lsr	x2, x2, #12
	add	w5, w5, #12
	cmp	w6, w5, uxth
	b.hi	LBB45_29
LBB45_30:                               ;   in Loop: Header=BB45_13 Depth=1
	ldr	x5, [sp, #8]                    ; 8-byte Folded Reload
	add	w9, w9, w5
	sub	w9, w9, #1
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x27, #48]
	ldp	x5, x6, [x9, #32]
	eor	x7, x2, x6
	eor	x19, x0, x5
	orr	x7, x19, x7
	cbnz	x7, LBB45_33
; %bb.31:                               ;   in Loop: Header=BB45_13 Depth=1
	ldp	x19, x7, [x9, #16]
	eor	x20, x7, x3
	eor	x21, x19, x4
	orr	x20, x21, x20
	cbnz	x20, LBB45_167
; %bb.32:                               ;   in Loop: Header=BB45_13 Depth=1
	ldp	x19, x7, [x9]
	cmp	x19, x16
	cset	w19, hi
	cmp	x7, x17
	cset	w7, hi
	csel	w7, w19, w7, eq
	tbz	w7, #0, LBB45_34
	b	LBB45_35
LBB45_33:                               ;   in Loop: Header=BB45_13 Depth=1
	cmp	x0, x5
	cset	w7, lo
	cmp	x2, x6
	cset	w19, lo
	csel	w7, w7, w19, eq
	tbnz	w7, #0, LBB45_35
LBB45_34:                               ;   in Loop: Header=BB45_13 Depth=1
	mov	x11, #0
	mov	x10, #0
	mov	x13, #0
	mov	x12, #0
	mov	x15, #0
	mov	x14, #0
LBB45_35:                               ;   in Loop: Header=BB45_13 Depth=1
	subs	x0, x0, x5
	sbc	x2, x2, x6
	adds	x15, x0, x15
	adc	x14, x2, x14
	adds	x13, x13, x4
	adcs	x12, x12, x3
	adcs	x15, x15, xzr
	cinc	x14, x14, hs
	adds	x11, x11, x16
	adcs	x10, x10, x17
	cset	w16, hs
	adcs	x13, x13, xzr
	cinc	x12, x12, hs
	orr	x17, x13, x12
	cmp	x17, #0
	cset	w17, eq
	and	w16, w16, w17
	ldp	x0, x17, [x9]
	subs	x2, x11, x0
	sbc	x3, x10, x17
	ldp	x9, x10, [x9, #16]
	subs	x11, x13, x9
	sbc	x12, x12, x10
	cmn	x11, x9
	adcs	xzr, x12, x10
	cset	w9, hs
	cmn	x2, x0
	str	x3, [sp, #264]                  ; 8-byte Folded Spill
	adcs	xzr, x3, x17
	cset	w10, hs
	subs	x17, x11, x10
	sbc	x0, x12, xzr
	and	x11, x17, x0
	cmn	x11, #1
	cset	w11, eq
	and	w10, w10, w11
	adds	x11, x15, x16
	cinc	x12, x14, hs
	subs	x9, x11, x9
	sbc	x11, x12, xzr
	subs	x6, x9, x10
	sbc	x7, x11, xzr
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	and	w9, w10, #0xffff
	sub	w9, w9, #1
	str	w9, [sp, #204]                  ; 4-byte Folded Spill
	and	x9, x10, #0xffff
	add	x9, x9, w10, uxth #1
	lsl	x9, x9, #4
	str	x9, [sp, #208]                  ; 8-byte Folded Spill
	sxth	x9, w10
Lloh401:
	adrp	x10, _dz@PAGE
Lloh402:
	add	x10, x10, _dz@PAGEOFF
	mov	w11, #393216
	madd	x10, x9, x11, x10
	str	x10, [sp, #168]                 ; 8-byte Folded Spill
Lloh403:
	adrp	x10, _dl@PAGE
Lloh404:
	add	x10, x10, _dl@PAGEOFF
	add	x9, x10, x9, lsl #14
	str	x9, [sp, #160]                  ; 8-byte Folded Spill
	str	x28, [sp, #136]                 ; 8-byte Folded Spill
	b	LBB45_38
LBB45_36:                               ;   in Loop: Header=BB45_38 Depth=2
	ldp	x16, x15, [sp, #232]            ; 16-byte Folded Reload
LBB45_37:                               ;   in Loop: Header=BB45_38 Depth=2
	ldp	x10, x9, [x1]
	ldp	x12, x11, [x1, #16]
	ldp	x14, x13, [x1, #32]
	adds	x14, x14, x17
	adc	x13, x13, x3
	adds	x12, x12, x15
	adcs	x11, x11, x16
	adcs	x14, x14, xzr
	cinc	x13, x13, hs
	adds	x2, x10, x2
	ldr	x10, [sp, #264]                 ; 8-byte Folded Reload
	adcs	x10, x9, x10
	str	x10, [sp, #264]                 ; 8-byte Folded Spill
	cset	w9, hs
	adcs	x17, x12, xzr
	cinc	x0, x11, hs
	orr	x10, x17, x0
	cmp	x10, #0
	cset	w10, eq
	and	w9, w9, w10
	adds	x6, x14, x9
	cinc	x7, x13, hs
LBB45_38:                               ;   Parent Loop BB45_13 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB45_54 Depth 3
                                        ;       Child Loop BB45_66 Depth 3
                                        ;       Child Loop BB45_72 Depth 3
                                        ;       Child Loop BB45_81 Depth 3
                                        ;       Child Loop BB45_108 Depth 3
                                        ;       Child Loop BB45_117 Depth 3
                                        ;       Child Loop BB45_126 Depth 3
                                        ;       Child Loop BB45_135 Depth 3
                                        ;       Child Loop BB45_143 Depth 3
	and	x9, x8, #0xffff
	mul	x10, x9, x30
Lloh405:
	adrp	x11, _pp23@PAGE
Lloh406:
	add	x11, x11, _pp23@PAGEOFF
	add	x11, x11, x10
	ldr	x12, [sp, #208]                 ; 8-byte Folded Reload
	add	x11, x11, x12
	ldp	x13, x12, [x11, #-16]
	eor	x14, x12, x7
	eor	x15, x13, x6
	orr	x14, x15, x14
	cbnz	x14, LBB45_41
; %bb.39:                               ;   in Loop: Header=BB45_38 Depth=2
	ldp	x13, x12, [x11, #-32]
	eor	x14, x12, x0
	eor	x15, x13, x17
	orr	x14, x15, x14
	cbnz	x14, LBB45_42
; %bb.40:                               ;   in Loop: Header=BB45_38 Depth=2
	ldp	x11, x12, [x11, #-48]
	cmp	x11, x2
	cset	w11, lo
	ldr	x13, [sp, #264]                 ; 8-byte Folded Reload
	cmp	x12, x13
	cset	w12, lo
	csel	w11, w11, w12, eq
	tbz	w11, #0, LBB45_43
	b	LBB45_12
LBB45_41:                               ;   in Loop: Header=BB45_38 Depth=2
	cmp	x13, x6
	cset	w11, hi
	cmp	x12, x7
	cset	w12, hi
	csel	w11, w11, w12, eq
	tbnz	w11, #0, LBB45_43
	b	LBB45_12
LBB45_42:                               ;   in Loop: Header=BB45_38 Depth=2
	cmp	x13, x17
	cset	w11, ls
	cmp	x12, x0
	cset	w12, ls
	csel	w11, w11, w12, eq
	tbnz	w11, #0, LBB45_12
LBB45_43:                               ;   in Loop: Header=BB45_38 Depth=2
	ldr	x11, [x27, #56]
	ldrh	w16, [x11]
	stp	x7, x6, [sp, #248]              ; 16-byte Folded Spill
	stp	x0, x17, [sp, #232]             ; 16-byte Folded Spill
	cbz	w16, LBB45_46
; %bb.44:                               ;   in Loop: Header=BB45_38 Depth=2
	ldr	x11, [x27, #64]
	ldrh	w11, [x11]
	and	x12, x2, x11
	mov	x3, x17
	mov	x4, x0
	add	x0, x12, x11
	mov	w11, #48
	ldr	x12, [sp, #168]                 ; 8-byte Folded Reload
	madd	x11, x0, x11, x12
	sub	x13, x11, #96, lsl #12          ; =393216
	ldp	x15, x14, [x13]
	mov	x21, x2
	subs	x12, x2, x15
	ldr	x11, [sp, #264]                 ; 8-byte Folded Reload
	sbc	x11, x11, x14
	ldp	x2, x17, [x13, #16]
	subs	x3, x3, x2
	sbc	x4, x4, x17
	ldp	x13, x5, [x13, #32]
	cmn	x3, x2
	adcs	xzr, x4, x17
	cset	w17, hs
	subs	x13, x6, x13
	sbc	x2, x7, x5
	subs	x13, x13, x17
	sbc	x2, x2, xzr
	cmn	x12, x15
	adcs	xzr, x11, x14
	cset	w14, hs
	subs	x17, x3, x14
	sbc	x15, x4, xzr
	and	x3, x17, x15
	cmn	x3, #1
	cset	w3, eq
	and	w14, w14, w3
	subs	x4, x13, x14
	sbc	x2, x2, xzr
	lsl	x3, x2, #1
	cmp	w16, #128
	b.hs	LBB45_47
; %bb.45:                               ;   in Loop: Header=BB45_38 Depth=2
	lsr	x12, x12, x16
	lsl	x13, x11, #1
	mvn	w5, w16
	lsl	x13, x13, x5
	orr	x12, x13, x12
	lsr	x13, x17, #1
	mov	w14, #128
	sub	w14, w14, w16
	mvn	w6, w14
	lsr	x13, x13, x6
	lsl	x7, x15, x14
	orr	x13, x7, x13
	tst	x14, #0x40
	lsl	x7, x17, x14
	csel	x19, x7, x13, ne
	csel	x13, xzr, x7, ne
	lsr	x7, x4, #1
	lsr	x6, x7, x6
	lsl	x7, x2, x14
	orr	x6, x7, x6
	lsl	x14, x4, x14
	csel	x6, x14, x6, ne
	csel	x7, xzr, x14, ne
	lsr	x11, x11, x16
	tst	x16, #0x40
	csel	x12, x11, x12, ne
	csel	x11, xzr, x11, ne
	orr	x13, x13, x12
	orr	x14, x19, x11
	lsr	x11, x17, x16
	lsl	x12, x15, #1
	lsl	x12, x12, x5
	orr	x11, x12, x11
	lsr	x12, x15, x16
	csel	x11, x12, x11, ne
	csel	x12, xzr, x12, ne
	orr	x15, x7, x11
	orr	x17, x6, x12
	lsr	x11, x4, x16
	lsl	x12, x3, x5
	orr	x11, x12, x11
	lsr	x12, x2, x16
	csel	x11, x12, x11, ne
	csel	x12, xzr, x12, ne
	b	LBB45_50
LBB45_46:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	x15, x17
	mov	x17, x0
	mov	x11, x6
	mov	x12, x7
	mov	x21, x2
	mov	x13, x2
	ldr	x14, [sp, #264]                 ; 8-byte Folded Reload
	ldr	w0, [sp, #204]                  ; 4-byte Folded Reload
	sxth	w2, w0
	cmp	w2, #1
	b.ge	LBB45_51
	b	LBB45_60
LBB45_47:                               ;   in Loop: Header=BB45_38 Depth=2
	and	w5, w16, #0x7f
	cmp	w16, #256
	b.hs	LBB45_49
; %bb.48:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	x11, #0
	mov	x12, #0
	lsr	x13, x17, x5
	lsl	x14, x15, #1
	mvn	w17, w5
	lsl	x14, x14, x17
	orr	x13, x14, x13
	lsr	x14, x15, x5
	mov	w15, #128
	sub	w15, w15, w5
	mvn	w6, w15
	lsr	x7, x4, #1
	lsr	x6, x7, x6
	lsl	x7, x4, x15
	tst	x15, #0x40
	lsl	x15, x2, x15
	orr	x15, x15, x6
	csel	x6, xzr, x7, ne
	csel	x15, x7, x15, ne
	cmp	w5, #0
	csel	x15, xzr, x15, eq
	csel	x6, xzr, x6, eq
	tst	x5, #0x40
	csel	x13, x14, x13, ne
	csel	x14, xzr, x14, ne
	orr	x13, x6, x13
	orr	x14, x15, x14
	lsr	x15, x4, x5
	lsl	x17, x3, x17
	orr	x15, x17, x15
	lsr	x17, x2, x5
	csel	x15, x17, x15, ne
	csel	x17, xzr, x17, ne
	b	LBB45_50
LBB45_49:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	x15, #0
	mov	x17, #0
	mov	x11, #0
	mov	x12, #0
	lsr	x13, x4, x5
	mvn	w14, w5
	lsl	x14, x3, x14
	orr	x13, x14, x13
	lsr	x14, x2, x5
	tst	x5, #0x40
	csel	x13, x14, x13, ne
	csel	x14, xzr, x14, ne
LBB45_50:                               ;   in Loop: Header=BB45_38 Depth=2
	ldr	x2, [sp, #160]                  ; 8-byte Folded Reload
	add	x0, x2, x0, lsl #1
	mov	x2, #-16384
	ldrh	w0, [x0, x2]
	ldr	w2, [sp, #204]                  ; 4-byte Folded Reload
	sub	w0, w2, w0
	sxth	w2, w0
	cmp	w2, #1
	b.lt	LBB45_60
LBB45_51:                               ;   in Loop: Header=BB45_38 Depth=2
	sub	w16, w8, w16
	b	LBB45_54
LBB45_52:                               ;   in Loop: Header=BB45_54 Depth=3
	cmp	x5, x11
	cset	w3, hi
	cmp	x4, x12
	cset	w4, hi
	csel	w3, w3, w4, eq
	mov	x7, #17587891077120
	tbz	w3, #0, LBB45_59
LBB45_53:                               ;   in Loop: Header=BB45_54 Depth=3
	ubfiz	x3, x13, #32, #12
	add	x3, x3, x7
	lsr	x4, x3, #32
Lloh407:
	adrp	x5, _dz@PAGE
Lloh408:
	add	x5, x5, _dz@PAGEOFF
	mov	w6, #393216
	madd	x5, x2, x6, x5
	madd	x4, x4, x19, x5
	ldp	x6, x5, [x4]
	subs	x13, x13, x6
	sbc	x7, x14, x5
	ldp	x19, x14, [x4, #16]
	subs	x15, x15, x19
	sbc	x17, x17, x14
	ldp	x4, x20, [x4, #32]
	cmn	x15, x19
	adcs	xzr, x17, x14
	cset	w14, hs
	subs	x11, x11, x4
	sbc	x12, x12, x20
	subs	x11, x11, x14
	sbc	x12, x12, xzr
	cmn	x13, x6
	adcs	xzr, x7, x5
	cset	w14, hs
	subs	x15, x15, x14
	sbc	x17, x17, xzr
	and	x4, x15, x17
	cmn	x4, #1
	cset	w4, eq
	and	w14, w14, w4
	subs	x11, x11, x14
	extr	x14, x15, x7, #12
	extr	x13, x7, x13, #12
	extr	x15, x17, x15, #12
	extr	x17, x11, x17, #12
	sbc	x12, x12, xzr
	extr	x11, x12, x11, #12
	lsr	x12, x12, #12
Lloh409:
	adrp	x4, _dl@PAGE
Lloh410:
	add	x4, x4, _dl@PAGEOFF
	add	x2, x4, x2, lsl #14
	lsr	x3, x3, #31
	ldrh	w2, [x2, x3]
	sub	w0, w0, w2
	sxth	w0, w0
	sub	w16, w16, #12
	cmp	w0, #0
	b.le	LBB45_60
LBB45_54:                               ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	and	w2, w0, #0xffff
	cmp	w2, w16, uxth
	b.hs	LBB45_59
; %bb.55:                               ;   in Loop: Header=BB45_54 Depth=3
	and	x3, x16, #0xffff
	and	x2, x0, #0xffff
Lloh411:
	adrp	x4, _pp23@PAGE
Lloh412:
	add	x4, x4, _pp23@PAGEOFF
	madd	x3, x3, x30, x4
	mov	w19, #48
	madd	x3, x2, x19, x3
	ldp	x5, x4, [x3, #32]
	eor	x6, x4, x12
	eor	x7, x5, x11
	orr	x6, x7, x6
	cbnz	x6, LBB45_52
; %bb.56:                               ;   in Loop: Header=BB45_54 Depth=3
	ldp	x5, x4, [x3, #16]
	eor	x6, x4, x17
	eor	x7, x5, x15
	orr	x6, x7, x6
	mov	x7, #17587891077120
	cbnz	x6, LBB45_58
; %bb.57:                               ;   in Loop: Header=BB45_54 Depth=3
	ldp	x3, x4, [x3]
	cmp	x3, x13
	cset	w3, lo
	cmp	x4, x14
	cset	w4, lo
	csel	w3, w3, w4, eq
	tbz	w3, #0, LBB45_53
	b	LBB45_59
LBB45_58:                               ;   in Loop: Header=BB45_54 Depth=3
	cmp	x5, x15
	cset	w3, hi
	cmp	x4, x17
	cset	w4, hi
	csel	w3, w3, w4, eq
	tbnz	w3, #0, LBB45_53
LBB45_59:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	x2, x21
	b	LBB45_166
LBB45_60:                               ;   in Loop: Header=BB45_38 Depth=2
	orr	x12, x12, x17
	orr	x11, x11, x15
	orr	x11, x11, x13
	orr	x12, x12, x14
	orr	x11, x11, x12
	mov	x2, x21
	ldp	x3, x17, [sp, #248]             ; 16-byte Folded Reload
	cbnz	x11, LBB45_36
; %bb.61:                               ;   in Loop: Header=BB45_38 Depth=2
	tst	w0, #0xffff
	b.ne	LBB45_36
; %bb.62:                               ;   in Loop: Header=BB45_38 Depth=2
	str	x2, [sp, #176]                  ; 8-byte Folded Spill
	ldp	x12, x11, [x27]
	ldrh	w11, [x11]
	ldrh	w13, [x12]
	cbz	x13, LBB45_68
; %bb.63:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	x21, #0
	mov	x19, #0
	mov	x26, #0
	mov	x22, #0
	mov	x24, #0
	mov	x25, #0
	sub	x12, x13, #1
Lloh413:
	adrp	x14, _p23@PAGE+32
Lloh414:
	add	x14, x14, _p23@PAGEOFF+32
Lloh415:
	adrp	x20, _p23@PAGE
Lloh416:
	add	x20, x20, _p23@PAGEOFF
	mov	w4, #1
Lloh417:
	adrp	x27, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh418:
	ldr	x27, [x27, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	b	LBB45_66
LBB45_64:                               ;   in Loop: Header=BB45_66 Depth=3
	ldp	x16, x15, [x14, #-32]
	ldp	x0, x17, [x14, #-16]
	ldp	x3, x2, [x14]
LBB45_65:                               ;   in Loop: Header=BB45_66 Depth=3
	adds	x3, x3, x21
	adc	x2, x2, x19
	adds	x0, x0, x26
	adcs	x17, x17, x22
	adcs	x3, x3, xzr
	cinc	x2, x2, hs
	adds	x24, x16, x24
	adcs	x25, x15, x25
	cset	w15, hs
	adcs	x26, x0, xzr
	cinc	x22, x17, hs
	orr	x16, x26, x22
	cmp	x16, #0
	cset	w16, eq
	and	w15, w15, w16
	adds	x21, x3, x15
	cinc	x19, x2, hs
	add	x14, x14, x30
	and	w15, w12, #0xffff
	sub	x12, x12, #1
	cbz	w15, LBB45_69
LBB45_66:                               ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lsl	x15, x4, x12
	ands	x15, x15, x28
	cset	w16, ne
	sub	w11, w11, w16
	cbnz	x15, LBB45_64
; %bb.67:                               ;   in Loop: Header=BB45_66 Depth=3
	mov	x16, #0
	mov	x0, #0
	mov	x17, #0
	mov	x3, #0
	mov	x2, #0
	b	LBB45_65
LBB45_68:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	x24, #0
	mov	x25, #0
	mov	x26, #0
	mov	x22, #0
	mov	x21, #0
	mov	x19, #0
Lloh419:
	adrp	x20, _p23@PAGE
Lloh420:
	add	x20, x20, _p23@PAGEOFF
Lloh421:
	adrp	x27, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh422:
	ldr	x27, [x27, __ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
LBB45_69:                               ;   in Loop: Header=BB45_38 Depth=2
	tst	w8, #0xffff
	b.eq	LBB45_85
; %bb.70:                               ;   in Loop: Header=BB45_38 Depth=2
	sxth	w8, w11
	cmp	w8, #1
	mov	w7, #128
	b.lt	LBB45_77
; %bb.71:                               ;   in Loop: Header=BB45_38 Depth=2
	add	x8, x20, x10
	mov	x10, #-11664
	add	x8, x8, x10
	ldp	x12, x10, [x8, #32]
	ldr	x14, [sp, #256]                 ; 8-byte Folded Reload
	adds	x12, x12, x14
	ldp	x16, x14, [sp, #240]            ; 16-byte Folded Reload
	adc	x10, x10, x14
	ldp	x15, x14, [x8, #16]
	adds	x15, x15, x16
	ldr	x16, [sp, #232]                 ; 8-byte Folded Reload
	adcs	x16, x14, x16
	adcs	x0, x12, xzr
	cinc	x10, x10, hs
	ldp	x8, x12, [x8]
	ldr	x14, [sp, #176]                 ; 8-byte Folded Reload
	adds	x8, x8, x14
	ldr	x14, [sp, #264]                 ; 8-byte Folded Reload
	adcs	x14, x12, x14
	cset	w2, hs
	adcs	x12, x15, xzr
	cinc	x17, x16, hs
	orr	x15, x12, x17
	cmp	x15, #0
	cset	w15, eq
	and	w15, w2, w15
	adds	x15, x0, x15
	cinc	x16, x10, hs
	madd	x10, x13, x30, x20
	add	x10, x10, #32
	mov	w13, #1
LBB45_72:                               ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	orr	x0, x16, x17
	orr	x2, x15, x12
	orr	x2, x2, x8
	orr	x0, x0, x14
	orr	x0, x2, x0
	cbz	x0, LBB45_77
; %bb.73:                               ;   in Loop: Header=BB45_72 Depth=3
	tbz	w8, #0, LBB45_75
; %bb.74:                               ;   in Loop: Header=BB45_72 Depth=3
	sub	w11, w11, #1
	ldp	x2, x0, [x10, #-32]
	ldp	x4, x3, [x10, #-16]
	ldp	x6, x5, [x10]
	adds	x6, x6, x21
	adc	x5, x5, x19
	adds	x4, x4, x26
	adcs	x3, x3, x22
	adcs	x6, x6, xzr
	cinc	x5, x5, hs
	adds	x24, x2, x24
	adcs	x25, x0, x25
	cset	w0, hs
	adcs	x26, x4, xzr
	cinc	x22, x3, hs
	orr	x2, x26, x22
	cmp	x2, #0
	cset	w2, eq
	and	w0, w0, w2
	adds	x21, x6, x0
	cinc	x19, x5, hs
	and	x0, x11, #0xffff
	mov	w2, #48
	madd	x0, x0, x2, x20
	ldp	x3, x2, [x0]
	subs	x8, x8, x3
	sbc	x14, x14, x2
	ldp	x5, x4, [x0, #16]
	subs	x12, x12, x5
	sbc	x17, x17, x4
	ldp	x0, x6, [x0, #32]
	cmn	x12, x5
	adcs	xzr, x17, x4
	cset	w4, hs
	subs	x15, x15, x0
	sbc	x16, x16, x6
	subs	x15, x15, x4
	sbc	x16, x16, xzr
	cmn	x8, x3
	adcs	xzr, x14, x2
	cset	w0, hs
	subs	x12, x12, x0
	sbc	x17, x17, xzr
	and	x2, x12, x17
	cmn	x2, #1
	cset	w2, eq
	and	w0, w0, w2
	subs	x15, x15, x0
	sbc	x16, x16, xzr
LBB45_75:                               ;   in Loop: Header=BB45_72 Depth=3
	cmp	x13, x9
	b.hs	LBB45_77
; %bb.76:                               ;   in Loop: Header=BB45_72 Depth=3
	extr	x8, x14, x8, #1
	extr	x14, x12, x14, #1
	extr	x12, x17, x12, #1
	extr	x17, x15, x17, #1
	add	x10, x10, x30
	extr	x15, x16, x15, #1
	add	x13, x13, #1
	lsr	x16, x16, #1
	sxth	w0, w11
	cmp	w0, #0
	b.gt	LBB45_72
LBB45_77:                               ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	adrp	x8, _m@PAGE
	ldrh	w23, [x8, _m@PAGEOFF]
	cbz	w23, LBB45_86
LBB45_78:                               ;   in Loop: Header=BB45_38 Depth=2
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
	b	LBB45_81
LBB45_79:                               ;   in Loop: Header=BB45_81 Depth=3
	and	x16, x28, #0xffff
	umaddl	x17, w10, w30, x20
	mov	w0, #48
	madd	x16, x16, x0, x17
	ldp	x0, x17, [x16]
	ldp	x3, x2, [x16, #16]
	ldp	x16, x4, [x16, #32]
	adds	x15, x15, x16
	adc	x14, x14, x4
	adds	x13, x13, x3
	adcs	x12, x12, x2
	adcs	x15, x15, xzr
	cinc	x14, x14, hs
	adds	x8, x8, x0
	adcs	x9, x9, x17
	cset	w16, hs
	adcs	x13, x13, xzr
	cinc	x12, x12, hs
	orr	x17, x13, x12
	cmp	x17, #0
	cset	w17, eq
	and	w16, w16, w17
	adds	x15, x15, x16
	cinc	x14, x14, hs
	add	w28, w28, #1
LBB45_80:                               ;   in Loop: Header=BB45_81 Depth=3
	add	w11, w11, #1
	and	w16, w10, #0xffff
	sub	w10, w10, #1
	cbz	w16, LBB45_84
LBB45_81:                               ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w16, w10, #1
	cmp	w16, #129
	b.hs	LBB45_83
; %bb.82:                               ;   in Loop: Header=BB45_81 Depth=3
	mov	w16, w10
	lsr	x17, x24, x16
	mvn	w0, w10
	lsl	x2, x25, #1
	lsl	x0, x2, x0
	orr	x17, x0, x17
	lsr	x0, x25, x16
	tst	x16, #0x40
	csel	x16, x0, x17, ne
	mov	w17, w11
	lsl	x0, x26, x17
	tst	x17, #0x40
	csel	x17, xzr, x0, ne
	cmp	w10, #0
	csel	x17, xzr, x17, eq
	orr	x16, x17, x16
	tbz	w16, #0, LBB45_80
	b	LBB45_79
LBB45_83:                               ;   in Loop: Header=BB45_81 Depth=3
	and	w17, w10, #0x7f
	lsr	x0, x26, x17
	mvn	w2, w17
	lsl	x3, x22, #1
	lsl	x3, x3, x2
	orr	x0, x3, x0
	lsr	x3, x22, x17
	tst	x17, #0x40
	csel	x0, x3, x0, ne
	sub	w3, w7, w17
	lsl	x4, x21, x3
	tst	x3, #0x40
	csel	x3, xzr, x4, ne
	cmp	w17, #0
	csel	x3, xzr, x3, eq
	orr	x0, x3, x0
	lsr	x3, x21, x17
	lsl	x4, x19, #1
	lsl	x2, x4, x2
	orr	x2, x2, x3
	lsr	x3, x19, x17
	tst	x17, #0x40
	csel	x17, x3, x2, ne
	cmp	w16, #257
	csel	x16, x0, x17, lo
	tbz	w16, #0, LBB45_80
	b	LBB45_79
LBB45_84:                               ;   in Loop: Header=BB45_38 Depth=2
	str	x13, [sp, #688]
	str	x12, [sp, #696]
	str	x15, [sp, #704]
	str	x14, [sp, #712]
	b	LBB45_87
LBB45_85:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	w7, #128
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	adrp	x8, _m@PAGE
	ldrh	w23, [x8, _m@PAGEOFF]
	cbnz	w23, LBB45_78
LBB45_86:                               ;   in Loop: Header=BB45_38 Depth=2
	mov	x8, #0
	mov	x9, #0
	mov	w28, #0
LBB45_87:                               ;   in Loop: Header=BB45_38 Depth=2
	str	x8, [sp, #672]
	str	x9, [sp, #680]
	add	x8, sp, #576
	add	x0, sp, #672
	bl	__Z6divmodRK11__uint384_tS1_
	mov	w8, #11664
	umaddl	x8, w23, w8, x20
	mov	x9, x28
	and	x9, x28, #0xffff
	mov	w10, #48
	madd	x9, x9, x10, x20
	ldp	x11, x10, [x8, #32]
	ldp	x13, x12, [x9, #32]
	eor	x14, x10, x12
	eor	x15, x11, x13
	orr	x14, x15, x14
	str	x28, [sp, #144]                 ; 8-byte Folded Spill
	cbnz	x14, LBB45_90
; %bb.88:                               ;   in Loop: Header=BB45_38 Depth=2
	ldp	x11, x10, [x8, #16]
	ldp	x13, x12, [x9, #16]
	eor	x14, x10, x12
	eor	x15, x11, x13
	orr	x14, x15, x14
	cbnz	x14, LBB45_90
; %bb.89:                               ;   in Loop: Header=BB45_38 Depth=2
	ldp	x8, x10, [x8]
	ldp	x9, x11, [x9]
	cmp	x8, x9
	cset	w8, hs
	cmp	x10, x11
	cset	w9, hs
	b	LBB45_91
LBB45_90:                               ;   in Loop: Header=BB45_38 Depth=2
	cmp	x11, x13
	cset	w8, hi
	cmp	x10, x12
	cset	w9, hi
LBB45_91:                               ;   in Loop: Header=BB45_38 Depth=2
	csel	w8, w8, w9, eq
	cmp	w8, #0
Lloh423:
	adrp	x9, l_.str.1@PAGE
Lloh424:
	add	x9, x9, l_.str.1@PAGEOFF
Lloh425:
	adrp	x10, l_.str.28@PAGE
Lloh426:
	add	x10, x10, l_.str.28@PAGEOFF
	csel	x1, x10, x9, ne
	eor	w2, w8, #0x1
	strb	w2, [sp, #575]
	add	x8, sp, #552
	orr	x20, x8, x2
	add	x0, sp, #552
	bl	_memcpy
	strb	wzr, [x20]
	add	x8, x27, #104
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	str	x8, [sp, #400]
	add	x20, x27, #64
	str	x20, [sp, #288]
	ldp	x9, x8, [sp, #120]              ; 16-byte Folded Reload
	str	x8, [sp, #272]
	ldur	x8, [x8, #-24]
	add	x10, sp, #272
	str	x9, [x10, x8]
	str	xzr, [sp, #280]
	ldr	x8, [sp, #272]
	ldur	x8, [x8, #-24]
	add	x23, x10, x8
Ltmp460:
	mov	x0, x23
	ldr	x28, [sp, #216]                 ; 8-byte Folded Reload
	mov	x1, x28
	bl	__ZNSt3__18ios_base4initEPv
Ltmp461:
; %bb.92:                               ;   in Loop: Header=BB45_38 Depth=2
	str	xzr, [x23, #136]
	mov	w8, #-1
	str	w8, [x23, #144]
	ldp	x10, x8, [sp, #96]              ; 16-byte Folded Reload
	ldur	x8, [x8, #-24]
	ldr	x9, [sp, #184]                  ; 8-byte Folded Reload
	str	x10, [x9, x8]
	ldp	x8, x9, [sp, #80]               ; 16-byte Folded Reload
	ldur	x8, [x8, #-24]
	add	x10, sp, #272
	str	x9, [x10, x8]
	add	x8, x27, #24
	ldr	x9, [sp, #152]                  ; 8-byte Folded Reload
	str	x9, [sp, #400]
	str	x8, [sp, #272]
	str	x20, [sp, #288]
Ltmp463:
	mov	x0, x28
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp464:
; %bb.93:                               ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	str	x8, [sp, #296]
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8]
	mov	w8, #24
	str	w8, [sp, #392]
Ltmp466:
	mov	x0, #0
	bl	_time
Ltmp467:
	ldr	x27, [sp, #72]                  ; 8-byte Folded Reload
	add	x20, sp, #272
	ldr	x28, [sp, #144]                 ; 8-byte Folded Reload
; %bb.94:                               ;   in Loop: Header=BB45_38 Depth=2
Lloh427:
	adrp	x8, _start_time@PAGE
Lloh428:
	ldr	x1, [x8, _start_time@PAGEOFF]
Ltmp468:
	bl	_difftime
Ltmp469:
; %bb.95:                               ;   in Loop: Header=BB45_38 Depth=2
Ltmp470:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp471:
; %bb.96:                               ;   in Loop: Header=BB45_38 Depth=2
Ltmp472:
Lloh429:
	adrp	x1, l_.str.20@PAGE
Lloh430:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp473:
; %bb.97:                               ;   in Loop: Header=BB45_38 Depth=2
Ltmp474:
	mov	x23, x0
	bl	_pthread_self
	mov	x1, x0
Ltmp475:
; %bb.98:                               ;   in Loop: Header=BB45_38 Depth=2
Ltmp477:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp478:
; %bb.99:                               ;   in Loop: Header=BB45_38 Depth=2
Ltmp479:
Lloh431:
	adrp	x1, l_.str.21@PAGE
Lloh432:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp480:
; %bb.100:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp481:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
Lloh433:
	adrp	x1, l_.str.29@PAGE
Lloh434:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #3
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp482:
; %bb.101:                              ;   in Loop: Header=BB45_38 Depth=2
	adrp	x8, _m@PAGE
	ldrh	w1, [x8, _m@PAGEOFF]
Ltmp483:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp484:
; %bb.102:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp485:
Lloh435:
	adrp	x1, l_.str.30@PAGE
Lloh436:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp486:
; %bb.103:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp487:
	and	w1, w28, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp488:
; %bb.104:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp489:
Lloh437:
	adrp	x1, l_.str.31@PAGE
Lloh438:
	add	x1, x1, l_.str.31@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp490:
; %bb.105:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp491:
	mov	x28, x0
	add	x0, sp, #960
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp492:
; %bb.106:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #960]
	cbz	w8, LBB45_112
; %bb.107:                              ;   in Loop: Header=BB45_38 Depth=2
	str	x24, [sp, #912]
	str	x25, [sp, #920]
	str	x26, [sp, #928]
	str	x22, [sp, #936]
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	str	x21, [sp, #944]
	str	x19, [sp, #952]
	ldr	x19, [sp, #192]                 ; 8-byte Folded Reload
	mov	w21, #2
Lloh439:
	adrp	x22, l_.str@PAGE
Lloh440:
	add	x22, x22, l_.str@PAGEOFF
LBB45_108:                              ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19]
	str	xzr, [sp, #776]
	str	x21, [sp, #768]
	add	x8, sp, #816
	add	x0, sp, #912
	add	x1, sp, #768
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #864]
	ldrb	w8, [x22, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [sp, #848]
	ldp	q1, q0, [sp, #816]
	stp	q0, q2, [sp, #928]
	str	q1, [sp, #912]
	ldr	x8, [sp, #952]
	ldr	x9, [sp, #944]
	ldr	x10, [sp, #936]
	ldr	x11, [sp, #928]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #912]
	ldr	x11, [sp, #920]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB45_108
; %bb.109:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp493:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp494:
; %bb.110:                              ;   in Loop: Header=BB45_38 Depth=2
	cmp	x0, x24
	b.eq	LBB45_112
; %bb.111:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp495:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp496:
LBB45_112:                              ;   in Loop: Header=BB45_38 Depth=2
	add	x0, sp, #960
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	w8, #48
	strb	w8, [sp, #976]
Ltmp498:
	add	x1, sp, #976
	mov	x0, x28
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp499:
; %bb.113:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp500:
Lloh441:
	adrp	x1, l_.str.32@PAGE
Lloh442:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp501:
; %bb.114:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp502:
	mov	x28, x0
	add	x0, sp, #960
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp503:
; %bb.115:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #960]
	cbz	w8, LBB45_121
; %bb.116:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #912]
	ldr	q0, [x8, #32]
	str	q0, [sp, #944]
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	ldr	x19, [sp, #192]                 ; 8-byte Folded Reload
Lloh443:
	adrp	x21, l_.str@PAGE
Lloh444:
	add	x21, x21, l_.str@PAGEOFF
	mov	w22, #10
LBB45_117:                              ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19]
	str	xzr, [sp, #776]
	str	x22, [sp, #768]
	add	x8, sp, #816
	add	x0, sp, #912
	add	x1, sp, #768
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #864]
	ldrb	w8, [x21, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [sp, #848]
	ldp	q1, q0, [sp, #816]
	stp	q0, q2, [sp, #928]
	str	q1, [sp, #912]
	ldr	x8, [sp, #952]
	ldr	x9, [sp, #944]
	ldr	x10, [sp, #936]
	ldr	x11, [sp, #928]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #912]
	ldr	x11, [sp, #920]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB45_117
; %bb.118:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp504:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp505:
; %bb.119:                              ;   in Loop: Header=BB45_38 Depth=2
	cmp	x0, x24
	b.eq	LBB45_121
; %bb.120:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp506:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp507:
LBB45_121:                              ;   in Loop: Header=BB45_38 Depth=2
	add	x0, sp, #960
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp509:
	mov	x0, x28
Lloh445:
	adrp	x1, l_.str.33@PAGE
Lloh446:
	add	x1, x1, l_.str.33@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp510:
; %bb.122:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #575]
	sxtb	w9, w8
	ldr	x10, [sp, #552]
	ldr	x11, [sp, #560]
	cmp	w9, #0
	add	x9, sp, #552
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp511:
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp512:
; %bb.123:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp513:
	mov	x28, x0
	add	x0, sp, #960
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp514:
; %bb.124:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #960]
	cbz	w8, LBB45_130
; %bb.125:                              ;   in Loop: Header=BB45_38 Depth=2
	ldp	q0, q1, [sp, #576]
	stp	q0, q1, [sp, #912]
	ldr	q0, [sp, #608]
	str	q0, [sp, #944]
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	ldr	x19, [sp, #192]                 ; 8-byte Folded Reload
Lloh447:
	adrp	x21, l_.str@PAGE
Lloh448:
	add	x21, x21, l_.str@PAGEOFF
	mov	w22, #10
LBB45_126:                              ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19]
	str	xzr, [sp, #776]
	str	x22, [sp, #768]
	add	x8, sp, #816
	add	x0, sp, #912
	add	x1, sp, #768
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #864]
	ldrb	w8, [x21, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [sp, #848]
	ldp	q1, q0, [sp, #816]
	stp	q0, q2, [sp, #928]
	str	q1, [sp, #912]
	ldr	x8, [sp, #952]
	ldr	x9, [sp, #944]
	ldr	x10, [sp, #936]
	ldr	x11, [sp, #928]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #912]
	ldr	x11, [sp, #920]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB45_126
; %bb.127:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp515:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp516:
; %bb.128:                              ;   in Loop: Header=BB45_38 Depth=2
	cmp	x0, x24
	b.eq	LBB45_130
; %bb.129:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp517:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp518:
LBB45_130:                              ;   in Loop: Header=BB45_38 Depth=2
	add	x0, sp, #960
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp520:
	mov	x0, x28
Lloh449:
	adrp	x1, l_.str.34@PAGE
Lloh450:
	add	x1, x1, l_.str.34@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp521:
; %bb.131:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #575]
	sxtb	w9, w8
	ldr	x10, [sp, #552]
	ldr	x11, [sp, #560]
	cmp	w9, #0
	add	x9, sp, #552
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp522:
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp523:
; %bb.132:                              ;   in Loop: Header=BB45_38 Depth=2
	mov	x28, x0
	ldr	x19, [x27, #16]
Ltmp524:
	add	x0, sp, #960
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp525:
; %bb.133:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #960]
	cbz	w8, LBB45_139
; %bb.134:                              ;   in Loop: Header=BB45_38 Depth=2
	ldp	q0, q1, [x19]
	stp	q0, q1, [sp, #912]
	ldr	q0, [x19, #32]
	str	q0, [sp, #944]
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	ldr	x19, [sp, #192]                 ; 8-byte Folded Reload
Lloh451:
	adrp	x21, l_.str@PAGE
Lloh452:
	add	x21, x21, l_.str@PAGEOFF
	mov	w22, #10
LBB45_135:                              ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19]
	str	xzr, [sp, #776]
	str	x22, [sp, #768]
	add	x8, sp, #816
	add	x0, sp, #912
	add	x1, sp, #768
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #864]
	ldrb	w8, [x21, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [sp, #848]
	ldp	q1, q0, [sp, #816]
	stp	q0, q2, [sp, #928]
	str	q1, [sp, #912]
	ldr	x8, [sp, #952]
	ldr	x9, [sp, #944]
	ldr	x10, [sp, #936]
	ldr	x11, [sp, #928]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #912]
	ldr	x11, [sp, #920]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB45_135
; %bb.136:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp526:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp527:
; %bb.137:                              ;   in Loop: Header=BB45_38 Depth=2
	cmp	x0, x24
	b.eq	LBB45_139
; %bb.138:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp528:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp529:
LBB45_139:                              ;   in Loop: Header=BB45_38 Depth=2
	add	x0, sp, #960
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp531:
	mov	x0, x28
Lloh453:
	adrp	x1, l_.str.35@PAGE
Lloh454:
	add	x1, x1, l_.str.35@PAGEOFF
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp532:
; %bb.140:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp533:
	mov	x28, x0
	add	x0, sp, #960
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp534:
; %bb.141:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #960]
	cbz	w8, LBB45_147
; %bb.142:                              ;   in Loop: Header=BB45_38 Depth=2
	ldp	q0, q1, [sp, #672]
	stp	q0, q1, [sp, #912]
	ldr	q0, [sp, #704]
	str	q0, [sp, #944]
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	ldr	x19, [sp, #192]                 ; 8-byte Folded Reload
Lloh455:
	adrp	x21, l_.str@PAGE
Lloh456:
	add	x21, x21, l_.str@PAGEOFF
	mov	w22, #10
LBB45_143:                              ;   Parent Loop BB45_13 Depth=1
                                        ;     Parent Loop BB45_38 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19]
	str	xzr, [sp, #776]
	str	x22, [sp, #768]
	add	x8, sp, #816
	add	x0, sp, #912
	add	x1, sp, #768
	bl	__Z6divmodRK11__uint384_tS1_
	ldr	x8, [sp, #864]
	ldrb	w8, [x21, x8]
	strb	w8, [x23, #-1]!
	ldr	q2, [sp, #848]
	ldp	q1, q0, [sp, #816]
	stp	q0, q2, [sp, #928]
	str	q1, [sp, #912]
	ldr	x8, [sp, #952]
	ldr	x9, [sp, #944]
	ldr	x10, [sp, #936]
	ldr	x11, [sp, #928]
	orr	x9, x11, x9
	orr	x8, x10, x8
	ldr	x10, [sp, #912]
	ldr	x11, [sp, #920]
	orr	x8, x8, x11
	orr	x9, x9, x10
	orr	x8, x9, x8
	cbnz	x8, LBB45_143
; %bb.144:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x8, x28, x8
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	sub	w8, w8, w23
	sxtw	x24, w8
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
Ltmp535:
	mov	x1, x23
	mov	x2, x24
	blr	x8
Ltmp536:
; %bb.145:                              ;   in Loop: Header=BB45_38 Depth=2
	cmp	x0, x24
	b.eq	LBB45_147
; %bb.146:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp537:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp538:
LBB45_147:                              ;   in Loop: Header=BB45_38 Depth=2
	add	x0, sp, #960
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldr	x8, [x28]
	ldur	x8, [x8, #-24]
	add	x0, x28, x8
Ltmp540:
	add	x8, sp, #976
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp541:
; %bb.148:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp542:
	add	x0, sp, #976
Lloh457:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh458:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp543:
; %bb.149:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp544:
	mov	w1, #10
	blr	x8
Ltmp545:
; %bb.150:                              ;   in Loop: Header=BB45_38 Depth=2
	mov	x23, x0
	add	x0, sp, #976
	bl	__ZNSt3__16localeD1Ev
Ltmp547:
	mov	x0, x28
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp548:
; %bb.151:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp549:
	mov	x0, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp550:
; %bb.152:                              ;   in Loop: Header=BB45_38 Depth=2
Ltmp551:
	add	x8, sp, #976
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp552:
; %bb.153:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #999]
	sxtb	w9, w8
	ldr	x10, [sp, #976]
	ldr	x11, [sp, #984]
	cmp	w9, #0
	add	x9, sp, #976
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp554:
Lloh459:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh460:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp555:
; %bb.154:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrsb	w8, [sp, #999]
	tbz	w8, #31, LBB45_156
; %bb.155:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x0, [sp, #976]
	bl	__ZdlPv
LBB45_156:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x23, [x27, #72]
Ltmp557:
	add	x8, sp, #976
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp558:
; %bb.157:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrb	w8, [sp, #999]
	sxtb	w9, w8
	ldr	x10, [sp, #976]
	ldr	x11, [sp, #984]
	cmp	w9, #0
	add	x9, sp, #976
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp560:
	mov	x0, x23
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp561:
; %bb.158:                              ;   in Loop: Header=BB45_38 Depth=2
	ldrsb	w8, [sp, #999]
	tbz	w8, #31, LBB45_160
; %bb.159:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x0, [sp, #976]
	bl	__ZdlPv
LBB45_160:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x0, [x27, #72]
Ltmp563:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp564:
; %bb.161:                              ;   in Loop: Header=BB45_38 Depth=2
	ldp	x9, x8, [sp, #32]               ; 16-byte Folded Reload
	str	x8, [sp, #272]
	ldur	x8, [x8, #-24]
	str	x9, [x20, x8]
Lloh461:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh462:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	stp	x9, x8, [sp, #288]
	ldrsb	w8, [sp, #383]
	tbz	w8, #31, LBB45_163
; %bb.162:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x0, [sp, #360]
	bl	__ZdlPv
LBB45_163:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Lloh463:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh464:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #272
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldrsb	w8, [sp, #575]
	tbz	w8, #31, LBB45_165
; %bb.164:                              ;   in Loop: Header=BB45_38 Depth=2
	ldr	x0, [sp, #552]
	bl	__ZdlPv
LBB45_165:                              ;   in Loop: Header=BB45_38 Depth=2
	ldp	x1, x8, [x27, #16]
	ldrh	w8, [x8]
	ldr	x28, [sp, #136]                 ; 8-byte Folded Reload
	mov	w30, #11664
	movi.2d	v0, #0000000000000000
	ldr	x2, [sp, #176]                  ; 8-byte Folded Reload
LBB45_166:                              ;   in Loop: Header=BB45_38 Depth=2
	ldp	x16, x15, [sp, #232]            ; 16-byte Folded Reload
	ldp	x3, x17, [sp, #248]             ; 16-byte Folded Reload
	b	LBB45_37
LBB45_167:                              ;   in Loop: Header=BB45_13 Depth=1
	cmp	x19, x4
	cset	w19, hi
	cmp	x7, x3
	cset	w7, hi
	csel	w7, w19, w7, eq
	tbz	w7, #0, LBB45_34
	b	LBB45_35
LBB45_168:                              ;   in Loop: Header=BB45_13 Depth=1
	mov	x4, #0
	mov	x3, #0
	mov	x0, #0
	mov	x2, #0
	lsr	x16, x7, x19
	mvn	w17, w19
	lsl	x17, x21, x17
	orr	x16, x17, x16
	lsr	x17, x6, x19
	tst	x19, #0x40
	csel	x16, x17, x16, ne
	csel	x17, xzr, x17, ne
	add	w5, w8, w5
	add	w5, w5, #1
	adrp	x6, _m@PAGE
	ldrh	w6, [x6, _m@PAGEOFF]
	cmp	w6, w5, uxth
	b.hi	LBB45_28
	b	LBB45_30
LBB45_169:
	ldur	x8, [x29, #-96]
Lloh465:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh466:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh467:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB45_171
; %bb.170:
	add	sp, sp, #1248
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB45_171:
	bl	___stack_chk_fail
LBB45_172:
Ltmp539:
	b	LBB45_177
LBB45_173:
Ltmp530:
	b	LBB45_177
LBB45_174:
Ltmp519:
	b	LBB45_177
LBB45_175:
Ltmp508:
	b	LBB45_177
LBB45_176:
Ltmp497:
LBB45_177:
	mov	x19, x0
	add	x0, sp, #960
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB45_191
LBB45_178:
Ltmp562:
	b	LBB45_181
LBB45_179:
Ltmp559:
	b	LBB45_190
LBB45_180:
Ltmp556:
LBB45_181:
	mov	x19, x0
	ldrsb	w8, [sp, #999]
	tbz	w8, #31, LBB45_191
; %bb.182:
	ldr	x0, [sp, #976]
	bl	__ZdlPv
	b	LBB45_191
LBB45_183:
Ltmp553:
	b	LBB45_190
LBB45_184:
Ltmp476:
	bl	___clang_call_terminate
LBB45_185:
Ltmp465:
	mov	x19, x0
Lloh468:
	adrp	x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh469:
	ldr	x8, [x8, __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	add	x0, sp, #272
	bl	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB45_187
LBB45_186:
Ltmp462:
	mov	x19, x0
LBB45_187:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB45_192
LBB45_188:
Ltmp546:
	mov	x19, x0
	add	x0, sp, #976
	bl	__ZNSt3__16localeD1Ev
	b	LBB45_191
LBB45_189:
Ltmp565:
LBB45_190:
	mov	x19, x0
LBB45_191:
	add	x0, sp, #272
	bl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
LBB45_192:
	ldrsb	w8, [sp, #575]
	tbz	w8, #31, LBB45_194
; %bb.193:
	ldr	x0, [sp, #552]
	bl	__ZdlPv
LBB45_194:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh385, Lloh386
	.loh AdrpLdrGotLdr	Lloh382, Lloh383, Lloh384
	.loh AdrpAdd	Lloh387, Lloh388
	.loh AdrpAdd	Lloh389, Lloh390
	.loh AdrpLdrGot	Lloh393, Lloh394
	.loh AdrpLdrGot	Lloh391, Lloh392
	.loh AdrpAdd	Lloh395, Lloh396
	.loh AdrpAdd	Lloh397, Lloh398
	.loh AdrpAdd	Lloh399, Lloh400
	.loh AdrpAdd	Lloh403, Lloh404
	.loh AdrpAdd	Lloh401, Lloh402
	.loh AdrpAdd	Lloh405, Lloh406
	.loh AdrpAdd	Lloh409, Lloh410
	.loh AdrpAdd	Lloh407, Lloh408
	.loh AdrpAdd	Lloh411, Lloh412
	.loh AdrpLdrGot	Lloh417, Lloh418
	.loh AdrpAdd	Lloh415, Lloh416
	.loh AdrpAdd	Lloh413, Lloh414
	.loh AdrpLdrGot	Lloh421, Lloh422
	.loh AdrpAdd	Lloh419, Lloh420
	.loh AdrpAdd	Lloh425, Lloh426
	.loh AdrpAdd	Lloh423, Lloh424
	.loh AdrpLdr	Lloh427, Lloh428
	.loh AdrpAdd	Lloh429, Lloh430
	.loh AdrpAdd	Lloh431, Lloh432
	.loh AdrpAdd	Lloh433, Lloh434
	.loh AdrpAdd	Lloh435, Lloh436
	.loh AdrpAdd	Lloh437, Lloh438
	.loh AdrpAdd	Lloh439, Lloh440
	.loh AdrpAdd	Lloh441, Lloh442
	.loh AdrpAdd	Lloh443, Lloh444
	.loh AdrpAdd	Lloh445, Lloh446
	.loh AdrpAdd	Lloh447, Lloh448
	.loh AdrpAdd	Lloh449, Lloh450
	.loh AdrpAdd	Lloh451, Lloh452
	.loh AdrpAdd	Lloh453, Lloh454
	.loh AdrpAdd	Lloh455, Lloh456
	.loh AdrpLdrGot	Lloh457, Lloh458
	.loh AdrpLdrGot	Lloh459, Lloh460
	.loh AdrpLdrGot	Lloh461, Lloh462
	.loh AdrpLdrGot	Lloh463, Lloh464
	.loh AdrpLdrGotLdr	Lloh465, Lloh466, Lloh467
	.loh AdrpLdrGot	Lloh468, Lloh469
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table45:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp460-Lfunc_begin12          ;   Call between Lfunc_begin12 and Ltmp460
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp460-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp461-Ltmp460                ;   Call between Ltmp460 and Ltmp461
	.uleb128 Ltmp462-Lfunc_begin12          ;     jumps to Ltmp462
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp463-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Ltmp464-Ltmp463                ;   Call between Ltmp463 and Ltmp464
	.uleb128 Ltmp465-Lfunc_begin12          ;     jumps to Ltmp465
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp466-Lfunc_begin12          ; >> Call Site 4 <<
	.uleb128 Ltmp473-Ltmp466                ;   Call between Ltmp466 and Ltmp473
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp474-Lfunc_begin12          ; >> Call Site 5 <<
	.uleb128 Ltmp475-Ltmp474                ;   Call between Ltmp474 and Ltmp475
	.uleb128 Ltmp476-Lfunc_begin12          ;     jumps to Ltmp476
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp477-Lfunc_begin12          ; >> Call Site 6 <<
	.uleb128 Ltmp492-Ltmp477                ;   Call between Ltmp477 and Ltmp492
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp493-Lfunc_begin12          ; >> Call Site 7 <<
	.uleb128 Ltmp496-Ltmp493                ;   Call between Ltmp493 and Ltmp496
	.uleb128 Ltmp497-Lfunc_begin12          ;     jumps to Ltmp497
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp498-Lfunc_begin12          ; >> Call Site 8 <<
	.uleb128 Ltmp503-Ltmp498                ;   Call between Ltmp498 and Ltmp503
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp504-Lfunc_begin12          ; >> Call Site 9 <<
	.uleb128 Ltmp507-Ltmp504                ;   Call between Ltmp504 and Ltmp507
	.uleb128 Ltmp508-Lfunc_begin12          ;     jumps to Ltmp508
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp509-Lfunc_begin12          ; >> Call Site 10 <<
	.uleb128 Ltmp514-Ltmp509                ;   Call between Ltmp509 and Ltmp514
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp515-Lfunc_begin12          ; >> Call Site 11 <<
	.uleb128 Ltmp518-Ltmp515                ;   Call between Ltmp515 and Ltmp518
	.uleb128 Ltmp519-Lfunc_begin12          ;     jumps to Ltmp519
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp520-Lfunc_begin12          ; >> Call Site 12 <<
	.uleb128 Ltmp525-Ltmp520                ;   Call between Ltmp520 and Ltmp525
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp526-Lfunc_begin12          ; >> Call Site 13 <<
	.uleb128 Ltmp529-Ltmp526                ;   Call between Ltmp526 and Ltmp529
	.uleb128 Ltmp530-Lfunc_begin12          ;     jumps to Ltmp530
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp531-Lfunc_begin12          ; >> Call Site 14 <<
	.uleb128 Ltmp534-Ltmp531                ;   Call between Ltmp531 and Ltmp534
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp535-Lfunc_begin12          ; >> Call Site 15 <<
	.uleb128 Ltmp538-Ltmp535                ;   Call between Ltmp535 and Ltmp538
	.uleb128 Ltmp539-Lfunc_begin12          ;     jumps to Ltmp539
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp540-Lfunc_begin12          ; >> Call Site 16 <<
	.uleb128 Ltmp541-Ltmp540                ;   Call between Ltmp540 and Ltmp541
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp542-Lfunc_begin12          ; >> Call Site 17 <<
	.uleb128 Ltmp545-Ltmp542                ;   Call between Ltmp542 and Ltmp545
	.uleb128 Ltmp546-Lfunc_begin12          ;     jumps to Ltmp546
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp547-Lfunc_begin12          ; >> Call Site 18 <<
	.uleb128 Ltmp550-Ltmp547                ;   Call between Ltmp547 and Ltmp550
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp551-Lfunc_begin12          ; >> Call Site 19 <<
	.uleb128 Ltmp552-Ltmp551                ;   Call between Ltmp551 and Ltmp552
	.uleb128 Ltmp553-Lfunc_begin12          ;     jumps to Ltmp553
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp554-Lfunc_begin12          ; >> Call Site 20 <<
	.uleb128 Ltmp555-Ltmp554                ;   Call between Ltmp554 and Ltmp555
	.uleb128 Ltmp556-Lfunc_begin12          ;     jumps to Ltmp556
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp557-Lfunc_begin12          ; >> Call Site 21 <<
	.uleb128 Ltmp558-Ltmp557                ;   Call between Ltmp557 and Ltmp558
	.uleb128 Ltmp559-Lfunc_begin12          ;     jumps to Ltmp559
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp560-Lfunc_begin12          ; >> Call Site 22 <<
	.uleb128 Ltmp561-Ltmp560                ;   Call between Ltmp560 and Ltmp561
	.uleb128 Ltmp562-Lfunc_begin12          ;     jumps to Ltmp562
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp563-Lfunc_begin12          ; >> Call Site 23 <<
	.uleb128 Ltmp564-Ltmp563                ;   Call between Ltmp563 and Ltmp564
	.uleb128 Ltmp565-Lfunc_begin12          ;     jumps to Ltmp565
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp564-Lfunc_begin12          ; >> Call Site 24 <<
	.uleb128 Lfunc_end12-Ltmp564            ;   Call between Ltmp564 and Lfunc_end12
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
Lloh470:
	adrp	x0, _p23@PAGE
Lloh471:
	add	x0, x0, _p23@PAGEOFF
	mov	w1, #16304
	movk	w1, #43, lsl #16
	bl	_bzero
Lloh472:
	adrp	x0, _p23y@PAGE
Lloh473:
	add	x0, x0, _p23y@PAGEOFF
	mov	w1, #16304
	movk	w1, #43, lsl #16
	bl	_bzero
Lloh474:
	adrp	x0, _pp23@PAGE
Lloh475:
	add	x0, x0, _pp23@PAGEOFF
	mov	w1, #16304
	movk	w1, #43, lsl #16
	bl	_bzero
Lloh476:
	adrp	x0, _yy@PAGE
Lloh477:
	add	x0, x0, _yy@PAGEOFF
	mov	w1, #11664
	bl	_bzero
Lloh478:
	adrp	x8, _ynn@PAGE
Lloh479:
	add	x8, x8, _ynn@PAGEOFF
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	str	q0, [x8]
Lloh480:
	adrp	x8, _ym@PAGE
Lloh481:
	add	x8, x8, _ym@PAGEOFF
	stp	q0, q0, [x8]
	str	q0, [x8, #32]
Lloh482:
	adrp	x0, _dy@PAGE
Lloh483:
	add	x0, x0, _dy@PAGEOFF
	mov	w1, #393216
	bl	_bzero
Lloh484:
	adrp	x0, _dz@PAGE
Lloh485:
	add	x0, x0, _dz@PAGEOFF
	mov	w1, #95551488
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	_bzero
	.loh AdrpAdd	Lloh484, Lloh485
	.loh AdrpAdd	Lloh482, Lloh483
	.loh AdrpAdd	Lloh480, Lloh481
	.loh AdrpAdd	Lloh478, Lloh479
	.loh AdrpAdd	Lloh476, Lloh477
	.loh AdrpAdd	Lloh474, Lloh475
	.loh AdrpAdd	Lloh472, Lloh473
	.loh AdrpAdd	Lloh470, Lloh471
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

	.globl	_p2                             ; @p2
.zerofill __DATA,__common,_p2,26,4
	.globl	_p23                            ; @p23
.zerofill __DATA,__common,_p23,2834352,4
	.globl	_p23y                           ; @p23y
.zerofill __DATA,__common,_p23y,2834352,4
	.globl	_pp23                           ; @pp23
.zerofill __DATA,__common,_pp23,2834352,4
	.globl	_yy                             ; @yy
.zerofill __DATA,__common,_yy,11664,4
	.globl	_ynn                            ; @ynn
.zerofill __DATA,__common,_ynn,48,4
	.globl	_ym                             ; @ym
.zerofill __DATA,__common,_ym,48,4
	.globl	_ys                             ; @ys
.zerofill __DATA,__common,_ys,2,1
	.globl	_dy                             ; @dy
.zerofill __DATA,__common,_dy,393216,4
	.globl	_dl                             ; @dl
.zerofill __DATA,__common,_dl,3981312,1
	.globl	_dz                             ; @dz
.zerofill __DATA,__common,_dz,95551488,4
	.section	__TEXT,__cstring,cstring_literals
l_.str.10:                              ; @.str.10
	.asciz	"solutions.txt"

l_.str.11:                              ; @.str.11
	.asciz	"bit error: "

l_.str.12:                              ; @.str.12
	.asciz	" "

l_.str.13:                              ; @.str.13
	.asciz	"bit2 error: "

l_.str.14:                              ; @.str.14
	.asciz	"shift error: "

l_.str.15:                              ; @.str.15
	.asciz	"mul error: "

l_.str.16:                              ; @.str.16
	.asciz	"mul ab error: "

l_.str.17:                              ; @.str.17
	.asciz	"mul 128 error: "

l_.str.18:                              ; @.str.18
	.asciz	"mul ba error: "

l_.str.19:                              ; @.str.19
	.asciz	"dz error: "

l_.str.20:                              ; @.str.20
	.asciz	"s\t"

l_.str.21:                              ; @.str.21
	.asciz	":"

l_.str.22:                              ; @.str.22
	.asciz	"\t m ymin "

l_.str.23:                              ; @.str.23
	.asciz	"\t l m1 m2 y "

l_.str.24:                              ; @.str.24
	.asciz	"vector"

l_.str.25:                              ; @.str.25
	.asciz	"Incorrect fast reminder ! "

l_.str.26:                              ; @.str.26
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
l_.str.27:                              ; @.str.27
	.asciz	"hw.physicalcpu_max"

l_.str.28:                              ; @.str.28
	.space	1

l_.str.29:                              ; @.str.29
	.asciz	"\tm="

l_.str.30:                              ; @.str.30
	.asciz	",\tl="

l_.str.31:                              ; @.str.31
	.asciz	",\ts="

l_.str.32:                              ; @.str.32
	.asciz	",\tr="

l_.str.33:                              ; @.str.33
	.asciz	",\tn="

l_.str.34:                              ; @.str.34
	.asciz	",\ty="

l_.str.35:                              ; @.str.35
	.asciz	",\tx="

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3, 0x0
	.quad	__GLOBAL__sub_I_collatz_cycle_search_all2.cpp
.subsections_via_symbols
