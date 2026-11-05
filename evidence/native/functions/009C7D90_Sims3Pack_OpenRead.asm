# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c7d90 (Sims3Pack_OpenRead)
Full Ghidra function-body envelope: 0x009c7d90..0x009c7ee0 (exclusive end)
Ghidra body ranges: [[009c7d90, 009c7edf]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c7d90 <.text+0x5c6d90>:
  9c7d90:	55                                              	push   ebp
  9c7d91:	8b e9                                           	mov    ebp,ecx
  9c7d93:	f6 85 b4 00 00 00 01                            	test   BYTE PTR [ebp+0xb4],0x1
  9c7d9a:	75 06                                           	jne    0x9c7da2
  9c7d9c:	32 c0                                           	xor    al,al
  9c7d9e:	5d                                              	pop    ebp
  9c7d9f:	c2 04 00                                        	ret    0x4
  9c7da2:	56                                              	push   esi
  9c7da3:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  9c7da7:	85 f6                                           	test   esi,esi
  9c7da9:	74 71                                           	je     0x9c7e1c
  9c7dab:	56                                              	push   esi
  9c7dac:	e8 bf 3f b1 ff                                  	call   0x4dbd70
  9c7db1:	83 c4 04                                        	add    esp,0x4
  9c7db4:	84 c0                                           	test   al,al
  9c7db6:	74 64                                           	je     0x9c7e1c
  9c7db8:	6a 00                                           	push   0x0
  9c7dba:	6a 00                                           	push   0x0
  9c7dbc:	6a 00                                           	push   0x0
  9c7dbe:	6a 00                                           	push   0x0
  9c7dc0:	68 68 13 05 01                                  	push   0x1051368
  9c7dc5:	68 28 02 00 00                                  	push   0x228
  9c7dca:	e8 31 c7 b1 ff                                  	call   0x4e4500
  9c7dcf:	83 c4 18                                        	add    esp,0x18
  9c7dd2:	85 c0                                           	test   eax,eax
  9c7dd4:	74 0a                                           	je     0x9c7de0
  9c7dd6:	56                                              	push   esi
  9c7dd7:	8b c8                                           	mov    ecx,eax
  9c7dd9:	e8 62 3d b1 ff                                  	call   0x4dbb40
  9c7dde:	eb 02                                           	jmp    0x9c7de2
  9c7de0:	33 c0                                           	xor    eax,eax
  9c7de2:	8d b5 10 01 00 00                               	lea    esi,[ebp+0x110]
  9c7de8:	50                                              	push   eax
  9c7de9:	8b ce                                           	mov    ecx,esi
  9c7deb:	e8 e0 10 e0 ff                                  	call   0x7c8ed0
  9c7df0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  9c7df2:	85 c9                                           	test   ecx,ecx
  9c7df4:	74 26                                           	je     0x9c7e1c
  9c7df6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  9c7df8:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  9c7dfb:	6a 00                                           	push   0x0
  9c7dfd:	6a 01                                           	push   0x1
  9c7dff:	6a 03                                           	push   0x3
  9c7e01:	6a 01                                           	push   0x1
  9c7e03:	ff d2                                           	call   edx
  9c7e05:	84 c0                                           	test   al,al
  9c7e07:	75 1a                                           	jne    0x9c7e23
  9c7e09:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  9c7e0b:	85 c9                                           	test   ecx,ecx
  9c7e0d:	74 0d                                           	je     0x9c7e1c
  9c7e0f:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  9c7e15:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  9c7e17:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c7e1a:	ff d2                                           	call   edx
  9c7e1c:	5e                                              	pop    esi
  9c7e1d:	32 c0                                           	xor    al,al
  9c7e1f:	5d                                              	pop    ebp
  9c7e20:	c2 04 00                                        	ret    0x4
  9c7e23:	6a 00                                           	push   0x0
  9c7e25:	6a 00                                           	push   0x0
  9c7e27:	6a 00                                           	push   0x0
  9c7e29:	6a 00                                           	push   0x0
  9c7e2b:	68 34 13 05 01                                  	push   0x1051334
  9c7e30:	6a 2c                                           	push   0x2c
  9c7e32:	e8 c9 c6 b1 ff                                  	call   0x4e4500
  9c7e37:	83 c4 18                                        	add    esp,0x18
  9c7e3a:	85 c0                                           	test   eax,eax
  9c7e3c:	74 0f                                           	je     0x9c7e4d
  9c7e3e:	6a 00                                           	push   0x0
  9c7e40:	6a 00                                           	push   0x0
  9c7e42:	6a 00                                           	push   0x0
  9c7e44:	8b c8                                           	mov    ecx,eax
  9c7e46:	e8 15 76 b1 ff                                  	call   0x4df460
  9c7e4b:	eb 02                                           	jmp    0x9c7e4f
  9c7e4d:	33 c0                                           	xor    eax,eax
  9c7e4f:	57                                              	push   edi
  9c7e50:	8d bd 1c 01 00 00                               	lea    edi,[ebp+0x11c]
  9c7e56:	50                                              	push   eax
  9c7e57:	8b cf                                           	mov    ecx,edi
  9c7e59:	e8 72 10 e0 ff                                  	call   0x7c8ed0
  9c7e5e:	d9 e8                                           	fld1
  9c7e60:	51                                              	push   ecx
  9c7e61:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  9c7e64:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  9c7e66:	6a 01                                           	push   0x1
  9c7e68:	e8 d3 6f b1 ff                                  	call   0x4dee40
  9c7e6d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9c7e6f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  9c7e71:	6a 01                                           	push   0x1
  9c7e73:	50                                              	push   eax
  9c7e74:	51                                              	push   ecx
  9c7e75:	e8 16 c4 ff ff                                  	call   0x9c4290
  9c7e7a:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  9c7e7c:	83 c4 0c                                        	add    esp,0xc
  9c7e7f:	84 c0                                           	test   al,al
  9c7e81:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  9c7e83:	75 20                                           	jne    0x9c7ea5
  9c7e85:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  9c7e88:	ff d2                                           	call   edx
  9c7e8a:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  9c7e8c:	85 c9                                           	test   ecx,ecx
  9c7e8e:	74 0d                                           	je     0x9c7e9d
  9c7e90:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  9c7e96:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  9c7e98:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c7e9b:	ff d2                                           	call   edx
  9c7e9d:	5f                                              	pop    edi
  9c7e9e:	5e                                              	pop    esi
  9c7e9f:	32 c0                                           	xor    al,al
  9c7ea1:	5d                                              	pop    ebp
  9c7ea2:	c2 04 00                                        	ret    0x4
  9c7ea5:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  9c7ea8:	6a 00                                           	push   0x0
  9c7eaa:	ff d2                                           	call   edx
  9c7eac:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  9c7eae:	57                                              	push   edi
  9c7eaf:	8b cd                                           	mov    ecx,ebp
  9c7eb1:	89 85 18 01 00 00                               	mov    DWORD PTR [ebp+0x118],eax
  9c7eb7:	e8 d4 f5 ff ff                                  	call   0x9c7490
  9c7ebc:	84 c0                                           	test   al,al
  9c7ebe:	75 11                                           	jne    0x9c7ed1
  9c7ec0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  9c7ec2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  9c7ec4:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  9c7ec7:	ff d2                                           	call   edx
  9c7ec9:	5f                                              	pop    edi
  9c7eca:	5e                                              	pop    esi
  9c7ecb:	32 c0                                           	xor    al,al
  9c7ecd:	5d                                              	pop    ebp
  9c7ece:	c2 04 00                                        	ret    0x4
  9c7ed1:	5f                                              	pop    edi
  9c7ed2:	5e                                              	pop    esi
  9c7ed3:	c6 85 14 01 00 00 01                            	mov    BYTE PTR [ebp+0x114],0x1
  9c7eda:	b0 01                                           	mov    al,0x1
  9c7edc:	5d                                              	pop    ebp
  9c7edd:	c2 04 00                                        	ret    0x4
