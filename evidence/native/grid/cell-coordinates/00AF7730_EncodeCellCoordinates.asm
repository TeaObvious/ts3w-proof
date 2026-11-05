PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: EncodeCellCoordinates.
Complete existing Ghidra owned range [00af7730,00af779d] inclusive; 110 bytes / 29 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Encodes binary32 X/Z and the low byte of an Int32 level into packed cell bytes 0/1/2. Leaves byte 3 (caller-owned quarter mask) untouched. Ordinary finite coordinates within conversion range produce floor narrowed to one byte; exceptional x87 inputs are not generalized. Analyst-assigned name.

00af7730	83ec08	SUB ESP, 0x8
00af7733	8b4c240c	MOV ECX, dword ptr [ESP + 0xc]
00af7737	f30f1001	MOVSS XMM0, dword ptr [ECX]
00af773b	f30f11442404	MOVSS dword ptr [ESP + 0x4], XMM0
00af7741	d9442404	FLD float ptr [ESP + 0x4]
00af7745	db1424	FIST dword ptr [ESP] ; FIST uses the current x87 control word. The later residual-bit test corrects the converted integer; ROUND in decompiler C is not a fixed rounding-mode contract.
00af7748	db0424	FILD dword ptr [ESP]
00af774b	dee9	FSUBP
00af774d	d95c240c	FSTP float ptr [ESP + 0xc]
00af7751	817c240c01000080	CMP dword ptr [ESP + 0xc], 0x80000001 ; Compare the stored binary32 residual as unsigned bits with 80000001. ADC integer,-1 preserves nonnegative residuals and negative zero; otherwise subtracts one. Repeat for Z at AF7782.
00af7759	8b0424	MOV EAX, dword ptr [ESP]
00af775c	83d0ff	ADC EAX, -0x1
00af775f	8b542410	MOV EDX, dword ptr [ESP + 0x10]
00af7763	8802	MOV byte ptr [EDX], AL
00af7765	f30f104104	MOVSS XMM0, dword ptr [ECX + 0x4]
00af776a	f30f11442404	MOVSS dword ptr [ESP + 0x4], XMM0
00af7770	d9442404	FLD float ptr [ESP + 0x4]
00af7774	db542410	FIST dword ptr [ESP + 0x10]
00af7778	db442410	FILD dword ptr [ESP + 0x10]
00af777c	dee9	FSUBP
00af777e	d95c240c	FSTP float ptr [ESP + 0xc]
00af7782	817c240c01000080	CMP dword ptr [ESP + 0xc], 0x80000001
00af778a	8b442410	MOV EAX, dword ptr [ESP + 0x10]
00af778e	83d0ff	ADC EAX, -0x1
00af7791	884201	MOV byte ptr [EDX + 0x1], AL
00af7794	8a4108	MOV AL, byte ptr [ECX + 0x8] ; Copy only input level low byte at +8 to output +2. The third input word is an integer level, not a numeric float-to-level conversion. Output +3 is never written.
00af7797	884202	MOV byte ptr [EDX + 0x2], AL
00af779a	83c408	ADD ESP, 0x8
00af779d	c3	RET
