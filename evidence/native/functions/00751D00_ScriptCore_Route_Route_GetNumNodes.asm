# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751d00 (ScriptCore.Route::Route_GetNumNodes)
Paired Ghidra pseudocode: 00751D00_ScriptCore_Route_Route_GetNumNodes.c
Window: [0x00751d00, 0x00751db0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751d00: 51 8b 0d c4 50 1d 01 85 c9 56 57 0f 84 8f 00 00
00751d10: 00 8b 44 24 10 50 e8 95 97 ff ff 8b f8 85 ff 74
00751d20: 7f 8b 17 8b 42 10 8b cf ff d0 80 bf f4 00 00 00
00751d30: 00 74 08 8b b7 ec 00 00 00 eb 0f 8d 87 e0 00 00
00751d40: 00 39 00 74 52 8b 08 8b 71 08 85 f6 74 49 53 8d
00751d50: 5e 04 55 8b d3 b8 01 00 00 00 f0 0f c1 02 8b 16
00751d60: 8b 42 48 8b ce ff d0 8b e8 8b cb 83 ca ff f0 0f
00751d70: c1 11 4a 75 11 b8 01 00 00 00 87 03 8b 16 8b 02
00751d80: 6a 01 8b ce ff d0 8b 17 8b 42 14 8b cf ff d0 8b
00751d90: c5 5d 5b 5f 5e 59 c3 8b 17 8b 42 14 8b cf ff d0
00751da0: 5f 33 c0 5e 59 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751d00 <.text+0x350d00>:
  751d00:	51                                              	push   ecx
  751d01:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751d07:	85 c9                                           	test   ecx,ecx
  751d09:	56                                              	push   esi
  751d0a:	57                                              	push   edi
  751d0b:	0f 84 8f 00 00 00                               	je     0x751da0
  751d11:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  751d15:	50                                              	push   eax
  751d16:	e8 95 97 ff ff                                  	call   0x74b4b0
  751d1b:	8b f8                                           	mov    edi,eax
  751d1d:	85 ff                                           	test   edi,edi
  751d1f:	74 7f                                           	je     0x751da0
  751d21:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751d23:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751d26:	8b cf                                           	mov    ecx,edi
  751d28:	ff d0                                           	call   eax
  751d2a:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  751d31:	74 08                                           	je     0x751d3b
  751d33:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  751d39:	eb 0f                                           	jmp    0x751d4a
  751d3b:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  751d41:	39 00                                           	cmp    DWORD PTR [eax],eax
  751d43:	74 52                                           	je     0x751d97
  751d45:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  751d47:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  751d4a:	85 f6                                           	test   esi,esi
  751d4c:	74 49                                           	je     0x751d97
  751d4e:	53                                              	push   ebx
  751d4f:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  751d52:	55                                              	push   ebp
  751d53:	8b d3                                           	mov    edx,ebx
  751d55:	b8 01 00 00 00                                  	mov    eax,0x1
  751d5a:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  751d5e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751d60:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  751d63:	8b ce                                           	mov    ecx,esi
  751d65:	ff d0                                           	call   eax
  751d67:	8b e8                                           	mov    ebp,eax
  751d69:	8b cb                                           	mov    ecx,ebx
  751d6b:	83 ca ff                                        	or     edx,0xffffffff
  751d6e:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  751d72:	4a                                              	dec    edx
  751d73:	75 11                                           	jne    0x751d86
  751d75:	b8 01 00 00 00                                  	mov    eax,0x1
  751d7a:	87 03                                           	xchg   DWORD PTR [ebx],eax
  751d7c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751d7e:	8b 02                                           	mov    eax,DWORD PTR [edx]
  751d80:	6a 01                                           	push   0x1
  751d82:	8b ce                                           	mov    ecx,esi
  751d84:	ff d0                                           	call   eax
  751d86:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751d88:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751d8b:	8b cf                                           	mov    ecx,edi
  751d8d:	ff d0                                           	call   eax
  751d8f:	8b c5                                           	mov    eax,ebp
  751d91:	5d                                              	pop    ebp
  751d92:	5b                                              	pop    ebx
  751d93:	5f                                              	pop    edi
  751d94:	5e                                              	pop    esi
  751d95:	59                                              	pop    ecx
  751d96:	c3                                              	ret
  751d97:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751d99:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751d9c:	8b cf                                           	mov    ecx,edi
  751d9e:	ff d0                                           	call   eax
  751da0:	5f                                              	pop    edi
  751da1:	33 c0                                           	xor    eax,eax
  751da3:	5e                                              	pop    esi
  751da4:	59                                              	pop    ecx
  751da5:	c3                                              	ret
  751da6:	cc                                              	int3
  751da7:	cc                                              	int3
  751da8:	cc                                              	int3
  751da9:	cc                                              	int3
  751daa:	cc                                              	int3
  751dab:	cc                                              	int3
  751dac:	cc                                              	int3
  751dad:	cc                                              	int3
  751dae:	cc                                              	int3
  751daf:	cc                                              	int3
