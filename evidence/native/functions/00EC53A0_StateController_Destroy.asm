# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec53a0 (StateController_Destroy)
Paired actual Ghidra pseudocode: 00EC53A0_StateController_Destroy.c
Envelope [0x00ec53a0,0x00ec53f2); 82 bytes; exact owned ranges: [0x00ec53a0,0x00ec53f2)
Owned: 82 original bytes / 31 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec53a0 <original>:
  ec53a0:	56                   	push   esi
  ec53a1:	8b f1                	mov    esi,ecx
  ec53a3:	c7 06 3c 4d 0f 01    	mov    DWORD PTR [esi],0x10f4d3c
  ec53a9:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  ec53ac:	85 c9                	test   ecx,ecx
  ec53ae:	74 07                	je     0xec53b7
  ec53b0:	8b 01                	mov    eax,DWORD PTR [ecx]
  ec53b2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ec53b5:	ff d2                	call   edx
  ec53b7:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  ec53ba:	85 c9                	test   ecx,ecx
  ec53bc:	74 07                	je     0xec53c5
  ec53be:	8b 01                	mov    eax,DWORD PTR [ecx]
  ec53c0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ec53c3:	ff d2                	call   edx
  ec53c5:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  ec53c8:	85 c0                	test   eax,eax
  ec53ca:	74 09                	je     0xec53d5
  ec53cc:	50                   	push   eax
  ec53cd:	e8 0e f1 61 ff       	call   0x4e44e0
  ec53d2:	83 c4 04             	add    esp,0x4
  ec53d5:	8b ce                	mov    ecx,esi
  ec53d7:	e8 74 a0 6d ff       	call   0x59f450
  ec53dc:	f6 44 24 08 01       	test   BYTE PTR [esp+0x8],0x1
  ec53e1:	74 09                	je     0xec53ec
  ec53e3:	56                   	push   esi
  ec53e4:	e8 f7 f0 61 ff       	call   0x4e44e0
  ec53e9:	83 c4 04             	add    esp,0x4
  ec53ec:	8b c6                	mov    eax,esi
  ec53ee:	5e                   	pop    esi
  ec53ef:	c2 04 00             	ret    0x4
