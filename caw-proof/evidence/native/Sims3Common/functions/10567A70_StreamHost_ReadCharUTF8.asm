# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567a70 (StreamHost_ReadCharUTF8)
Paired Ghidra pseudocode: 10567A70_StreamHost_ReadCharUTF8.c
Window: [0x10567a70, 0x10567b80) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567a70: 83 ec 08 56 8b 74 24 10 3b 35 a4 b0 c7 10 75 08
10567a80: 8b 35 a8 b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d
10567a90: 00 00 00 60 74 04 33 f6 eb 23 e8 81 36 ff ff 8b
10567aa0: 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b
10567ab0: a3 a8 b0 c7 10 89 35 a4 b0 c7 10 8b f0 85 f6 75
10567ac0: 08 8d 46 fe 5e 83 c4 08 c3 8b 16 8b 52 30 6a 01
10567ad0: 8d 44 24 08 50 8b ce ff d2 83 f8 01 74 13 33 c9
10567ae0: 83 f8 ff 0f 95 c1 5e 8d 4c 09 fd 8b c1 83 c4 08
10567af0: c3 8a 44 24 04 3c 80 73 12 66 0f be d0 8b 44 24
10567b00: 14 66 89 10 33 c0 5e 83 c4 08 c3 8d 4c 24 04 57
10567b10: 51 e8 ca f7 3b 00 8b f8 83 c4 04 85 ff 75 09 8d
10567b20: 47 fc 5f 5e 83 c4 08 c3 8b 16 8b 52 30 57 8d 44
10567b30: 24 0d 50 8b ce ff d2 83 f8 01 74 14 33 c9 83 f8
10567b40: ff 0f 95 c1 5f 5e 8d 4c 09 fd 8b c1 83 c4 08 c3
10567b50: 8b 44 24 18 57 8d 54 24 0c 52 6a 01 50 e8 8e fd
10567b60: 3b 00 83 c4 10 83 e8 01 f7 d8 1b c0 5f 83 e0 fc
10567b70: 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567a70 <.text+0x566a70>:
10567a70:	83 ec 08                                        	sub    esp,0x8
10567a73:	56                                              	push   esi
10567a74:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
10567a78:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
10567a7e:	75 08                                           	jne    0x10567a88
10567a80:	8b 35 a8 b0 c7 10                               	mov    esi,DWORD PTR ds:0x10c7b0a8
10567a86:	eb 35                                           	jmp    0x10567abd
10567a88:	8b c6                                           	mov    eax,esi
10567a8a:	25 00 00 00 ff                                  	and    eax,0xff000000
10567a8f:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567a94:	74 04                                           	je     0x10567a9a
10567a96:	33 f6                                           	xor    esi,esi
10567a98:	eb 23                                           	jmp    0x10567abd
10567a9a:	e8 81 36 ff ff                                  	call   0x1055b120
10567a9f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567aa1:	8b c8                                           	mov    ecx,eax
10567aa3:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567aa9:	56                                              	push   esi
10567aaa:	ff d0                                           	call   eax
10567aac:	85 c0                                           	test   eax,eax
10567aae:	74 0b                                           	je     0x10567abb
10567ab0:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567ab5:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567abb:	8b f0                                           	mov    esi,eax
10567abd:	85 f6                                           	test   esi,esi
10567abf:	75 08                                           	jne    0x10567ac9
10567ac1:	8d 46 fe                                        	lea    eax,[esi-0x2]
10567ac4:	5e                                              	pop    esi
10567ac5:	83 c4 08                                        	add    esp,0x8
10567ac8:	c3                                              	ret
10567ac9:	8b 16                                           	mov    edx,DWORD PTR [esi]
10567acb:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
10567ace:	6a 01                                           	push   0x1
10567ad0:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10567ad4:	50                                              	push   eax
10567ad5:	8b ce                                           	mov    ecx,esi
10567ad7:	ff d2                                           	call   edx
10567ad9:	83 f8 01                                        	cmp    eax,0x1
10567adc:	74 13                                           	je     0x10567af1
10567ade:	33 c9                                           	xor    ecx,ecx
10567ae0:	83 f8 ff                                        	cmp    eax,0xffffffff
10567ae3:	0f 95 c1                                        	setne  cl
10567ae6:	5e                                              	pop    esi
10567ae7:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
10567aeb:	8b c1                                           	mov    eax,ecx
10567aed:	83 c4 08                                        	add    esp,0x8
10567af0:	c3                                              	ret
10567af1:	8a 44 24 04                                     	mov    al,BYTE PTR [esp+0x4]
10567af5:	3c 80                                           	cmp    al,0x80
10567af7:	73 12                                           	jae    0x10567b0b
10567af9:	66 0f be d0                                     	movsx  dx,al
10567afd:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10567b01:	66 89 10                                        	mov    WORD PTR [eax],dx
10567b04:	33 c0                                           	xor    eax,eax
10567b06:	5e                                              	pop    esi
10567b07:	83 c4 08                                        	add    esp,0x8
10567b0a:	c3                                              	ret
10567b0b:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10567b0f:	57                                              	push   edi
10567b10:	51                                              	push   ecx
10567b11:	e8 ca f7 3b 00                                  	call   0x109272e0
10567b16:	8b f8                                           	mov    edi,eax
10567b18:	83 c4 04                                        	add    esp,0x4
10567b1b:	85 ff                                           	test   edi,edi
10567b1d:	75 09                                           	jne    0x10567b28
10567b1f:	8d 47 fc                                        	lea    eax,[edi-0x4]
10567b22:	5f                                              	pop    edi
10567b23:	5e                                              	pop    esi
10567b24:	83 c4 08                                        	add    esp,0x8
10567b27:	c3                                              	ret
10567b28:	8b 16                                           	mov    edx,DWORD PTR [esi]
10567b2a:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
10567b2d:	57                                              	push   edi
10567b2e:	8d 44 24 0d                                     	lea    eax,[esp+0xd]
10567b32:	50                                              	push   eax
10567b33:	8b ce                                           	mov    ecx,esi
10567b35:	ff d2                                           	call   edx
10567b37:	83 f8 01                                        	cmp    eax,0x1
10567b3a:	74 14                                           	je     0x10567b50
10567b3c:	33 c9                                           	xor    ecx,ecx
10567b3e:	83 f8 ff                                        	cmp    eax,0xffffffff
10567b41:	0f 95 c1                                        	setne  cl
10567b44:	5f                                              	pop    edi
10567b45:	5e                                              	pop    esi
10567b46:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
10567b4a:	8b c1                                           	mov    eax,ecx
10567b4c:	83 c4 08                                        	add    esp,0x8
10567b4f:	c3                                              	ret
10567b50:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10567b54:	57                                              	push   edi
10567b55:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
10567b59:	52                                              	push   edx
10567b5a:	6a 01                                           	push   0x1
10567b5c:	50                                              	push   eax
10567b5d:	e8 8e fd 3b 00                                  	call   0x109278f0
10567b62:	83 c4 10                                        	add    esp,0x10
10567b65:	83 e8 01                                        	sub    eax,0x1
10567b68:	f7 d8                                           	neg    eax
10567b6a:	1b c0                                           	sbb    eax,eax
10567b6c:	5f                                              	pop    edi
10567b6d:	83 e0 fc                                        	and    eax,0xfffffffc
10567b70:	5e                                              	pop    esi
10567b71:	83 c4 08                                        	add    esp,0x8
10567b74:	c3                                              	ret
10567b75:	cc                                              	int3
10567b76:	cc                                              	int3
10567b77:	cc                                              	int3
10567b78:	cc                                              	int3
10567b79:	cc                                              	int3
10567b7a:	cc                                              	int3
10567b7b:	cc                                              	int3
10567b7c:	cc                                              	int3
10567b7d:	cc                                              	int3
10567b7e:	cc                                              	int3
10567b7f:	cc                                              	int3
