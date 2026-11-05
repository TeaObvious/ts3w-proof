# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542dd0 (Route_GetPathLength)
Paired Ghidra pseudocode: 10542DD0_Route_GetPathLength.c
Window: [0x10542dd0, 0x10542e90) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542dd0: 8b 0d 44 89 c7 10 83 ec 08 85 c9 56 57 0f 84 a2
10542de0: 00 00 00 8b 44 24 14 50 e8 03 93 ff ff 8b f8 85
10542df0: ff 0f 84 8e 00 00 00 8b 17 8b 42 10 8b cf ff d0
10542e00: 8b 87 e0 00 00 00 8b 54 24 18 8d 8f e0 00 00 00
10542e10: 3b c1 74 68 85 d2 74 09 8b 00 83 ea 01 3b c1 75
10542e20: f3 3b c1 74 57 8b 70 08 85 f6 74 50 53 8d 5e 04
10542e30: 8b cb ba 01 00 00 00 f0 0f c1 11 8b 06 8b 90 2c
10542e40: 01 00 00 8b ce ff d2 d9 5c 24 0c 8b c3 83 c9 ff
10542e50: f0 0f c1 08 49 75 11 ba 01 00 00 00 87 13 8b 06
10542e60: 8b 10 6a 01 8b ce ff d2 8b 07 8b 50 14 8b cf ff
10542e70: d2 d9 44 24 0c 5b 5f 5e 83 c4 08 c3 8b 07 8b 50
10542e80: 14 8b cf ff d2 d9 ee 5f 5e 83 c4 08 c3 cc cc cc

LINEAR DISASSEMBLY
10542dd0 <.text+0x541dd0>:
10542dd0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542dd6:	83 ec 08                                        	sub    esp,0x8
10542dd9:	85 c9                                           	test   ecx,ecx
10542ddb:	56                                              	push   esi
10542ddc:	57                                              	push   edi
10542ddd:	0f 84 a2 00 00 00                               	je     0x10542e85
10542de3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10542de7:	50                                              	push   eax
10542de8:	e8 03 93 ff ff                                  	call   0x1053c0f0
10542ded:	8b f8                                           	mov    edi,eax
10542def:	85 ff                                           	test   edi,edi
10542df1:	0f 84 8e 00 00 00                               	je     0x10542e85
10542df7:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542df9:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10542dfc:	8b cf                                           	mov    ecx,edi
10542dfe:	ff d0                                           	call   eax
10542e00:	8b 87 e0 00 00 00                               	mov    eax,DWORD PTR [edi+0xe0]
10542e06:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10542e0a:	8d 8f e0 00 00 00                               	lea    ecx,[edi+0xe0]
10542e10:	3b c1                                           	cmp    eax,ecx
10542e12:	74 68                                           	je     0x10542e7c
10542e14:	85 d2                                           	test   edx,edx
10542e16:	74 09                                           	je     0x10542e21
10542e18:	8b 00                                           	mov    eax,DWORD PTR [eax]
10542e1a:	83 ea 01                                        	sub    edx,0x1
10542e1d:	3b c1                                           	cmp    eax,ecx
10542e1f:	75 f3                                           	jne    0x10542e14
10542e21:	3b c1                                           	cmp    eax,ecx
10542e23:	74 57                                           	je     0x10542e7c
10542e25:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
10542e28:	85 f6                                           	test   esi,esi
10542e2a:	74 50                                           	je     0x10542e7c
10542e2c:	53                                              	push   ebx
10542e2d:	8d 5e 04                                        	lea    ebx,[esi+0x4]
10542e30:	8b cb                                           	mov    ecx,ebx
10542e32:	ba 01 00 00 00                                  	mov    edx,0x1
10542e37:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
10542e3b:	8b 06                                           	mov    eax,DWORD PTR [esi]
10542e3d:	8b 90 2c 01 00 00                               	mov    edx,DWORD PTR [eax+0x12c]
10542e43:	8b ce                                           	mov    ecx,esi
10542e45:	ff d2                                           	call   edx
10542e47:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10542e4b:	8b c3                                           	mov    eax,ebx
10542e4d:	83 c9 ff                                        	or     ecx,0xffffffff
10542e50:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10542e54:	49                                              	dec    ecx
10542e55:	75 11                                           	jne    0x10542e68
10542e57:	ba 01 00 00 00                                  	mov    edx,0x1
10542e5c:	87 13                                           	xchg   DWORD PTR [ebx],edx
10542e5e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10542e60:	8b 10                                           	mov    edx,DWORD PTR [eax]
10542e62:	6a 01                                           	push   0x1
10542e64:	8b ce                                           	mov    ecx,esi
10542e66:	ff d2                                           	call   edx
10542e68:	8b 07                                           	mov    eax,DWORD PTR [edi]
10542e6a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
10542e6d:	8b cf                                           	mov    ecx,edi
10542e6f:	ff d2                                           	call   edx
10542e71:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10542e75:	5b                                              	pop    ebx
10542e76:	5f                                              	pop    edi
10542e77:	5e                                              	pop    esi
10542e78:	83 c4 08                                        	add    esp,0x8
10542e7b:	c3                                              	ret
10542e7c:	8b 07                                           	mov    eax,DWORD PTR [edi]
10542e7e:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
10542e81:	8b cf                                           	mov    ecx,edi
10542e83:	ff d2                                           	call   edx
10542e85:	d9 ee                                           	fldz
10542e87:	5f                                              	pop    edi
10542e88:	5e                                              	pop    esi
10542e89:	83 c4 08                                        	add    esp,0x8
10542e8c:	c3                                              	ret
10542e8d:	cc                                              	int3
10542e8e:	cc                                              	int3
10542e8f:	cc                                              	int3
