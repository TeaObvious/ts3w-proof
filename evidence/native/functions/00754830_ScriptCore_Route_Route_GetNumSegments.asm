# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754830 (ScriptCore.Route::Route_GetNumSegments)
Paired Ghidra pseudocode: 00754830_ScriptCore_Route_Route_GetNumSegments.c
Window: [0x00754830, 0x007548d0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x007548d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754830: 51 8b 44 24 08 8b 0d c4 50 1d 01 53 56 50 e8 6d
00754840: 6c ff ff 8b d8 85 db 74 7f 8b 13 8b 42 10 8b cb
00754850: ff d0 80 bb f4 00 00 00 00 74 08 8b b3 ec 00 00
00754860: 00 eb 0f 8d 83 e0 00 00 00 39 00 74 52 8b 08 8b
00754870: 71 08 85 f6 74 49 55 57 8d 7e 04 8b d7 b8 01 00
00754880: 00 00 f0 0f c1 02 8b 16 8b 42 4c 8b ce ff d0 8b
00754890: e8 8b cf 83 ca ff f0 0f c1 11 4a 75 11 b8 01 00
007548a0: 00 00 87 07 8b 16 8b 02 6a 01 8b ce ff d0 8b 13
007548b0: 8b 42 14 8b cb ff d0 5f 8b c5 5d 5e 5b 59 c3 8b
007548c0: 13 8b 42 14 8b cb ff d0 5e 33 c0 5b 59 c3 cc cc

LINEAR DISASSEMBLY
00754830 <.text+0x353830>:
  754830:	51                                              	push   ecx
  754831:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  754835:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75483b:	53                                              	push   ebx
  75483c:	56                                              	push   esi
  75483d:	50                                              	push   eax
  75483e:	e8 6d 6c ff ff                                  	call   0x74b4b0
  754843:	8b d8                                           	mov    ebx,eax
  754845:	85 db                                           	test   ebx,ebx
  754847:	74 7f                                           	je     0x7548c8
  754849:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75484b:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  75484e:	8b cb                                           	mov    ecx,ebx
  754850:	ff d0                                           	call   eax
  754852:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
  754859:	74 08                                           	je     0x754863
  75485b:	8b b3 ec 00 00 00                               	mov    esi,DWORD PTR [ebx+0xec]
  754861:	eb 0f                                           	jmp    0x754872
  754863:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  754869:	39 00                                           	cmp    DWORD PTR [eax],eax
  75486b:	74 52                                           	je     0x7548bf
  75486d:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  75486f:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  754872:	85 f6                                           	test   esi,esi
  754874:	74 49                                           	je     0x7548bf
  754876:	55                                              	push   ebp
  754877:	57                                              	push   edi
  754878:	8d 7e 04                                        	lea    edi,[esi+0x4]
  75487b:	8b d7                                           	mov    edx,edi
  75487d:	b8 01 00 00 00                                  	mov    eax,0x1
  754882:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  754886:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754888:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
  75488b:	8b ce                                           	mov    ecx,esi
  75488d:	ff d0                                           	call   eax
  75488f:	8b e8                                           	mov    ebp,eax
  754891:	8b cf                                           	mov    ecx,edi
  754893:	83 ca ff                                        	or     edx,0xffffffff
  754896:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75489a:	4a                                              	dec    edx
  75489b:	75 11                                           	jne    0x7548ae
  75489d:	b8 01 00 00 00                                  	mov    eax,0x1
  7548a2:	87 07                                           	xchg   DWORD PTR [edi],eax
  7548a4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7548a6:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7548a8:	6a 01                                           	push   0x1
  7548aa:	8b ce                                           	mov    ecx,esi
  7548ac:	ff d0                                           	call   eax
  7548ae:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7548b0:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7548b3:	8b cb                                           	mov    ecx,ebx
  7548b5:	ff d0                                           	call   eax
  7548b7:	5f                                              	pop    edi
  7548b8:	8b c5                                           	mov    eax,ebp
  7548ba:	5d                                              	pop    ebp
  7548bb:	5e                                              	pop    esi
  7548bc:	5b                                              	pop    ebx
  7548bd:	59                                              	pop    ecx
  7548be:	c3                                              	ret
  7548bf:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7548c1:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7548c4:	8b cb                                           	mov    ecx,ebx
  7548c6:	ff d0                                           	call   eax
  7548c8:	5e                                              	pop    esi
  7548c9:	33 c0                                           	xor    eax,eax
  7548cb:	5b                                              	pop    ebx
  7548cc:	59                                              	pop    ecx
  7548cd:	c3                                              	ret
  7548ce:	cc                                              	int3
  7548cf:	cc                                              	int3
