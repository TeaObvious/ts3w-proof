# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754990 (ScriptCore.Route::Route_Split)
Paired Ghidra pseudocode: 00754990_ScriptCore_Route_Route_Split.c
Window: [0x00754990, 0x00754a40) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754990: 51 8b 44 24 08 8b 0d c4 50 1d 01 53 56 50 e8 0d
007549a0: 6b ff ff 8b d8 85 db 0f 84 87 00 00 00 8b 13 8b
007549b0: 42 10 8b cb ff d0 80 bb f4 00 00 00 00 74 08 8b
007549c0: b3 ec 00 00 00 eb 0f 8d 83 e0 00 00 00 39 00 74
007549d0: 5a 8b 08 8b 71 08 85 f6 74 51 55 57 8d 7e 04 8b
007549e0: d7 b8 01 00 00 00 f0 0f c1 02 8b 16 8b 44 24 1c
007549f0: 8b 92 f4 00 00 00 50 8b ce ff d2 8b e8 8b c7 83
00754a00: c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87 17
00754a10: 8b 06 8b 10 6a 01 8b ce ff d2 8b 03 8b 50 14 8b
00754a20: cb ff d2 5f 8b c5 5d 5e 5b 59 c3 8b 03 8b 50 14
00754a30: 8b cb ff d2 5e 33 c0 5b 59 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00754990 <.text+0x353990>:
  754990:	51                                              	push   ecx
  754991:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  754995:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75499b:	53                                              	push   ebx
  75499c:	56                                              	push   esi
  75499d:	50                                              	push   eax
  75499e:	e8 0d 6b ff ff                                  	call   0x74b4b0
  7549a3:	8b d8                                           	mov    ebx,eax
  7549a5:	85 db                                           	test   ebx,ebx
  7549a7:	0f 84 87 00 00 00                               	je     0x754a34
  7549ad:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7549af:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7549b2:	8b cb                                           	mov    ecx,ebx
  7549b4:	ff d0                                           	call   eax
  7549b6:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
  7549bd:	74 08                                           	je     0x7549c7
  7549bf:	8b b3 ec 00 00 00                               	mov    esi,DWORD PTR [ebx+0xec]
  7549c5:	eb 0f                                           	jmp    0x7549d6
  7549c7:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  7549cd:	39 00                                           	cmp    DWORD PTR [eax],eax
  7549cf:	74 5a                                           	je     0x754a2b
  7549d1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7549d3:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  7549d6:	85 f6                                           	test   esi,esi
  7549d8:	74 51                                           	je     0x754a2b
  7549da:	55                                              	push   ebp
  7549db:	57                                              	push   edi
  7549dc:	8d 7e 04                                        	lea    edi,[esi+0x4]
  7549df:	8b d7                                           	mov    edx,edi
  7549e1:	b8 01 00 00 00                                  	mov    eax,0x1
  7549e6:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7549ea:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7549ec:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7549f0:	8b 92 f4 00 00 00                               	mov    edx,DWORD PTR [edx+0xf4]
  7549f6:	50                                              	push   eax
  7549f7:	8b ce                                           	mov    ecx,esi
  7549f9:	ff d2                                           	call   edx
  7549fb:	8b e8                                           	mov    ebp,eax
  7549fd:	8b c7                                           	mov    eax,edi
  7549ff:	83 c9 ff                                        	or     ecx,0xffffffff
  754a02:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  754a06:	49                                              	dec    ecx
  754a07:	75 11                                           	jne    0x754a1a
  754a09:	ba 01 00 00 00                                  	mov    edx,0x1
  754a0e:	87 17                                           	xchg   DWORD PTR [edi],edx
  754a10:	8b 06                                           	mov    eax,DWORD PTR [esi]
  754a12:	8b 10                                           	mov    edx,DWORD PTR [eax]
  754a14:	6a 01                                           	push   0x1
  754a16:	8b ce                                           	mov    ecx,esi
  754a18:	ff d2                                           	call   edx
  754a1a:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  754a1c:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  754a1f:	8b cb                                           	mov    ecx,ebx
  754a21:	ff d2                                           	call   edx
  754a23:	5f                                              	pop    edi
  754a24:	8b c5                                           	mov    eax,ebp
  754a26:	5d                                              	pop    ebp
  754a27:	5e                                              	pop    esi
  754a28:	5b                                              	pop    ebx
  754a29:	59                                              	pop    ecx
  754a2a:	c3                                              	ret
  754a2b:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  754a2d:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  754a30:	8b cb                                           	mov    ecx,ebx
  754a32:	ff d2                                           	call   edx
  754a34:	5e                                              	pop    esi
  754a35:	33 c0                                           	xor    eax,eax
  754a37:	5b                                              	pop    ebx
  754a38:	59                                              	pop    ecx
  754a39:	c3                                              	ret
  754a3a:	cc                                              	int3
  754a3b:	cc                                              	int3
  754a3c:	cc                                              	int3
  754a3d:	cc                                              	int3
  754a3e:	cc                                              	int3
  754a3f:	cc                                              	int3
