# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751db0 (ScriptCore.Route::Route_GetPointAtDistanceOnPathway)
Paired Ghidra pseudocode: 00751DB0_ScriptCore_Route_Route_GetPointAtDistanceOnPathway.c
Window: [0x00751db0, 0x00751e90) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751db0: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 24 85
00751dc0: c9 53 56 57 0f 84 b5 00 00 00 8b 45 08 50 e8 dd
00751dd0: 96 ff ff 8b f8 85 ff 0f 84 a2 00 00 00 8b 17 8b
00751de0: 42 10 8b cf ff d0 80 bf f4 00 00 00 00 74 08 8b
00751df0: b7 ec 00 00 00 eb 0f 8d 87 e0 00 00 00 39 00 74
00751e00: 75 8b 08 8b 71 08 85 f6 74 6c 8d 5e 04 8b d3 b8
00751e10: 01 00 00 00 f0 0f c1 02 d9 45 0c 8b 16 8b 92 1c
00751e20: 01 00 00 8d 44 24 0c 50 8d 4c 24 14 51 51 8d 44
00751e30: 24 2c d9 1c 24 50 8b ce ff d2 8b 4d 10 50 e8 bd
00751e40: a2 01 00 8b 4d 14 8d 44 24 10 50 e8 b0 a2 01 00
00751e50: 8b 4d 18 8b 54 24 0c 89 11 8b c3 83 c9 ff f0 0f
00751e60: c1 08 49 75 11 ba 01 00 00 00 87 13 8b 06 8b 10
00751e70: 6a 01 8b ce ff d2 8b 07 8b 50 14 8b cf ff d2 5f
00751e80: 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751db0 <.text+0x350db0>:
  751db0:	55                                              	push   ebp
  751db1:	8b ec                                           	mov    ebp,esp
  751db3:	83 e4 f0                                        	and    esp,0xfffffff0
  751db6:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751dbc:	83 ec 24                                        	sub    esp,0x24
  751dbf:	85 c9                                           	test   ecx,ecx
  751dc1:	53                                              	push   ebx
  751dc2:	56                                              	push   esi
  751dc3:	57                                              	push   edi
  751dc4:	0f 84 b5 00 00 00                               	je     0x751e7f
  751dca:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  751dcd:	50                                              	push   eax
  751dce:	e8 dd 96 ff ff                                  	call   0x74b4b0
  751dd3:	8b f8                                           	mov    edi,eax
  751dd5:	85 ff                                           	test   edi,edi
  751dd7:	0f 84 a2 00 00 00                               	je     0x751e7f
  751ddd:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751ddf:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751de2:	8b cf                                           	mov    ecx,edi
  751de4:	ff d0                                           	call   eax
  751de6:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  751ded:	74 08                                           	je     0x751df7
  751def:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  751df5:	eb 0f                                           	jmp    0x751e06
  751df7:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  751dfd:	39 00                                           	cmp    DWORD PTR [eax],eax
  751dff:	74 75                                           	je     0x751e76
  751e01:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  751e03:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  751e06:	85 f6                                           	test   esi,esi
  751e08:	74 6c                                           	je     0x751e76
  751e0a:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  751e0d:	8b d3                                           	mov    edx,ebx
  751e0f:	b8 01 00 00 00                                  	mov    eax,0x1
  751e14:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  751e18:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  751e1b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751e1d:	8b 92 1c 01 00 00                               	mov    edx,DWORD PTR [edx+0x11c]
  751e23:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  751e27:	50                                              	push   eax
  751e28:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  751e2c:	51                                              	push   ecx
  751e2d:	51                                              	push   ecx
  751e2e:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  751e32:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  751e35:	50                                              	push   eax
  751e36:	8b ce                                           	mov    ecx,esi
  751e38:	ff d2                                           	call   edx
  751e3a:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  751e3d:	50                                              	push   eax
  751e3e:	e8 bd a2 01 00                                  	call   0x76c100
  751e43:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  751e46:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  751e4a:	50                                              	push   eax
  751e4b:	e8 b0 a2 01 00                                  	call   0x76c100
  751e50:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  751e53:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  751e57:	89 11                                           	mov    DWORD PTR [ecx],edx
  751e59:	8b c3                                           	mov    eax,ebx
  751e5b:	83 c9 ff                                        	or     ecx,0xffffffff
  751e5e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  751e62:	49                                              	dec    ecx
  751e63:	75 11                                           	jne    0x751e76
  751e65:	ba 01 00 00 00                                  	mov    edx,0x1
  751e6a:	87 13                                           	xchg   DWORD PTR [ebx],edx
  751e6c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  751e6e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  751e70:	6a 01                                           	push   0x1
  751e72:	8b ce                                           	mov    ecx,esi
  751e74:	ff d2                                           	call   edx
  751e76:	8b 07                                           	mov    eax,DWORD PTR [edi]
  751e78:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  751e7b:	8b cf                                           	mov    ecx,edi
  751e7d:	ff d2                                           	call   edx
  751e7f:	5f                                              	pop    edi
  751e80:	5e                                              	pop    esi
  751e81:	5b                                              	pop    ebx
  751e82:	8b e5                                           	mov    esp,ebp
  751e84:	5d                                              	pop    ebp
  751e85:	c3                                              	ret
  751e86:	cc                                              	int3
  751e87:	cc                                              	int3
  751e88:	cc                                              	int3
  751e89:	cc                                              	int3
  751e8a:	cc                                              	int3
  751e8b:	cc                                              	int3
  751e8c:	cc                                              	int3
  751e8d:	cc                                              	int3
  751e8e:	cc                                              	int3
  751e8f:	cc                                              	int3
