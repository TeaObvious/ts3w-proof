# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a8e850,00a8e8ae]. 95 owned bytes/41 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Pending floor location equal range. ECX sorted three-byte vector plus output pointer pair/query, RET8 void. AD0DB0 lower_bound by signed level/X/Z; checks reverse comparator and returns [found,found+3) only for equality, otherwise [lower,lower). Mask is not part of the three-byte key; assumes valid sorted storage.

00a8e850	0fb64110	MOVZX EAX, byte ptr [ECX + 0x10]
00a8e854	56	PUSH ESI
00a8e855	8b74240c	MOV ESI, dword ptr [ESP + 0xc]
00a8e859	57	PUSH EDI
00a8e85a	8b7904	MOV EDI, dword ptr [ECX + 0x4]
00a8e85d	8b09	MOV ECX, dword ptr [ECX]
00a8e85f	50	PUSH EAX
00a8e860	56	PUSH ESI
00a8e861	57	PUSH EDI
00a8e862	51	PUSH ECX
00a8e863	e848250400	CALL 0x00ad0db0
00a8e868	8bc8	MOV ECX, EAX
00a8e86a	83c410	ADD ESP, 0x10
00a8e86d	3bcf	CMP ECX, EDI
00a8e86f	7430	JZ 0x00a8e8a1
00a8e871	8a4602	MOV AL, byte ptr [ESI + 0x2]
00a8e874	8a5102	MOV DL, byte ptr [ECX + 0x2]
00a8e877	3ac2	CMP AL, DL
00a8e879	750e	JNZ 0x00a8e889
00a8e87b	8a06	MOV AL, byte ptr [ESI]
00a8e87d	8a11	MOV DL, byte ptr [ECX]
00a8e87f	3ac2	CMP AL, DL
00a8e881	7506	JNZ 0x00a8e889
00a8e883	8a5601	MOV DL, byte ptr [ESI + 0x1]
00a8e886	3a5101	CMP DL, byte ptr [ECX + 0x1]
00a8e889	0f9cc0	SETL AL
00a8e88c	84c0	TEST AL, AL
00a8e88e	7511	JNZ 0x00a8e8a1
00a8e890	8b44240c	MOV EAX, dword ptr [ESP + 0xc]
00a8e894	8908	MOV dword ptr [EAX], ECX
00a8e896	83c103	ADD ECX, 0x3
00a8e899	5f	POP EDI
00a8e89a	894804	MOV dword ptr [EAX + 0x4], ECX
00a8e89d	5e	POP ESI
00a8e89e	c20800	RET 0x8
00a8e8a1	8b44240c	MOV EAX, dword ptr [ESP + 0xc]
00a8e8a5	5f	POP EDI
00a8e8a6	8908	MOV dword ptr [EAX], ECX
00a8e8a8	894804	MOV dword ptr [EAX + 0x4], ECX
00a8e8ab	5e	POP ESI
00a8e8ac	c20800	RET 0x8
