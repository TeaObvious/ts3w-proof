# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567e40 (StreamHost_GetPosition)
Paired Ghidra pseudocode: 10567E40_StreamHost_GetPosition.c
Window: [0x10567e40, 0x10567eb0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567eb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567e40: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 08 8b 0d a8
10567e50: b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00 00
10567e60: 60 74 04 33 c9 eb 23 e8 b4 32 ff ff 8b 10 8b c8
10567e70: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0
10567e80: c7 10 89 35 a4 b0 c7 10 8b c8 85 c9 5e 75 04 8d
10567e90: 41 fe c3 8b 11 8b 42 24 6a 00 ff d0 83 f8 ff 75
10567ea0: 05 b8 fd ff ff ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567e40 <.text+0x566e40>:
10567e40:	56                                              	push   esi
10567e41:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567e45:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
10567e4b:	75 08                                           	jne    0x10567e55
10567e4d:	8b 0d a8 b0 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b0a8
10567e53:	eb 35                                           	jmp    0x10567e8a
10567e55:	8b c6                                           	mov    eax,esi
10567e57:	25 00 00 00 ff                                  	and    eax,0xff000000
10567e5c:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567e61:	74 04                                           	je     0x10567e67
10567e63:	33 c9                                           	xor    ecx,ecx
10567e65:	eb 23                                           	jmp    0x10567e8a
10567e67:	e8 b4 32 ff ff                                  	call   0x1055b120
10567e6c:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567e6e:	8b c8                                           	mov    ecx,eax
10567e70:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567e76:	56                                              	push   esi
10567e77:	ff d0                                           	call   eax
10567e79:	85 c0                                           	test   eax,eax
10567e7b:	74 0b                                           	je     0x10567e88
10567e7d:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567e82:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567e88:	8b c8                                           	mov    ecx,eax
10567e8a:	85 c9                                           	test   ecx,ecx
10567e8c:	5e                                              	pop    esi
10567e8d:	75 04                                           	jne    0x10567e93
10567e8f:	8d 41 fe                                        	lea    eax,[ecx-0x2]
10567e92:	c3                                              	ret
10567e93:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10567e95:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
10567e98:	6a 00                                           	push   0x0
10567e9a:	ff d0                                           	call   eax
10567e9c:	83 f8 ff                                        	cmp    eax,0xffffffff
10567e9f:	75 05                                           	jne    0x10567ea6
10567ea1:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
10567ea6:	c3                                              	ret
10567ea7:	cc                                              	int3
10567ea8:	cc                                              	int3
10567ea9:	cc                                              	int3
10567eaa:	cc                                              	int3
10567eab:	cc                                              	int3
10567eac:	cc                                              	int3
10567ead:	cc                                              	int3
10567eae:	cc                                              	int3
10567eaf:	cc                                              	int3
