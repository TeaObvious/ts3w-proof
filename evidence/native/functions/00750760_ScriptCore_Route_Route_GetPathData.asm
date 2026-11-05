# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750760 (ScriptCore.Route::Route_GetPathData)
Paired Ghidra pseudocode: 00750760_ScriptCore_Route_Route_GetPathData.c
Window: [0x00750760, 0x00750860) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750760: 8b 0d c4 50 1d 01 83 ec 40 85 c9 53 56 57 0f 84
00750770: a3 00 00 00 8b 44 24 54 50 e8 32 ad ff ff 8b d8
00750780: 85 db 0f 84 91 00 00 00 8b 13 8b 42 10 8b cb ff
00750790: d0 8b 83 e0 00 00 00 8b 54 24 58 8d 8b e0 00 00
007507a0: 00 3b c1 74 74 85 d2 74 09 8b 00 83 ea 01 3b c1
007507b0: 75 f3 3b c1 74 63 8b 40 08 85 c0 74 5c 8b 10 8b
007507c0: c8 8b 42 30 ff d0 8b 48 08 89 4c 24 14 8b 50 0c
007507d0: 89 54 24 18 8b 08 83 c0 10 89 4c 24 0c 50 8d 4c
007507e0: 24 20 e8 19 b9 01 00 8b 13 8b 42 14 b9 08 00 00
007507f0: 00 8d 74 24 0c 8d 7c 24 2c f3 a5 8b cb ff d0 8b
00750800: 44 24 50 8d 74 24 2c b9 08 00 00 00 8b f8 f3 a5
00750810: 5f 5e 5b 83 c4 40 c3 33 db 33 c0 85 db 89 44 24
00750820: 0c 89 44 24 10 89 44 24 14 89 44 24 18 89 44 24
00750830: 1c 89 44 24 20 89 44 24 24 89 44 24 28 74 09 8b
00750840: 13 8b 42 14 8b cb ff d0 8b 44 24 50 8d 74 24 0c
00750850: b9 08 00 00 00 8b f8 f3 a5 5f 5e 5b 83 c4 40 c3

LINEAR DISASSEMBLY
00750760 <.text+0x34f760>:
  750760:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  750766:	83 ec 40                                        	sub    esp,0x40
  750769:	85 c9                                           	test   ecx,ecx
  75076b:	53                                              	push   ebx
  75076c:	56                                              	push   esi
  75076d:	57                                              	push   edi
  75076e:	0f 84 a3 00 00 00                               	je     0x750817
  750774:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  750778:	50                                              	push   eax
  750779:	e8 32 ad ff ff                                  	call   0x74b4b0
  75077e:	8b d8                                           	mov    ebx,eax
  750780:	85 db                                           	test   ebx,ebx
  750782:	0f 84 91 00 00 00                               	je     0x750819
  750788:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75078a:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  75078d:	8b cb                                           	mov    ecx,ebx
  75078f:	ff d0                                           	call   eax
  750791:	8b 83 e0 00 00 00                               	mov    eax,DWORD PTR [ebx+0xe0]
  750797:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
  75079b:	8d 8b e0 00 00 00                               	lea    ecx,[ebx+0xe0]
  7507a1:	3b c1                                           	cmp    eax,ecx
  7507a3:	74 74                                           	je     0x750819
  7507a5:	85 d2                                           	test   edx,edx
  7507a7:	74 09                                           	je     0x7507b2
  7507a9:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7507ab:	83 ea 01                                        	sub    edx,0x1
  7507ae:	3b c1                                           	cmp    eax,ecx
  7507b0:	75 f3                                           	jne    0x7507a5
  7507b2:	3b c1                                           	cmp    eax,ecx
  7507b4:	74 63                                           	je     0x750819
  7507b6:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  7507b9:	85 c0                                           	test   eax,eax
  7507bb:	74 5c                                           	je     0x750819
  7507bd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7507bf:	8b c8                                           	mov    ecx,eax
  7507c1:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  7507c4:	ff d0                                           	call   eax
  7507c6:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  7507c9:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  7507cd:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  7507d0:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  7507d4:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7507d6:	83 c0 10                                        	add    eax,0x10
  7507d9:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  7507dd:	50                                              	push   eax
  7507de:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7507e2:	e8 19 b9 01 00                                  	call   0x76c100
  7507e7:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7507e9:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7507ec:	b9 08 00 00 00                                  	mov    ecx,0x8
  7507f1:	8d 74 24 0c                                     	lea    esi,[esp+0xc]
  7507f5:	8d 7c 24 2c                                     	lea    edi,[esp+0x2c]
  7507f9:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7507fb:	8b cb                                           	mov    ecx,ebx
  7507fd:	ff d0                                           	call   eax
  7507ff:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  750803:	8d 74 24 2c                                     	lea    esi,[esp+0x2c]
  750807:	b9 08 00 00 00                                  	mov    ecx,0x8
  75080c:	8b f8                                           	mov    edi,eax
  75080e:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  750810:	5f                                              	pop    edi
  750811:	5e                                              	pop    esi
  750812:	5b                                              	pop    ebx
  750813:	83 c4 40                                        	add    esp,0x40
  750816:	c3                                              	ret
  750817:	33 db                                           	xor    ebx,ebx
  750819:	33 c0                                           	xor    eax,eax
  75081b:	85 db                                           	test   ebx,ebx
  75081d:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  750821:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  750825:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  750829:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  75082d:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  750831:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  750835:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  750839:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  75083d:	74 09                                           	je     0x750848
  75083f:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  750841:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  750844:	8b cb                                           	mov    ecx,ebx
  750846:	ff d0                                           	call   eax
  750848:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  75084c:	8d 74 24 0c                                     	lea    esi,[esp+0xc]
  750850:	b9 08 00 00 00                                  	mov    ecx,0x8
  750855:	8b f8                                           	mov    edi,eax
  750857:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  750859:	5f                                              	pop    edi
  75085a:	5e                                              	pop    esi
  75085b:	5b                                              	pop    ebx
  75085c:	83 c4 40                                        	add    esp,0x40
  75085f:	c3                                              	ret
