# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfbc0 (UserToolUtils_GetTNSListFeatureItemsImpl)
Paired Ghidra pseudocode: 102BFBC0_UserToolUtils_GetTNSListFeatureItemsImpl.c
Window: [0x102bfbc0, 0x102bfcb0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfcb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfbc0: e9 3b f3 ff ff cc cc cc cc cc cc cc cc cc cc cc
102bfbd0: 8b 44 24 04 3d 7d ce a4 0d 77 73 74 5b 3d 5e 44
102bfbe0: 9a 03 74 3e 3d 02 1b 89 04 74 21 3d 08 60 93 05
102bfbf0: 0f 85 86 00 00 00 8b 0d 20 0c c7 10 6a 00 6a 00
102bfc00: 6a 03 e8 29 f4 ff ff b0 01 c2 08 00 8b 0d 20 0c
102bfc10: c7 10 6a 00 6a 00 6a 04 e8 13 f4 ff ff b0 01 c2
102bfc20: 08 00 8b 0d 20 0c c7 10 6a 00 6a 00 6a 00 e8 fd
102bfc30: f3 ff ff b0 01 c2 08 00 8b 0d 20 0c c7 10 6a 00
102bfc40: 6a 00 6a 05 e8 e7 f3 ff ff b0 01 c2 08 00 2d 0a
102bfc50: e9 40 11 74 2c 83 e8 01 75 22 8b 44 24 08 85 c0
102bfc60: 74 1a 8b 48 0c 8b 50 08 51 8b 0d 20 0c c7 10 52
102bfc70: 6a 02 e8 b9 f3 ff ff b0 01 c2 08 00 32 c0 c2 08
102bfc80: 00 8b 4c 24 08 33 c0 85 c9 74 03 8b 41 08 8b 0d
102bfc90: 20 0c c7 10 6a 00 50 6a 01 e8 92 f3 ff ff b0 01
102bfca0: c2 08 00 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfbc0 <.text+0x2bebc0>:
102bfbc0:	e9 3b f3 ff ff                                  	jmp    0x102bef00
102bfbc5:	cc                                              	int3
102bfbc6:	cc                                              	int3
102bfbc7:	cc                                              	int3
102bfbc8:	cc                                              	int3
102bfbc9:	cc                                              	int3
102bfbca:	cc                                              	int3
102bfbcb:	cc                                              	int3
102bfbcc:	cc                                              	int3
102bfbcd:	cc                                              	int3
102bfbce:	cc                                              	int3
102bfbcf:	cc                                              	int3
102bfbd0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
102bfbd4:	3d 7d ce a4 0d                                  	cmp    eax,0xda4ce7d
102bfbd9:	77 73                                           	ja     0x102bfc4e
102bfbdb:	74 5b                                           	je     0x102bfc38
102bfbdd:	3d 5e 44 9a 03                                  	cmp    eax,0x39a445e
102bfbe2:	74 3e                                           	je     0x102bfc22
102bfbe4:	3d 02 1b 89 04                                  	cmp    eax,0x4891b02
102bfbe9:	74 21                                           	je     0x102bfc0c
102bfbeb:	3d 08 60 93 05                                  	cmp    eax,0x5936008
102bfbf0:	0f 85 86 00 00 00                               	jne    0x102bfc7c
102bfbf6:	8b 0d 20 0c c7 10                               	mov    ecx,DWORD PTR ds:0x10c70c20
102bfbfc:	6a 00                                           	push   0x0
102bfbfe:	6a 00                                           	push   0x0
102bfc00:	6a 03                                           	push   0x3
102bfc02:	e8 29 f4 ff ff                                  	call   0x102bf030
102bfc07:	b0 01                                           	mov    al,0x1
102bfc09:	c2 08 00                                        	ret    0x8
102bfc0c:	8b 0d 20 0c c7 10                               	mov    ecx,DWORD PTR ds:0x10c70c20
102bfc12:	6a 00                                           	push   0x0
102bfc14:	6a 00                                           	push   0x0
102bfc16:	6a 04                                           	push   0x4
102bfc18:	e8 13 f4 ff ff                                  	call   0x102bf030
102bfc1d:	b0 01                                           	mov    al,0x1
102bfc1f:	c2 08 00                                        	ret    0x8
102bfc22:	8b 0d 20 0c c7 10                               	mov    ecx,DWORD PTR ds:0x10c70c20
102bfc28:	6a 00                                           	push   0x0
102bfc2a:	6a 00                                           	push   0x0
102bfc2c:	6a 00                                           	push   0x0
102bfc2e:	e8 fd f3 ff ff                                  	call   0x102bf030
102bfc33:	b0 01                                           	mov    al,0x1
102bfc35:	c2 08 00                                        	ret    0x8
102bfc38:	8b 0d 20 0c c7 10                               	mov    ecx,DWORD PTR ds:0x10c70c20
102bfc3e:	6a 00                                           	push   0x0
102bfc40:	6a 00                                           	push   0x0
102bfc42:	6a 05                                           	push   0x5
102bfc44:	e8 e7 f3 ff ff                                  	call   0x102bf030
102bfc49:	b0 01                                           	mov    al,0x1
102bfc4b:	c2 08 00                                        	ret    0x8
102bfc4e:	2d 0a e9 40 11                                  	sub    eax,0x1140e90a
102bfc53:	74 2c                                           	je     0x102bfc81
102bfc55:	83 e8 01                                        	sub    eax,0x1
102bfc58:	75 22                                           	jne    0x102bfc7c
102bfc5a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102bfc5e:	85 c0                                           	test   eax,eax
102bfc60:	74 1a                                           	je     0x102bfc7c
102bfc62:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
102bfc65:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
102bfc68:	51                                              	push   ecx
102bfc69:	8b 0d 20 0c c7 10                               	mov    ecx,DWORD PTR ds:0x10c70c20
102bfc6f:	52                                              	push   edx
102bfc70:	6a 02                                           	push   0x2
102bfc72:	e8 b9 f3 ff ff                                  	call   0x102bf030
102bfc77:	b0 01                                           	mov    al,0x1
102bfc79:	c2 08 00                                        	ret    0x8
102bfc7c:	32 c0                                           	xor    al,al
102bfc7e:	c2 08 00                                        	ret    0x8
102bfc81:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
102bfc85:	33 c0                                           	xor    eax,eax
102bfc87:	85 c9                                           	test   ecx,ecx
102bfc89:	74 03                                           	je     0x102bfc8e
102bfc8b:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
102bfc8e:	8b 0d 20 0c c7 10                               	mov    ecx,DWORD PTR ds:0x10c70c20
102bfc94:	6a 00                                           	push   0x0
102bfc96:	50                                              	push   eax
102bfc97:	6a 01                                           	push   0x1
102bfc99:	e8 92 f3 ff ff                                  	call   0x102bf030
102bfc9e:	b0 01                                           	mov    al,0x1
102bfca0:	c2 08 00                                        	ret    0x8
102bfca3:	cc                                              	int3
102bfca4:	cc                                              	int3
102bfca5:	cc                                              	int3
102bfca6:	cc                                              	int3
102bfca7:	cc                                              	int3
102bfca8:	cc                                              	int3
102bfca9:	cc                                              	int3
102bfcaa:	cc                                              	int3
102bfcab:	cc                                              	int3
102bfcac:	cc                                              	int3
102bfcad:	cc                                              	int3
102bfcae:	cc                                              	int3
102bfcaf:	cc                                              	int3
