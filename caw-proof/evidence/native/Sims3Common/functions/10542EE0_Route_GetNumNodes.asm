# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542ee0 (Route_GetNumNodes)
Paired Ghidra pseudocode: 10542EE0_Route_GetNumNodes.c
Window: [0x10542ee0, 0x10542f90) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542f90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542ee0: 51 8b 0d 44 89 c7 10 85 c9 56 57 0f 84 8f 00 00
10542ef0: 00 8b 44 24 10 50 e8 f5 91 ff ff 8b f8 85 ff 74
10542f00: 7f 8b 17 8b 42 10 8b cf ff d0 80 bf f4 00 00 00
10542f10: 00 74 08 8b b7 ec 00 00 00 eb 0f 8d 87 e0 00 00
10542f20: 00 39 00 74 52 8b 08 8b 71 08 85 f6 74 49 53 8d
10542f30: 5e 04 55 8b d3 b8 01 00 00 00 f0 0f c1 02 8b 16
10542f40: 8b 42 48 8b ce ff d0 8b e8 8b cb 83 ca ff f0 0f
10542f50: c1 11 4a 75 11 b8 01 00 00 00 87 03 8b 16 8b 02
10542f60: 6a 01 8b ce ff d0 8b 17 8b 42 14 8b cf ff d0 8b
10542f70: c5 5d 5b 5f 5e 59 c3 8b 17 8b 42 14 8b cf ff d0
10542f80: 5f 33 c0 5e 59 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542ee0 <.text+0x541ee0>:
10542ee0:	51                                              	push   ecx
10542ee1:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542ee7:	85 c9                                           	test   ecx,ecx
10542ee9:	56                                              	push   esi
10542eea:	57                                              	push   edi
10542eeb:	0f 84 8f 00 00 00                               	je     0x10542f80
10542ef1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10542ef5:	50                                              	push   eax
10542ef6:	e8 f5 91 ff ff                                  	call   0x1053c0f0
10542efb:	8b f8                                           	mov    edi,eax
10542efd:	85 ff                                           	test   edi,edi
10542eff:	74 7f                                           	je     0x10542f80
10542f01:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542f03:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10542f06:	8b cf                                           	mov    ecx,edi
10542f08:	ff d0                                           	call   eax
10542f0a:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
10542f11:	74 08                                           	je     0x10542f1b
10542f13:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
10542f19:	eb 0f                                           	jmp    0x10542f2a
10542f1b:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
10542f21:	39 00                                           	cmp    DWORD PTR [eax],eax
10542f23:	74 52                                           	je     0x10542f77
10542f25:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10542f27:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
10542f2a:	85 f6                                           	test   esi,esi
10542f2c:	74 49                                           	je     0x10542f77
10542f2e:	53                                              	push   ebx
10542f2f:	8d 5e 04                                        	lea    ebx,[esi+0x4]
10542f32:	55                                              	push   ebp
10542f33:	8b d3                                           	mov    edx,ebx
10542f35:	b8 01 00 00 00                                  	mov    eax,0x1
10542f3a:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
10542f3e:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542f40:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
10542f43:	8b ce                                           	mov    ecx,esi
10542f45:	ff d0                                           	call   eax
10542f47:	8b e8                                           	mov    ebp,eax
10542f49:	8b cb                                           	mov    ecx,ebx
10542f4b:	83 ca ff                                        	or     edx,0xffffffff
10542f4e:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
10542f52:	4a                                              	dec    edx
10542f53:	75 11                                           	jne    0x10542f66
10542f55:	b8 01 00 00 00                                  	mov    eax,0x1
10542f5a:	87 03                                           	xchg   DWORD PTR [ebx],eax
10542f5c:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542f5e:	8b 02                                           	mov    eax,DWORD PTR [edx]
10542f60:	6a 01                                           	push   0x1
10542f62:	8b ce                                           	mov    ecx,esi
10542f64:	ff d0                                           	call   eax
10542f66:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542f68:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542f6b:	8b cf                                           	mov    ecx,edi
10542f6d:	ff d0                                           	call   eax
10542f6f:	8b c5                                           	mov    eax,ebp
10542f71:	5d                                              	pop    ebp
10542f72:	5b                                              	pop    ebx
10542f73:	5f                                              	pop    edi
10542f74:	5e                                              	pop    esi
10542f75:	59                                              	pop    ecx
10542f76:	c3                                              	ret
10542f77:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542f79:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542f7c:	8b cf                                           	mov    ecx,edi
10542f7e:	ff d0                                           	call   eax
10542f80:	5f                                              	pop    edi
10542f81:	33 c0                                           	xor    eax,eax
10542f83:	5e                                              	pop    esi
10542f84:	59                                              	pop    ecx
10542f85:	c3                                              	ret
10542f86:	cc                                              	int3
10542f87:	cc                                              	int3
10542f88:	cc                                              	int3
10542f89:	cc                                              	int3
10542f8a:	cc                                              	int3
10542f8b:	cc                                              	int3
10542f8c:	cc                                              	int3
10542f8d:	cc                                              	int3
10542f8e:	cc                                              	int3
10542f8f:	cc                                              	int3
