# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007929f0 (ScriptCore.World::World_FindPondRepresentativePositions)
Paired Ghidra pseudocode: 007929F0_ScriptCore_World_World_FindPondRepresentativePositions.c
Window: [0x007929f0, 0x00792ad0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00792ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007929f0: 8b 0d c4 db 1e 01 83 ec 10 85 c9 56 0f 84 c2 00
00792a00: 00 00 8b 44 24 18 8b 54 24 1c 8b f0 0b f2 0f 84
00792a10: b0 00 00 00 6a 00 52 50 e8 f3 fd 4c 00 85 c0 0f
00792a20: 84 9f 00 00 00 8d 4c 24 04 51 8b c8 c7 44 24 08
00792a30: 00 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24 10
00792a40: 00 00 00 00 c7 44 24 14 b8 1a 01 01 e8 4f 1e 32
00792a50: 00 8b 44 24 04 3b 44 24 08 74 5c 57 e8 2f 69 fd
00792a60: ff 8b 7c 24 24 8b f0 8b 44 24 0c 2b 44 24 08 8b
00792a70: 16 8b 92 90 00 00 00 c1 f8 02 50 57 8b ce ff d2
00792a80: 8b 44 24 08 8b 4c 24 0c 8b 16 8b 92 a8 00 00 00
00792a90: 2b c8 c1 f9 02 51 6a 00 50 57 8b ce ff d2 8b 44
00792aa0: 24 08 85 c0 5f 74 09 50 e8 33 1a d5 ff 83 c4 04
00792ab0: b0 01 5e 83 c4 10 c3 85 c0 74 09 50 e8 1f 1a d5
00792ac0: ff 83 c4 04 32 c0 5e 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007929f0 <.text+0x3919f0>:
  7929f0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7929f6:	83 ec 10                                        	sub    esp,0x10
  7929f9:	85 c9                                           	test   ecx,ecx
  7929fb:	56                                              	push   esi
  7929fc:	0f 84 c2 00 00 00                               	je     0x792ac4
  792a02:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  792a06:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  792a0a:	8b f0                                           	mov    esi,eax
  792a0c:	0b f2                                           	or     esi,edx
  792a0e:	0f 84 b0 00 00 00                               	je     0x792ac4
  792a14:	6a 00                                           	push   0x0
  792a16:	52                                              	push   edx
  792a17:	50                                              	push   eax
  792a18:	e8 f3 fd 4c 00                                  	call   0xc62810
  792a1d:	85 c0                                           	test   eax,eax
  792a1f:	0f 84 9f 00 00 00                               	je     0x792ac4
  792a25:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  792a29:	51                                              	push   ecx
  792a2a:	8b c8                                           	mov    ecx,eax
  792a2c:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  792a34:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  792a3c:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  792a44:	c7 44 24 14 b8 1a 01 01                         	mov    DWORD PTR [esp+0x14],0x1011ab8
  792a4c:	e8 4f 1e 32 00                                  	call   0xab48a0
  792a51:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  792a55:	3b 44 24 08                                     	cmp    eax,DWORD PTR [esp+0x8]
  792a59:	74 5c                                           	je     0x792ab7
  792a5b:	57                                              	push   edi
  792a5c:	e8 2f 69 fd ff                                  	call   0x769390
  792a61:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  792a65:	8b f0                                           	mov    esi,eax
  792a67:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  792a6b:	2b 44 24 08                                     	sub    eax,DWORD PTR [esp+0x8]
  792a6f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  792a71:	8b 92 90 00 00 00                               	mov    edx,DWORD PTR [edx+0x90]
  792a77:	c1 f8 02                                        	sar    eax,0x2
  792a7a:	50                                              	push   eax
  792a7b:	57                                              	push   edi
  792a7c:	8b ce                                           	mov    ecx,esi
  792a7e:	ff d2                                           	call   edx
  792a80:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  792a84:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  792a88:	8b 16                                           	mov    edx,DWORD PTR [esi]
  792a8a:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  792a90:	2b c8                                           	sub    ecx,eax
  792a92:	c1 f9 02                                        	sar    ecx,0x2
  792a95:	51                                              	push   ecx
  792a96:	6a 00                                           	push   0x0
  792a98:	50                                              	push   eax
  792a99:	57                                              	push   edi
  792a9a:	8b ce                                           	mov    ecx,esi
  792a9c:	ff d2                                           	call   edx
  792a9e:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  792aa2:	85 c0                                           	test   eax,eax
  792aa4:	5f                                              	pop    edi
  792aa5:	74 09                                           	je     0x792ab0
  792aa7:	50                                              	push   eax
  792aa8:	e8 33 1a d5 ff                                  	call   0x4e44e0
  792aad:	83 c4 04                                        	add    esp,0x4
  792ab0:	b0 01                                           	mov    al,0x1
  792ab2:	5e                                              	pop    esi
  792ab3:	83 c4 10                                        	add    esp,0x10
  792ab6:	c3                                              	ret
  792ab7:	85 c0                                           	test   eax,eax
  792ab9:	74 09                                           	je     0x792ac4
  792abb:	50                                              	push   eax
  792abc:	e8 1f 1a d5 ff                                  	call   0x4e44e0
  792ac1:	83 c4 04                                        	add    esp,0x4
  792ac4:	32 c0                                           	xor    al,al
  792ac6:	5e                                              	pop    esi
  792ac7:	83 c4 10                                        	add    esp,0x10
  792aca:	c3                                              	ret
  792acb:	cc                                              	int3
  792acc:	cc                                              	int3
  792acd:	cc                                              	int3
  792ace:	cc                                              	int3
  792acf:	cc                                              	int3
