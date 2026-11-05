# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753d70 (ScriptCore.Route::Route_GetLastCompletedSegment)
Paired Ghidra pseudocode: 00753D70_ScriptCore_Route_Route_GetLastCompletedSegment.c
Window: [0x00753d70, 0x00753e20) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753d70: 51 8b 0d c4 50 1d 01 85 c9 56 57 0f 84 96 00 00
00753d80: 00 8b 44 24 10 50 e8 25 77 ff ff 8b f8 85 ff 0f
00753d90: 84 82 00 00 00 8b 17 8b 42 10 8b cf ff d0 80 bf
00753da0: f4 00 00 00 00 74 08 8b b7 ec 00 00 00 eb 0f 8d
00753db0: 87 e0 00 00 00 39 00 74 55 8b 08 8b 71 08 85 f6
00753dc0: 74 4c 53 8d 5e 04 55 8b d3 b8 01 00 00 00 f0 0f
00753dd0: c1 02 8b 16 8b 82 b4 00 00 00 8b ce ff d0 8b e8
00753de0: 8b cb 83 ca ff f0 0f c1 11 4a 75 11 b8 01 00 00
00753df0: 00 87 03 8b 16 8b 02 6a 01 8b ce ff d0 8b 17 8b
00753e00: 42 14 8b cf ff d0 8b c5 5d 5b 5f 5e 59 c3 8b 17
00753e10: 8b 42 14 8b cf ff d0 5f 33 c0 5e 59 c3 cc cc cc

LINEAR DISASSEMBLY
00753d70 <.text+0x352d70>:
  753d70:	51                                              	push   ecx
  753d71:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753d77:	85 c9                                           	test   ecx,ecx
  753d79:	56                                              	push   esi
  753d7a:	57                                              	push   edi
  753d7b:	0f 84 96 00 00 00                               	je     0x753e17
  753d81:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  753d85:	50                                              	push   eax
  753d86:	e8 25 77 ff ff                                  	call   0x74b4b0
  753d8b:	8b f8                                           	mov    edi,eax
  753d8d:	85 ff                                           	test   edi,edi
  753d8f:	0f 84 82 00 00 00                               	je     0x753e17
  753d95:	8b 17                                           	mov    edx,DWORD PTR [edi]
  753d97:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753d9a:	8b cf                                           	mov    ecx,edi
  753d9c:	ff d0                                           	call   eax
  753d9e:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  753da5:	74 08                                           	je     0x753daf
  753da7:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  753dad:	eb 0f                                           	jmp    0x753dbe
  753daf:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  753db5:	39 00                                           	cmp    DWORD PTR [eax],eax
  753db7:	74 55                                           	je     0x753e0e
  753db9:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  753dbb:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  753dbe:	85 f6                                           	test   esi,esi
  753dc0:	74 4c                                           	je     0x753e0e
  753dc2:	53                                              	push   ebx
  753dc3:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  753dc6:	55                                              	push   ebp
  753dc7:	8b d3                                           	mov    edx,ebx
  753dc9:	b8 01 00 00 00                                  	mov    eax,0x1
  753dce:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  753dd2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753dd4:	8b 82 b4 00 00 00                               	mov    eax,DWORD PTR [edx+0xb4]
  753dda:	8b ce                                           	mov    ecx,esi
  753ddc:	ff d0                                           	call   eax
  753dde:	8b e8                                           	mov    ebp,eax
  753de0:	8b cb                                           	mov    ecx,ebx
  753de2:	83 ca ff                                        	or     edx,0xffffffff
  753de5:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  753de9:	4a                                              	dec    edx
  753dea:	75 11                                           	jne    0x753dfd
  753dec:	b8 01 00 00 00                                  	mov    eax,0x1
  753df1:	87 03                                           	xchg   DWORD PTR [ebx],eax
  753df3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753df5:	8b 02                                           	mov    eax,DWORD PTR [edx]
  753df7:	6a 01                                           	push   0x1
  753df9:	8b ce                                           	mov    ecx,esi
  753dfb:	ff d0                                           	call   eax
  753dfd:	8b 17                                           	mov    edx,DWORD PTR [edi]
  753dff:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  753e02:	8b cf                                           	mov    ecx,edi
  753e04:	ff d0                                           	call   eax
  753e06:	8b c5                                           	mov    eax,ebp
  753e08:	5d                                              	pop    ebp
  753e09:	5b                                              	pop    ebx
  753e0a:	5f                                              	pop    edi
  753e0b:	5e                                              	pop    esi
  753e0c:	59                                              	pop    ecx
  753e0d:	c3                                              	ret
  753e0e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  753e10:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  753e13:	8b cf                                           	mov    ecx,edi
  753e15:	ff d0                                           	call   eax
  753e17:	5f                                              	pop    edi
  753e18:	33 c0                                           	xor    eax,eax
  753e1a:	5e                                              	pop    esi
  753e1b:	59                                              	pop    ecx
  753e1c:	c3                                              	ret
  753e1d:	cc                                              	int3
  753e1e:	cc                                              	int3
  753e1f:	cc                                              	int3
