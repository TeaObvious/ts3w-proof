# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec5170 (GameState_RequestQuit)
Paired actual Ghidra pseudocode: 00EC5170_GameState_RequestQuit.c
Envelope [0x00ec5170,0x00ec51be); 78 bytes; exact owned ranges: [0x00ec5170,0x00ec51be)
Owned: 78 original bytes / 25 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec5170 <original>:
  ec5170:	6a 00                	push   0x0
  ec5172:	6a 00                	push   0x0
  ec5174:	6a 00                	push   0x0
  ec5176:	6a 00                	push   0x0
  ec5178:	68 ec 4c 0f 01       	push   0x10f4cec
  ec517d:	6a 08                	push   0x8
  ec517f:	e8 7c f3 61 ff       	call   0x4e4500
  ec5184:	83 c4 18             	add    esp,0x18
  ec5187:	85 c0                	test   eax,eax
  ec5189:	74 1f                	je     0xec51aa
  ec518b:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  ec518f:	68 9f 86 8d 02       	push   0x28d869f
  ec5194:	50                   	push   eax
  ec5195:	c7 00 d0 4c 0f 01    	mov    DWORD PTR [eax],0x10f4cd0
  ec519b:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  ec51a2:	e8 99 00 00 00       	call   0xec5240
  ec51a7:	b0 01                	mov    al,0x1
  ec51a9:	c3                   	ret
  ec51aa:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  ec51ae:	33 c0                	xor    eax,eax
  ec51b0:	68 9f 86 8d 02       	push   0x28d869f
  ec51b5:	50                   	push   eax
  ec51b6:	e8 85 00 00 00       	call   0xec5240
  ec51bb:	b0 01                	mov    al,0x1
  ec51bd:	c3                   	ret
