# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052ced0 (Animation_CreateTimeController)
Paired Ghidra pseudocode: 1052CED0_Animation_CreateTimeController.c
Window: [0x1052ced0, 0x1052cfd0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052cfd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052ced0: 51 53 e8 c9 d2 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052cee0: 52 8b c8 e8 c8 dc 1f 00 8b d8 85 db 0f 84 c9 00
1052cef0: 00 00 55 8d 6b 04 57 8b c5 b9 01 00 00 00 f0 0f
1052cf00: c1 08 8b 15 c4 0c c8 10 52 8b cb e8 90 9e 1f 00
1052cf10: 8b f8 85 ff 0f 84 81 00 00 00 56 6a 00 6a 00 6a
1052cf20: 00 6a 00 68 d4 99 b1 10 6a 48 e8 81 bf 3e 00 83
1052cf30: c4 18 85 c0 0f 84 84 00 00 00 8d 4f 08 51 8b c8
1052cf40: e8 1b c0 e3 ff 8b f0 85 f6 74 04 83 46 04 01 d9
1052cf50: 05 84 e1 aa 10 8b 57 08 8b 42 14 6a 00 6a 00 6a
1052cf60: 00 6a 01 83 ec 08 d9 54 24 04 8d 4f 08 d9 1c 24
1052cf70: 6a 02 56 68 98 3a 00 00 ff d0 85 f6 74 1c 8b 46
1052cf80: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
1052cf90: 8b 16 8b 02 6a 01 8b ce ff d0 5e 8b cd 83 ca ff
1052cfa0: f0 0f c1 11 4a 75 12 b8 01 00 00 00 87 45 00 8b
1052cfb0: 13 8b 02 6a 01 8b cb ff d0 5f 5d 5b 59 c3 33 f6
1052cfc0: eb 8d cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052ced0 <.text+0x52bed0>:
1052ced0:	51                                              	push   ecx
1052ced1:	53                                              	push   ebx
1052ced2:	e8 c9 d2 1f 00                                  	call   0x1072a1a0
1052ced7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052cedb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052cedf:	51                                              	push   ecx
1052cee0:	52                                              	push   edx
1052cee1:	8b c8                                           	mov    ecx,eax
1052cee3:	e8 c8 dc 1f 00                                  	call   0x1072abb0
1052cee8:	8b d8                                           	mov    ebx,eax
1052ceea:	85 db                                           	test   ebx,ebx
1052ceec:	0f 84 c9 00 00 00                               	je     0x1052cfbb
1052cef2:	55                                              	push   ebp
1052cef3:	8d 6b 04                                        	lea    ebp,[ebx+0x4]
1052cef6:	57                                              	push   edi
1052cef7:	8b c5                                           	mov    eax,ebp
1052cef9:	b9 01 00 00 00                                  	mov    ecx,0x1
1052cefe:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052cf02:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052cf08:	52                                              	push   edx
1052cf09:	8b cb                                           	mov    ecx,ebx
1052cf0b:	e8 90 9e 1f 00                                  	call   0x10726da0
1052cf10:	8b f8                                           	mov    edi,eax
1052cf12:	85 ff                                           	test   edi,edi
1052cf14:	0f 84 81 00 00 00                               	je     0x1052cf9b
1052cf1a:	56                                              	push   esi
1052cf1b:	6a 00                                           	push   0x0
1052cf1d:	6a 00                                           	push   0x0
1052cf1f:	6a 00                                           	push   0x0
1052cf21:	6a 00                                           	push   0x0
1052cf23:	68 d4 99 b1 10                                  	push   0x10b199d4
1052cf28:	6a 48                                           	push   0x48
1052cf2a:	e8 81 bf 3e 00                                  	call   0x10918eb0
1052cf2f:	83 c4 18                                        	add    esp,0x18
1052cf32:	85 c0                                           	test   eax,eax
1052cf34:	0f 84 84 00 00 00                               	je     0x1052cfbe
1052cf3a:	8d 4f 08                                        	lea    ecx,[edi+0x8]
1052cf3d:	51                                              	push   ecx
1052cf3e:	8b c8                                           	mov    ecx,eax
1052cf40:	e8 1b c0 e3 ff                                  	call   0x10368f60
1052cf45:	8b f0                                           	mov    esi,eax
1052cf47:	85 f6                                           	test   esi,esi
1052cf49:	74 04                                           	je     0x1052cf4f
1052cf4b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
1052cf4f:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
1052cf55:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
1052cf58:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1052cf5b:	6a 00                                           	push   0x0
1052cf5d:	6a 00                                           	push   0x0
1052cf5f:	6a 00                                           	push   0x0
1052cf61:	6a 01                                           	push   0x1
1052cf63:	83 ec 08                                        	sub    esp,0x8
1052cf66:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052cf6a:	8d 4f 08                                        	lea    ecx,[edi+0x8]
1052cf6d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052cf70:	6a 02                                           	push   0x2
1052cf72:	56                                              	push   esi
1052cf73:	68 98 3a 00 00                                  	push   0x3a98
1052cf78:	ff d0                                           	call   eax
1052cf7a:	85 f6                                           	test   esi,esi
1052cf7c:	74 1c                                           	je     0x1052cf9a
1052cf7e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1052cf81:	83 c0 ff                                        	add    eax,0xffffffff
1052cf84:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1052cf87:	75 11                                           	jne    0x1052cf9a
1052cf89:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1052cf90:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052cf92:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052cf94:	6a 01                                           	push   0x1
1052cf96:	8b ce                                           	mov    ecx,esi
1052cf98:	ff d0                                           	call   eax
1052cf9a:	5e                                              	pop    esi
1052cf9b:	8b cd                                           	mov    ecx,ebp
1052cf9d:	83 ca ff                                        	or     edx,0xffffffff
1052cfa0:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1052cfa4:	4a                                              	dec    edx
1052cfa5:	75 12                                           	jne    0x1052cfb9
1052cfa7:	b8 01 00 00 00                                  	mov    eax,0x1
1052cfac:	87 45 00                                        	xchg   DWORD PTR [ebp+0x0],eax
1052cfaf:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1052cfb1:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052cfb3:	6a 01                                           	push   0x1
1052cfb5:	8b cb                                           	mov    ecx,ebx
1052cfb7:	ff d0                                           	call   eax
1052cfb9:	5f                                              	pop    edi
1052cfba:	5d                                              	pop    ebp
1052cfbb:	5b                                              	pop    ebx
1052cfbc:	59                                              	pop    ecx
1052cfbd:	c3                                              	ret
1052cfbe:	33 f6                                           	xor    esi,esi
1052cfc0:	eb 8d                                           	jmp    0x1052cf4f
1052cfc2:	cc                                              	int3
1052cfc3:	cc                                              	int3
1052cfc4:	cc                                              	int3
1052cfc5:	cc                                              	int3
1052cfc6:	cc                                              	int3
1052cfc7:	cc                                              	int3
1052cfc8:	cc                                              	int3
1052cfc9:	cc                                              	int3
1052cfca:	cc                                              	int3
1052cfcb:	cc                                              	int3
1052cfcc:	cc                                              	int3
1052cfcd:	cc                                              	int3
1052cfce:	cc                                              	int3
1052cfcf:	cc                                              	int3
