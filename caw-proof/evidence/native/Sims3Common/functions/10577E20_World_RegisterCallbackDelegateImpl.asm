# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577e20 (World_RegisterCallbackDelegateImpl)
Paired Ghidra pseudocode: 10577E20_World_RegisterCallbackDelegateImpl.c
Window: [0x10577e20, 0x10577f30) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577e20: 8b 44 24 04 83 f8 4b 77 0e 8b 4c 24 08 8d 04 c0
10577e30: 89 0c 85 e8 b2 c7 10 c3 cc cc cc cc cc cc cc cc
10577e40: 8b 0d c4 00 c7 10 85 c9 74 29 8b 44 24 0c d9 44
10577e50: 24 08 6a 00 6a 00 6a 00 6a 00 50 6a 01 6a 00 83
10577e60: ec 08 d9 5c 24 04 d9 44 24 28 d9 1c 24 e8 be 6a
10577e70: cc ff c3 d9 ee c3 cc cc cc cc cc cc cc cc cc cc
10577e80: 8b 0d c4 00 c7 10 85 c9 74 05 e9 b1 d6 cb ff d9
10577e90: ee c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10577ea0: 8b 0d c4 00 c7 10 85 c9 74 29 8b 44 24 0c d9 44
10577eb0: 24 08 6a 00 6a 00 6a 00 6a 00 6a 00 6a 01 50 83
10577ec0: ec 08 d9 5c 24 04 d9 44 24 28 d9 1c 24 e8 5e 6a
10577ed0: cc ff c3 d9 ee c3 cc cc cc cc cc cc cc cc cc cc
10577ee0: 8b 44 24 04 0f 57 c0 8b 0d c4 00 c7 10 85 c9 f3
10577ef0: 0f 11 00 f3 0f 11 40 04 f3 0f 11 40 08 f3 0f 11
10577f00: 40 0c 74 23 d9 81 b4 00 00 00 d9 18 d9 81 b8 00
10577f10: 00 00 d9 58 04 d9 81 bc 00 00 00 d9 58 08 d9 81
10577f20: c0 00 00 00 d9 58 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577e20 <.text+0x576e20>:
10577e20:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10577e24:	83 f8 4b                                        	cmp    eax,0x4b
10577e27:	77 0e                                           	ja     0x10577e37
10577e29:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10577e2d:	8d 04 c0                                        	lea    eax,[eax+eax*8]
10577e30:	89 0c 85 e8 b2 c7 10                            	mov    DWORD PTR [eax*4+0x10c7b2e8],ecx
10577e37:	c3                                              	ret
10577e38:	cc                                              	int3
10577e39:	cc                                              	int3
10577e3a:	cc                                              	int3
10577e3b:	cc                                              	int3
10577e3c:	cc                                              	int3
10577e3d:	cc                                              	int3
10577e3e:	cc                                              	int3
10577e3f:	cc                                              	int3
10577e40:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577e46:	85 c9                                           	test   ecx,ecx
10577e48:	74 29                                           	je     0x10577e73
10577e4a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10577e4e:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10577e52:	6a 00                                           	push   0x0
10577e54:	6a 00                                           	push   0x0
10577e56:	6a 00                                           	push   0x0
10577e58:	6a 00                                           	push   0x0
10577e5a:	50                                              	push   eax
10577e5b:	6a 01                                           	push   0x1
10577e5d:	6a 00                                           	push   0x0
10577e5f:	83 ec 08                                        	sub    esp,0x8
10577e62:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10577e66:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10577e6a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10577e6d:	e8 be 6a cc ff                                  	call   0x1023e930
10577e72:	c3                                              	ret
10577e73:	d9 ee                                           	fldz
10577e75:	c3                                              	ret
10577e76:	cc                                              	int3
10577e77:	cc                                              	int3
10577e78:	cc                                              	int3
10577e79:	cc                                              	int3
10577e7a:	cc                                              	int3
10577e7b:	cc                                              	int3
10577e7c:	cc                                              	int3
10577e7d:	cc                                              	int3
10577e7e:	cc                                              	int3
10577e7f:	cc                                              	int3
10577e80:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577e86:	85 c9                                           	test   ecx,ecx
10577e88:	74 05                                           	je     0x10577e8f
10577e8a:	e9 b1 d6 cb ff                                  	jmp    0x10235540
10577e8f:	d9 ee                                           	fldz
10577e91:	c3                                              	ret
10577e92:	cc                                              	int3
10577e93:	cc                                              	int3
10577e94:	cc                                              	int3
10577e95:	cc                                              	int3
10577e96:	cc                                              	int3
10577e97:	cc                                              	int3
10577e98:	cc                                              	int3
10577e99:	cc                                              	int3
10577e9a:	cc                                              	int3
10577e9b:	cc                                              	int3
10577e9c:	cc                                              	int3
10577e9d:	cc                                              	int3
10577e9e:	cc                                              	int3
10577e9f:	cc                                              	int3
10577ea0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577ea6:	85 c9                                           	test   ecx,ecx
10577ea8:	74 29                                           	je     0x10577ed3
10577eaa:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10577eae:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10577eb2:	6a 00                                           	push   0x0
10577eb4:	6a 00                                           	push   0x0
10577eb6:	6a 00                                           	push   0x0
10577eb8:	6a 00                                           	push   0x0
10577eba:	6a 00                                           	push   0x0
10577ebc:	6a 01                                           	push   0x1
10577ebe:	50                                              	push   eax
10577ebf:	83 ec 08                                        	sub    esp,0x8
10577ec2:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10577ec6:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10577eca:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10577ecd:	e8 5e 6a cc ff                                  	call   0x1023e930
10577ed2:	c3                                              	ret
10577ed3:	d9 ee                                           	fldz
10577ed5:	c3                                              	ret
10577ed6:	cc                                              	int3
10577ed7:	cc                                              	int3
10577ed8:	cc                                              	int3
10577ed9:	cc                                              	int3
10577eda:	cc                                              	int3
10577edb:	cc                                              	int3
10577edc:	cc                                              	int3
10577edd:	cc                                              	int3
10577ede:	cc                                              	int3
10577edf:	cc                                              	int3
10577ee0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10577ee4:	0f 57 c0                                        	xorps  xmm0,xmm0
10577ee7:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577eed:	85 c9                                           	test   ecx,ecx
10577eef:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
10577ef3:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
10577ef8:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
10577efd:	f3 0f 11 40 0c                                  	movss  DWORD PTR [eax+0xc],xmm0
10577f02:	74 23                                           	je     0x10577f27
10577f04:	d9 81 b4 00 00 00                               	fld    DWORD PTR [ecx+0xb4]
10577f0a:	d9 18                                           	fstp   DWORD PTR [eax]
10577f0c:	d9 81 b8 00 00 00                               	fld    DWORD PTR [ecx+0xb8]
10577f12:	d9 58 04                                        	fstp   DWORD PTR [eax+0x4]
10577f15:	d9 81 bc 00 00 00                               	fld    DWORD PTR [ecx+0xbc]
10577f1b:	d9 58 08                                        	fstp   DWORD PTR [eax+0x8]
10577f1e:	d9 81 c0 00 00 00                               	fld    DWORD PTR [ecx+0xc0]
10577f24:	d9 58 0c                                        	fstp   DWORD PTR [eax+0xc]
10577f27:	c3                                              	ret
10577f28:	cc                                              	int3
10577f29:	cc                                              	int3
10577f2a:	cc                                              	int3
10577f2b:	cc                                              	int3
10577f2c:	cc                                              	int3
10577f2d:	cc                                              	int3
10577f2e:	cc                                              	int3
10577f2f:	cc                                              	int3
