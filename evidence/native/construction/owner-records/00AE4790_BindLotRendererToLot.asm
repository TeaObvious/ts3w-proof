TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra Listing; current name: BindLotRendererToLot.
Original instruction/byte block and addressed comments are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: BindLotRendererToLot.
Complete existing Ghidra stored body union: [00AE4790,00AE4852] inclusive; 195 owned bytes / 60 instruction starts.
Original PE bytes and independent objdump starts match the Listing.

Binds the renderer to the supplied core lot: owner pointer at +18 and exact UInt32 pair core+48/+4C copied to renderer+10/+14. Also copies selected flags and two 16-byte vectors, initializes the embedded imposter and optionally registers the renderer by that pair. ECX renderer, one stack word, RET4; physical result AL=1. Analyst-assigned name.

00ae4790	55	PUSH EBP
00ae4791	8bec	MOV EBP, ESP
00ae4793	83e4f0	AND ESP, 0xfffffff0
00ae4796	83ec48	SUB ESP, 0x48
00ae4799	56	PUSH ESI
00ae479a	57	PUSH EDI
00ae479b	8b7d08	MOV EDI, dword ptr [EBP + 0x8]
00ae479e	8a87bc040000	MOV AL, byte ptr [EDI + 0x4bc]
00ae47a4	8bf1	MOV ESI, ECX
00ae47a6	8886d6030000	MOV byte ptr [ESI + 0x3d6], AL
00ae47ac	80bf4404000000	CMP byte ptr [EDI + 0x444], 0x0
00ae47b3	7424	JZ 0x00ae47d9
00ae47b5	8b8748040000	MOV EAX, dword ptr [EDI + 0x448]
00ae47bb	50	PUSH EAX
00ae47bc	8d4c2414	LEA ECX, [ESP + 0x14]
00ae47c0	51	PUSH ECX
00ae47c1	8bcf	MOV ECX, EDI
00ae47c3	e858bcfcff	CALL 0x00ab0420
00ae47c8	50	PUSH EAX
00ae47c9	8bcf	MOV ECX, EDI
00ae47cb	e840bcfcff	CALL 0x00ab0410
00ae47d0	52	PUSH EDX
00ae47d1	50	PUSH EAX
00ae47d2	8bce	MOV ECX, ESI
00ae47d4	e837fbffff	CALL 0x00ae4310
00ae47d9	83bf0804000001	CMP dword ptr [EDI + 0x408], 0x1
00ae47e0	7510	JNZ 0x00ae47f2
00ae47e2	83bf0c04000050	CMP dword ptr [EDI + 0x40c], 0x50
00ae47e9	7507	JNZ 0x00ae47f2
00ae47eb	b801000000	MOV EAX, 0x1
00ae47f0	eb02	JMP 0x00ae47f4
00ae47f2	33c0	XOR EAX, EAX
00ae47f4	8886d8030000	MOV byte ptr [ESI + 0x3d8], AL
00ae47fa	0f288730020000	MOVAPS XMM0, xmmword ptr [EDI + 0x230]
00ae4801	0f2986e0030000	MOVAPS xmmword ptr [ESI + 0x3e0], XMM0
00ae4808	0f288740020000	MOVAPS XMM0, xmmword ptr [EDI + 0x240]
00ae480f	0f2986f0030000	MOVAPS xmmword ptr [ESI + 0x3f0], XMM0
00ae4816	897e18	MOV dword ptr [ESI + 0x18], EDI ; Store the same supplied core-lot pointer later used by the staged initializer. This is a direct pointer assignment; no owner-reference increment is performed here.
00ae4819	8b5748	MOV EDX, dword ptr [EDI + 0x48]
00ae481c	895610	MOV dword ptr [ESI + 0x10], EDX ; First physical identity word: renderer+10 receives coreLot+48 without arithmetic or lookup. The second word coreLot+4C is stored at renderer+14 at AE4829.
00ae481f	8b474c	MOV EAX, dword ptr [EDI + 0x4c]
00ae4822	56	PUSH ESI
00ae4823	8d8e70030000	LEA ECX, [ESI + 0x370]
00ae4829	894614	MOV dword ptr [ESI + 0x14], EAX
00ae482c	e85f40ffff	CALL 0x00ad8890
00ae4831	8b0d58de1e01	MOV ECX, dword ptr [0x011ede58]
00ae4837	85c9	TEST ECX, ECX
00ae4839	740e	JZ 0x00ae4849
00ae483b	8b5614	MOV EDX, dword ptr [ESI + 0x14]
00ae483e	8b4610	MOV EAX, dword ptr [ESI + 0x10]
00ae4841	56	PUSH ESI
00ae4842	52	PUSH EDX
00ae4843	50	PUSH EAX
00ae4844	e8778a1900	CALL 0x00c7d2c0 ; If global service 011EDE58 is nonnull, pass copied word0, copied word1 and this renderer to C7D2C0. This does not establish global uniqueness or lifetime of the pair.
00ae4849	5f	POP EDI
00ae484a	b001	MOV AL, 0x1
00ae484c	5e	POP ESI
00ae484d	8be5	MOV ESP, EBP
00ae484f	5d	POP EBP
00ae4850	c20400	RET 0x4
