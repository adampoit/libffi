; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	g:\php-sdk\lib_builds\vc9\x86\libffi-3.0.11\src\prep_cif.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

; Function compile flags: /Ogtpy
;	COMDAT _initialize_aggregate
_TEXT	SEGMENT
_arg$ = 8						; size = 4
_initialize_aggregate PROC				; COMDAT
; File g:\php-sdk\lib_builds\vc9\x86\libffi-3.0.11\src\prep_cif.c
; Line 38
	push	esi
; Line 41
	mov	esi, DWORD PTR _arg$[esp]
	push	edi
	test	esi, esi
	je	SHORT $LN10@initialize
	mov	edi, DWORD PTR [esi+8]
	test	edi, edi
	jne	SHORT $LN7@initialize
$LN10@initialize:
	pop	edi
; Line 42
	mov	eax, 1
	pop	esi
; Line 83
	ret	0
$LN7@initialize:
; Line 45
	xor	eax, eax
	mov	DWORD PTR [esi], 0
	mov	WORD PTR [esi+4], ax
; Line 52
	mov	eax, DWORD PTR [edi]
	test	eax, eax
	je	SHORT $LN4@initialize
	npad	5
$LL5@initialize:
; Line 55
	cmp	DWORD PTR [eax], 0
	jne	SHORT $LN12@initialize
	push	eax
	call	_initialize_aggregate
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN10@initialize
$LN12@initialize:
; Line 61
	mov	ecx, DWORD PTR [edi]
	movzx	eax, WORD PTR [ecx+4]
	mov	edx, DWORD PTR [esi]
	dec	eax
	dec	edx
	or	eax, edx
	inc	eax
	mov	DWORD PTR [esi], eax
; Line 62
	mov	ecx, DWORD PTR [edi]
	mov	edx, DWORD PTR [ecx]
	add	edx, eax
; Line 65
	movzx	eax, WORD PTR [esi+4]
	mov	DWORD PTR [esi], edx
	mov	ecx, DWORD PTR [edi]
	movzx	ecx, WORD PTR [ecx+4]
	cmp	ax, cx
	movzx	eax, ax
	ja	SHORT $LN15@initialize
	movzx	eax, cx
$LN15@initialize:
; Line 67
	add	edi, 4
	mov	WORD PTR [esi+4], ax
	mov	eax, DWORD PTR [edi]
	test	eax, eax
	jne	SHORT $LL5@initialize
$LN4@initialize:
; Line 77
	movzx	eax, WORD PTR [esi+4]
	mov	edx, DWORD PTR [esi]
	dec	eax
	dec	edx
	or	eax, edx
	inc	eax
; Line 79
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	mov	DWORD PTR [esi], eax
	pop	edi
	pop	esi
	mov	eax, ecx
; Line 83
	ret	0
_initialize_aggregate ENDP
_TEXT	ENDS
PUBLIC	_ffi_prep_cif_core
EXTRN	_ffi_prep_cif_machdep:PROC
; Function compile flags: /Ogtpy
;	COMDAT _ffi_prep_cif_core
_TEXT	SEGMENT
_cif$ = 8						; size = 4
_abi$ = 12						; size = 4
_isvariadic$ = 16					; size = 4
_nfixedargs$ = 20					; size = 4
_ntotalargs$ = 24					; size = 4
_rtype$ = 28						; size = 4
_atypes$ = 32						; size = 4
_ffi_prep_cif_core PROC					; COMDAT
; Line 118
	mov	eax, DWORD PTR _abi$[esp-4]
	test	eax, eax
	jle	SHORT $LN6@ffi_prep_c
	cmp	eax, 6
	jl	SHORT $LN7@ffi_prep_c
$LN6@ffi_prep_c:
	cmp	eax, 3
	je	SHORT $LN7@ffi_prep_c
; Line 119
	mov	eax, 2
; Line 186
	ret	0
$LN7@ffi_prep_c:
; Line 124
	mov	ecx, DWORD PTR _ntotalargs$[esp-4]
	push	edi
	mov	edi, DWORD PTR _cif$[esp]
	mov	DWORD PTR [edi], eax
	mov	eax, DWORD PTR _atypes$[esp]
	mov	DWORD PTR [edi+8], eax
; Line 125
	mov	eax, DWORD PTR _rtype$[esp]
	mov	DWORD PTR [edi+4], ecx
	mov	DWORD PTR [edi+12], eax
; Line 127
	mov	DWORD PTR [edi+20], 0
