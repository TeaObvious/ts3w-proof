PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: UpdateFloorQuarterRoomIds.
Complete existing Ghidra stored body union: [00AA36A0,00AA3766] inclusive; 199 owned bytes / 75 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Updates selected UInt16 room-ID lanes in the optional grid at receiver +7C. Bit 10h in the input
   mask adjusts the selected level by -1. Changed lanes are written through AA3330, then optional
   lot service +234 is notified. Analyst-assigned name.

00aa36a0	83ec0c	SUB ESP, 0xc ; Only the optional room-ID grid +7C is guarded here; packed coordinate bounds belong to the caller. AA3890 passes message cell +10 and zero-extended message room word +5E.
00aa36a3	8bc1	MOV EAX, ECX
00aa36a5	8b487c	MOV ECX, dword ptr [EAX + 0x7c]
00aa36a8	85c9	TEST ECX, ECX
00aa36aa	890424	MOV dword ptr [ESP], EAX
00aa36ad	0f84ae000000	JZ 0x00aa3761
00aa36b3	53	PUSH EBX
00aa36b4	55	PUSH EBP
00aa36b5	56	PUSH ESI
00aa36b6	8b74241c	MOV ESI, dword ptr [ESP + 0x1c]
00aa36ba	8a5e03	MOV BL, byte ptr [ESI + 0x3]
00aa36bd	0fbe6e01	MOVSX EBP, byte ptr [ESI + 0x1]
00aa36c1	8ad3	MOV DL, BL
00aa36c3	f6d2	NOT DL
00aa36c5	80e210	AND DL, 0x10
00aa36c8	f6da	NEG DL
00aa36ca	57	PUSH EDI
00aa36cb	0fbe7e02	MOVSX EDI, byte ptr [ESI + 0x2]
00aa36cf	1bd2	SBB EDX, EDX
00aa36d1	f7da	NEG EDX
00aa36d3	83ea01	SUB EDX, 0x1
00aa36d6	03d7	ADD EDX, EDI
00aa36d8	2b500c	SUB EDX, dword ptr [EAX + 0xc]
00aa36db	0fbe06	MOVSX EAX, byte ptr [ESI]
00aa36de	8bfa	MOV EDI, EDX
00aa36e0	57	PUSH EDI
00aa36e1	55	PUSH EBP
00aa36e2	50	PUSH EAX
00aa36e3	e8287dfeff	CALL 0x00a8b410
00aa36e8	8b08	MOV ECX, dword ptr [EAX]
00aa36ea	8b5004	MOV EDX, dword ptr [EAX + 0x4]
00aa36ed	894c2414	MOV dword ptr [ESP + 0x14], ECX
00aa36f1	32c0	XOR AL, AL
00aa36f3	89542418	MOV dword ptr [ESP + 0x18], EDX
00aa36f7	33c9	XOR ECX, ECX
00aa36f9	8da42400000000	LEA ESP, [ESP]
00aa3700	b201	MOV DL, 0x1
00aa3702	d2e2	SHL DL, CL
00aa3704	84d3	TEST BL, DL
00aa3706	7413	JZ 0x00aa371b
00aa3708	668b542424	MOV DX, word ptr [ESP + 0x24]
00aa370d	6639544c14	CMP word ptr [ESP + ECX*0x2 + 0x14], DX
00aa3712	7407	JZ 0x00aa371b
00aa3714	6689544c14	MOV word ptr [ESP + ECX*0x2 + 0x14], DX
00aa3719	b001	MOV AL, 0x1
00aa371b	83c101	ADD ECX, 0x1
00aa371e	83f904	CMP ECX, 0x4
00aa3721	7cdd	JL 0x00aa3700
00aa3723	84c0	TEST AL, AL
00aa3725	7436	JZ 0x00aa375d
00aa3727	0fbe06	MOVSX EAX, byte ptr [ESI]
00aa372a	8b4c2410	MOV ECX, dword ptr [ESP + 0x10]
00aa372e	8b497c	MOV ECX, dword ptr [ECX + 0x7c]
00aa3731	57	PUSH EDI
00aa3732	55	PUSH EBP
00aa3733	50	PUSH EAX
00aa3734	8d442420	LEA EAX, [ESP + 0x20]
00aa3738	50	PUSH EAX
00aa3739	e8f2fbffff	CALL 0x00aa3330
00aa373e	8b542410	MOV EDX, dword ptr [ESP + 0x10]
00aa3742	8b4208	MOV EAX, dword ptr [EDX + 0x8]
00aa3745	8b8834020000	MOV ECX, dword ptr [EAX + 0x234]
00aa374b	85c9	TEST ECX, ECX
00aa374d	740e	JZ 0x00aa375d
00aa374f	0fbe5601	MOVSX EDX, byte ptr [ESI + 0x1]
00aa3753	0fbe06	MOVSX EAX, byte ptr [ESI]
00aa3756	52	PUSH EDX
00aa3757	50	PUSH EAX
00aa3758	e863790500	CALL 0x00afb0c0
00aa375d	5f	POP EDI
00aa375e	5e	POP ESI
00aa375f	5d	POP EBP
00aa3760	5b	POP EBX
00aa3761	83c40c	ADD ESP, 0xc
00aa3764	c20800	RET 0x8
