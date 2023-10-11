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
	b.hs	LBB7_2
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
LBB7_2:
	cmp	w1, #256
	b.hs	LBB7_4
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
LBB7_4:
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
	b.hs	LBB8_2
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
LBB8_2:
	cmp	w1, #256
	b.hs	LBB8_4
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
LBB8_4:
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
	b.hs	LBB9_2
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
LBB9_2:
	cmp	w1, #256
	b.hs	LBB9_4
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
LBB9_4:
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
	cbz	w0, LBB11_2
; %bb.1:
	ldp	q0, q1, [x1]
	stp	q0, q1, [x8]
	ldr	q0, [x1, #32]
	str	q0, [x8, #32]
	ret
LBB11_2:
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
	b.ne	LBB14_2
; %bb.1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB14_2:
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
	cmp	x9, x11
	cset	w12, hi
	cmp	x8, x10
	cset	w13, hi
	csel	w12, w12, w13, eq
	cmp	w12, #0
	csetm	w13, ne
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	ldp	x10, x9, [x0, #16]
	ldp	x14, x11, [x1, #16]
	cmp	x10, x14
	cset	w15, hi
	cmp	x9, x11
	cset	w16, hi
	csel	w15, w15, w16, eq
	eor	x9, x9, x11
	eor	x10, x10, x14
	orr	x9, x10, x9
	cmp	x9, #0
	cset	w9, eq
	ldp	x11, x10, [x0]
	ldp	x16, x14, [x1]
	cmp	x11, x16
	cset	w11, hs
	cmp	x10, x14
	cset	w10, hs
	csel	w10, w11, w10, eq
	and	w9, w9, w10
	add	w9, w9, w15
	cmp	w9, w13
	cset	w9, ne
	cmp	x8, #0
	csel	w0, w9, w12, eq
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
	cmp	x9, x11
	cset	w12, hi
	cmp	x8, x10
	cset	w13, hi
	csel	w12, w12, w13, eq
	cmp	w12, #0
	csetm	w13, ne
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	ldp	x10, x9, [x0, #16]
	ldp	x14, x11, [x1, #16]
	cmp	x10, x14
	cset	w15, hi
	cmp	x9, x11
	cset	w16, hi
	csel	w15, w15, w16, eq
	eor	x9, x9, x11
	eor	x10, x10, x14
	orr	x9, x10, x9
	cmp	x9, #0
	cset	w9, eq
	ldp	x11, x10, [x0]
	ldp	x16, x14, [x1]
	cmp	x11, x16
	cset	w11, hi
	cmp	x10, x14
	cset	w10, hi
	csel	w10, w11, w10, eq
	and	w9, w9, w10
	add	w9, w9, w15
	cmp	w9, w13
	cset	w9, ne
	cmp	x8, #0
	csel	w0, w9, w12, eq
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
	cmp	x9, x11
	cset	w12, lo
	cmp	x8, x10
	cset	w13, lo
	csel	w12, w12, w13, eq
	cmp	w12, #0
	csetm	w13, ne
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	ldp	x10, x9, [x0, #16]
	ldp	x14, x11, [x1, #16]
	cmp	x10, x14
	cset	w15, lo
	cmp	x9, x11
	cset	w16, lo
	csel	w15, w15, w16, eq
	eor	x9, x9, x11
	eor	x10, x10, x14
	orr	x9, x10, x9
	cmp	x9, #0
	cset	w9, eq
	ldp	x11, x10, [x0]
	ldp	x16, x14, [x1]
	cmp	x11, x16
	cset	w11, ls
	cmp	x10, x14
	cset	w10, ls
	csel	w10, w11, w10, eq
	and	w9, w9, w10
	add	w9, w9, w15
	cmp	w9, w13
	cset	w9, ne
	cmp	x8, #0
	csel	w0, w9, w12, eq
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
	cmp	x9, x11
	cset	w12, lo
	cmp	x8, x10
	cset	w13, lo
	csel	w12, w12, w13, eq
	cmp	w12, #0
	csetm	w13, ne
	eor	x8, x8, x10
	eor	x9, x9, x11
	orr	x8, x9, x8
	ldp	x10, x9, [x0, #16]
	ldp	x14, x11, [x1, #16]
	cmp	x10, x14
	cset	w15, lo
	cmp	x9, x11
	cset	w16, lo
	csel	w15, w15, w16, eq
	eor	x9, x9, x11
	eor	x10, x10, x14
	orr	x9, x10, x9
	cmp	x9, #0
	cset	w9, eq
	ldp	x11, x10, [x0]
	ldp	x16, x14, [x1]
	cmp	x11, x16
	cset	w11, lo
	cmp	x10, x14
	cset	w10, lo
	csel	w10, w11, w10, eq
	and	w9, w9, w10
	add	w9, w9, w15
	cmp	w9, w13
	cset	w9, ne
	cmp	x8, #0
	csel	w0, w9, w12, eq
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
	ldp	x9, x8, [x0, #32]
	orr	x8, x9, x8
	cmp	x8, #0
	csetm	w9, ne
	ldp	x11, x10, [x0, #16]
	orr	x10, x11, x10
	ldp	x12, x11, [x0]
	sxtw	x13, w1
	cmp	x12, x13
	cset	w12, hi
	cmp	x11, x13, asr #63
	cset	w11, hi
	csel	w11, w12, w11, eq
	cmp	x10, #0
	cset	w10, eq
	and	w10, w10, w11
	cinc	w10, w10, ne
	cmp	w10, w9
	cset	w9, ne
	cmp	x8, #0
	cset	w8, ne
	csel	w0, w9, w8, eq
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
	stp	x22, x21, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	ldp	x15, x14, [x0, #32]
	ldp	x12, x13, [x1, #32]
	cmp	x15, x12
	cset	w8, hi
	cmp	x14, x13
	cset	w9, hi
	csel	w2, w8, w9, eq
	cmp	w2, #0
	csetm	w3, ne
	eor	x8, x14, x13
	eor	x9, x15, x12
	orr	x4, x9, x8
	ldp	x17, x16, [x0, #16]
	ldp	x10, x11, [x1, #16]
	cmp	x17, x10
	cset	w8, hi
	cmp	x16, x11
	cset	w9, hi
	csel	w5, w8, w9, eq
	eor	x8, x16, x11
	eor	x9, x17, x10
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w6, eq
	ldp	x19, x7, [x0]
	ldp	x8, x9, [x1]
	cmp	x19, x8
	cset	w19, hs
	cmp	x7, x9
	cset	w7, hs
	csel	w7, w19, w7, eq
	and	w6, w6, w7
	add	w5, w6, w5
	cmp	w5, w3
	cset	w3, ne
	cmp	x4, #0
	csel	w2, w3, w2, eq
	cmp	w2, #1
	b.ne	LBB23_9
; %bb.1:
	orr	x14, x15, x14
	orr	x15, x17, x16
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
	orr	x17, x12, x13
	orr	x2, x10, x11
	cmp	x2, #0
	cset	w2, ne
	cmp	x17, #0
	csel	w16, w2, w16, eq
	add	x17, x1, w16, uxtw #4
	ldp	x2, x3, [x17]
	cmp	x3, #0
	cset	w4, ne
	lsl	w17, w4, #6
	bfi	w15, w4, #6, #1
	lsr	x4, x3, #32
	tst	x15, #0x40
	csel	x15, xzr, x4, ne
	lsr	x5, x2, #32
	bfi	x5, x3, #32, #32
	csel	x4, x4, x5, ne
	orr	x15, x4, x15
	cmp	x15, #0
	cset	w4, ne
	lsl	x15, x3, #1
	bfi	w17, w4, #5, #1
	orr	w4, w17, #0x10
	and	x5, x4, #0x30
	lsr	x6, x3, x5
	tst	x4, #0x40
	csel	x7, xzr, x6, ne
	lsr	x5, x2, x5
	mvn	x4, x4
	and	x4, x4, #0x3f
	lsl	x4, x15, x4
	orr	x4, x4, x5
	csel	x4, x6, x4, ne
	orr	x4, x4, x7
	cmp	x4, #0
	cset	w4, ne
	bfi	w17, w4, #4, #1
	orr	w4, w17, #0x8
	and	x5, x4, #0x38
	lsr	x6, x3, x5
	tst	x4, #0x40
	csel	x7, xzr, x6, ne
	lsr	x5, x2, x5
	mvn	x4, x4
	and	x4, x4, #0x3f
	lsl	x4, x15, x4
	orr	x4, x4, x5
	csel	x4, x6, x4, ne
	orr	x4, x4, x7
	cmp	x4, #0
	cset	w4, ne
	bfi	w17, w4, #3, #1
	orr	w4, w17, #0x4
	and	x5, x4, #0x3c
	lsr	x6, x3, x5
	tst	x4, #0x40
	csel	x7, xzr, x6, ne
	lsr	x5, x2, x5
	mvn	x4, x4
	and	x4, x4, #0x3f
	lsl	x4, x15, x4
	orr	x4, x4, x5
	csel	x4, x6, x4, ne
	orr	x4, x4, x7
	cmp	x4, #0
	cset	w4, ne
	bfi	w17, w4, #2, #1
	orr	w4, w17, #0x2
	lsr	x5, x3, x4
	tst	x4, #0x40
	csel	x6, xzr, x5, ne
	lsr	x7, x2, x4
	mvn	x4, x4
	and	x4, x4, #0x3f
	lsl	x4, x15, x4
	orr	x4, x4, x7
	csel	x4, x5, x4, ne
	orr	x4, x4, x6
	cmp	x4, #0
	cset	w4, ne
	bfi	w17, w4, #1, #1
	orr	w4, w17, #0x1
	lsr	x3, x3, x4
	tst	x4, #0x40
	csel	x5, xzr, x3, ne
	lsr	x2, x2, x4
	mvn	w4, w17
	and	x4, x4, #0x3e
	lsl	x15, x15, x4
	orr	x15, x15, x2
	csel	x15, x3, x15, ne
	orr	x15, x15, x5
	cmp	x15, #0
	cset	w15, ne
	orr	w15, w17, w15
	add	w15, w15, w16, lsl #7
	sub	w16, w14, w15
	and	w16, w16, #0xffff
	cmp	w16, #128
	b.hs	LBB23_3
; %bb.2:
	lsr	x17, x12, #1
	mvn	w2, w16
	lsr	x17, x17, x2
	lsl	x13, x13, x16
	orr	x13, x13, x17
	and	w14, w14, #0xffff
	mov	w17, #128
	sub	w17, w17, w16
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
	cmp	w14, w15, uxth
	lsl	x12, x12, x16
	csel	x15, xzr, x4, eq
	csel	x14, xzr, x5, eq
	csel	x17, xzr, x17, eq
	csel	x3, xzr, x7, eq
	tst	x16, #0x40
	csel	x13, x12, x13, ne
	csel	x12, xzr, x12, ne
	orr	x14, x13, x14
	orr	x15, x12, x15
	lsr	x12, x10, #1
	lsr	x12, x12, x2
	lsl	x11, x11, x16
	orr	x11, x11, x12
	lsl	x10, x10, x16
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x11, x3, x11
	orr	x10, x17, x10
	lsr	x12, x8, #1
	lsr	x12, x12, x2
	lsl	x9, x9, x16
	orr	x9, x9, x12
	lsl	x8, x8, x16
	csel	x13, x8, x9, ne
	csel	x12, xzr, x8, ne
	b	LBB23_6
LBB23_3:
	and	w17, w16, #0x7f
	cmp	w16, #256
	b.hs	LBB23_5
; %bb.4:
	mov	x12, #0
	mov	x13, #0
	lsr	x14, x10, #1
	mvn	w16, w17
	lsr	x14, x14, x16
	lsl	x11, x11, x17
	orr	x11, x11, x14
	lsl	x10, x10, x17
	mov	w14, #128
	sub	w14, w14, w17
	mvn	w15, w14
	lsl	x2, x9, #1
	lsl	x15, x2, x15
	lsr	x2, x9, x14
	tst	x14, #0x40
	lsr	x14, x8, x14
	orr	x14, x15, x14
	csel	x15, xzr, x2, ne
	csel	x14, x2, x14, ne
	cmp	w17, #0
	csel	x2, xzr, x14, eq
	csel	x14, xzr, x15, eq
	tst	x17, #0x40
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x14, x14, x11
	orr	x15, x2, x10
	lsr	x10, x8, #1
	lsr	x10, x10, x16
	lsl	x9, x9, x17
	orr	x9, x9, x10
	lsl	x8, x8, x17
	csel	x11, x8, x9, ne
	csel	x10, xzr, x8, ne
	b	LBB23_6
LBB23_5:
	mov	x12, #0
	mov	x13, #0
	mov	x10, #0
	mov	x11, #0
	mvn	w14, w17
	lsr	x15, x8, #1
	lsr	x14, x15, x14
	lsl	x9, x9, x17
	orr	x9, x9, x14
	lsl	x8, x8, x17
	tst	x17, #0x40
	csel	x14, x8, x9, ne
	csel	x15, xzr, x8, ne
LBB23_6:
	ldp	x3, x2, [x0, #32]
	ldp	x17, x16, [x0, #16]
	ldp	x9, x8, [x0]
LBB23_7:                                ; =>This Inner Loop Header: Depth=1
	ldp	x5, x4, [x1, #32]
	cmp	x3, x5
	cset	w6, hi
	cmp	x2, x4
	cset	w7, hi
	csel	w6, w6, w7, eq
	cmp	w6, #0
	csetm	w7, ne
	eor	x4, x2, x4
	eor	x5, x3, x5
	orr	x4, x5, x4
	ldp	x19, x5, [x1, #16]
	cmp	x17, x19
	cset	w20, hi
	cmp	x16, x5
	cset	w21, hi
	csel	w20, w20, w21, eq
	eor	x5, x16, x5
	eor	x19, x17, x19
	orr	x5, x19, x5
	cmp	x5, #0
	cset	w5, eq
	ldp	x21, x19, [x1]
	cmp	x9, x21
	cset	w21, hs
	cmp	x8, x19
	cset	w19, hs
	csel	w19, w21, w19, eq
	and	w5, w5, w19
	add	w5, w5, w20
	cmp	w5, w7
	cset	w5, ne
	cmp	x4, #0
	csel	w4, w5, w6, eq
	cmp	w4, #1
	b.ne	LBB23_9
; %bb.8:                                ;   in Loop: Header=BB23_7 Depth=1
	cmp	x3, x15
	cset	w4, hi
	cmp	x2, x14
	cset	w5, hi
	csel	w4, w4, w5, eq
	cmp	w4, #0
	csetm	w5, ne
	eor	x6, x3, x15
	eor	x7, x2, x14
	orr	x6, x6, x7
	cmp	x17, x10
	cset	w7, hi
	cmp	x16, x11
	cset	w19, hi
	csel	w7, w7, w19, eq
	eor	x19, x17, x10
	eor	x20, x16, x11
	orr	x19, x19, x20
	cmp	x19, #0
	cset	w19, eq
	cmp	x9, x12
	cset	w20, hs
	cmp	x8, x13
	cset	w21, hs
	csel	w20, w20, w21, eq
	and	w19, w19, w20
	add	w7, w19, w7
	cmp	w7, w5
	cset	w5, ne
	cmp	x6, #0
	csel	w4, w5, w4, eq
	cmp	w4, #0
	csel	x4, x13, xzr, ne
	csel	x5, x12, xzr, ne
	csel	x6, x11, xzr, ne
	csel	x7, x10, xzr, ne
	csel	x19, x14, xzr, ne
	csel	x20, x15, xzr, ne
	subs	x9, x9, x5
	sbc	x8, x8, x4
	stp	x9, x8, [x0]
	subs	x17, x17, x7
	sbc	x16, x16, x6
	cmn	x17, x7
	adcs	xzr, x16, x6
	cset	w6, hs
	subs	x3, x3, x20
	sbc	x2, x2, x19
	subs	x3, x3, x6
	sbc	x2, x2, xzr
	cmn	x9, x5
	adcs	xzr, x8, x4
	cset	w4, hs
	subs	x17, x17, x4
	sbc	x16, x16, xzr
	and	x5, x17, x16
	stp	x17, x16, [x0, #16]
	extr	x12, x13, x12, #1
	cmn	x5, #1
	cset	w5, eq
	extr	x13, x10, x13, #1
	and	w4, w4, w5
	subs	x3, x3, x4
	sbc	x2, x2, xzr
	extr	x10, x11, x10, #1
	extr	x11, x15, x11, #1
	stp	x3, x2, [x0, #32]
	extr	x15, x14, x15, #1
	lsr	x14, x14, #1
	b	LBB23_7
LBB23_9:
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #32             ; 16-byte Folded Reload
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
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x28, x27, [sp, #128]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
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
	ldp	x10, x16, [x0]
	ldp	x12, x11, [x0, #16]
	ldp	x13, x21, [x0, #32]
	ldp	x15, x14, [x1, #32]
	cmp	x13, x15
	cset	w9, hi
	cmp	x21, x14
	cset	w17, hi
	csel	w9, w9, w17, eq
	cmp	w9, #0
	csetm	w3, ne
	eor	x17, x21, x14
	eor	x2, x13, x15
	orr	x5, x2, x17
	mov	x2, x11
	ldp	x17, x11, [x1, #16]
	cmp	x12, x17
	cset	w4, hi
	cmp	x2, x11
	cset	w6, hi
	csel	w6, w4, w6, eq
	stp	x17, x11, [sp, #48]             ; 16-byte Folded Spill
	eor	x4, x2, x11
	eor	x7, x12, x17
	orr	x4, x7, x4
	cmp	x4, #0
	cset	w7, eq
	ldp	x27, x26, [x1]
	cmp	x10, x27
	cset	w19, hs
	cmp	x16, x26
	cset	w20, hs
	csel	w19, w19, w20, eq
	and	w7, w7, w19
	add	w6, w7, w6
	cmp	w6, w3
	cset	w3, ne
	cmp	x5, #0
	csel	w9, w3, w9, eq
	cmp	w9, #1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b.ne	LBB25_3
; %bb.1:
	mov	x30, x21
	orr	x9, x13, x21
	mov	x11, x12
	orr	x3, x12, x2
	cmp	x3, #0
	cset	w5, ne
	cmp	x9, #0
	mov	w3, #2
	csel	w9, w5, w3, eq
	add	x0, x0, w9, uxtw #4
	ldp	x6, x7, [x0]
	cmp	x7, #0
	cset	w19, ne
	lsl	w5, w19, #6
	mov	w0, #32
	mov	w20, #32
	bfi	w20, w19, #6, #1
	lsr	x19, x7, #32
	tst	x20, #0x40
	csel	x20, xzr, x19, ne
	lsr	x21, x6, #32
	bfi	x21, x7, #32, #32
	csel	x19, x19, x21, ne
	orr	x19, x19, x20
	cmp	x19, #0
	cset	w20, ne
	lsl	x19, x7, #1
	bfi	w5, w20, #5, #1
	orr	w20, w5, #0x10
	and	x21, x20, #0x30
	lsr	x22, x7, x21
	tst	x20, #0x40
	csel	x23, xzr, x22, ne
	lsr	x21, x6, x21
	mvn	x20, x20
	and	x20, x20, #0x3f
	lsl	x20, x19, x20
	orr	x20, x20, x21
	csel	x20, x22, x20, ne
	orr	x20, x20, x23
	cmp	x20, #0
	cset	w20, ne
	bfi	w5, w20, #4, #1
	orr	w20, w5, #0x8
	and	x21, x20, #0x38
	lsr	x22, x7, x21
	tst	x20, #0x40
	csel	x23, xzr, x22, ne
	lsr	x21, x6, x21
	mvn	x20, x20
	and	x20, x20, #0x3f
	lsl	x20, x19, x20
	orr	x20, x20, x21
	csel	x20, x22, x20, ne
	orr	x20, x20, x23
	cmp	x20, #0
	cset	w20, ne
	bfi	w5, w20, #3, #1
	orr	w20, w5, #0x4
	and	x21, x20, #0x3c
	lsr	x22, x7, x21
	tst	x20, #0x40
	csel	x23, xzr, x22, ne
	lsr	x21, x6, x21
	mvn	x20, x20
	and	x20, x20, #0x3f
	lsl	x20, x19, x20
	orr	x20, x20, x21
	csel	x20, x22, x20, ne
	orr	x20, x20, x23
	cmp	x20, #0
	cset	w20, ne
	bfi	w5, w20, #2, #1
	orr	w20, w5, #0x2
	lsr	x21, x7, x20
	tst	x20, #0x40
	csel	x22, xzr, x21, ne
	lsr	x23, x6, x20
	mvn	x20, x20
	and	x20, x20, #0x3f
	lsl	x20, x19, x20
	orr	x20, x20, x23
	csel	x20, x21, x20, ne
	orr	x20, x20, x22
	cmp	x20, #0
	cset	w20, ne
	bfi	w5, w20, #1, #1
	orr	w20, w5, #0x1
	lsr	x7, x7, x20
	tst	x20, #0x40
	csel	x21, xzr, x7, ne
	lsr	x6, x6, x20
	mvn	w20, w5
	and	x20, x20, #0x3e
	lsl	x19, x19, x20
	orr	x6, x19, x6
	csel	x6, x7, x6, ne
	orr	x6, x6, x21
	cmp	x6, #0
	cset	w6, ne
	orr	w5, w5, w6
	add	w9, w5, w9, lsl #7
	orr	x5, x15, x14
	ldp	x17, x12, [sp, #48]             ; 16-byte Folded Reload
	orr	x6, x17, x12
	cmp	x6, #0
	cset	w6, ne
	cmp	x5, #0
	csel	w3, w6, w3, eq
	add	x1, x1, w3, uxtw #4
	ldp	x5, x6, [x1]
	cmp	x6, #0
	cset	w7, ne
	lsl	w1, w7, #6
	bfi	w0, w7, #6, #1
	lsr	x7, x6, #32
	tst	x0, #0x40
	csel	x0, xzr, x7, ne
	lsr	x19, x5, #32
	bfi	x19, x6, #32, #32
	csel	x7, x7, x19, ne
	orr	x0, x7, x0
	cmp	x0, #0
	cset	w7, ne
	lsl	x0, x6, #1
	bfi	w1, w7, #5, #1
	orr	w7, w1, #0x10
	and	x19, x7, #0x30
	lsr	x20, x6, x19
	tst	x7, #0x40
	csel	x21, xzr, x20, ne
	lsr	x19, x5, x19
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x0, x7
	orr	x7, x7, x19
	csel	x7, x20, x7, ne
	orr	x7, x7, x21
	cmp	x7, #0
	cset	w7, ne
	bfi	w1, w7, #4, #1
	orr	w7, w1, #0x8
	and	x19, x7, #0x38
	lsr	x20, x6, x19
	tst	x7, #0x40
	csel	x21, xzr, x20, ne
	lsr	x19, x5, x19
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x0, x7
	orr	x7, x7, x19
	csel	x7, x20, x7, ne
	orr	x7, x7, x21
	cmp	x7, #0
	cset	w7, ne
	bfi	w1, w7, #3, #1
	orr	w7, w1, #0x4
	and	x19, x7, #0x3c
	lsr	x20, x6, x19
	tst	x7, #0x40
	csel	x21, xzr, x20, ne
	lsr	x19, x5, x19
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x0, x7
	orr	x7, x7, x19
	csel	x7, x20, x7, ne
	orr	x7, x7, x21
	cmp	x7, #0
	cset	w7, ne
	bfi	w1, w7, #2, #1
	orr	w7, w1, #0x2
	lsr	x19, x6, x7
	tst	x7, #0x40
	csel	x20, xzr, x19, ne
	lsr	x21, x5, x7
	mvn	x7, x7
	and	x7, x7, #0x3f
	lsl	x7, x0, x7
	orr	x7, x7, x21
	csel	x7, x19, x7, ne
	orr	x7, x7, x20
	cmp	x7, #0
	cset	w7, ne
	bfi	w1, w7, #1, #1
	orr	w7, w1, #0x1
	lsr	x6, x6, x7
	tst	x7, #0x40
	csel	x19, xzr, x6, ne
	lsr	x5, x5, x7
	mvn	w7, w1
	and	x7, x7, #0x3e
	lsl	x0, x0, x7
	orr	x0, x0, x5
	csel	x0, x6, x0, ne
	orr	x0, x0, x19
	cmp	x0, #0
	cset	w0, ne
	orr	w0, w1, w0
	add	w7, w0, w3, lsl #7
	sub	w0, w9, w7
	and	w3, w0, #0xffff
	cmp	w3, #128
	mov	x17, x13
	b.hs	LBB25_4
; %bb.2:
	mov	x0, #0
	mov	x6, #0
	mov	x5, #0
	mov	x1, #0
	lsr	x19, x15, #1
	mvn	w20, w3
	lsr	x19, x19, x20
	mov	x12, x14
	lsl	x21, x14, x3
	orr	x19, x21, x19
	and	w8, w9, #0xffff
	mov	w21, #128
	sub	w21, w21, w3
	mvn	w22, w21
	ldp	x14, x13, [sp, #48]             ; 16-byte Folded Reload
	lsr	x23, x14, x21
	lsl	x24, x13, #1
	lsl	x24, x24, x22
	orr	x23, x24, x23
	lsl	x24, x26, #1
	lsl	x22, x24, x22
	lsr	x24, x27, x21
	orr	x22, x22, x24
	lsr	x24, x13, x21
	tst	x21, #0x40
	csel	x23, x24, x23, ne
	csel	x24, xzr, x24, ne
	lsr	x21, x26, x21
	csel	x22, x21, x22, ne
	csel	x21, xzr, x21, ne
	cmp	w8, w7, uxth
	mov	x9, x15
	lsl	x8, x15, x3
	csel	x7, xzr, x23, eq
	csel	x23, xzr, x24, eq
	csel	x24, xzr, x22, eq
	csel	x21, xzr, x21, eq
	tst	x3, #0x40
	csel	x19, x8, x19, ne
	csel	x8, xzr, x8, ne
	orr	x28, x19, x23
	orr	x23, x8, x7
	lsr	x8, x14, #1
	lsr	x8, x8, x20
	lsl	x7, x13, x3
	orr	x8, x7, x8
	lsl	x7, x14, x3
	csel	x8, x7, x8, ne
	csel	x7, xzr, x7, ne
	orr	x25, x21, x8
	orr	x24, x24, x7
	lsr	x8, x27, #1
	lsr	x8, x8, x20
	mov	x13, x26
	lsl	x7, x26, x3
	mov	x26, x0
	orr	x8, x7, x8
	mov	x14, x27
	lsl	x7, x27, x3
	csel	x4, x7, x8, ne
	csel	x15, xzr, x7, ne
	mov	x7, x1
	mov	w8, #1
	lsl	x8, x8, x3
	mov	x3, x15
	csel	x21, x8, xzr, ne
	csel	x20, xzr, x8, ne
	b	LBB25_7
LBB25_3:
	stp	xzr, xzr, [sp, #104]            ; 16-byte Folded Spill
	mov	x8, #0
	str	xzr, [sp, #120]                 ; 8-byte Folded Spill
	mov	x30, #0
	mov	x22, #0
	mov	x19, x10
	mov	x0, x12
	mov	x17, x13
	mov	x1, x21
	b	LBB25_9
LBB25_4:
	mov	x9, x15
	mov	x12, x14
	and	w8, w3, #0x7f
	cmp	w3, #256
	b.hs	LBB25_6
; %bb.5:
	mov	x14, #0
	mov	x13, #0
	mov	x20, #0
	mov	x21, #0
	mov	x0, #0
	mov	x4, #0
	ldp	x1, x15, [sp, #48]              ; 16-byte Folded Reload
	lsr	x3, x1, #1
	mvn	w5, w8
	lsr	x3, x3, x5
	lsl	x6, x15, x8
	orr	x3, x6, x3
	mov	w6, #128
	sub	w6, w6, w8
	mvn	w22, w6
	lsl	x23, x26, #1
	lsl	x22, x23, x22
	lsr	x23, x27, x6
	orr	x22, x22, x23
	lsl	x23, x1, x8
	tst	x6, #0x40
	lsr	x6, x26, x6
	csel	x22, x6, x22, ne
	csel	x6, xzr, x6, ne
	cmp	w8, #0
	csel	x24, xzr, x22, eq
	csel	x6, xzr, x6, eq
	tst	x8, #0x40
	csel	x3, x23, x3, ne
	csel	x23, xzr, x23, ne
	orr	x28, x6, x3
	mov	x6, x13
	orr	x23, x24, x23
	lsr	x3, x27, #1
	lsr	x3, x3, x5
	mov	x13, x26
	lsl	x5, x26, x8
	mov	x26, x14
	orr	x3, x5, x3
	mov	x14, x27
	lsl	x5, x27, x8
	csel	x25, x5, x3, ne
	csel	x24, xzr, x5, ne
	mov	w3, #1
	lsl	x8, x3, x8
	mov	x3, x0
	csel	x7, x8, xzr, ne
	csel	x5, xzr, x8, ne
	b	LBB25_7
LBB25_6:
	mov	x5, #0
	mov	x7, #0
	mov	x20, #0
	mov	x21, #0
	mov	x24, #0
	mov	x25, #0
	mov	x3, #0
	mov	x4, #0
	mvn	w0, w8
	lsr	x1, x27, #1
	lsr	x0, x1, x0
	mov	x13, x26
	lsl	x1, x26, x8
	orr	x0, x1, x0
	mov	x14, x27
	lsl	x1, x27, x8
	tst	x8, #0x40
	csel	x28, x1, x0, ne
	csel	x23, xzr, x1, ne
	mov	w0, #1
	lsl	x8, x0, x8
	csel	x6, x8, xzr, ne
	csel	x26, xzr, x8, ne
LBB25_7:
	mov	x0, x11
	mov	x1, x30
	stp	x14, x13, [sp, #16]             ; 16-byte Folded Spill
	stp	x9, x12, [sp, #32]              ; 16-byte Folded Spill
	mov	x30, #0
	mov	x22, #0
	stp	xzr, xzr, [sp, #112]            ; 16-byte Folded Spill
	str	xzr, [sp, #104]                 ; 8-byte Folded Spill
	mov	x8, #0
	mov	x19, x10
	mov	x11, x20
	mov	x10, x21
	mov	x20, x4
LBB25_8:                                ; =>This Inner Loop Header: Depth=1
	stp	x1, x17, [sp, #64]              ; 16-byte Folded Spill
	stp	x7, x10, [sp, #80]              ; 16-byte Folded Spill
	str	x11, [sp, #96]                  ; 8-byte Folded Spill
	cmp	x17, x23
	cset	w4, hi
	cmp	x1, x28
	cset	w14, hi
	csel	w14, w4, w14, eq
	cmp	w14, #0
	csetm	w4, ne
	eor	x15, x17, x23
	eor	x17, x1, x28
	orr	x15, x15, x17
	cmp	x0, x24
	cset	w17, hi
	cmp	x2, x25
	mov	x1, x2
	cset	w2, hi
	csel	w17, w17, w2, eq
	eor	x2, x0, x24
	eor	x13, x1, x25
	orr	x13, x2, x13
	cmp	x13, #0
	cset	w13, eq
	cmp	x19, x3
	cset	w2, hs
	cmp	x16, x20
	mov	x21, x3
	mov	x3, x16
	cset	w16, hs
	csel	w16, w2, w16, eq
	and	w13, w16, w13
	add	w13, w13, w17
	cmp	w13, w4
	cset	w13, ne
	cmp	x15, #0
	csel	w13, w13, w14, eq
	cmp	w13, #0
	csel	x13, x10, xzr, ne
	csel	x14, x11, xzr, ne
	csel	x15, x7, xzr, ne
	csel	x16, x5, xzr, ne
	csel	x17, x6, xzr, ne
	csel	x2, x26, xzr, ne
	csel	x4, x20, xzr, ne
	csel	x9, x21, xzr, ne
	csel	x10, x25, xzr, ne
	csel	x11, x24, xzr, ne
	csel	x12, x28, xzr, ne
	mov	x7, x5
	mov	x5, x26
	mov	x26, x6
	csel	x6, x23, xzr, ne
	mov	x27, x30
	mov	x30, x8
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	adds	x2, x2, x8
	adc	x8, x17, x30
	mov	x30, x27
	ldr	x17, [sp, #120]                 ; 8-byte Folded Reload
	adds	x16, x16, x17
	ldr	x17, [sp, #112]                 ; 8-byte Folded Reload
	adcs	x15, x15, x17
	adcs	x17, x2, xzr
	cinc	x8, x8, hs
	adds	x30, x14, x27
	adcs	x22, x13, x22
	cset	w13, hs
	adcs	x14, x16, xzr
	mov	x16, x3
	mov	x3, x21
	cinc	x15, x15, hs
	stp	x15, x14, [sp, #112]            ; 16-byte Folded Spill
	orr	x14, x14, x15
	cmp	x14, #0
	cset	w14, eq
	and	w13, w13, w14
	adds	x13, x17, x13
	str	x13, [sp, #104]                 ; 8-byte Folded Spill
	cinc	x8, x8, hs
	subs	x19, x19, x9
	sbc	x16, x16, x4
	subs	x13, x0, x11
	sbc	x14, x1, x10
	cmn	x13, x11
	adcs	xzr, x14, x10
	cset	w10, hs
	ldp	x15, x11, [sp, #64]             ; 16-byte Folded Reload
	subs	x11, x11, x6
	mov	x6, x26
	mov	x26, x5
	mov	x5, x7
	sbc	x12, x15, x12
	ldp	x15, x21, [sp, #48]             ; 16-byte Folded Reload
	subs	x10, x11, x10
	sbc	x11, x12, xzr
	cmn	x19, x9
	adcs	xzr, x16, x4
	cset	w9, hs
	subs	x0, x13, x9
	sbc	x2, x14, xzr
	and	x12, x0, x2
	cmn	x12, #1
	cset	w12, eq
	and	w9, w9, w12
	subs	x17, x10, x9
	ldp	x10, x4, [sp, #32]              ; 16-byte Folded Reload
	eor	x9, x17, x10
	sbc	x1, x11, xzr
	cmp	x17, x10
	cset	w10, hi
	cmp	x1, x4
	cset	w11, hi
	csel	w10, w10, w11, eq
	cmp	w10, #0
	csetm	w11, ne
	cmp	x0, x15
	cset	w12, hi
	cmp	x2, x21
	cset	w13, hi
	csel	w12, w12, w13, eq
	eor	x13, x0, x15
	eor	x14, x2, x21
	orr	x13, x13, x14
	cmp	x13, #0
	cset	w13, eq
	ldp	x14, x15, [sp, #16]             ; 16-byte Folded Reload
	cmp	x19, x14
	cset	w14, hs
	cmp	x16, x15
	cset	w15, hs
	csel	w14, w14, w15, eq
	and	w13, w13, w14
	add	w12, w13, w12
	cmp	w12, w11
	eor	x11, x1, x4
	orr	x9, x9, x11
	cset	w11, ne
	cmp	x9, #0
	csel	w9, w11, w10, eq
	ldp	x10, x11, [sp, #88]             ; 16-byte Folded Reload
	extr	x3, x20, x3, #1
	extr	x21, x24, x20, #1
	extr	x24, x25, x24, #1
	extr	x25, x23, x25, #1
	extr	x23, x28, x23, #1
	extr	x11, x10, x11, #1
	extr	x20, x7, x10, #1
	ldr	x10, [sp, #80]                  ; 8-byte Folded Reload
	extr	x5, x10, x7, #1
	extr	x7, x26, x10, #1
	extr	x26, x6, x26, #1
	lsr	x28, x28, #1
	lsr	x6, x6, #1
	mov	x10, x20
	mov	x20, x21
	tbnz	w9, #0, LBB25_8
LBB25_9:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	stp	x30, x22, [x9]
	ldp	x10, x11, [sp, #112]            ; 16-byte Folded Reload
	stp	x11, x10, [x9, #16]
	ldr	x10, [sp, #104]                 ; 8-byte Folded Reload
	stp	x10, x8, [x9, #32]
	stp	x19, x16, [x9, #48]
	stp	x0, x2, [x9, #64]
	stp	x17, x1, [x9, #80]
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #224
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
	cbz	w8, LBB26_6
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
LBB26_2:                                ; =>This Inner Loop Header: Depth=1
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
	b.ne	LBB26_8
; %bb.7:
	mov	x0, x19
	add	sp, sp, #480
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB26_8:
	bl	___stack_chk_fail
LBB26_9:
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
	mov	w23, #2
Lloh43:
	adrp	x24, l_.str@PAGE
Lloh44:
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
	sub	sp, sp, #544
Lloh48:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh49:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh50:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
Lloh51:
	adrp	x8, _p23@PAGE
Lloh52:
	add	x8, x8, _p23@PAGEOFF
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #16]
	mov	w9, #1
	stp	x9, xzr, [x8]
	sub	x9, x29, #240
	add	x9, x9, #16
	mov	w10, #242
	mov	w11, #11664
LBB28_1:                                ; =>This Inner Loop Header: Depth=1
	stp	q0, q0, [x9]
	ldp	x13, x12, [x8]
	extr	x14, x12, x13, #63
	lsl	x13, x13, #1
	ldp	x15, x16, [x29, #-224]
	add	x12, x15, x12, lsr #63
	stp	x13, x14, [x29, #-240]
	ldp	x14, x13, [x8, #16]
	adds	x15, x12, x14, lsl #1
	lsr	x14, x14, #63
	adc	x14, x14, x16
	lsr	x16, x13, #63
	adds	x13, x14, x13, lsl #1
	ldp	x14, x17, [x29, #-208]
	adc	x14, x14, x16
	stp	x12, x13, [x29, #-224]
	ldp	x12, x13, [x8, #32]
	extr	x13, x13, x12, #63
	adds	x12, x14, x12, lsl #1
	adc	x13, x17, x13
	stur	x15, [x29, #-224]
	stp	x12, x13, [x29, #-208]
	ldur	q1, [x29, #-240]
	str	q1, [x8, #11664]
	ldur	q1, [x29, #-224]
	str	q1, [x8, #11680]
	ldur	q1, [x29, #-208]
	str	q1, [x8, #11696]
	add	x8, x8, x11
	subs	x10, x10, #1
	b.ne	LBB28_1
; %bb.2:
	mov	x8, #0
	sub	x9, x29, #240
	add	x9, x9, #16
Lloh53:
	adrp	x23, _p23@PAGE
Lloh54:
	add	x23, x23, _p23@PAGEOFF
	movi.2d	v0, #0000000000000000
	mov	w10, #3
	mov	w11, #11664
	mov	x12, x23
LBB28_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_4 Depth 2
	mov	x13, #-11616
LBB28_4:                                ;   Parent Loop BB28_3 Depth=1
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
	ldp	x17, x1, [x29, #-224]
	adc	x17, x17, x0
	stp	x16, x15, [x29, #-240]
	ldr	x15, [x14, #11640]
	ldr	x16, [x14, #11632]
	umulh	x0, x16, x10
	add	x16, x16, x16, lsl #1
	adds	x16, x16, x17
	adc	x0, x0, x1
	umulh	x1, x15, x10
	add	x15, x15, x15, lsl #1
	adds	x15, x0, x15
	ldp	x0, x2, [x29, #-208]
	adc	x0, x0, x1
	stp	x17, x15, [x29, #-224]
	ldr	x15, [x14, #11656]
	ldr	x17, [x14, #11648]
	umulh	x1, x17, x10
	add	x15, x15, x15, lsl #1
	add	x15, x1, x15
	add	x17, x17, x17, lsl #1
	adds	x17, x0, x17
	adc	x15, x2, x15
	stur	x16, [x29, #-224]
	stp	x17, x15, [x29, #-208]
	ldur	q1, [x29, #-240]
	str	q1, [x14, #11664]
	ldur	q1, [x29, #-224]
	str	q1, [x14, #11680]
	ldur	q1, [x29, #-208]
	str	q1, [x14, #11696]
	adds	x13, x13, #48
	b.ne	LBB28_4
; %bb.5:                                ;   in Loop: Header=BB28_3 Depth=1
	add	x8, x8, #1
	add	x12, x12, x11
	cmp	x8, #243
	b.ne	LBB28_3
; %bb.6:
	mov	x8, #0
Lloh55:
	adrp	x9, _p23@PAGE+48
Lloh56:
	add	x9, x9, _p23@PAGEOFF+48
	mov	w10, #1
	mov	w11, #11664
	mov	x12, #-11616
Lloh57:
	adrp	x13, _pp23@PAGE+11664
Lloh58:
	add	x13, x13, _pp23@PAGEOFF+11664
LBB28_7:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_8 Depth 2
	madd	x14, x10, x11, x23
	add	x1, x14, x12
	ldp	x15, x14, [x1]
	ldp	x17, x16, [x1, #16]
	ldp	x1, x0, [x1, #32]
	mov	x2, x13
	mov	x3, x9
	mov	x4, x8
LBB28_8:                                ;   Parent Loop BB28_7 Depth=1
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
	b.ne	LBB28_8
; %bb.9:                                ;   in Loop: Header=BB28_7 Depth=1
	add	x10, x10, #1
	add	x8, x8, #1
	add	x9, x9, x11
	add	x13, x13, x11
	cmp	x10, #243
	b.ne	LBB28_7
; %bb.10:
	mov	w8, #0
	add	x9, sp, #288
	add	x9, x9, #16
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	add	x9, sp, #336
	add	x9, x9, #16
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	mov	w25, #48
	mov	w26, #11664
	movi.2d	v0, #0000000000000000
	str	x23, [sp, #40]                  ; 8-byte Folded Spill
LBB28_11:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_13 Depth 2
	mov	x27, #0
	mov	x24, #0
	and	x8, x8, #0xffff
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	madd	x8, x8, x25, x23
	ldp	q2, q1, [x8]
	stp	q2, q1, [x29, #-240]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldr	q1, [x8, #32]
	stur	q1, [x29, #-208]
	ldp	x8, x9, [x29, #-224]
	ldp	x6, x7, [x29, #-240]
	mov	w28, #128
	ldp	x10, x11, [x29, #-208]
	b	LBB28_13
LBB28_12:                               ;   in Loop: Header=BB28_13 Depth=2
	ldr	w28, [sp, #60]                  ; 4-byte Folded Reload
	mov	w10, w28
	ldp	x11, x17, [sp, #272]            ; 16-byte Folded Reload
	lsr	x11, x11, x24
	mvn	w13, w24
	lsl	x14, x1, #1
	lsl	x14, x14, x13
	orr	x11, x14, x11
	mvn	w14, w28
	lsr	x15, x17, #1
	lsr	x15, x15, x14
	lsl	x16, x6, x10
	orr	x15, x16, x15
	lsl	x16, x17, x10
	tst	x10, #0x40
	csel	x15, x16, x15, ne
	csel	x16, xzr, x16, ne
	lsr	x9, x9, x14
	lsl	x14, x5, x10
	orr	x9, x14, x9
	lsl	x10, x20, x10
	csel	x9, x10, x9, ne
	csel	x10, xzr, x10, ne
	lsr	x14, x1, x24
	ldr	x27, [sp, #64]                  ; 8-byte Folded Reload
	cmp	x27, #0
	csel	x15, xzr, x15, eq
	csel	x16, xzr, x16, eq
	csel	x9, xzr, x9, eq
	csel	x10, xzr, x10, eq
	tst	x24, #0x40
	csel	x11, x14, x11, ne
	csel	x14, xzr, x14, ne
	orr	x7, x14, x15
	mov	x14, x6
	orr	x6, x11, x16
	lsr	x11, x17, x24
	lsl	x8, x8, x13
	orr	x8, x8, x11
	lsr	x11, x14, x24
	csel	x8, x11, x8, ne
	csel	x11, xzr, x11, ne
	orr	x9, x11, x9
	orr	x8, x8, x10
	lsr	x10, x20, x24
	lsl	x11, x12, x13
	orr	x10, x11, x10
	lsr	x11, x5, x24
	csel	x10, x11, x10, ne
	csel	x11, xzr, x11, ne
Lloh59:
	adrp	x23, _p23@PAGE
Lloh60:
	add	x23, x23, _p23@PAGEOFF
	mov	w25, #48
	mov	w26, #11664
	add	x24, x24, #1
	add	x27, x27, x26
	sub	w28, w28, #1
	cmp	x24, #243
	b.eq	LBB28_33
LBB28_13:                               ;   Parent Loop BB28_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x24, #128
	b.hs	LBB28_15
; %bb.14:                               ;   in Loop: Header=BB28_13 Depth=2
	mov	w12, w28
	lsl	x11, x11, x24
	mvn	w13, w24
	lsr	x14, x10, #1
	lsr	x14, x14, x13
	orr	x11, x11, x14
	lsr	x14, x8, x12
	mvn	w15, w28
	lsl	x16, x9, #1
	lsl	x16, x16, x15
	orr	x14, x16, x14
	tst	x12, #0x40
	lsr	x16, x9, x12
	csel	x14, x16, x14, ne
	csel	x16, xzr, x16, ne
	lsr	x17, x6, x12
	lsl	x0, x7, #1
	lsl	x15, x0, x15
	orr	x15, x15, x17
	lsr	x12, x7, x12
	csel	x15, x12, x15, ne
	csel	x12, xzr, x12, ne
	cmp	x27, #0
	csel	x14, xzr, x14, eq
	lsl	x10, x10, x24
	csel	x16, xzr, x16, eq
	csel	x15, xzr, x15, eq
	csel	x12, xzr, x12, eq
	tst	x24, #0x40
	csel	x11, x10, x11, ne
	csel	x10, xzr, x10, ne
	orr	x30, x16, x11
	orr	x20, x14, x10
	lsl	x9, x9, x24
	lsr	x10, x8, #1
	lsr	x10, x10, x13
	orr	x9, x9, x10
	lsl	x8, x8, x24
	csel	x9, x8, x9, ne
	csel	x8, xzr, x8, ne
	orr	x12, x12, x9
	orr	x8, x15, x8
	str	x8, [sp, #280]                  ; 8-byte Folded Spill
	lsl	x8, x7, x24
	lsr	x9, x6, #1
	lsr	x9, x9, x13
	orr	x8, x8, x9
	lsl	x9, x6, x24
	csel	x2, x9, x8, ne
	csel	x8, xzr, x9, ne
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	b	LBB28_16
LBB28_15:                               ;   in Loop: Header=BB28_13 Depth=2
	str	xzr, [sp, #272]                 ; 8-byte Folded Spill
	mov	x2, #0
	ands	w10, w24, #0x7f
	mov	w11, #128
	sub	w10, w11, w10
	mvn	w11, w10
	lsr	x12, x7, x10
	tst	x10, #0x40
	csel	x13, xzr, x12, ne
	lsr	x10, x6, x10
	lsl	x14, x7, #1
	lsl	x11, x14, x11
	orr	x10, x11, x10
	csel	x10, x12, x10, ne
	ands	w11, w24, #0x7f
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
	orr	x30, x12, x9
	csel	x8, xzr, x8, ne
	orr	x20, x10, x8
	lsr	x8, x6, #1
	lsr	x8, x8, x14
	lsl	x9, x7, x11
	orr	x8, x9, x8
	lsl	x9, x6, x11
	csel	x12, x9, x8, ne
	csel	x8, xzr, x9, ne
	str	x8, [sp, #280]                  ; 8-byte Folded Spill
LBB28_16:                               ;   in Loop: Header=BB28_13 Depth=2
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	add	x8, x10, x27
	mov	w9, #11696
	add	x8, x8, x9
	add	x21, x10, x27
	prfm	pldl1keep, [x8]
	ldp	x8, x9, [x21, #32]
	eor	x9, x30, x9
	eor	x8, x20, x8
	orr	x8, x8, x9
	cbnz	x8, LBB28_34
; %bb.17:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [x21, #16]
	ldr	x10, [sp, #280]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x12, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_34
; %bb.18:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [x21]
	ldr	x10, [sp, #272]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x2, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_34
; %bb.19:                               ;   in Loop: Header=BB28_13 Depth=2
	add	x8, x23, x27
	add	x8, x8, x26
	add	x21, x23, x27
	ldp	x9, x6, [sp, #24]               ; 16-byte Folded Reload
	stp	q0, q0, [x9]
	prfm	pldl1keep, [x8]
	ldp	x11, x10, [x21]
	str	x12, [sp, #264]                 ; 8-byte Folded Spill
	ldp	x9, x8, [x6]
	umulh	x12, x9, x11
	mul	x13, x9, x11
	umulh	x14, x9, x10
	mul	x15, x9, x10
	umulh	x16, x8, x11
	mul	x17, x8, x11
	adds	x12, x12, x17
	ldp	x17, x0, [sp, #304]
	adc	x16, x17, x16
	adds	x12, x12, x15
	cinc	x15, x16, hs
	stp	x13, x12, [sp, #288]
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
	str	x2, [sp, #256]                  ; 8-byte Folded Spill
	umulh	x2, x14, x11
	mul	x3, x14, x11
	adds	x16, x16, x3
	ldp	x3, x4, [sp, #320]
	adc	x2, x3, x2
	adds	x16, x16, x1
	cinc	x1, x2, hs
	stp	x17, x16, [sp, #304]
	umulh	x2, x14, x10
	mul	x3, x14, x10
	ldp	x6, x5, [x6, #32]
	umulh	x7, x6, x11
	madd	x10, x6, x10, x7
	madd	x10, x5, x11, x10
	mul	x11, x6, x11
	ldp	x6, x5, [x21, #16]
	umulh	x7, x6, x9
	mul	x19, x5, x9
	str	x20, [sp, #240]                 ; 8-byte Folded Spill
	umulh	x20, x6, x8
	mul	x22, x6, x8
	adds	x19, x19, x22
	cinc	x20, x20, hs
	adds	x7, x19, x7
	cinc	x19, x20, hs
	ldr	x20, [sp, #240]                 ; 8-byte Folded Reload
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
	ldp	x2, x17, [sp, #256]             ; 16-byte Folded Reload
	adds	x10, x10, x13
	adcs	x11, x7, x12
	stp	x10, x11, [sp, #304]
	ldp	x16, x13, [x21, #32]
	mul	x12, x16, x9
	adcs	x14, x14, xzr
	cinc	x15, x15, hs
	adds	x12, x14, x12
	umulh	x14, x16, x9
	madd	x8, x16, x8, x14
	madd	x8, x13, x9, x8
	adc	x8, x15, x8
	stp	x1, x8, [sp, #320]
	str	x12, [sp, #320]
	ldp	x9, x13, [sp, #288]
	eor	x13, x2, x13
	ldr	x14, [sp, #272]                 ; 8-byte Folded Reload
	eor	x9, x14, x9
	orr	x9, x9, x13
	cbnz	x9, LBB28_37
; %bb.20:                               ;   in Loop: Header=BB28_13 Depth=2
	ldr	x9, [sp, #280]                  ; 8-byte Folded Reload
	eor	x9, x9, x10
	eor	x10, x17, x11
	orr	x9, x9, x10
	cbnz	x9, LBB28_37
; %bb.21:                               ;   in Loop: Header=BB28_13 Depth=2
	eor	x9, x20, x12
	eor	x8, x30, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_37
; %bb.22:                               ;   in Loop: Header=BB28_13 Depth=2
	str	w28, [sp, #60]                  ; 4-byte Folded Spill
	str	x27, [sp, #64]                  ; 8-byte Folded Spill
	ubfx	x8, x24, #1, #31
	umaddl	x16, w8, w26, x23
	add	w8, w24, #1
	lsr	w8, w8, #1
	umaddl	x8, w8, w26, x23
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	madd	x12, x9, x25, x8
	ldr	x8, [sp, #248]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x14, x8, [x16]
	ldp	x23, x21, [x12]
	umulh	x10, x23, x14
	umulh	x13, x23, x8
	mul	x11, x23, x8
	umulh	x9, x21, x14
	mul	x15, x21, x14
	stp	x15, x11, [sp, #176]            ; 16-byte Folded Spill
	adds	x25, x11, x15
	stp	x13, x9, [sp, #200]             ; 16-byte Folded Spill
	cinc	x6, x9, hs
	stp	x10, x24, [sp, #224]            ; 16-byte Folded Spill
	adds	x9, x25, x10
	ldp	x10, x11, [sp, #352]
	adc	x10, x6, x10
	str	x9, [sp, #344]
	umulh	x9, x21, x8
	mul	x15, x21, x8
	adds	x26, x13, x15
	str	x9, [sp, #160]                  ; 8-byte Folded Spill
	cinc	x27, x9, hs
	adds	x17, x26, x10
	adc	x0, x27, x11
	ldp	x3, x1, [x12, #16]
	umulh	x9, x3, x14
	mul	x11, x3, x8
	umulh	x10, x1, x14
	mul	x13, x1, x14
	mov	x2, x30
	str	x11, [sp, #168]                 ; 8-byte Folded Spill
	stp	x15, x13, [sp, #144]            ; 16-byte Folded Spill
	adds	x30, x11, x13
	str	x10, [sp, #192]                 ; 8-byte Folded Spill
	cinc	x28, x10, hs
	str	x9, [sp, #216]                  ; 8-byte Folded Spill
	adds	x4, x30, x9
	ldp	x11, x9, [x12, #32]
	str	x12, [sp, #16]                  ; 8-byte Folded Spill
	umulh	x10, x11, x14
	madd	x10, x11, x8, x10
	madd	x5, x9, x14, x10
	ldp	x9, x19, [sp, #368]
	adc	x12, x28, x9
	str	x4, [sp, #360]
	umulh	x10, x3, x8
	umulh	x9, x1, x8
	mul	x8, x1, x8
	mul	x7, x11, x14
	stp	x10, x8, [sp, #96]              ; 16-byte Folded Spill
	adds	x11, x10, x8
	stp	x7, x9, [sp, #112]              ; 16-byte Folded Spill
	cinc	x22, x9, hs
	ldp	x8, x9, [x16, #16]
	umulh	x20, x8, x23
	mul	x13, x9, x23
	umulh	x10, x8, x21
	mul	x15, x8, x21
	stp	x15, x13, [sp, #72]             ; 16-byte Folded Spill
	adds	x13, x13, x15
	stp	x10, x5, [sp, #128]             ; 16-byte Folded Spill
	cinc	x15, x10, hs
	str	x20, [sp, #88]                  ; 8-byte Folded Spill
	adds	x10, x13, x20
	cinc	x15, x15, hs
	adds	x13, x7, x11
	adc	x11, x5, x22
	adds	x20, x13, x12
	adc	x7, x11, x19
	mul	x19, x3, x14
	adds	x24, x19, x17
	adcs	x5, x4, x0
	umulh	x17, x8, x3
	madd	x17, x8, x1, x17
	madd	x4, x9, x3, x17
	umulh	x22, x9, x23
	umulh	x0, x9, x21
	mul	x1, x9, x21
	mul	x3, x8, x3
	adcs	x9, x20, xzr
	ldr	x20, [sp, #240]                 ; 8-byte Folded Reload
	cinc	x17, x7, hs
	adds	x9, x9, x3
	adc	x17, x17, x4
	adds	x9, x9, x1
	adc	x17, x17, x0
	adds	x9, x9, x22
	cinc	x7, x17, hs
	adds	x9, x9, x15
	mul	x17, x8, x23
	cinc	x8, x7, hs
	adds	x15, x17, x24
	adcs	x10, x10, x5
	stp	x19, x10, [sp, #352]
	str	x15, [sp, #352]
	ldp	x10, x5, [x16, #32]
	umulh	x15, x10, x23
	madd	x15, x10, x21, x15
	str	x16, [sp, #8]                   ; 8-byte Folded Spill
	madd	x21, x5, x23, x15
	mul	x14, x23, x14
	mul	x23, x10, x23
	adcs	x9, x9, xzr
	cinc	x8, x8, hs
	adds	x9, x9, x23
	adc	x8, x8, x21
	stp	x12, x8, [sp, #368]
	str	x9, [sp, #368]
	str	x14, [sp, #336]
	ldp	q3, q1, [sp, #336]
	ldr	q2, [sp, #368]
	str	q2, [sp, #320]
	ldp	x9, x8, [sp, #320]
	mov	x7, x2
	eor	x8, x2, x8
	ldr	x2, [sp, #256]                  ; 8-byte Folded Reload
	eor	x9, x20, x9
	orr	x8, x9, x8
	stp	q3, q1, [sp, #288]
	cbnz	x8, LBB28_39
; %bb.23:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [sp, #304]
	ldr	x10, [sp, #280]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	ldr	x10, [sp, #264]                 ; 8-byte Folded Reload
	eor	x8, x10, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_39
; %bb.24:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [sp, #288]
	ldr	x10, [sp, #272]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x2, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_39
; %bb.25:                               ;   in Loop: Header=BB28_13 Depth=2
	ldr	x8, [sp, #248]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x24, x16, [sp, #216]            ; 16-byte Folded Reload
	adds	x8, x25, x16
	ldp	x9, x10, [sp, #352]
	adc	x9, x6, x9
	stp	x14, x8, [sp, #336]
	adds	x8, x9, x26
	adc	x10, x10, x27
	adds	x12, x30, x24
	ldp	x15, x5, [sp, #368]
	adc	x15, x28, x15
	adds	x13, x13, x15
	adc	x11, x11, x5
	adds	x8, x19, x8
	adcs	x10, x12, x10
	stp	x9, x10, [sp, #352]
	adcs	x9, x13, xzr
	cinc	x10, x11, hs
	str	x8, [sp, #352]
	stp	x9, x10, [sp, #368]
	ldp	q1, q2, [sp, #336]
	ldr	q3, [sp, #368]
	stp	q2, q3, [sp, #304]
	str	q1, [sp, #288]
	ldp	x8, x9, [sp, #320]
	mov	x5, x7
	eor	x9, x7, x9
	eor	x8, x20, x8
	orr	x8, x8, x9
	ldr	x6, [sp, #264]                  ; 8-byte Folded Reload
	cbnz	x8, LBB28_41
; %bb.26:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [sp, #304]
	ldr	x10, [sp, #280]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x6, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_41
; %bb.27:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [sp, #288]
	ldr	x10, [sp, #272]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x2, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_41
; %bb.28:                               ;   in Loop: Header=BB28_13 Depth=2
	ldr	x8, [sp, #248]                  ; 8-byte Folded Reload
	stp	q0, q0, [x8]
	ldp	x9, x8, [sp, #176]              ; 16-byte Folded Reload
	adds	x8, x9, x8
	ldr	x9, [sp, #200]                  ; 8-byte Folded Reload
	cinc	x9, x9, hs
	adds	x8, x8, x16
	ldp	x10, x11, [sp, #352]
	adc	x9, x9, x10
	stp	x14, x8, [sp, #336]
	ldr	x8, [sp, #208]                  ; 8-byte Folded Reload
	ldp	x10, x15, [sp, #144]            ; 16-byte Folded Reload
	adds	x8, x8, x10
	ldr	x10, [sp, #160]                 ; 8-byte Folded Reload
	cinc	x10, x10, hs
	adds	x8, x8, x9
	adc	x10, x10, x11
	ldp	x12, x11, [sp, #72]             ; 16-byte Folded Reload
	adds	x11, x12, x11
	cinc	x12, x22, hs
	ldr	x13, [sp, #88]                  ; 8-byte Folded Reload
	adds	x11, x11, x13
	ldp	x13, x14, [sp, #368]
	adc	x12, x12, x13
	ldr	x13, [sp, #168]                 ; 8-byte Folded Reload
	adds	x13, x15, x13
	ldp	x15, x2, [sp, #96]              ; 16-byte Folded Reload
	cinc	x15, x15, hs
	adds	x13, x13, x24
	cinc	x15, x15, hs
	ldr	x16, [sp, #192]                 ; 8-byte Folded Reload
	adds	x16, x16, x2
	ldp	x7, x2, [sp, #112]              ; 16-byte Folded Reload
	cinc	x2, x2, hs
	adds	x16, x16, x7
	ldr	x7, [sp, #136]                  ; 8-byte Folded Reload
	adc	x2, x2, x7
	adds	x16, x16, x3
	adc	x2, x2, x4
	adds	x16, x16, x1
	adc	x0, x2, x0
	ldr	x1, [sp, #256]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #128]                  ; 8-byte Folded Reload
	adds	x16, x16, x2
	cinc	x0, x0, hs
	adds	x16, x16, x23
	adc	x0, x0, x21
	adds	x16, x16, x12
	adc	x14, x0, x14
	stp	x9, x11, [sp, #352]
	adds	x8, x17, x8
	adcs	x9, x11, x10
	adcs	x10, x16, xzr
	cinc	x11, x14, hs
	adds	x10, x10, x15
	cinc	x11, x11, hs
	adds	x8, x19, x8
	adcs	x9, x13, x9
	stp	x17, x9, [sp, #352]
	str	x12, [sp, #368]
	str	x8, [sp, #352]
	adcs	x8, x10, xzr
	cinc	x9, x11, hs
	stp	x8, x9, [sp, #368]
	ldp	q3, q1, [sp, #336]
	ldr	q2, [sp, #368]
	str	q2, [sp, #320]
	ldp	x8, x9, [sp, #320]
	eor	x9, x5, x9
	eor	x8, x20, x8
	orr	x8, x8, x9
	stp	q3, q1, [sp, #288]
	ldr	x24, [sp, #232]                 ; 8-byte Folded Reload
	cbnz	x8, LBB28_43
; %bb.29:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [sp, #304]
	ldr	x10, [sp, #280]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x6, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_43
; %bb.30:                               ;   in Loop: Header=BB28_13 Depth=2
	ldp	x9, x8, [sp, #288]
	ldr	x10, [sp, #272]                 ; 8-byte Folded Reload
	eor	x9, x10, x9
	eor	x8, x1, x8
	orr	x8, x9, x8
	cbnz	x8, LBB28_43
; %bb.31:                               ;   in Loop: Header=BB28_13 Depth=2
	lsr	x9, x20, #1
	lsl	x8, x6, #1
	lsl	x12, x5, #1
	cmp	x24, #128
	b.lo	LBB28_12
; %bb.32:                               ;   in Loop: Header=BB28_13 Depth=2
	mov	x10, #0
	mov	x11, #0
	ands	w13, w24, #0x7f
	mov	w14, #128
	sub	w13, w14, w13
	mvn	w14, w13
	lsl	x15, x20, x13
	tst	x13, #0x40
	lsr	x9, x9, x14
	csel	x14, xzr, x15, ne
	lsl	x13, x5, x13
	orr	x9, x13, x9
	csel	x9, x15, x9, ne
	ands	w13, w24, #0x7f
	ldr	x15, [sp, #280]                 ; 8-byte Folded Reload
	lsr	x15, x15, x13
	mvn	w16, w13
	lsl	x8, x8, x16
	orr	x8, x8, x15
	lsr	x15, x6, x13
	csel	x9, xzr, x9, eq
	csel	x14, xzr, x14, eq
	tst	x13, #0x40
	csel	x8, x15, x8, ne
	csel	x15, xzr, x15, ne
	orr	x6, x8, x14
	orr	x7, x15, x9
	lsr	x8, x20, x13
	lsl	x9, x12, x16
	orr	x8, x9, x8
	lsr	x9, x5, x13
	csel	x8, x9, x8, ne
	csel	x9, xzr, x9, ne
Lloh61:
	adrp	x23, _p23@PAGE
Lloh62:
	add	x23, x23, _p23@PAGEOFF
	mov	w25, #48
	mov	w26, #11664
	ldr	x27, [sp, #64]                  ; 8-byte Folded Reload
	ldr	w28, [sp, #60]                  ; 4-byte Folded Reload
	add	x24, x24, #1
	add	x27, x27, x26
	sub	w28, w28, #1
	cmp	x24, #243
	b.ne	LBB28_13
LBB28_33:                               ;   in Loop: Header=BB28_11 Depth=1
	ldp	x10, x9, [sp, #40]              ; 16-byte Folded Reload
	add	w8, w9, #1
	add	x10, x10, #48
	str	x10, [sp, #40]                  ; 8-byte Folded Spill
	cmp	w9, #242
	b.lo	LBB28_11
	b	LBB28_47
LBB28_34:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	stp	x8, x12, [x29, #-224]
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	stp	x8, x2, [x29, #-240]
	stp	x20, x30, [x29, #-208]
Lloh63:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh64:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh65:
	adrp	x1, l_.str.3@PAGE
Lloh66:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #13
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh67:
	adrp	x19, l_.str.4@PAGE
Lloh68:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w24, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	sub	x1, x29, #240
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #288
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp28:
Lloh69:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh70:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #288
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp29:
; %bb.35:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp30:
	mov	w1, #10
	blr	x8
Ltmp31:
; %bb.36:
	mov	x20, x0
	add	x0, sp, #288
	b	LBB28_46
LBB28_37:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	stp	x8, x17, [x29, #-224]
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	stp	x8, x2, [x29, #-240]
	stp	x20, x30, [x29, #-208]
Lloh71:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh72:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh73:
	adrp	x1, l_.str.5@PAGE
Lloh74:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #11
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh75:
	adrp	x19, l_.str.4@PAGE
Lloh76:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w24, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #288
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	sub	x1, x29, #240
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #336
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp33:
Lloh77:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh78:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #336
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp34:
; %bb.38:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp35:
	mov	w1, #10
	blr	x8
Ltmp36:
	b	LBB28_45
LBB28_39:
	ldr	x9, [sp, #280]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #264]                  ; 8-byte Folded Reload
	stp	x9, x8, [x29, #-224]
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	stp	x8, x2, [x29, #-240]
	stp	x20, x7, [x29, #-208]
Lloh79:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh80:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh81:
	adrp	x1, l_.str.6@PAGE
Lloh82:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh83:
	adrp	x19, l_.str.4@PAGE
Lloh84:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [sp, #232]                  ; 8-byte Folded Reload
	and	w1, w8, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #288
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	sub	x1, x29, #240
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #336
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp38:
Lloh85:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh86:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #336
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp39:
; %bb.40:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp40:
	mov	w1, #10
	blr	x8
Ltmp41:
	b	LBB28_45
LBB28_41:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	stp	x8, x6, [x29, #-224]
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	stp	x8, x2, [x29, #-240]
	stp	x20, x5, [x29, #-208]
Lloh87:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh88:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh89:
	adrp	x1, l_.str.7@PAGE
Lloh90:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #15
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh91:
	adrp	x19, l_.str.4@PAGE
Lloh92:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [sp, #232]                  ; 8-byte Folded Reload
	and	w1, w8, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #288
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	sub	x1, x29, #240
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #336
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp43:
Lloh93:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh94:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #336
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp44:
; %bb.42:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp45:
	mov	w1, #10
	blr	x8
Ltmp46:
	b	LBB28_45
LBB28_43:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	stp	x8, x6, [x29, #-224]
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	stp	x8, x1, [x29, #-240]
	stp	x20, x5, [x29, #-208]
Lloh95:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh96:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh97:
	adrp	x1, l_.str.8@PAGE
Lloh98:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Lloh99:
	adrp	x19, l_.str.4@PAGE
Lloh100:
	add	x19, x19, l_.str.4@PAGEOFF
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	and	w1, w24, #0xffff
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x1, sp, #288
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	sub	x1, x29, #240
	bl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK11__uint384_t
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #336
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp48:
Lloh101:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh102:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #336
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp49:
; %bb.44:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp50:
	mov	w1, #10
	blr	x8
Ltmp51:
LBB28_45:
	mov	x20, x0
	add	x0, sp, #336
LBB28_46:
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
LBB28_47:
	ldur	x8, [x29, #-96]
Lloh103:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh104:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh105:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB28_49
; %bb.48:
	mov	w0, #0
	add	sp, sp, #544
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB28_49:
	bl	___stack_chk_fail
LBB28_50:
Ltmp52:
	b	LBB28_54
LBB28_51:
Ltmp47:
	b	LBB28_54
LBB28_52:
Ltmp42:
	b	LBB28_54
LBB28_53:
Ltmp37:
LBB28_54:
	mov	x19, x0
	add	x0, sp, #336
	b	LBB28_56
LBB28_55:
Ltmp32:
	mov	x19, x0
	add	x0, sp, #288
LBB28_56:
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpLdrGotLdr	Lloh48, Lloh49, Lloh50
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpLdrGot	Lloh63, Lloh64
	.loh AdrpLdrGot	Lloh77, Lloh78
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpLdrGot	Lloh71, Lloh72
	.loh AdrpLdrGot	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpLdrGot	Lloh79, Lloh80
	.loh AdrpLdrGot	Lloh93, Lloh94
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpLdrGot	Lloh87, Lloh88
	.loh AdrpLdrGot	Lloh101, Lloh102
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpLdrGot	Lloh95, Lloh96
	.loh AdrpLdrGotLdr	Lloh103, Lloh104, Lloh105
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
	.uleb128 Ltmp28-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp28
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp31-Ltmp28                  ;   Call between Ltmp28 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin5            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Ltmp33-Ltmp31                  ;   Call between Ltmp31 and Ltmp33
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin5            ; >> Call Site 4 <<
	.uleb128 Ltmp36-Ltmp33                  ;   Call between Ltmp33 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin5            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin5            ; >> Call Site 5 <<
	.uleb128 Ltmp38-Ltmp36                  ;   Call between Ltmp36 and Ltmp38
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin5            ; >> Call Site 6 <<
	.uleb128 Ltmp41-Ltmp38                  ;   Call between Ltmp38 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin5            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin5            ; >> Call Site 7 <<
	.uleb128 Ltmp43-Ltmp41                  ;   Call between Ltmp41 and Ltmp43
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin5            ; >> Call Site 8 <<
	.uleb128 Ltmp46-Ltmp43                  ;   Call between Ltmp43 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin5            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin5            ; >> Call Site 9 <<
	.uleb128 Ltmp48-Ltmp46                  ;   Call between Ltmp46 and Ltmp48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin5            ; >> Call Site 10 <<
	.uleb128 Ltmp51-Ltmp48                  ;   Call between Ltmp48 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin5            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin5            ; >> Call Site 11 <<
	.uleb128 Lfunc_end5-Ltmp51              ;   Call between Ltmp51 and Lfunc_end5
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
Lloh106:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh107:
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
	.loh AdrpLdrGot	Lloh106, Lloh107
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
Lloh108:
	adrp	x0, l_.str.9@PAGE
Lloh109:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.loh AdrpAdd	Lloh108, Lloh109
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
Lloh110:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh111:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh112:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh113:
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
	.loh AdrpLdrGot	Lloh112, Lloh113
	.loh AdrpLdrGot	Lloh110, Lloh111
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
Lloh114:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh115:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh114, Lloh115
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"0123456789ABCDEF"

l_.str.1:                               ; @.str.1
	.asciz	"-"

	.globl	_p23                            ; @p23
.zerofill __DATA,__common,_p23,2834352,4
	.globl	_pp23                           ; @pp23
.zerofill __DATA,__common,_pp23,2834352,4
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
