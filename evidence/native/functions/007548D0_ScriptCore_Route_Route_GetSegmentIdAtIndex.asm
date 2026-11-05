# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007548d0 (ScriptCore.Route::Route_GetSegmentIdAtIndex)
Paired Ghidra pseudocode: 007548D0_ScriptCore_Route_Route_GetSegmentIdAtIndex.c
Window: [0x007548d0, 0x00754990) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007548d0: 55 8b ec 83 e4 f0 8b 45 08 8b 0d c4 50 1d 01 83
007548e0: ec 44 53 56 57 50 e8 c5 6b ff ff 8b d8 85 db 0f
007548f0: 84 92 00 00 00 8b 13 8b 42 10 8b cb ff d0 80 bb
00754900: f4 00 00 00 00 74 08 8b b3 ec 00 00 00 eb 0f 8d
00754910: 83 e0 00 00 00 39 00 74 65 8b 08 8b 71 08 85 f6
00754920: 74 5c 8d 7e 04 8b d7 b8 01 00 00 00 f0 0f c1 02
00754930: 8b 4d 0c 8b 16 8b 92 d8 00 00 00 8d 44 24 20 50
00754940: 51 8b ce ff d2 8b 44 24 48 89 44 24 18 8b cf 83
00754950: ca ff f0 0f c1 11 4a 75 11 b8 01 00 00 00 87 07
00754960: 8b 16 8b 02 6a 01 8b ce ff d0 8b 13 8b 42 14 8b
00754970: cb ff d0 8b 44 24 18 5f 5e 5b 8b e5 5d c3 8b 13
00754980: 8b 42 14 8b cb ff d0 5f 5e 33 c0 5b 8b e5 5d c3

LINEAR DISASSEMBLY
007548d0 <.text+0x3538d0>:
  7548d0:	55                                              	push   ebp
  7548d1:	8b ec                                           	mov    ebp,esp
  7548d3:	83 e4 f0                                        	and    esp,0xfffffff0
  7548d6:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  7548d9:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7548df:	83 ec 44                                        	sub    esp,0x44
  7548e2:	53                                              	push   ebx
  7548e3:	56                                              	push   esi
  7548e4:	57                                              	push   edi
  7548e5:	50                                              	push   eax
  7548e6:	e8 c5 6b ff ff                                  	call   0x74b4b0
  7548eb:	8b d8                                           	mov    ebx,eax
  7548ed:	85 db                                           	test   ebx,ebx
  7548ef:	0f 84 92 00 00 00                               	je     0x754987
  7548f5:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7548f7:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7548fa:	8b cb                                           	mov    ecx,ebx
  7548fc:	ff d0                                           	call   eax
  7548fe:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
  754905:	74 08                                           	je     0x75490f
  754907:	8b b3 ec 00 00 00                               	mov    esi,DWORD PTR [ebx+0xec]
  75490d:	eb 0f                                           	jmp    0x75491e
  75490f:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  754915:	39 00                                           	cmp    DWORD PTR [eax],eax
  754917:	74 65                                           	je     0x75497e
  754919:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  75491b:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  75491e:	85 f6                                           	test   esi,esi
  754920:	74 5c                                           	je     0x75497e
  754922:	8d 7e 04                                        	lea    edi,[esi+0x4]
  754925:	8b d7                                           	mov    edx,edi
  754927:	b8 01 00 00 00                                  	mov    eax,0x1
  75492c:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  754930:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  754933:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754935:	8b 92 d8 00 00 00                               	mov    edx,DWORD PTR [edx+0xd8]
  75493b:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  75493f:	50                                              	push   eax
  754940:	51                                              	push   ecx
  754941:	8b ce                                           	mov    ecx,esi
  754943:	ff d2                                           	call   edx
  754945:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  754949:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  75494d:	8b cf                                           	mov    ecx,edi
  75494f:	83 ca ff                                        	or     edx,0xffffffff
  754952:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  754956:	4a                                              	dec    edx
  754957:	75 11                                           	jne    0x75496a
  754959:	b8 01 00 00 00                                  	mov    eax,0x1
  75495e:	87 07                                           	xchg   DWORD PTR [edi],eax
  754960:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754962:	8b 02                                           	mov    eax,DWORD PTR [edx]
  754964:	6a 01                                           	push   0x1
  754966:	8b ce                                           	mov    ecx,esi
  754968:	ff d0                                           	call   eax
  75496a:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75496c:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75496f:	8b cb                                           	mov    ecx,ebx
  754971:	ff d0                                           	call   eax
  754973:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  754977:	5f                                              	pop    edi
  754978:	5e                                              	pop    esi
  754979:	5b                                              	pop    ebx
  75497a:	8b e5                                           	mov    esp,ebp
  75497c:	5d                                              	pop    ebp
  75497d:	c3                                              	ret
  75497e:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  754980:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  754983:	8b cb                                           	mov    ecx,ebx
  754985:	ff d0                                           	call   eax
  754987:	5f                                              	pop    edi
  754988:	5e                                              	pop    esi
  754989:	33 c0                                           	xor    eax,eax
  75498b:	5b                                              	pop    ebx
  75498c:	8b e5                                           	mov    esp,ebp
  75498e:	5d                                              	pop    ebp
  75498f:	c3                                              	ret
