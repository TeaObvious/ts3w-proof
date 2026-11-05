# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753cb0 (ScriptCore.Route::Route_GetDistanceBetweenSegments)
Paired Ghidra pseudocode: 00753CB0_ScriptCore_Route_Route_GetDistanceBetweenSegments.c
Window: [0x00753cb0, 0x00753d70) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753cb0: 8b 0d c4 50 1d 01 83 ec 08 85 c9 56 57 0f 84 a1
00753cc0: 00 00 00 8b 44 24 14 50 e8 e3 77 ff ff 8b f8 85
00753cd0: ff 0f 84 8d 00 00 00 8b 17 8b 42 10 8b cf ff d0
00753ce0: 80 bf f4 00 00 00 00 74 08 8b b7 ec 00 00 00 eb
00753cf0: 0f 8d 87 e0 00 00 00 39 00 74 60 8b 08 8b 71 08
00753d00: 85 f6 74 57 53 8d 5e 04 8b d3 b8 01 00 00 00 f0
00753d10: 0f c1 02 8b 44 24 20 8b 4c 24 1c 8b 16 8b 52 70
00753d20: 50 51 8b ce ff d2 d9 5c 24 0c 8b c3 83 c9 ff f0
00753d30: 0f c1 08 49 75 11 ba 01 00 00 00 87 13 8b 06 8b
00753d40: 10 6a 01 8b ce ff d2 8b 07 8b 50 14 8b cf ff d2
00753d50: d9 44 24 0c 5b 5f 5e 83 c4 08 c3 8b 07 8b 50 14
00753d60: 8b cf ff d2 d9 ee 5f 5e 83 c4 08 c3 cc cc cc cc

LINEAR DISASSEMBLY
00753cb0 <.text+0x352cb0>:
  753cb0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753cb6:	83 ec 08                                        	sub    esp,0x8
  753cb9:	85 c9                                           	test   ecx,ecx
  753cbb:	56                                              	push   esi
  753cbc:	57                                              	push   edi
  753cbd:	0f 84 a1 00 00 00                               	je     0x753d64
  753cc3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  753cc7:	50                                              	push   eax
  753cc8:	e8 e3 77 ff ff                                  	call   0x74b4b0
  753ccd:	8b f8                                           	mov    edi,eax
  753ccf:	85 ff                                           	test   edi,edi
  753cd1:	0f 84 8d 00 00 00                               	je     0x753d64
  753cd7:	8b 17                                           	mov    edx,DWORD PTR [edi]
  753cd9:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753cdc:	8b cf                                           	mov    ecx,edi
  753cde:	ff d0                                           	call   eax
  753ce0:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  753ce7:	74 08                                           	je     0x753cf1
  753ce9:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  753cef:	eb 0f                                           	jmp    0x753d00
  753cf1:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  753cf7:	39 00                                           	cmp    DWORD PTR [eax],eax
  753cf9:	74 60                                           	je     0x753d5b
  753cfb:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  753cfd:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  753d00:	85 f6                                           	test   esi,esi
  753d02:	74 57                                           	je     0x753d5b
  753d04:	53                                              	push   ebx
  753d05:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  753d08:	8b d3                                           	mov    edx,ebx
  753d0a:	b8 01 00 00 00                                  	mov    eax,0x1
  753d0f:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  753d13:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  753d17:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  753d1b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753d1d:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  753d20:	50                                              	push   eax
  753d21:	51                                              	push   ecx
  753d22:	8b ce                                           	mov    ecx,esi
  753d24:	ff d2                                           	call   edx
  753d26:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  753d2a:	8b c3                                           	mov    eax,ebx
  753d2c:	83 c9 ff                                        	or     ecx,0xffffffff
  753d2f:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  753d33:	49                                              	dec    ecx
  753d34:	75 11                                           	jne    0x753d47
  753d36:	ba 01 00 00 00                                  	mov    edx,0x1
  753d3b:	87 13                                           	xchg   DWORD PTR [ebx],edx
  753d3d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  753d3f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  753d41:	6a 01                                           	push   0x1
  753d43:	8b ce                                           	mov    ecx,esi
  753d45:	ff d2                                           	call   edx
  753d47:	8b 07                                           	mov    eax,DWORD PTR [edi]
  753d49:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  753d4c:	8b cf                                           	mov    ecx,edi
  753d4e:	ff d2                                           	call   edx
  753d50:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  753d54:	5b                                              	pop    ebx
  753d55:	5f                                              	pop    edi
  753d56:	5e                                              	pop    esi
  753d57:	83 c4 08                                        	add    esp,0x8
  753d5a:	c3                                              	ret
  753d5b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  753d5d:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  753d60:	8b cf                                           	mov    ecx,edi
  753d62:	ff d2                                           	call   edx
  753d64:	d9 ee                                           	fldz
  753d66:	5f                                              	pop    edi
  753d67:	5e                                              	pop    esi
  753d68:	83 c4 08                                        	add    esp,0x8
  753d6b:	c3                                              	ret
  753d6c:	cc                                              	int3
  753d6d:	cc                                              	int3
  753d6e:	cc                                              	int3
  753d6f:	cc                                              	int3
