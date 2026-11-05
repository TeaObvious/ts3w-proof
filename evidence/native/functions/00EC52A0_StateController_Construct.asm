# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec52a0 (StateController_Construct)
Paired actual Ghidra pseudocode: 00EC52A0_StateController_Construct.c
Envelope [0x00ec52a0,0x00ec52e8); 72 bytes; exact owned ranges: [0x00ec52a0,0x00ec52e8)
Owned: 72 original bytes / 24 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec52a0 <original>:
  ec52a0:	56                   	push   esi
  ec52a1:	57                   	push   edi
  ec52a2:	33 ff                	xor    edi,edi
  ec52a4:	57                   	push   edi
  ec52a5:	68 a8 99 dc f0       	push   0xf0dc99a8
  ec52aa:	8b f1                	mov    esi,ecx
  ec52ac:	e8 0f a2 6d ff       	call   0x59f4c0
  ec52b1:	c7 06 3c 4d 0f 01    	mov    DWORD PTR [esi],0x10f4d3c
  ec52b7:	b8 01 00 00 00       	mov    eax,0x1
  ec52bc:	8d 4e 10             	lea    ecx,[esi+0x10]
  ec52bf:	87 01                	xchg   DWORD PTR [ecx],eax
  ec52c1:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  ec52c5:	89 7e 14             	mov    DWORD PTR [esi+0x14],edi
  ec52c8:	89 7e 18             	mov    DWORD PTR [esi+0x18],edi
  ec52cb:	89 7e 1c             	mov    DWORD PTR [esi+0x1c],edi
  ec52ce:	c7 46 20 0c 4d 0f 01 	mov    DWORD PTR [esi+0x20],0x10f4d0c
  ec52d5:	89 7e 24             	mov    DWORD PTR [esi+0x24],edi
  ec52d8:	89 56 28             	mov    DWORD PTR [esi+0x28],edx
  ec52db:	89 7e 2c             	mov    DWORD PTR [esi+0x2c],edi
  ec52de:	89 7e 30             	mov    DWORD PTR [esi+0x30],edi
  ec52e1:	5f                   	pop    edi
  ec52e2:	8b c6                	mov    eax,esi
  ec52e4:	5e                   	pop    esi
  ec52e5:	c2 04 00             	ret    0x4
