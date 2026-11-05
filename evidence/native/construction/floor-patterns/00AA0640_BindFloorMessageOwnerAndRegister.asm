PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: BindFloorMessageOwnerAndRegister.
Complete existing Ghidra stored body union: [00AA0640,00AA06B7] inclusive, [00AA06C0,00AA06E4] inclusive; 157 owned bytes / 54 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Binds the attached renderer owner, saves the current dispatcher and registers 18 IDs from
   010649B8, including 0431BFC9. Listener pointer is this, retain flag 0, ordering word 0. It does
   not set receiver enabled byte +70. Analyst-assigned name.

Excluded envelope gap [00AA06B8,00AA06BF]: 8da4240000000090 (8 alignment bytes, not owned).

00aa0640	8b442404	MOV EAX, dword ptr [ESP + 0x4]
00aa0644	56	PUSH ESI
00aa0645	8bf1	MOV ESI, ECX
00aa0647	c6460401	MOV byte ptr [ESI + 0x4], 0x1
00aa064b	894608	MOV dword ptr [ESI + 0x8], EAX ; Attached renderer owner is stored at receiver +8. AA4350 later compares message +8/+C against this attached record +10/+14; identity requires the actual copied values, not equal field names.
00aa064e	8b4868	MOV ECX, dword ptr [EAX + 0x68]
00aa0651	894e0c	MOV dword ptr [ESI + 0xc], ECX
00aa0654	8b506c	MOV EDX, dword ptr [EAX + 0x6c]
00aa0657	895610	MOV dword ptr [ESI + 0x10], EDX
00aa065a	8b4860	MOV ECX, dword ptr [EAX + 0x60]
00aa065d	894e14	MOV dword ptr [ESI + 0x14], ECX
00aa0660	8b5064	MOV EDX, dword ptr [EAX + 0x64]
00aa0663	57	PUSH EDI
00aa0664	895618	MOV dword ptr [ESI + 0x18], EDX
00aa0667	e864861e00	CALL 0x00c88cd0
00aa066c	a270c31e01	MOV [0x011ec370], AL
00aa0671	e87aad1e00	CALL 0x00c8b3f0
00aa0676	8b08	MOV ECX, dword ptr [EAX]
00aa0678	894e20	MOV dword ptr [ESI + 0x20], ECX
00aa067b	8b5004	MOV EDX, dword ptr [EAX + 0x4]
00aa067e	895624	MOV dword ptr [ESI + 0x24], EDX
00aa0681	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa0684	894e28	MOV dword ptr [ESI + 0x28], ECX
00aa0687	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa068a	89562c	MOV dword ptr [ESI + 0x2c], EDX
00aa068d	e85ebe9aff	CALL 0x0044c4f0
00aa0692	8bf8	MOV EDI, EAX
00aa0694	85ff	TEST EDI, EDI
00aa0696	897e30	MOV dword ptr [ESI + 0x30], EDI
00aa0699	897634	MOV dword ptr [ESI + 0x34], ESI
00aa069c	c74638b8490601	MOV dword ptr [ESI + 0x38], 0x10649b8 ; Registration table contains 18 UInt32 IDs; 0431BFC9 is index 2 at 010649C0. Receiver constructor AA3080 installs callback AA4350 at listener vtable +4.
00aa06a3	c7463c12000000	MOV dword ptr [ESI + 0x3c], 0x12
00aa06aa	c7464000000000	MOV dword ptr [ESI + 0x40], 0x0
00aa06b1	742b	JZ 0x00aa06de
00aa06b3	53	PUSH EBX
00aa06b4	33db	XOR EBX, EBX
00aa06b6	eb08	JMP 0x00aa06c0
00aa06c0	8b8bb8490601	MOV ECX, dword ptr [EBX + 0x10649b8]
00aa06c6	8b07	MOV EAX, dword ptr [EDI]
00aa06c8	8b5024	MOV EDX, dword ptr [EAX + 0x24]
00aa06cb	6a00	PUSH 0x0
00aa06cd	6a00	PUSH 0x0
00aa06cf	51	PUSH ECX
00aa06d0	56	PUSH ESI
00aa06d1	8bcf	MOV ECX, EDI
00aa06d3	ffd2	CALL EDX ; Virtual +24 receives this listener pointer and the current table ID, with both remaining arguments zero. On this concrete dispatcher it enters 44C640.
00aa06d5	83c304	ADD EBX, 0x4
00aa06d8	83fb48	CMP EBX, 0x48
00aa06db	72e3	JC 0x00aa06c0
00aa06dd	5b	POP EBX
00aa06de	5f	POP EDI
00aa06df	b001	MOV AL, 0x1
00aa06e1	5e	POP ESI
00aa06e2	c20400	RET 0x4
