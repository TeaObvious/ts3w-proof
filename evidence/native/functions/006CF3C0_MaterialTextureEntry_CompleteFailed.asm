# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006cf3c0 (MaterialTextureEntry_CompleteFailed)
Paired actual Ghidra pseudocode: 006CF3C0_MaterialTextureEntry_CompleteFailed.c
Envelope [0x006cf3c0,0x006cf428); 104 bytes; exact owned ranges: [0x006cf3c0,0x006cf428)
Owned: 104 original bytes / 41 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006cf3c0 <original>:
  6cf3c0:	56                                              	push   esi
  6cf3c1:	8b f1                                           	mov    esi,ecx
  6cf3c3:	8b 46 44                                        	mov    eax,DWORD PTR [esi+0x44]
  6cf3c6:	83 f8 03                                        	cmp    eax,0x3
  6cf3c9:	8d 4e 44                                        	lea    ecx,[esi+0x44]
  6cf3cc:	75 58                                           	jne    0x6cf426
  6cf3ce:	ba 04 00 00 00                                  	mov    edx,0x4
  6cf3d3:	8b c1                                           	mov    eax,ecx
  6cf3d5:	87 10                                           	xchg   DWORD PTR [eax],edx
  6cf3d7:	83 7e 34 00                                     	cmp    DWORD PTR [esi+0x34],0x0
  6cf3db:	74 49                                           	je     0x6cf426
  6cf3dd:	8a 46 42                                        	mov    al,BYTE PTR [esi+0x42]
  6cf3e0:	a8 04                                           	test   al,0x4
  6cf3e2:	75 2c                                           	jne    0x6cf410
  6cf3e4:	24 fc                                           	and    al,0xfc
  6cf3e6:	0c 04                                           	or     al,0x4
  6cf3e8:	88 46 42                                        	mov    BYTE PTR [esi+0x42],al
  6cf3eb:	33 d2                                           	xor    edx,edx
  6cf3ed:	87 11                                           	xchg   DWORD PTR [ecx],edx
  6cf3ef:	6a 00                                           	push   0x0
  6cf3f1:	6a 00                                           	push   0x0
  6cf3f3:	8d 46 08                                        	lea    eax,[esi+0x8]
  6cf3f6:	50                                              	push   eax
  6cf3f7:	68 90 c8 15 01                                  	push   0x115c890
  6cf3fc:	8d 4e 24                                        	lea    ecx,[esi+0x24]
  6cf3ff:	e8 4c b2 ef ff                                  	call   0x5ca650
  6cf404:	84 c0                                           	test   al,al
  6cf406:	74 08                                           	je     0x6cf410
  6cf408:	8b ce                                           	mov    ecx,esi
  6cf40a:	5e                                              	pop    esi
  6cf40b:	e9 e0 fe ff ff                                  	jmp    0x6cf2f0
  6cf410:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cf413:	80 66 42 f7                                     	and    BYTE PTR [esi+0x42],0xf7
  6cf417:	85 c9                                           	test   ecx,ecx
  6cf419:	74 0b                                           	je     0x6cf426
  6cf41b:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  6cf41e:	6a 00                                           	push   0x0
  6cf420:	52                                              	push   edx
  6cf421:	e8 ea a5 ff ff                                  	call   0x6c9a10
  6cf426:	5e                                              	pop    esi
  6cf427:	c3                                              	ret
