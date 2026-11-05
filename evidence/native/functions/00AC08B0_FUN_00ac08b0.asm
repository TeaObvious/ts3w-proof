# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00ac08b0,00ac091e]. 111 owned bytes/47 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-word vector resize. ECX vector plus UInt32 requested element count, RET4 void. Element size16; growing inserts all-FFFFFFFF four-word values via7996F0 at old end. Shrink/equal invokes7FFF00 on empty [oldEnd,oldEnd) then changes end to begin+requested*16, leaving allocation/capacity retained. No whole-grid compression reset or OOM guarantee.

00ac08b0	8b442404	MOV EAX, dword ptr [ESP + 0x4]
00ac08b4	83ec10	SUB ESP, 0x10
00ac08b7	56	PUSH ESI
00ac08b8	57	PUSH EDI
00ac08b9	8bf9	MOV EDI, ECX
00ac08bb	8b7704	MOV ESI, dword ptr [EDI + 0x4]
00ac08be	8b17	MOV EDX, dword ptr [EDI]
00ac08c0	8bce	MOV ECX, ESI
00ac08c2	2bca	SUB ECX, EDX
00ac08c4	c1f904	SAR ECX, 0x4
00ac08c7	3bc1	CMP EAX, ECX
00ac08c9	762b	JBE 0x00ac08f6
00ac08cb	83caff	OR EDX, 0xffffffff
00ac08ce	89542408	MOV dword ptr [ESP + 0x8], EDX
00ac08d2	8954240c	MOV dword ptr [ESP + 0xc], EDX
00ac08d6	89542410	MOV dword ptr [ESP + 0x10], EDX
00ac08da	89542414	MOV dword ptr [ESP + 0x14], EDX
00ac08de	8d542408	LEA EDX, [ESP + 0x8]
00ac08e2	52	PUSH EDX
00ac08e3	2bc1	SUB EAX, ECX
00ac08e5	50	PUSH EAX
00ac08e6	56	PUSH ESI
00ac08e7	8bcf	MOV ECX, EDI
00ac08e9	e8028ecdff	CALL 0x007996f0
00ac08ee	5f	POP EDI
00ac08ef	5e	POP ESI
00ac08f0	83c410	ADD ESP, 0x10
00ac08f3	c20400	RET 0x4
00ac08f6	c1e004	SHL EAX, 0x4
00ac08f9	53	PUSH EBX
00ac08fa	03c2	ADD EAX, EDX
00ac08fc	8bd8	MOV EBX, EAX
00ac08fe	53	PUSH EBX
00ac08ff	56	PUSH ESI
00ac0900	56	PUSH ESI
00ac0901	e8faf5d3ff	CALL 0x007fff00
00ac0906	2bf3	SUB ESI, EBX
00ac0908	c1fe04	SAR ESI, 0x4
00ac090b	83c40c	ADD ESP, 0xc
00ac090e	f7de	NEG ESI
00ac0910	c1e604	SHL ESI, 0x4
00ac0913	017704	ADD dword ptr [EDI + 0x4], ESI
00ac0916	5b	POP EBX
00ac0917	5f	POP EDI
00ac0918	5e	POP ESI
00ac0919	83c410	ADD ESP, 0x10
00ac091c	c20400	RET 0x4
