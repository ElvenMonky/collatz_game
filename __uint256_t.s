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
	.globl	__ZpLR11__uint256_tRKS_         ; -- Begin function _ZpLR11__uint256_tRKS_
	.p2align	2
__ZpLR11__uint256_tRKS_:                ; @_ZpLR11__uint256_tRKS_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x1]
	ldp	x11, x10, [x0]
	adds	x9, x11, x9
	adc	x8, x10, x8
	stp	x9, x8, [x0]
	ldp	x11, x10, [x1, #16]
	ldp	x13, x12, [x1]
	cmp	x9, x13
	cset	w9, lo
	cmp	x8, x12
	cset	w8, lo
	csel	w8, w9, w8, eq
	ldp	x12, x9, [x0, #16]
	adds	x11, x12, x11
	adc	x9, x9, x10
	adds	x8, x11, x8
	cinc	x9, x9, hs
	stp	x8, x9, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZplRK11__uint256_tt           ; -- Begin function _ZplRK11__uint256_tt
	.p2align	2
__ZplRK11__uint256_tt:                  ; @_ZplRK11__uint256_tt
	.cfi_startproc
; %bb.0:
	ldp	q0, q1, [x0]
	stp	q0, q1, [x8]
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
	stp	x9, x10, [x8, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmIR11__uint256_tRKS_         ; -- Begin function _ZmIR11__uint256_tRKS_
	.p2align	2
__ZmIR11__uint256_tRKS_:                ; @_ZmIR11__uint256_tRKS_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x1]
	ldp	x11, x10, [x0]
	subs	x9, x11, x9
	sbc	x8, x10, x8
	stp	x9, x8, [x0]
	ldp	x11, x10, [x1, #16]
	ldp	x13, x12, [x1]
	cmn	x9, x13
	adcs	xzr, x8, x12
	cset	w8, hs
	ldp	x12, x9, [x0, #16]
	subs	x11, x12, x11
	sbc	x9, x9, x10
	subs	x8, x11, x8
	sbc	x9, x9, xzr
	stp	x8, x9, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmitRK11__uint256_t           ; -- Begin function _ZmitRK11__uint256_t
	.p2align	2
__ZmitRK11__uint256_t:                  ; @_ZmitRK11__uint256_t
	.cfi_startproc
; %bb.0:
	mov	w9, w0
	ldp	x11, x10, [x1]
	subs	x9, x9, x11
	ngc	x12, x10
	stp	x9, x12, [x8]
	ldp	x14, x13, [x1, #16]
	cmn	x9, x11
	adcs	xzr, x12, x10
	cset	w9, hs
	sbfx	x9, x9, #0, #1
	subs	x10, x9, x14
	sbc	x9, x9, x13
	stp	x10, x9, [x8, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZrSR11__uint256_ti            ; -- Begin function _ZrSR11__uint256_ti
	.p2align	2
__ZrSR11__uint256_ti:                   ; @_ZrSR11__uint256_ti
	.cfi_startproc
; %bb.0:
	cmp	w1, #128
	b.hs	LBB7_2
; %bb.1:
	ldp	x9, x8, [x0]
	mov	w10, w1
	lsr	x9, x9, x10
	mvn	w11, w1
	lsl	x12, x8, #1
	lsl	x12, x12, x11
	orr	x9, x12, x9
	lsr	x8, x8, x10
	ldp	x13, x12, [x0, #16]
	mov	w14, #128
	sub	w14, w14, w1
	mvn	w15, w14
	lsl	x16, x13, x14
	tst	x14, #0x40
	csel	x17, xzr, x16, ne
	lsr	x2, x13, #1
	lsr	x15, x2, x15
	lsl	x14, x12, x14
	orr	x14, x14, x15
	csel	x14, x16, x14, ne
	cmp	w1, #0
	csel	x14, xzr, x14, eq
	csel	x15, xzr, x17, eq
	tst	x10, #0x40
	csel	x9, x8, x9, ne
	csel	x8, xzr, x8, ne
	orr	x9, x15, x9
	orr	x8, x14, x8
	stp	x9, x8, [x0]
	lsr	x8, x13, x10
	lsl	x9, x12, #1
	lsl	x9, x9, x11
	orr	x8, x9, x8
	lsr	x9, x12, x10
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	stp	x8, x9, [x0, #16]
	ret
LBB7_2:
	ldp	x8, x9, [x0, #16]
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
	stp	xzr, xzr, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZrsRK11__uint256_ti           ; -- Begin function _ZrsRK11__uint256_ti
	.p2align	2
__ZrsRK11__uint256_ti:                  ; @_ZrsRK11__uint256_ti
	.cfi_startproc
; %bb.0:
	ldp	q0, q1, [x0]
	stp	q0, q1, [x8]
	cmp	w1, #128
	b.hs	LBB8_2
; %bb.1:
	ldp	x10, x9, [x8]
	mov	w11, w1
	lsr	x10, x10, x11
	mvn	w12, w1
	lsl	x13, x9, #1
	lsl	x13, x13, x12
	orr	x10, x13, x10
	lsr	x9, x9, x11
	ldp	x14, x13, [x8, #16]
	mov	w15, #128
	sub	w15, w15, w1
	mvn	w16, w15
	lsl	x17, x14, x15
	tst	x15, #0x40
	csel	x0, xzr, x17, ne
	lsr	x2, x14, #1
	lsr	x16, x2, x16
	lsl	x15, x13, x15
	orr	x15, x15, x16
	csel	x15, x17, x15, ne
	cmp	w1, #0
	csel	x15, xzr, x15, eq
	csel	x16, xzr, x0, eq
	tst	x11, #0x40
	csel	x10, x9, x10, ne
	csel	x9, xzr, x9, ne
	orr	x10, x16, x10
	orr	x9, x15, x9
	stp	x10, x9, [x8]
	lsr	x9, x14, x11
	lsl	x10, x13, #1
	lsl	x10, x10, x12
	orr	x9, x10, x9
	lsr	x10, x13, x11
	csel	x9, x10, x9, ne
	csel	x10, xzr, x10, ne
	stp	x9, x10, [x8, #16]
	ret
LBB8_2:
	ldp	x9, x10, [x8, #16]
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
	stp	xzr, xzr, [x8, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZlSR11__uint256_ti            ; -- Begin function _ZlSR11__uint256_ti
	.p2align	2
__ZlSR11__uint256_ti:                   ; @_ZlSR11__uint256_ti
	.cfi_startproc
; %bb.0:
	cmp	w1, #128
	b.hs	LBB9_2
; %bb.1:
	ldp	x9, x8, [x0, #16]
	lsr	x10, x9, #1
	mvn	w11, w1
	lsr	x10, x10, x11
	mov	w12, w1
	lsl	x8, x8, x12
	orr	x8, x8, x10
	lsl	x9, x9, x12
	ldp	x10, x13, [x0]
	mov	w14, #128
	sub	w14, w14, w1
	mvn	w15, w14
	lsr	x16, x13, x14
	tst	x14, #0x40
	csel	x17, xzr, x16, ne
	lsr	x14, x10, x14
	lsl	x2, x13, #1
	lsl	x15, x2, x15
	orr	x14, x15, x14
	csel	x14, x16, x14, ne
	cmp	w1, #0
	csel	x14, xzr, x14, eq
	csel	x15, xzr, x17, eq
	tst	x12, #0x40
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	orr	x8, x15, x8
	orr	x9, x14, x9
	stp	x9, x8, [x0, #16]
	lsr	x8, x10, #1
	lsr	x8, x8, x11
	lsl	x9, x13, x12
	orr	x8, x9, x8
	lsl	x9, x10, x12
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
	stp	x9, x8, [x0]
	ret
LBB9_2:
	mov	x9, #0
	mov	x8, #0
	ldp	x11, x10, [x0]
	mvn	w12, w1
	lsr	x13, x11, #1
	lsr	x12, x13, x12
	and	w13, w1, #0x7f
	lsl	x10, x10, x13
	orr	x10, x10, x12
	lsl	x11, x11, x13
	tst	x13, #0x40
	csel	x10, x11, x10, ne
	csel	x11, xzr, x11, ne
	stp	x11, x10, [x0, #16]
	stp	x9, x8, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZanRK11__uint256_ti           ; -- Begin function _ZanRK11__uint256_ti
	.p2align	2
__ZanRK11__uint256_ti:                  ; @_ZanRK11__uint256_ti
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
	.globl	__ZmlbRK11__uint256_t           ; -- Begin function _ZmlbRK11__uint256_t
	.p2align	2
__ZmlbRK11__uint256_t:                  ; @_ZmlbRK11__uint256_t
	.cfi_startproc
; %bb.0:
	cbz	w0, LBB11_2
; %bb.1:
	ldp	q0, q1, [x1]
	stp	q0, q1, [x8]
	ret
LBB11_2:
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmlRKoRK11__uint256_t         ; -- Begin function _ZmlRKoRK11__uint256_t
	.p2align	2
__ZmlRKoRK11__uint256_t:                ; @_ZmlRKoRK11__uint256_t
	.cfi_startproc
; %bb.0:
	ldp	x10, x9, [x0]
	ldp	x12, x11, [x1]
	umulh	x13, x12, x10
	mul	x14, x12, x10
	umulh	x15, x12, x9
	mul	x12, x12, x9
	mul	x16, x11, x10
	adds	x13, x13, x16
	umulh	x16, x11, x10
	adc	x16, xzr, x16
	adds	x12, x13, x12
	cinc	x13, x16, hs
	stp	x14, x12, [x8]
	umulh	x12, x11, x9
	mul	x11, x11, x9
	adds	x11, x15, x11
	cinc	x12, x12, hs
	ldp	x15, x14, [x1, #16]
	umulh	x16, x15, x10
	madd	x9, x15, x9, x16
	madd	x9, x14, x10, x9
	mul	x10, x15, x10
	adds	x10, x11, x10
	adc	x9, x12, x9
	adds	x10, x10, x13
	adc	x9, x9, xzr
	stp	x10, x9, [x8, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmliRK11__uint256_t           ; -- Begin function _ZmliRK11__uint256_t
	.p2align	2
__ZmliRK11__uint256_t:                  ; @_ZmliRK11__uint256_t
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	sxtw	x9, w0
	asr	x10, x9, #63
	ldp	x12, x11, [x1]
	umulh	x13, x12, x9
	madd	x13, x12, x10, x13
	umulh	x14, x11, x9
	madd	x14, x11, x10, x14
	mul	x11, x11, x9
	adds	x11, x13, x11
	mul	x12, x12, x9
	adc	x13, xzr, x14
	stp	x12, x11, [x8]
	ldp	x12, x11, [x1, #16]
	umulh	x14, x12, x9
	madd	x10, x12, x10, x14
	madd	x10, x11, x9, x10
	mul	x9, x12, x9
	adds	x9, x13, x9
	adc	x10, xzr, x10
	stp	x9, x10, [x8, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmlRK11__uint256_tS1_         ; -- Begin function _ZmlRK11__uint256_tS1_
	.p2align	2
__ZmlRK11__uint256_tS1_:                ; @_ZmlRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x10, x9, [x0]
	ldp	x12, x11, [x1]
	umulh	x13, x12, x10
	mul	x14, x12, x10
	umulh	x15, x12, x9
	mul	x16, x12, x9
	mul	x17, x11, x10
	adds	x13, x13, x17
	umulh	x17, x11, x10
	adc	x17, xzr, x17
	adds	x13, x13, x16
	cinc	x16, x17, hs
	stp	x14, x13, [x8]
	umulh	x13, x11, x9
	mul	x14, x11, x9
	adds	x14, x15, x14
	cinc	x13, x13, hs
	ldp	x17, x15, [x1, #16]
	umulh	x1, x17, x10
	madd	x9, x17, x9, x1
	madd	x9, x15, x10, x9
	mul	x10, x17, x10
	adds	x10, x14, x10
	adc	x9, x13, x9
	ldp	x14, x13, [x0, #16]
	umulh	x15, x14, x12
	madd	x11, x14, x11, x15
	madd	x11, x13, x12, x11
	mul	x12, x14, x12
	adds	x10, x10, x12
	adc	x9, x9, x11
	adds	x10, x10, x16
	adc	x9, x9, xzr
	stp	x10, x9, [x8, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZgeRK11__uint256_tS1_         ; -- Begin function _ZgeRK11__uint256_tS1_
	.p2align	2
__ZgeRK11__uint256_tS1_:                ; @_ZgeRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	cmp	x9, x11
	cset	w12, hi
	cmp	x8, x10
	cset	w13, hi
	csel	w12, w12, w13, eq
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	ldp	x10, x9, [x0]
	ldp	x13, x11, [x1]
	cmp	x10, x13
	cset	w10, hs
	cmp	x9, x11
	cset	w9, hs
	csel	w9, w10, w9, eq
	and	w8, w8, w9
	sbfx	w8, w8, #0, #1
	cmp	w12, w8
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZgtRK11__uint256_tS1_         ; -- Begin function _ZgtRK11__uint256_tS1_
	.p2align	2
__ZgtRK11__uint256_tS1_:                ; @_ZgtRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	cmp	x9, x11
	cset	w12, hi
	cmp	x8, x10
	cset	w13, hi
	csel	w12, w12, w13, eq
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	ldp	x10, x9, [x0]
	ldp	x13, x11, [x1]
	cmp	x10, x13
	cset	w10, hi
	cmp	x9, x11
	cset	w9, hi
	csel	w9, w10, w9, eq
	and	w8, w8, w9
	sbfx	w8, w8, #0, #1
	cmp	w12, w8
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZleRK11__uint256_tS1_         ; -- Begin function _ZleRK11__uint256_tS1_
	.p2align	2
__ZleRK11__uint256_tS1_:                ; @_ZleRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	cmp	x9, x11
	cset	w12, lo
	cmp	x8, x10
	cset	w13, lo
	csel	w12, w12, w13, eq
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	ldp	x10, x9, [x0]
	ldp	x13, x11, [x1]
	cmp	x10, x13
	cset	w10, ls
	cmp	x9, x11
	cset	w9, ls
	csel	w9, w10, w9, eq
	and	w8, w8, w9
	sbfx	w8, w8, #0, #1
	cmp	w12, w8
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZltRK11__uint256_tS1_         ; -- Begin function _ZltRK11__uint256_tS1_
	.p2align	2
__ZltRK11__uint256_tS1_:                ; @_ZltRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0, #16]
	ldp	x11, x10, [x1, #16]
	cmp	x9, x11
	cset	w12, lo
	cmp	x8, x10
	cset	w13, lo
	csel	w12, w12, w13, eq
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	ldp	x10, x9, [x0]
	ldp	x13, x11, [x1]
	cmp	x10, x13
	cset	w10, lo
	cmp	x9, x11
	cset	w9, lo
	csel	w9, w10, w9, eq
	and	w8, w8, w9
	sbfx	w8, w8, #0, #1
	cmp	w12, w8
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZeqRK11__uint256_tS1_         ; -- Begin function _ZeqRK11__uint256_tS1_
	.p2align	2
__ZeqRK11__uint256_tS1_:                ; @_ZeqRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0, #16]
	ldp	x10, x11, [x1, #16]
	eor	x9, x9, x11
	eor	x8, x8, x10
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
	.globl	__ZneRK11__uint256_tS1_         ; -- Begin function _ZneRK11__uint256_tS1_
	.p2align	2
__ZneRK11__uint256_tS1_:                ; @_ZneRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0, #16]
	ldp	x10, x11, [x1, #16]
	eor	x9, x9, x11
	eor	x8, x8, x10
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
	.globl	__ZgtRK11__uint256_ti           ; -- Begin function _ZgtRK11__uint256_ti
	.p2align	2
__ZgtRK11__uint256_ti:                  ; @_ZgtRK11__uint256_ti
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w1 killed $w1 def $x1
	ldp	x9, x8, [x0, #16]
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, ne
	cset	w9, eq
	ldp	x11, x10, [x0]
	sxtw	x12, w1
	cmp	x11, x12
	cset	w11, hi
	cmp	x10, x12, asr #63
	cset	w10, hi
	csel	w10, w11, w10, eq
	and	w9, w9, w10
	sbfx	w9, w9, #0, #1
	cmp	w8, w9
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZeqRK11__uint256_ti           ; -- Begin function _ZeqRK11__uint256_ti
	.p2align	2
__ZeqRK11__uint256_ti:                  ; @_ZeqRK11__uint256_ti
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w1 killed $w1 def $x1
	ldp	x9, x8, [x0, #16]
	orr	x8, x9, x8
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
	.globl	__ZrMR11__uint256_tRKS_         ; -- Begin function _ZrMR11__uint256_tRKS_
	.p2align	2
__ZrMR11__uint256_tRKS_:                ; @_ZrMR11__uint256_tRKS_
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	ldp	x9, x8, [x0, #16]
	ldp	x14, x15, [x1, #16]
	cmp	x9, x14
	cset	w10, hi
	cmp	x8, x15
	cset	w11, hi
	csel	w16, w10, w11, eq
	eor	x10, x8, x15
	eor	x11, x9, x14
	orr	x10, x11, x10
	cmp	x10, #0
	cset	w17, eq
	ldp	x11, x10, [x0]
	ldp	x12, x13, [x1]
	cmp	x11, x12
	cset	w2, hs
	cmp	x10, x13
	cset	w3, hs
	csel	w2, w2, w3, eq
	and	w17, w17, w2
	sbfx	w17, w17, #0, #1
	cmp	w16, w17
	b.eq	LBB23_5
; %bb.1:
	orr	x16, x9, x8
	cmp	x16, #0
	cset	w16, ne
	add	x17, x0, w16, uxtw #4
	ldp	x2, x4, [x17]
	cmp	x4, #0
	cset	w5, ne
	lsl	w17, w5, #6
	mov	w3, #32
	mov	w6, #32
	bfi	w6, w5, #6, #1
	lsr	x5, x4, #32
	tst	x6, #0x40
	csel	x6, xzr, x5, ne
	lsr	x7, x2, #32
	bfi	x7, x4, #32, #32
	csel	x5, x5, x7, ne
	orr	x5, x5, x6
	cmp	x5, #0
	cset	w6, ne
	lsl	x5, x4, #1
	bfi	w17, w6, #5, #1
	orr	w6, w17, #0x10
	and	x7, x6, #0x30
	lsr	x19, x4, x7
	tst	x6, #0x40
	csel	x20, xzr, x19, ne
	lsr	x7, x2, x7
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x7
	csel	x6, x19, x6, ne
	orr	x6, x6, x20
	cmp	x6, #0
	cset	w6, ne
	bfi	w17, w6, #4, #1
	orr	w6, w17, #0x8
	and	x7, x6, #0x38
	lsr	x19, x4, x7
	tst	x6, #0x40
	csel	x20, xzr, x19, ne
	lsr	x7, x2, x7
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x7
	csel	x6, x19, x6, ne
	orr	x6, x6, x20
	cmp	x6, #0
	cset	w6, ne
	bfi	w17, w6, #3, #1
	orr	w6, w17, #0x4
	and	x7, x6, #0x3c
	lsr	x19, x4, x7
	tst	x6, #0x40
	csel	x20, xzr, x19, ne
	lsr	x7, x2, x7
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x7
	csel	x6, x19, x6, ne
	orr	x6, x6, x20
	cmp	x6, #0
	cset	w6, ne
	bfi	w17, w6, #2, #1
	orr	w6, w17, #0x2
	lsr	x7, x4, x6
	tst	x6, #0x40
	csel	x19, xzr, x7, ne
	lsr	x20, x2, x6
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x20
	csel	x6, x7, x6, ne
	orr	x6, x6, x19
	cmp	x6, #0
	cset	w6, ne
	bfi	w17, w6, #1, #1
	orr	w6, w17, #0x1
	lsr	x4, x4, x6
	tst	x6, #0x40
	csel	x7, xzr, x4, ne
	lsr	x2, x2, x6
	mvn	w6, w17
	and	x6, x6, #0x3e
	lsl	x5, x5, x6
	orr	x2, x5, x2
	csel	x2, x4, x2, ne
	orr	x2, x2, x7
	orr	x4, x14, x15
	cmp	x4, #0
	cset	w4, ne
	add	x4, x1, w4, uxtw #4
	ldp	x6, x7, [x4]
	mov	w4, #-128
	csel	w4, w4, wzr, ne
	cmp	x7, #0
	cset	w19, ne
	lsl	w5, w19, #6
	bfi	w3, w19, #6, #1
	lsr	x19, x7, #32
	tst	x3, #0x40
	csel	x3, xzr, x19, ne
	lsr	x20, x6, #32
	bfi	x20, x7, #32, #32
	csel	x19, x19, x20, ne
	orr	x3, x19, x3
	cmp	x3, #0
	cset	w19, ne
	lsl	x3, x7, #1
	bfi	w5, w19, #5, #1
	orr	w19, w5, #0x10
	and	x20, x19, #0x30
	lsr	x21, x7, x20
	tst	x19, #0x40
	csel	x22, xzr, x21, ne
	lsr	x20, x6, x20
	mvn	x19, x19
	and	x19, x19, #0x3f
	lsl	x19, x3, x19
	orr	x19, x19, x20
	csel	x19, x21, x19, ne
	orr	x19, x19, x22
	cmp	x19, #0
	cset	w19, ne
	bfi	w5, w19, #4, #1
	orr	w19, w5, #0x8
	and	x20, x19, #0x38
	lsr	x21, x7, x20
	tst	x19, #0x40
	csel	x22, xzr, x21, ne
	lsr	x20, x6, x20
	mvn	x19, x19
	and	x19, x19, #0x3f
	lsl	x19, x3, x19
	orr	x19, x19, x20
	csel	x19, x21, x19, ne
	orr	x19, x19, x22
	cmp	x19, #0
	cset	w19, ne
	bfi	w5, w19, #3, #1
	orr	w19, w5, #0x4
	and	x20, x19, #0x3c
	lsr	x21, x7, x20
	tst	x19, #0x40
	csel	x22, xzr, x21, ne
	lsr	x20, x6, x20
	mvn	x19, x19
	and	x19, x19, #0x3f
	lsl	x19, x3, x19
	orr	x19, x19, x20
	csel	x19, x21, x19, ne
	orr	x19, x19, x22
	cmp	x19, #0
	cset	w19, ne
	bfi	w5, w19, #2, #1
	orr	w19, w5, #0x2
	lsr	x20, x7, x19
	tst	x19, #0x40
	csel	x21, xzr, x20, ne
	lsr	x22, x6, x19
	mvn	x19, x19
	and	x19, x19, #0x3f
	lsl	x19, x3, x19
	orr	x19, x19, x22
	csel	x19, x20, x19, ne
	orr	x19, x19, x21
	cmp	x19, #0
	cset	w19, ne
	bfi	w5, w19, #1, #1
	orr	w19, w5, #0x1
	lsr	x7, x7, x19
	tst	x19, #0x40
	csel	x20, xzr, x7, ne
	lsr	x6, x6, x19
	mvn	w19, w5
	and	x19, x19, #0x3e
	lsl	x3, x3, x19
	orr	x3, x3, x6
	csel	x3, x7, x3, ne
	orr	x3, x3, x20
	cmp	x3, #0
	cset	w3, ne
	add	w16, w4, w16, lsl #7
	orr	w16, w16, w17
	sub	w16, w16, w5
	cmp	x2, #0
	cinc	w16, w16, ne
	sub	w16, w16, w3
	and	w17, w16, #0xffff
	cmp	w17, #128
	b.hs	LBB23_3
; %bb.2:
	lsr	x16, x14, #1
	mvn	w2, w17
	lsr	x16, x16, x2
	lsl	x15, x15, x17
	orr	x15, x15, x16
	lsl	x14, x14, x17
	mov	w16, #128
	sub	w16, w16, w17
	mvn	w3, w16
	lsr	x4, x13, x16
	tst	x16, #0x40
	csel	x5, xzr, x4, ne
	lsr	x16, x12, x16
	lsl	x6, x13, #1
	lsl	x3, x6, x3
	orr	x16, x3, x16
	csel	x16, x4, x16, ne
	cmp	w17, #0
	csel	x16, xzr, x16, eq
	csel	x3, xzr, x5, eq
	tst	x17, #0x40
	csel	x15, x14, x15, ne
	csel	x14, xzr, x14, ne
	orr	x15, x15, x3
	orr	x16, x14, x16
	lsr	x14, x12, #1
	lsr	x14, x14, x2
	lsl	x13, x13, x17
	orr	x13, x13, x14
	lsl	x12, x12, x17
	csel	x17, x12, x13, ne
	csel	x14, xzr, x12, ne
	b	LBB23_4
LBB23_3:
	mov	x14, #0
	mov	x17, #0
	and	w15, w16, #0x7f
	mvn	w16, w16
	lsr	x2, x12, #1
	lsr	x16, x2, x16
	lsl	x13, x13, x15
	orr	x13, x13, x16
	lsl	x12, x12, x15
	tst	x15, #0x40
	csel	x15, x12, x13, ne
	csel	x16, xzr, x12, ne
LBB23_4:                                ; =>This Inner Loop Header: Depth=1
	cmp	x9, x16
	cset	w12, hi
	cmp	x8, x15
	cset	w13, hi
	csel	w12, w12, w13, eq
	eor	x13, x9, x16
	eor	x2, x8, x15
	orr	x13, x13, x2
	cmp	x13, #0
	cset	w13, eq
	cmp	x11, x14
	cset	w2, hs
	cmp	x10, x17
	cset	w3, hs
	csel	w2, w2, w3, eq
	and	w13, w13, w2
	sbfx	w13, w13, #0, #1
	cmp	w12, w13
	csel	x12, xzr, x17, eq
	csel	x13, xzr, x14, eq
	csel	x2, xzr, x15, eq
	csel	x3, xzr, x16, eq
	subs	x11, x11, x13
	sbc	x10, x10, x12
	stp	x11, x10, [x0]
	cmn	x11, x13
	adcs	xzr, x10, x12
	cset	w12, hs
	subs	x9, x9, x3
	sbc	x8, x8, x2
	subs	x9, x9, x12
	sbc	x8, x8, xzr
	stp	x9, x8, [x0, #16]
	extr	x14, x17, x14, #1
	extr	x17, x16, x17, #1
	extr	x16, x15, x16, #1
	lsr	x15, x15, #1
	ldp	x13, x12, [x1, #16]
	eor	x2, x9, x13
	cmp	x9, x13
	cset	w13, hi
	cmp	x8, x12
	cset	w3, hi
	csel	w13, w13, w3, eq
	eor	x12, x8, x12
	orr	x12, x2, x12
	cmp	x12, #0
	cset	w12, eq
	ldp	x3, x2, [x1]
	cmp	x11, x3
	cset	w3, hs
	cmp	x10, x2
	cset	w2, hs
	csel	w2, w3, w2, eq
	and	w12, w12, w2
	sbfx	w12, w12, #0, #1
	cmp	w13, w12
	b.ne	LBB23_4
LBB23_5:
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZrmRK11__uint256_tS1_         ; -- Begin function _ZrmRK11__uint256_tS1_
	.p2align	2
__ZrmRK11__uint256_tS1_:                ; @_ZrmRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	ldp	q0, q1, [x0]
	stp	q0, q1, [x8]
	mov	x0, x8
	b	__ZrMR11__uint256_tRKS_
	.cfi_endproc
                                        ; -- End function
	.globl	__Z6divmodRK11__uint256_tS1_    ; -- Begin function _Z6divmodRK11__uint256_tS1_
	.p2align	2
__Z6divmodRK11__uint256_tS1_:           ; @_Z6divmodRK11__uint256_tS1_
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	ldp	x10, x9, [x0]
	ldp	x11, x12, [x0, #16]
	ldp	x14, x13, [x1, #16]
	cmp	x11, x14
	cset	w15, hi
	cmp	x12, x13
	cset	w16, hi
	csel	w17, w15, w16, eq
	eor	x15, x12, x13
	eor	x16, x11, x14
	orr	x15, x16, x15
	cmp	x15, #0
	cset	w2, eq
	ldp	x16, x15, [x1]
	cmp	x10, x16
	cset	w3, hs
	cmp	x9, x15
	cset	w4, hs
	csel	w3, w3, w4, eq
	and	w2, w2, w3
	sbfx	w2, w2, #0, #1
	cmp	w17, w2
	b.ne	LBB25_3
; %bb.1:
	mov	x20, #0
	mov	x21, #0
	mov	x7, #0
	mov	x19, #0
LBB25_2:
	stp	x7, x19, [x8]
	stp	x20, x21, [x8, #16]
	stp	x10, x9, [x8, #32]
	stp	x11, x12, [x8, #48]
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	ret
LBB25_3:
	orr	x17, x11, x12
	cmp	x17, #0
	cset	w17, ne
	add	x0, x0, w17, uxtw #4
	ldp	x2, x4, [x0]
	cmp	x4, #0
	cset	w5, ne
	lsl	w0, w5, #6
	mov	w3, #32
	mov	w6, #32
	bfi	w6, w5, #6, #1
	lsr	x5, x4, #32
	tst	x6, #0x40
	csel	x6, xzr, x5, ne
	lsr	x7, x2, #32
	bfi	x7, x4, #32, #32
	csel	x5, x5, x7, ne
	orr	x5, x5, x6
	cmp	x5, #0
	cset	w6, ne
	lsl	x5, x4, #1
	bfi	w0, w6, #5, #1
	orr	w6, w0, #0x10
	and	x7, x6, #0x30
	lsr	x19, x4, x7
	tst	x6, #0x40
	csel	x20, xzr, x19, ne
	lsr	x7, x2, x7
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x7
	csel	x6, x19, x6, ne
	orr	x6, x6, x20
	cmp	x6, #0
	cset	w6, ne
	bfi	w0, w6, #4, #1
	orr	w6, w0, #0x8
	and	x7, x6, #0x38
	lsr	x19, x4, x7
	tst	x6, #0x40
	csel	x20, xzr, x19, ne
	lsr	x7, x2, x7
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x7
	csel	x6, x19, x6, ne
	orr	x6, x6, x20
	cmp	x6, #0
	cset	w6, ne
	bfi	w0, w6, #3, #1
	orr	w6, w0, #0x4
	and	x7, x6, #0x3c
	lsr	x19, x4, x7
	tst	x6, #0x40
	csel	x20, xzr, x19, ne
	lsr	x7, x2, x7
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x7
	csel	x6, x19, x6, ne
	orr	x6, x6, x20
	cmp	x6, #0
	cset	w6, ne
	bfi	w0, w6, #2, #1
	orr	w6, w0, #0x2
	lsr	x7, x4, x6
	tst	x6, #0x40
	csel	x19, xzr, x7, ne
	lsr	x20, x2, x6
	mvn	x6, x6
	and	x6, x6, #0x3f
	lsl	x6, x5, x6
	orr	x6, x6, x20
	csel	x6, x7, x6, ne
	orr	x6, x6, x19
	cmp	x6, #0
	cset	w6, ne
	bfi	w0, w6, #1, #1
	orr	w6, w0, #0x1
	lsr	x4, x4, x6
	tst	x6, #0x40
	csel	x7, xzr, x4, ne
	lsr	x2, x2, x6
	mvn	w6, w0
	and	x6, x6, #0x3e
	lsl	x5, x5, x6
	orr	x2, x5, x2
	csel	x2, x4, x2, ne
	orr	x2, x2, x7
	orr	x4, x14, x13
	cmp	x4, #0
	cset	w4, ne
	add	x1, x1, w4, uxtw #4
	ldp	x5, x6, [x1]
	mov	w1, #-128
	csel	w1, w1, wzr, ne
	cmp	x6, #0
	cset	w7, ne
	lsl	w4, w7, #6
	bfi	w3, w7, #6, #1
	lsr	x7, x6, #32
	tst	x3, #0x40
	csel	x3, xzr, x7, ne
	lsr	x19, x5, #32
	bfi	x19, x6, #32, #32
	csel	x7, x7, x19, ne
	orr	x3, x7, x3
	cmp	x3, #0
	cset	w7, ne
	lsl	x3, x6, #1
	bfi	w4, w7, #5, #1
	orr	w7, w4, #0x10
	and	x19, x7, #0x30
	lsr	x20, x6, x19
	tst	x7, #0x40
	csel	x21, xzr, x20, ne
	lsr	x19, x5, x19
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x3, x7
	orr	x7, x7, x19
	csel	x7, x20, x7, ne
	orr	x7, x7, x21
	cmp	x7, #0
	cset	w7, ne
	bfi	w4, w7, #4, #1
	orr	w7, w4, #0x8
	and	x19, x7, #0x38
	lsr	x20, x6, x19
	tst	x7, #0x40
	csel	x21, xzr, x20, ne
	lsr	x19, x5, x19
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x3, x7
	orr	x7, x7, x19
	csel	x7, x20, x7, ne
	orr	x7, x7, x21
	cmp	x7, #0
	cset	w7, ne
	bfi	w4, w7, #3, #1
	orr	w7, w4, #0x4
	and	x19, x7, #0x3c
	lsr	x20, x6, x19
	tst	x7, #0x40
	csel	x21, xzr, x20, ne
	lsr	x19, x5, x19
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x3, x7
	orr	x7, x7, x19
	csel	x7, x20, x7, ne
	orr	x7, x7, x21
	cmp	x7, #0
	cset	w7, ne
	bfi	w4, w7, #2, #1
	orr	w7, w4, #0x2
	lsr	x19, x6, x7
	tst	x7, #0x40
	csel	x20, xzr, x19, ne
	lsr	x21, x5, x7
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x3, x7
	orr	x7, x7, x21
	csel	x7, x19, x7, ne
	orr	x7, x7, x20
	cmp	x7, #0
	cset	w7, ne
	bfi	w4, w7, #1, #1
	orr	w7, w4, #0x1
	lsr	x6, x6, x7
	tst	x7, #0x40
	csel	x19, xzr, x6, ne
	lsr	x5, x5, x7
	mvn	w7, w4
	and	x7, x7, #0x3e
	lsl	x3, x3, x7
	orr	x3, x3, x5
	csel	x3, x6, x3, ne
	orr	x3, x3, x19
	cmp	x3, #0
	cset	w3, ne
	add	w17, w1, w17, lsl #7
	orr	w17, w17, w0
	sub	w17, w17, w4
	cmp	x2, #0
	cinc	w17, w17, ne
	sub	w17, w17, w3
	and	w4, w17, #0xffff
	cmp	w4, #128
	b.hs	LBB25_5
; %bb.4:
	mov	x0, #0
	mov	x17, #0
	lsr	x1, x14, #1
	mvn	w2, w4
	lsr	x1, x1, x2
	lsl	x3, x13, x4
	orr	x1, x3, x1
	lsl	x3, x14, x4
	mov	w5, #128
	sub	w5, w5, w4
	mvn	w6, w5
	lsl	x7, x15, #1
	lsl	x6, x7, x6
	lsr	x7, x15, x5
	tst	x5, #0x40
	lsr	x5, x16, x5
	orr	x5, x6, x5
	csel	x6, xzr, x7, ne
	csel	x5, x7, x5, ne
	cmp	w4, #0
	csel	x5, xzr, x5, eq
	csel	x6, xzr, x6, eq
	tst	x4, #0x40
	csel	x1, x3, x1, ne
	csel	x3, xzr, x3, ne
	orr	x1, x1, x6
	orr	x3, x3, x5
	lsr	x5, x16, #1
	lsr	x2, x5, x2
	lsl	x5, x15, x4
	orr	x2, x5, x2
	lsl	x5, x16, x4
	csel	x6, x5, x2, ne
	csel	x2, xzr, x5, ne
	mov	w5, #1
	lsl	x4, x5, x4
	csel	x5, x4, xzr, ne
	csel	x4, xzr, x4, ne
	b	LBB25_6
LBB25_5:
	mov	x4, #0
	mov	x5, #0
	mov	x2, #0
	mov	x6, #0
	and	w0, w17, #0x7f
	mvn	w17, w17
	lsr	x1, x16, #1
	lsr	x17, x1, x17
	lsl	x1, x15, x0
	orr	x17, x1, x17
	lsl	x3, x16, x0
	tst	x0, #0x40
	csel	x1, x3, x17, ne
	csel	x3, xzr, x3, ne
	mov	w17, #1
	lsl	x0, x17, x0
	csel	x17, x0, xzr, ne
	csel	x0, xzr, x0, ne
LBB25_6:
	mov	x7, #0
	mov	x19, #0
	mov	x20, #0
	mov	x21, #0
	b	LBB25_9
LBB25_7:                                ;   in Loop: Header=BB25_9 Depth=1
	adds	x20, x0, x20
	adc	x21, x17, x21
	adds	x7, x7, x4
	adcs	x19, x19, x5
	adcs	x20, x20, xzr
	cinc	x21, x21, hs
	mov	x22, x2
	mov	x24, x6
	mov	x23, x3
	mov	x25, x1
LBB25_8:                                ;   in Loop: Header=BB25_9 Depth=1
	subs	x10, x10, x22
	sbc	x9, x9, x24
	cmn	x10, x22
	adcs	xzr, x9, x24
	cset	w22, hs
	subs	x11, x11, x23
	sbc	x12, x12, x25
	extr	x2, x6, x2, #1
	extr	x6, x3, x6, #1
	subs	x11, x11, x22
	eor	x22, x11, x14
	sbc	x12, x12, xzr
	extr	x3, x1, x3, #1
	lsr	x1, x1, #1
	extr	x4, x5, x4, #1
	extr	x5, x0, x5, #1
	extr	x0, x17, x0, #1
	lsr	x17, x17, #1
	cmp	x11, x14
	cset	w23, hi
	cmp	x12, x13
	cset	w24, hi
	csel	w23, w23, w24, eq
	eor	x24, x12, x13
	orr	x22, x22, x24
	cmp	x22, #0
	cset	w22, eq
	cmp	x10, x16
	cset	w24, hs
	cmp	x9, x15
	cset	w25, hs
	csel	w24, w24, w25, eq
	and	w22, w22, w24
	sbfx	w22, w22, #0, #1
	cmp	w23, w22
	b.eq	LBB25_2
LBB25_9:                                ; =>This Inner Loop Header: Depth=1
	cmp	x11, x3
	cset	w22, hi
	cmp	x12, x1
	cset	w23, hi
	csel	w22, w22, w23, eq
	eor	x23, x11, x3
	eor	x24, x12, x1
	orr	x23, x23, x24
	cmp	x23, #0
	cset	w23, eq
	cmp	x10, x2
	cset	w24, hs
	cmp	x9, x6
	cset	w25, hs
	csel	w24, w24, w25, eq
	and	w23, w23, w24
	sbfx	w23, w23, #0, #1
	cmp	w22, w23
	b.ne	LBB25_7
; %bb.10:                               ;   in Loop: Header=BB25_9 Depth=1
	mov	x22, #0
	mov	x24, #0
	mov	x23, #0
	mov	x25, #0
	b	LBB25_8
	.cfi_endproc
                                        ; -- End function
	.globl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t ; -- Begin function _ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	.p2align	2
__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t: ; @_ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #496
	.cfi_def_cfa_offset 496
	stp	x28, x27, [sp, #416]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #432]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #448]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #464]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #480]            ; 16-byte Folded Spill
	add	x29, sp, #480
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
	mov	x20, x1
	mov	x19, x0
Lloh26:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh27:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh28:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x0, sp, #136
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
	ldrb	w8, [sp, #136]
	cbz	w8, LBB26_6
; %bb.1:
	ldp	q0, q1, [x20]
	stp	q0, q1, [sp, #96]
	add	x8, sp, #152
	add	x21, x8, #256
	mov	x8, sp
	add	x22, x8, #16
	mov	w23, #10
Lloh29:
	adrp	x24, l_.str@PAGE
Lloh30:
	add	x24, x24, l_.str@PAGEOFF
	mov	x20, x21
LBB26_2:                                ; =>This Inner Loop Header: Depth=1
	stp	xzr, xzr, [x22]
	stp	x23, xzr, [sp]
	add	x8, sp, #32
	add	x0, sp, #96
	mov	x1, sp
	bl	__Z6divmodRK11__uint256_tS1_
	ldr	x8, [sp, #64]
	ldrb	w8, [x24, x8]
	strb	w8, [x20, #-1]!
	ldp	q1, q0, [sp, #32]
	stp	q1, q0, [sp, #96]
	ldp	x8, x9, [sp, #112]
	ldp	x10, x11, [sp, #96]
	orr	x9, x11, x9
	orr	x8, x10, x8
	orr	x8, x8, x9
	cbnz	x8, LBB26_2
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
	b.eq	LBB26_6
; %bb.5:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp20:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp21:
LBB26_6:
	add	x0, sp, #136
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldur	x8, [x29, #-72]
Lloh31:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh32:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh33:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB26_8
; %bb.7:
	mov	x0, x19
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #464]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #448]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #432]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #416]            ; 16-byte Folded Reload
	add	sp, sp, #496
	ret
LBB26_8:
	bl	___stack_chk_fail
LBB26_9:
Ltmp22:
	mov	x19, x0
	add	x0, sp, #136
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh26, Lloh27, Lloh28
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpLdrGotLdr	Lloh31, Lloh32, Lloh33
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table26:
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
	.globl	__ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t ; -- Begin function _ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	.p2align	2
__ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t: ; @_ZrsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #496
	.cfi_def_cfa_offset 496
	stp	x28, x27, [sp, #416]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #432]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #448]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #464]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #480]            ; 16-byte Folded Spill
	add	x29, sp, #480
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
	mov	x20, x1
	mov	x19, x0
Lloh34:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh35:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh36:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x0, sp, #136
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
	ldrb	w8, [sp, #136]
	cbz	w8, LBB27_6
; %bb.1:
	ldp	q0, q1, [x20]
	stp	q0, q1, [sp, #96]
	add	x8, sp, #152
	add	x21, x8, #256
	mov	x8, sp
	add	x22, x8, #16
	mov	w23, #2
Lloh37:
	adrp	x24, l_.str@PAGE
Lloh38:
	add	x24, x24, l_.str@PAGEOFF
	mov	x20, x21
LBB27_2:                                ; =>This Inner Loop Header: Depth=1
	stp	xzr, xzr, [x22]
	stp	x23, xzr, [sp]
	add	x8, sp, #32
	add	x0, sp, #96
	mov	x1, sp
	bl	__Z6divmodRK11__uint256_tS1_
	ldr	x8, [sp, #64]
	ldrb	w8, [x24, x8]
	strb	w8, [x20, #-1]!
	ldp	q1, q0, [sp, #32]
	stp	q1, q0, [sp, #96]
	ldp	x8, x9, [sp, #112]
	ldp	x10, x11, [sp, #96]
	orr	x9, x11, x9
	orr	x8, x10, x8
	orr	x8, x8, x9
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
Ltmp23:
	mov	x1, x20
	mov	x2, x21
	blr	x8
Ltmp24:
; %bb.4:
	cmp	x0, x21
	b.eq	LBB27_6
; %bb.5:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp25:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp26:
LBB27_6:
	add	x0, sp, #136
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldur	x8, [x29, #-72]
Lloh39:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh40:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh41:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB27_8
; %bb.7:
	mov	x0, x19
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #464]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #448]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #432]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #416]            ; 16-byte Folded Reload
	add	sp, sp, #496
	ret
LBB27_8:
	bl	___stack_chk_fail
LBB27_9:
Ltmp27:
	mov	x19, x0
	add	x0, sp, #136
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh34, Lloh35, Lloh36
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpLdrGotLdr	Lloh39, Lloh40, Lloh41
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table27:
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
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
Lloh42:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh43:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh44:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
Lloh45:
	adrp	x8, _p23@PAGE
Lloh46:
	add	x8, x8, _p23@PAGEOFF
	stp	xzr, xzr, [x8, #16]
	mov	w9, #1
	stp	x9, xzr, [x8]
	add	x9, sp, #96
	add	x9, x9, #16
	mov	w10, #161
	mov	w11, #5184
LBB28_1:                                ; =>This Inner Loop Header: Depth=1
	stp	xzr, xzr, [x9]
	ldp	x13, x12, [x8]
	ldp	x14, x15, [sp, #112]
	add	x14, x14, x12, lsr #63
	extr	x12, x12, x13, #63
	lsl	x13, x13, #1
	stp	x13, x12, [sp, #96]
	ldp	x12, x13, [x8, #16]
	extr	x13, x13, x12, #63
	adds	x12, x14, x12, lsl #1
	adc	x13, x15, x13
	stp	x14, x13, [sp, #112]
	str	x12, [sp, #112]
	ldr	q0, [sp, #96]
	str	q0, [x8, #5184]
	ldr	q0, [sp, #112]
	str	q0, [x8, #5200]
	add	x8, x8, x11
	subs	x10, x10, #1
	b.ne	LBB28_1
; %bb.2:
	mov	x9, #0
	add	x8, sp, #96
	add	x10, x8, #16
Lloh47:
	adrp	x8, _p23@PAGE
Lloh48:
	add	x8, x8, _p23@PAGEOFF
	mov	w11, #3
	mov	w12, #5184
	mov	x13, x8
LBB28_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_4 Depth 2
	mov	x14, #-5152
LBB28_4:                                ;   Parent Loop BB28_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x15, x13, x14
	stp	xzr, xzr, [x10]
	ldr	x16, [x15, #5160]
	ldr	x17, [x15, #5152]
	umulh	x0, x17, x11
	add	x17, x17, x17, lsl #1
	umulh	x1, x16, x11
	add	x16, x16, x16, lsl #1
	adds	x16, x0, x16
	ldp	x0, x2, [sp, #112]
	adc	x0, x0, x1
	stp	x17, x16, [sp, #96]
	ldr	x16, [x15, #5176]
	ldr	x17, [x15, #5168]
	umulh	x1, x17, x11
	add	x16, x16, x16, lsl #1
	add	x16, x1, x16
	add	x17, x17, x17, lsl #1
	adds	x17, x0, x17
	adc	x16, x2, x16
	stp	x0, x16, [sp, #112]
	str	x17, [sp, #112]
	ldr	q0, [sp, #96]
	str	q0, [x15, #5184]
	ldr	q0, [sp, #112]
	str	q0, [x15, #5200]
	adds	x14, x14, #32
	b.ne	LBB28_4
; %bb.5:                                ;   in Loop: Header=BB28_3 Depth=1
	add	x9, x9, #1
	add	x13, x13, x12
	cmp	x9, #162
	b.ne	LBB28_3
; %bb.6:
	mov	x9, #0
Lloh49:
	adrp	x10, _p23@PAGE+32
Lloh50:
	add	x10, x10, _p23@PAGEOFF+32
	mov	w11, #1
	mov	w12, #5184
	mov	x13, #-5152
Lloh51:
	adrp	x14, _pp23@PAGE+5184
Lloh52:
	add	x14, x14, _pp23@PAGEOFF+5184
LBB28_7:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_8 Depth 2
	madd	x15, x11, x12, x8
	add	x0, x15, x13
	ldp	x16, x15, [x0]
	ldp	x0, x17, [x0, #16]
	mov	x1, x14
	mov	x2, x10
	mov	x3, x9
LBB28_8:                                ;   Parent Loop BB28_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x2]
	stp	q0, q1, [x1]
	ldp	x5, x4, [x1]
	subs	x5, x5, x16
	sbc	x4, x4, x15
	stp	x5, x4, [x1]
	cmn	x5, x16
	adcs	xzr, x4, x15
	cset	w4, hs
	ldp	x6, x5, [x1, #16]
	subs	x6, x6, x0
	sbc	x5, x5, x17
	subs	x4, x6, x4
	sbc	x5, x5, xzr
	stp	x4, x5, [x1, #16]
	sub	x3, x3, #1
	add	x2, x2, x13
	add	x1, x1, #32
	cmn	x3, #1
	b.ne	LBB28_8
; %bb.9:                                ;   in Loop: Header=BB28_7 Depth=1
	add	x11, x11, #1
	add	x9, x9, #1
	add	x10, x10, x12
	add	x14, x14, x12
	cmp	x11, #162
	b.ne	LBB28_7
; %bb.10:
	mov	w12, #0
	add	x9, sp, #32
	add	x9, x9, #16
	str	x9, [sp]                        ; 8-byte Folded Spill
	add	x10, sp, #64
	add	x10, x10, #16
	mov	w11, #5184
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
LBB28_11:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_14 Depth 2
	mov	x14, #0
	mov	x23, #0
	and	x9, x12, #0xffff
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	add	x9, x8, x9, lsl #5
	ldp	q0, q1, [x9]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	stp	q0, q1, [sp, #96]
	ldp	x2, x3, [sp, #96]
	mov	w15, #128
	ldp	x0, x1, [sp, #112]
	b	LBB28_14
LBB28_12:                               ;   in Loop: Header=BB28_14 Depth=2
	lsr	x8, x1, x23
	mvn	w9, w23
	lsl	x11, x0, #1
	lsl	x11, x11, x9
	orr	x8, x11, x8
	lsr	x11, x0, x23
	mvn	w12, w15
	lsr	x13, x17, #1
	lsr	x12, x13, x12
	mov	w13, w15
	lsl	x0, x16, x13
	orr	x12, x0, x12
	lsl	x0, x17, x13
	tst	x13, #0x40
	csel	x12, x0, x12, ne
	csel	x13, xzr, x0, ne
	cmp	x14, #0
	csel	x12, xzr, x12, eq
	csel	x13, xzr, x13, eq
	tst	x23, #0x40
	csel	x8, x11, x8, ne
	csel	x11, xzr, x11, ne
	orr	x3, x12, x11
	orr	x2, x13, x8
	lsr	x8, x17, x23
	lsl	x11, x16, #1
	lsl	x9, x11, x9
	orr	x8, x9, x8
	lsr	x9, x16, x23
	csel	x0, x9, x8, ne
	csel	x1, xzr, x9, ne
LBB28_13:                               ;   in Loop: Header=BB28_14 Depth=2
	mov	x8, x20
	mov	w11, #5184
	add	x23, x23, #1
	add	x14, x14, x11
	sub	w15, w15, #1
	cmp	x23, #162
	b.eq	LBB28_29
LBB28_14:                               ;   Parent Loop BB28_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x23, #128
	b.hs	LBB28_16
; %bb.15:                               ;   in Loop: Header=BB28_14 Depth=2
	lsl	x12, x1, x23
	mvn	w1, w23
	lsr	x16, x0, #1
	lsr	x16, x16, x1
	orr	x12, x12, x16
	lsl	x16, x0, x23
	mov	w17, w15
	lsr	x0, x2, x17
	mvn	w4, w15
	lsl	x5, x3, #1
	lsl	x4, x5, x4
	orr	x0, x4, x0
	lsr	x4, x3, x17
	tst	x17, #0x40
	csel	x17, x4, x0, ne
	csel	x0, xzr, x4, ne
	cmp	x14, #0
	csel	x17, xzr, x17, eq
	csel	x0, xzr, x0, eq
	tst	x23, #0x40
	csel	x12, x16, x12, ne
	csel	x4, xzr, x16, ne
	orr	x16, x0, x12
	orr	x17, x17, x4
	lsl	x12, x3, x23
	lsr	x0, x2, #1
	lsr	x0, x0, x1
	orr	x12, x12, x0
	lsl	x1, x2, x23
	csel	x0, x1, x12, ne
	csel	x1, xzr, x1, ne
	b	LBB28_17
LBB28_16:                               ;   in Loop: Header=BB28_14 Depth=2
	mov	x1, #0
	mov	x0, #0
	and	w12, w23, #0x7f
	mvn	w16, w23
	lsr	x17, x2, #1
	lsr	x16, x17, x16
	lsl	x17, x3, x12
	orr	x16, x17, x16
	lsl	x17, x2, x12
	tst	x12, #0x40
	csel	x16, x17, x16, ne
	csel	x17, xzr, x17, ne
LBB28_17:                               ;   in Loop: Header=BB28_14 Depth=2
	ldr	x13, [sp, #16]                  ; 8-byte Folded Reload
	add	x12, x13, x14
	mov	w9, #5200
	add	x12, x12, x9
	add	x21, x13, x14
	prfm	pldl1keep, [x12]
	ldp	x12, x2, [x21, #16]
	eor	x2, x16, x2
	eor	x12, x17, x12
	orr	x12, x12, x2
	cbnz	x12, LBB28_30
; %bb.18:                               ;   in Loop: Header=BB28_14 Depth=2
	ldp	x2, x12, [x21]
	eor	x2, x1, x2
	eor	x12, x0, x12
	orr	x12, x2, x12
	cbnz	x12, LBB28_30
; %bb.19:                               ;   in Loop: Header=BB28_14 Depth=2
	add	x12, x8, x14
	add	x12, x12, x11
	add	x21, x8, x14
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	stp	xzr, xzr, [x9]
	prfm	pldl1keep, [x12]
	ldp	x4, x3, [x21]
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x6, x5, [x9]
	umulh	x12, x6, x4
	mul	x2, x6, x4
	umulh	x7, x6, x3
	mul	x19, x6, x3
	umulh	x22, x5, x4
	mul	x24, x5, x4
	adds	x12, x12, x24
	ldp	x24, x25, [sp, #48]
	adc	x22, x24, x22
	adds	x12, x12, x19
	cinc	x19, x22, hs
	stp	x2, x12, [sp, #32]
	mul	x22, x5, x3
	adds	x7, x7, x22
	ldp	x24, x22, [x9, #16]
	umulh	x26, x24, x4
	madd	x26, x24, x3, x26
	umulh	x3, x5, x3
	cinc	x3, x3, hs
	madd	x22, x22, x4, x26
	mul	x4, x24, x4
	adds	x4, x7, x4
	adc	x3, x3, x22
	ldp	x22, x7, [x21, #16]
	umulh	x24, x22, x6
	madd	x5, x22, x5, x24
	madd	x5, x7, x6, x5
	mul	x6, x22, x6
	adds	x4, x4, x6
	adc	x3, x3, x5
	adds	x4, x4, x19
	eor	x5, x17, x4
	adc	x3, x3, x25
	stp	x4, x3, [sp, #48]
	eor	x3, x16, x3
	orr	x3, x5, x3
	cbnz	x3, LBB28_33
; %bb.20:                               ;   in Loop: Header=BB28_14 Depth=2
	eor	x2, x1, x2
	eor	x12, x0, x12
	orr	x12, x2, x12
	cbnz	x12, LBB28_33
; %bb.21:                               ;   in Loop: Header=BB28_14 Depth=2
	ubfx	x12, x23, #1, #31
	umaddl	x22, w12, w11, x8
	add	w12, w23, #1
	lsr	w12, w12, #1
	mov	x20, x8
	umaddl	x12, w12, w11, x8
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x21, x12, x8, lsl #5
	stp	xzr, xzr, [x10]
	ldp	x19, x12, [x22]
	ldp	x27, x26, [x21]
	umulh	x4, x27, x19
	mul	x2, x27, x19
	umulh	x5, x27, x12
	mul	x6, x27, x12
	umulh	x3, x26, x19
	mul	x7, x26, x19
	adds	x30, x6, x7
	cinc	x28, x3, hs
	adds	x24, x30, x4
	ldp	x25, x11, [sp, #80]
	adc	x9, x28, x25
	stp	x2, x24, [sp, #64]
	umulh	x25, x26, x12
	ldp	x13, x24, [x21, #16]
	umulh	x8, x13, x19
	madd	x8, x13, x12, x8
	mul	x12, x26, x12
	madd	x8, x24, x19, x8
	mul	x13, x13, x19
	adds	x24, x13, x12
	adc	x25, x8, x25
	adds	x12, x24, x5
	ldp	x13, x8, [x22, #16]
	umulh	x19, x13, x27
	madd	x26, x13, x26, x19
	cinc	x19, x25, hs
	madd	x26, x8, x27, x26
	mul	x27, x13, x27
	adds	x8, x27, x12
	adc	x13, x26, x19
	adds	x8, x8, x9
	adc	x11, x13, x11
	stp	x9, x11, [sp, #80]
	str	x8, [sp, #80]
	ldp	q0, q1, [sp, #64]
	stp	q0, q1, [sp, #32]
	ldp	x8, x9, [sp, #48]
	eor	x9, x16, x9
	eor	x8, x17, x8
	orr	x8, x8, x9
	cbnz	x8, LBB28_35
; %bb.22:                               ;   in Loop: Header=BB28_14 Depth=2
	ldp	x9, x8, [sp, #32]
	eor	x9, x1, x9
	eor	x8, x0, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_35
; %bb.23:                               ;   in Loop: Header=BB28_14 Depth=2
	stp	xzr, xzr, [x10]
	adds	x8, x30, x4
	ldp	x9, x11, [sp, #80]
	adc	x9, x28, x9
	stp	x2, x8, [sp, #64]
	adds	x8, x9, x12
	adc	x11, x11, x19
	stp	x9, x11, [sp, #80]
	str	x8, [sp, #80]
	ldp	q0, q1, [sp, #64]
	stp	q0, q1, [sp, #32]
	ldp	x8, x9, [sp, #48]
	eor	x9, x16, x9
	eor	x8, x17, x8
	orr	x8, x8, x9
	cbnz	x8, LBB28_37
; %bb.24:                               ;   in Loop: Header=BB28_14 Depth=2
	ldp	x9, x8, [sp, #32]
	eor	x9, x1, x9
	eor	x8, x0, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_37
; %bb.25:                               ;   in Loop: Header=BB28_14 Depth=2
	stp	xzr, xzr, [x10]
	adds	x8, x7, x6
	cinc	x9, x5, hs
	adds	x8, x8, x4
	ldp	x11, x12, [sp, #80]
	adc	x9, x9, x11
	stp	x2, x8, [sp, #64]
	adds	x8, x24, x3
	cinc	x11, x25, hs
	adds	x8, x8, x27
	adc	x11, x11, x26
	adds	x8, x8, x9
	adc	x11, x11, x12
	stp	x9, x11, [sp, #80]
	str	x8, [sp, #80]
	ldp	q0, q1, [sp, #64]
	stp	q0, q1, [sp, #32]
	ldp	x8, x9, [sp, #48]
	eor	x9, x16, x9
	eor	x8, x17, x8
	orr	x8, x8, x9
	cbnz	x8, LBB28_39
; %bb.26:                               ;   in Loop: Header=BB28_14 Depth=2
	ldp	x9, x8, [sp, #32]
	eor	x9, x1, x9
	eor	x8, x0, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_39
; %bb.27:                               ;   in Loop: Header=BB28_14 Depth=2
	cmp	x23, #128
	b.lo	LBB28_12
; %bb.28:                               ;   in Loop: Header=BB28_14 Depth=2
	mov	x0, #0
	mov	x1, #0
	and	w8, w23, #0x7f
	mvn	w9, w23
	lsl	x11, x16, #1
	lsl	x9, x11, x9
	lsr	x11, x17, x8
	orr	x9, x9, x11
	lsr	x11, x16, x8
	tst	x8, #0x40
	csel	x2, x11, x9, ne
	csel	x3, xzr, x11, ne
	b	LBB28_13
LBB28_29:                               ;   in Loop: Header=BB28_11 Depth=1
	ldp	x13, x9, [sp, #16]              ; 16-byte Folded Reload
	add	w12, w9, #1
	add	x13, x13, #32
	str	x13, [sp, #16]                  ; 8-byte Folded Spill
	cmp	w9, #161
	b.lo	LBB28_11
	b	LBB28_43
LBB28_30:
	stp	x17, x16, [sp, #112]
	stp	x1, x0, [sp, #96]
Lloh53:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh54:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh55:
	adrp	x1, l_.str.3@PAGE
Lloh56:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #13
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh57:
	adrp	x19, l_.str.4@PAGE
Lloh58:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w23, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	add	x1, sp, #96
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #32
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp48:
Lloh59:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh60:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #32
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp49:
; %bb.31:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp50:
	mov	w1, #10
	blr	x8
Ltmp51:
; %bb.32:
	mov	x20, x0
	add	x0, sp, #32
	b	LBB28_42
LBB28_33:
	stp	x17, x16, [sp, #112]
	stp	x1, x0, [sp, #96]
Lloh61:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh62:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh63:
	adrp	x1, l_.str.5@PAGE
Lloh64:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #11
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh65:
	adrp	x19, l_.str.4@PAGE
Lloh66:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w23, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #32
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	add	x1, sp, #96
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #64
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp43:
Lloh67:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh68:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #64
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp44:
; %bb.34:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp45:
	mov	w1, #10
	blr	x8
Ltmp46:
	b	LBB28_41
LBB28_35:
	stp	x17, x16, [sp, #112]
	stp	x1, x0, [sp, #96]
Lloh69:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh70:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh71:
	adrp	x1, l_.str.6@PAGE
Lloh72:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh73:
	adrp	x19, l_.str.4@PAGE
Lloh74:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w23, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x22
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #32
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	add	x1, sp, #96
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #64
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp38:
Lloh75:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh76:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #64
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp39:
; %bb.36:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp40:
	mov	w1, #10
	blr	x8
Ltmp41:
	b	LBB28_41
LBB28_37:
	stp	x17, x16, [sp, #112]
	stp	x1, x0, [sp, #96]
Lloh77:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh78:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh79:
	adrp	x1, l_.str.7@PAGE
Lloh80:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #15
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh81:
	adrp	x19, l_.str.4@PAGE
Lloh82:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w23, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x22
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #32
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	add	x1, sp, #96
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #64
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp33:
Lloh83:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh84:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #64
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp34:
; %bb.38:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp35:
	mov	w1, #10
	blr	x8
Ltmp36:
	b	LBB28_41
LBB28_39:
	stp	x17, x16, [sp, #112]
	stp	x1, x0, [sp, #96]
Lloh85:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh86:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh87:
	adrp	x1, l_.str.8@PAGE
Lloh88:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh89:
	adrp	x19, l_.str.4@PAGE
Lloh90:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w23, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x22
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #32
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	add	x1, sp, #96
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint256_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #64
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp28:
Lloh91:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh92:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #64
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp29:
; %bb.40:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp30:
	mov	w1, #10
	blr	x8
Ltmp31:
LBB28_41:
	mov	x20, x0
	add	x0, sp, #64
LBB28_42:
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
LBB28_43:
	ldur	x8, [x29, #-88]
Lloh93:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh94:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh95:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB28_45
; %bb.44:
	mov	w0, #0
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
LBB28_45:
	bl	___stack_chk_fail
LBB28_46:
Ltmp32:
	b	LBB28_50
LBB28_47:
Ltmp37:
	b	LBB28_50
LBB28_48:
Ltmp42:
	b	LBB28_50
LBB28_49:
Ltmp47:
LBB28_50:
	mov	x19, x0
	add	x0, sp, #64
	b	LBB28_52
LBB28_51:
Ltmp52:
	mov	x19, x0
	add	x0, sp, #32
LBB28_52:
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpLdrGotLdr	Lloh42, Lloh43, Lloh44
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpLdrGot	Lloh59, Lloh60
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpLdrGot	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpLdrGot	Lloh61, Lloh62
	.loh AdrpLdrGot	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpLdrGot	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpLdrGot	Lloh77, Lloh78
	.loh AdrpLdrGot	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpLdrGot	Lloh85, Lloh86
	.loh AdrpLdrGotLdr	Lloh93, Lloh94, Lloh95
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table28:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp48-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp51-Ltmp48                  ;   Call between Ltmp48 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin5            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Ltmp43-Ltmp51                  ;   Call between Ltmp51 and Ltmp43
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin5            ; >> Call Site 4 <<
	.uleb128 Ltmp46-Ltmp43                  ;   Call between Ltmp43 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin5            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin5            ; >> Call Site 5 <<
	.uleb128 Ltmp38-Ltmp46                  ;   Call between Ltmp46 and Ltmp38
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin5            ; >> Call Site 6 <<
	.uleb128 Ltmp41-Ltmp38                  ;   Call between Ltmp38 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin5            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin5            ; >> Call Site 7 <<
	.uleb128 Ltmp33-Ltmp41                  ;   Call between Ltmp41 and Ltmp33
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin5            ; >> Call Site 8 <<
	.uleb128 Ltmp36-Ltmp33                  ;   Call between Ltmp33 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin5            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin5            ; >> Call Site 9 <<
	.uleb128 Ltmp28-Ltmp36                  ;   Call between Ltmp36 and Ltmp28
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin5            ; >> Call Site 10 <<
	.uleb128 Ltmp31-Ltmp28                  ;   Call between Ltmp28 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin5            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin5            ; >> Call Site 11 <<
	.uleb128 Lfunc_end5-Ltmp31              ;   Call between Ltmp31 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
Ltmp53:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp54:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB29_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB29_7
; %bb.3:
Ltmp56:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp57:
; %bb.4:
Ltmp58:
Lloh96:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh97:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp59:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp60:
	mov	w1, #32
	blr	x8
Ltmp61:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB29_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp63:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp64:
; %bb.8:
	cbnz	x0, LBB29_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp66:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp67:
LBB29_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB29_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB29_12:
Ltmp68:
	b	LBB29_15
LBB29_13:
Ltmp62:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB29_16
LBB29_14:
Ltmp65:
LBB29_15:
	mov	x20, x0
LBB29_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB29_18
LBB29_17:
Ltmp55:
	mov	x20, x0
LBB29_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp69:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp70:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB29_11
LBB29_20:
Ltmp71:
	mov	x19, x0
Ltmp72:
	bl	___cxa_end_catch
Ltmp73:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB29_22:
Ltmp74:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh96, Lloh97
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table29:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp53-Lfunc_begin6            ; >> Call Site 1 <<
	.uleb128 Ltmp54-Ltmp53                  ;   Call between Ltmp53 and Ltmp54
	.uleb128 Ltmp55-Lfunc_begin6            ;     jumps to Ltmp55
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp56-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp57-Ltmp56                  ;   Call between Ltmp56 and Ltmp57
	.uleb128 Ltmp65-Lfunc_begin6            ;     jumps to Ltmp65
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp58-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Ltmp61-Ltmp58                  ;   Call between Ltmp58 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin6            ;     jumps to Ltmp62
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp63-Lfunc_begin6            ; >> Call Site 4 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin6            ;     jumps to Ltmp65
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp66-Lfunc_begin6            ; >> Call Site 5 <<
	.uleb128 Ltmp67-Ltmp66                  ;   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin6            ;     jumps to Ltmp68
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp67-Lfunc_begin6            ; >> Call Site 6 <<
	.uleb128 Ltmp69-Ltmp67                  ;   Call between Ltmp67 and Ltmp69
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin6            ; >> Call Site 7 <<
	.uleb128 Ltmp70-Ltmp69                  ;   Call between Ltmp69 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin6            ;     jumps to Ltmp71
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin6            ; >> Call Site 8 <<
	.uleb128 Ltmp72-Ltmp70                  ;   Call between Ltmp70 and Ltmp72
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin6            ; >> Call Site 9 <<
	.uleb128 Ltmp73-Ltmp72                  ;   Call between Ltmp72 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin6            ;     jumps to Ltmp74
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp73-Lfunc_begin6            ; >> Call Site 10 <<
	.uleb128 Lfunc_end6-Ltmp73              ;   Call between Ltmp73 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
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
	.private_extern	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
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
	cbz	x0, LBB30_16
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
	b.lt	LBB30_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB30_15
LBB30_3:
	cmp	x23, #1
	b.lt	LBB30_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB30_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB30_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB30_8
LBB30_7:
	orr	x8, x23, #0xf
	add	x26, x8, #1
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB30_8:
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
Ltmp75:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp76:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB30_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB30_15
	b	LBB30_12
LBB30_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB30_15
LBB30_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB30_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB30_15
LBB30_14:
	str	xzr, [x20, #24]
	b	LBB30_16
LBB30_15:
	mov	x19, #0
LBB30_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB30_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB7v160006Ev
LBB30_18:
Ltmp77:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB30_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB30_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table30:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp75-Lfunc_begin7            ;   Call between Lfunc_begin7 and Ltmp75
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp75-Lfunc_begin7            ; >> Call Site 2 <<
	.uleb128 Ltmp76-Ltmp75                  ;   Call between Ltmp75 and Ltmp76
	.uleb128 Ltmp77-Lfunc_begin7            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp76-Lfunc_begin7            ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp76              ;   Call between Ltmp76 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
Lloh98:
	adrp	x0, l_.str.9@PAGE
Lloh99:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.loh AdrpAdd	Lloh98, Lloh99
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
Ltmp78:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B7v160006EPKc
Ltmp79:
; %bb.1:
Lloh100:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh101:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh102:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh103:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB33_2:
Ltmp80:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh102, Lloh103
	.loh AdrpLdrGot	Lloh100, Lloh101
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table33:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp78-Lfunc_begin8            ;   Call between Lfunc_begin8 and Ltmp78
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin8            ; >> Call Site 2 <<
	.uleb128 Ltmp79-Ltmp78                  ;   Call between Ltmp78 and Ltmp79
	.uleb128 Ltmp80-Lfunc_begin8            ;     jumps to Ltmp80
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp79-Lfunc_begin8            ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp79              ;   Call between Ltmp79 and Lfunc_end8
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
Lloh104:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh105:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh104, Lloh105
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"0123456789ABCDEF"

l_.str.1:                               ; @.str.1
	.asciz	"-"

	.globl	_p23                            ; @p23
.zerofill __DATA,__common,_p23,839808,4
	.globl	_pp23                           ; @pp23
.zerofill __DATA,__common,_pp23,839808,4
l_.str.3:                               ; @.str.3
	.asciz	"shift error: "

l_.str.4:                               ; @.str.4
	.asciz	" "

l_.str.5:                               ; @.str.5
	.asciz	"mul error: "

l_.str.6:                               ; @.str.6
	.asciz	"mul ab error: "

l_.str.7:                               ; @.str.7
	.asciz	"mul 128 error: "

l_.str.8:                               ; @.str.8
	.asciz	"mul ba error: "

l_.str.9:                               ; @.str.9
	.asciz	"basic_string"

.subsections_via_symbols
