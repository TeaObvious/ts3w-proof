# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x00775870; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00775870 (ScriptCore.StreamHost::StreamHost_Create)
Paired Ghidra pseudocode: 00775870_ScriptCore_StreamHost_StreamHost_Create.c
Window: [0x00775870, 0x007758f0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x007758f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00775870: 56 6a 00 6a 00 6a 00 6a 00 68 8c d7 00 01 6a 2c
00775880: e8 7b ec d6 ff 83 c4 18 85 c0 74 5d 6a 00 6a 00
00775890: 6a 00 8b c8 e8 c7 9b d6 ff 8b f0 85 f6 74 4a 8b
007758a0: 06 8b 50 04 8b ce ff d2 d9 e8 57 51 d9 1c 24 6a
007758b0: 01 8b ce e8 88 95 d6 ff e8 d3 3a ff ff 8b 10 6a
007758c0: 60 8b c8 8b 82 c8 00 00 00 56 ff d0 8b f8 85 ff
007758d0: 74 09 8b 16 8b 42 04 8b ce ff d0 8b 16 8b 42 08
007758e0: 8b ce ff d0 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
00775870 <.text+0x374870>:
  775870:	56                                              	push   esi
  775871:	6a 00                                           	push   0x0
  775873:	6a 00                                           	push   0x0
  775875:	6a 00                                           	push   0x0
  775877:	6a 00                                           	push   0x0
  775879:	68 8c d7 00 01                                  	push   0x100d78c
  77587e:	6a 2c                                           	push   0x2c
  775880:	e8 7b ec d6 ff                                  	call   0x4e4500
  775885:	83 c4 18                                        	add    esp,0x18
  775888:	85 c0                                           	test   eax,eax
  77588a:	74 5d                                           	je     0x7758e9
  77588c:	6a 00                                           	push   0x0
  77588e:	6a 00                                           	push   0x0
  775890:	6a 00                                           	push   0x0
  775892:	8b c8                                           	mov    ecx,eax
  775894:	e8 c7 9b d6 ff                                  	call   0x4df460
  775899:	8b f0                                           	mov    esi,eax
  77589b:	85 f6                                           	test   esi,esi
  77589d:	74 4a                                           	je     0x7758e9
  77589f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7758a1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7758a4:	8b ce                                           	mov    ecx,esi
  7758a6:	ff d2                                           	call   edx
  7758a8:	d9 e8                                           	fld1
  7758aa:	57                                              	push   edi
  7758ab:	51                                              	push   ecx
  7758ac:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7758af:	6a 01                                           	push   0x1
  7758b1:	8b ce                                           	mov    ecx,esi
  7758b3:	e8 88 95 d6 ff                                  	call   0x4dee40
  7758b8:	e8 d3 3a ff ff                                  	call   0x769390
  7758bd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7758bf:	6a 60                                           	push   0x60
  7758c1:	8b c8                                           	mov    ecx,eax
  7758c3:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  7758c9:	56                                              	push   esi
  7758ca:	ff d0                                           	call   eax
  7758cc:	8b f8                                           	mov    edi,eax
  7758ce:	85 ff                                           	test   edi,edi
  7758d0:	74 09                                           	je     0x7758db
  7758d2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7758d4:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7758d7:	8b ce                                           	mov    ecx,esi
  7758d9:	ff d0                                           	call   eax
  7758db:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7758dd:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  7758e0:	8b ce                                           	mov    ecx,esi
  7758e2:	ff d0                                           	call   eax
  7758e4:	8b c7                                           	mov    eax,edi
  7758e6:	5f                                              	pop    edi
  7758e7:	5e                                              	pop    esi
  7758e8:	c3                                              	ret
  7758e9:	33 c0                                           	xor    eax,eax
  7758eb:	5e                                              	pop    esi
  7758ec:	c3                                              	ret
  7758ed:	cc                                              	int3
  7758ee:	cc                                              	int3
  7758ef:	cc                                              	int3