; Line 130
	cmp	DWORD PTR [eax], 0
	jne	SHORT $LN5@ffi_prep_c
	push	eax
	call	_initialize_aggregate
	add	esp, 4
	test	eax, eax
	je	SHORT $LN5@ffi_prep_c
; Line 131
	mov	eax, 1
	pop	edi
; Line 186
	ret	0
$LN5@ffi_prep_c:
	push	ebx
; Line 147
	mov	ebx, DWORD PTR [edi+8]
	push	esi
	mov	esi, DWORD PTR [edi+4]
	test	esi, esi
	jbe	SHORT $LN2@ffi_prep_c
$LL4@ffi_prep_c:
; Line 151
	mov	eax, DWORD PTR [ebx]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $LN3@ffi_prep_c
	push	eax
	call	_initialize_aggregate
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN11@ffi_prep_c
$LN3@ffi_prep_c:
; Line 147
	dec	esi
	add	ebx, 4
	test	esi, esi
	ja	SHORT $LL4@ffi_prep_c
$LN2@ffi_prep_c:
; Line 185
	push	edi
	mov	DWORD PTR [edi+16], 0
	call	_ffi_prep_cif_machdep
	add	esp, 4
	pop	esi
	pop	ebx
	pop	edi
; Line 186
	ret	0
$LN11@ffi_prep_c:
	pop	esi
	pop	ebx
; Line 152
	mov	eax, 1
	pop	edi
; Line 186
	ret	0
_ffi_prep_cif_core ENDP
_TEXT	ENDS
PUBLIC	_ffi_prep_cif
; Function compile flags: /Ogtpy
;	COMDAT _ffi_prep_cif
_TEXT	SEGMENT
_cif$ = 8						; size = 4
_abi$ = 12						; size = 4
_nargs$ = 16						; size = 4
_rtype$ = 20						; size = 4
_atypes$ = 24						; size = 4
_ffi_prep_cif PROC					; COMDAT
; Line 192
	mov	eax, DWORD PTR _atypes$[esp-4]
	mov	ecx, DWORD PTR _rtype$[esp-4]
	mov	edx, DWORD PTR _abi$[esp-4]
	push	eax
	mov	eax, DWORD PTR _nargs$[esp]
	push	ecx
	push	eax
	push	eax
	mov	eax, DWORD PTR _cif$[esp+12]
	push	0
	push	edx
	push	eax
	call	_ffi_prep_cif_core
	add	esp, 28					; 0000001cH
; Line 193
	ret	0
_ffi_prep_cif ENDP
_TEXT	ENDS
PUBLIC	_ffi_prep_cif_var
; Function compile flags: /Ogtpy
;	COMDAT _ffi_prep_cif_var
_TEXT	SEGMENT
_cif$ = 8						; size = 4
_abi$ = 12						; size = 4
_nfixedargs$ = 16					; size = 4
_ntotalargs$ = 20					; size = 4
_rtype$ = 24						; size = 4
_atypes$ = 28						; size = 4
_ffi_prep_cif_var PROC					; COMDAT
; Line 202
	mov	eax, DWORD PTR _atypes$[esp-4]
	mov	ecx, DWORD PTR _rtype$[esp-4]
	mov	edx, DWORD PTR _ntotalargs$[esp-4]
	push	eax
	mov	eax, DWORD PTR _nfixedargs$[esp]
	push	ecx
	mov	ecx, DWORD PTR _abi$[esp+4]
	push	edx
	mov	edx, DWORD PTR _cif$[esp+8]
	push	eax
	push	1
	push	ecx
	push	edx
	call	_ffi_prep_cif_core
	add	esp, 28					; 0000001cH
; Line 203
	ret	0
_ffi_prep_cif_var ENDP
_TEXT	ENDS
PUBLIC	_ffi_prep_closure
EXTRN	_ffi_prep_closure_loc:PROC
; Function compile flags: /Ogtpy
;	COMDAT _ffi_prep_closure
_TEXT	SEGMENT
_closure$ = 8						; size = 4
_cif$ = 12						; size = 4
_fun$ = 16						; size = 4
_user_data$ = 20					; size = 4
_ffi_prep_closure PROC					; COMDAT
; Line 213
	mov	eax, DWORD PTR _closure$[esp-4]
	mov	ecx, DWORD PTR _user_data$[esp-4]
	mov	edx, DWORD PTR _fun$[esp-4]
	push	eax
	push	ecx
	mov	ecx, DWORD PTR _cif$[esp+4]
	push	edx
	push	ecx
	push	eax
	call	_ffi_prep_closure_loc
	add	esp, 20					; 00000014H
; Line 214
	ret	0
_ffi_prep_closure ENDP
_TEXT	ENDS
END