# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997de0 (WorldWrap_CreateNewHouseboatLot)
Paired Ghidra pseudocode: 10997DE0_WorldWrap_CreateNewHouseboatLot.c
Window: [0x10997de0, 0x10997e80) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997de0: 55 8b ec 83 e4 f0 83 ec 14 53 56 8b 75 08 85 f6
10997df0: 57 74 79 8b 7d 10 8b 5d 0c 8d 44 24 10 50 57 53
10997e00: 8b ce e8 89 75 8a ff 84 c0 74 61 6a 00 6a 00 6a
10997e10: 00 6a 00 68 14 8f ac 10 6a 00 6a 10 68 c0 04 00
10997e20: 00 e8 aa 10 f8 ff 83 c4 20 85 c0 74 3f 56 8b c8
10997e30: e8 cb e8 6e ff 8b f0 85 f6 74 31 d9 ee 6a 01 6a
10997e40: 00 6a 00 6a 01 6a 01 6a 00 6a 00 51 d9 1c 24 8d
10997e50: 4c 24 30 51 57 53 8b ce e8 93 c2 6f ff 84 c0 75
10997e60: 14 8b 16 8b 42 08 6a 01 8b ce ff d0 33 c0 5f 5e
10997e70: 5b 8b e5 5d c3 5f 8b c6 5e 5b 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
10997de0 <.text+0x996de0>:
10997de0:	55                                              	push   ebp
10997de1:	8b ec                                           	mov    ebp,esp
10997de3:	83 e4 f0                                        	and    esp,0xfffffff0
10997de6:	83 ec 14                                        	sub    esp,0x14
10997de9:	53                                              	push   ebx
10997dea:	56                                              	push   esi
10997deb:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
10997dee:	85 f6                                           	test   esi,esi
10997df0:	57                                              	push   edi
10997df1:	74 79                                           	je     0x10997e6c
10997df3:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
10997df6:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
10997df9:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10997dfd:	50                                              	push   eax
10997dfe:	57                                              	push   edi
10997dff:	53                                              	push   ebx
10997e00:	8b ce                                           	mov    ecx,esi
10997e02:	e8 89 75 8a ff                                  	call   0x1023f390
10997e07:	84 c0                                           	test   al,al
10997e09:	74 61                                           	je     0x10997e6c
10997e0b:	6a 00                                           	push   0x0
10997e0d:	6a 00                                           	push   0x0
10997e0f:	6a 00                                           	push   0x0
10997e11:	6a 00                                           	push   0x0
10997e13:	68 14 8f ac 10                                  	push   0x10ac8f14
10997e18:	6a 00                                           	push   0x0
10997e1a:	6a 10                                           	push   0x10
10997e1c:	68 c0 04 00 00                                  	push   0x4c0
10997e21:	e8 aa 10 f8 ff                                  	call   0x10918ed0
10997e26:	83 c4 20                                        	add    esp,0x20
10997e29:	85 c0                                           	test   eax,eax
10997e2b:	74 3f                                           	je     0x10997e6c
10997e2d:	56                                              	push   esi
10997e2e:	8b c8                                           	mov    ecx,eax
10997e30:	e8 cb e8 6e ff                                  	call   0x10086700
10997e35:	8b f0                                           	mov    esi,eax
10997e37:	85 f6                                           	test   esi,esi
10997e39:	74 31                                           	je     0x10997e6c
10997e3b:	d9 ee                                           	fldz
10997e3d:	6a 01                                           	push   0x1
10997e3f:	6a 00                                           	push   0x0
10997e41:	6a 00                                           	push   0x0
10997e43:	6a 01                                           	push   0x1
10997e45:	6a 01                                           	push   0x1
10997e47:	6a 00                                           	push   0x0
10997e49:	6a 00                                           	push   0x0
10997e4b:	51                                              	push   ecx
10997e4c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10997e4f:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10997e53:	51                                              	push   ecx
10997e54:	57                                              	push   edi
10997e55:	53                                              	push   ebx
10997e56:	8b ce                                           	mov    ecx,esi
10997e58:	e8 93 c2 6f ff                                  	call   0x100940f0
10997e5d:	84 c0                                           	test   al,al
10997e5f:	75 14                                           	jne    0x10997e75
10997e61:	8b 16                                           	mov    edx,DWORD PTR [esi]
10997e63:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10997e66:	6a 01                                           	push   0x1
10997e68:	8b ce                                           	mov    ecx,esi
10997e6a:	ff d0                                           	call   eax
10997e6c:	33 c0                                           	xor    eax,eax
10997e6e:	5f                                              	pop    edi
10997e6f:	5e                                              	pop    esi
10997e70:	5b                                              	pop    ebx
10997e71:	8b e5                                           	mov    esp,ebp
10997e73:	5d                                              	pop    ebp
10997e74:	c3                                              	ret
10997e75:	5f                                              	pop    edi
10997e76:	8b c6                                           	mov    eax,esi
10997e78:	5e                                              	pop    esi
10997e79:	5b                                              	pop    ebx
10997e7a:	8b e5                                           	mov    esp,ebp
10997e7c:	5d                                              	pop    ebp
10997e7d:	c3                                              	ret
10997e7e:	cc                                              	int3
10997e7f:	cc                                              	int3
