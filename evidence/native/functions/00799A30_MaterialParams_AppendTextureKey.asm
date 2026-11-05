# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00799a30 (MaterialParams_AppendTextureKey)
Paired actual Ghidra pseudocode: 00799A30_MaterialParams_AppendTextureKey.c
Envelope [0x00799a30,0x00799a73); 67 bytes; exact owned ranges: [0x00799a30,0x00799a73)
Owned: 67 original bytes / 20 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00799a30 <original>:
  799a30:	83 ec 14                                        	sub    esp,0x14
  799a33:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  799a37:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  799a3b:	89 04 24                                        	mov    DWORD PTR [esp],eax
  799a3e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  799a42:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  799a46:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  799a4a:	6a 05                                           	push   0x5
  799a4c:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  799a50:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  799a54:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  799a58:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  799a5c:	52                                              	push   edx
  799a5d:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  799a61:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  799a65:	6a 04                                           	push   0x4
  799a67:	50                                              	push   eax
  799a68:	e8 a3 fe ff ff                                  	call   0x799910
  799a6d:	83 c4 14                                        	add    esp,0x14
  799a70:	c2 18 00                                        	ret    0x18
