# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751bf0 (ScriptCore.Route::Route_GetPathLength)
Paired Ghidra pseudocode: 00751BF0_ScriptCore_Route_Route_GetPathLength.c
Window: [0x00751bf0, 0x00751cb0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751bf0: 8b 0d c4 50 1d 01 83 ec 08 85 c9 56 57 0f 84 a2
00751c00: 00 00 00 8b 44 24 14 50 e8 a3 98 ff ff 8b f8 85
00751c10: ff 0f 84 8e 00 00 00 8b 17 8b 42 10 8b cf ff d0
00751c20: 8b 87 e0 00 00 00 8b 54 24 18 8d 8f e0 00 00 00
00751c30: 3b c1 74 68 85 d2 74 09 8b 00 83 ea 01 3b c1 75
00751c40: f3 3b c1 74 57 8b 70 08 85 f6 74 50 53 8d 5e 04
00751c50: 8b cb ba 01 00 00 00 f0 0f c1 11 8b 06 8b 90 2c
00751c60: 01 00 00 8b ce ff d2 d9 5c 24 0c 8b c3 83 c9 ff
00751c70: f0 0f c1 08 49 75 11 ba 01 00 00 00 87 13 8b 06
00751c80: 8b 10 6a 01 8b ce ff d2 8b 07 8b 50 14 8b cf ff
00751c90: d2 d9 44 24 0c 5b 5f 5e 83 c4 08 c3 8b 07 8b 50
00751ca0: 14 8b cf ff d2 d9 ee 5f 5e 83 c4 08 c3 cc cc cc

LINEAR DISASSEMBLY
00751bf0 <.text+0x350bf0>:
  751bf0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751bf6:	83 ec 08                                        	sub    esp,0x8
  751bf9:	85 c9                                           	test   ecx,ecx
  751bfb:	56                                              	push   esi
  751bfc:	57                                              	push   edi
  751bfd:	0f 84 a2 00 00 00                               	je     0x751ca5
  751c03:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  751c07:	50                                              	push   eax
  751c08:	e8 a3 98 ff ff                                  	call   0x74b4b0
  751c0d:	8b f8                                           	mov    edi,eax
  751c0f:	85 ff                                           	test   edi,edi
  751c11:	0f 84 8e 00 00 00                               	je     0x751ca5
  751c17:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751c19:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751c1c:	8b cf                                           	mov    ecx,edi
  751c1e:	ff d0                                           	call   eax
  751c20:	8b 87 e0 00 00 00                               	mov    eax,DWORD PTR [edi+0xe0]
  751c26:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  751c2a:	8d 8f e0 00 00 00                               	lea    ecx,[edi+0xe0]
  751c30:	3b c1                                           	cmp    eax,ecx
  751c32:	74 68                                           	je     0x751c9c
  751c34:	85 d2                                           	test   edx,edx
  751c36:	74 09                                           	je     0x751c41
  751c38:	8b 00                                           	mov    eax,DWORD PTR [eax]
  751c3a:	83 ea 01                                        	sub    edx,0x1
  751c3d:	3b c1                                           	cmp    eax,ecx
  751c3f:	75 f3                                           	jne    0x751c34
  751c41:	3b c1                                           	cmp    eax,ecx
  751c43:	74 57                                           	je     0x751c9c
  751c45:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  751c48:	85 f6                                           	test   esi,esi
  751c4a:	74 50                                           	je     0x751c9c
  751c4c:	53                                              	push   ebx
  751c4d:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  751c50:	8b cb                                           	mov    ecx,ebx
  751c52:	ba 01 00 00 00                                  	mov    edx,0x1
  751c57:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  751c5b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  751c5d:	8b 90 2c 01 00 00                               	mov    edx,DWORD PTR [eax+0x12c]
  751c63:	8b ce                                           	mov    ecx,esi
  751c65:	ff d2                                           	call   edx
  751c67:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  751c6b:	8b c3                                           	mov    eax,ebx
  751c6d:	83 c9 ff                                        	or     ecx,0xffffffff
  751c70:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  751c74:	49                                              	dec    ecx
  751c75:	75 11                                           	jne    0x751c88
  751c77:	ba 01 00 00 00                                  	mov    edx,0x1
  751c7c:	87 13                                           	xchg   DWORD PTR [ebx],edx
  751c7e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  751c80:	8b 10                                           	mov    edx,DWORD PTR [eax]
  751c82:	6a 01                                           	push   0x1
  751c84:	8b ce                                           	mov    ecx,esi
  751c86:	ff d2                                           	call   edx
  751c88:	8b 07                                           	mov    eax,DWORD PTR [edi]
  751c8a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  751c8d:	8b cf                                           	mov    ecx,edi
  751c8f:	ff d2                                           	call   edx
  751c91:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  751c95:	5b                                              	pop    ebx
  751c96:	5f                                              	pop    edi
  751c97:	5e                                              	pop    esi
  751c98:	83 c4 08                                        	add    esp,0x8
  751c9b:	c3                                              	ret
  751c9c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  751c9e:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  751ca1:	8b cf                                           	mov    ecx,edi
  751ca3:	ff d2                                           	call   edx
  751ca5:	d9 ee                                           	fldz
  751ca7:	5f                                              	pop    edi
  751ca8:	5e                                              	pop    esi
  751ca9:	83 c4 08                                        	add    esp,0x8
  751cac:	c3                                              	ret
  751cad:	cc                                              	int3
  751cae:	cc                                              	int3
  751caf:	cc                                              	int3
