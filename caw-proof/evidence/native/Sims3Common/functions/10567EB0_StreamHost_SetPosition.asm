# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567eb0 (StreamHost_SetPosition)
Paired Ghidra pseudocode: 10567EB0_StreamHost_SetPosition.c
Window: [0x10567eb0, 0x10567f30) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567eb0: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 08 8b 0d a8
10567ec0: b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00 00
10567ed0: 60 74 04 33 c9 eb 23 e8 44 32 ff ff 8b 10 8b c8
10567ee0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0
10567ef0: c7 10 89 35 a4 b0 c7 10 8b c8 85 c9 5e 75 06 b8
10567f00: fe ff ff ff c3 8b 44 24 0c 83 f8 03 72 06 b8 f9
10567f10: ff ff ff c3 8b 11 8b 52 28 50 8b 44 24 0c 50 ff
10567f20: d2 f6 d8 1b c0 83 e0 03 83 c0 fd c3 cc cc cc cc

LINEAR DISASSEMBLY
10567eb0 <.text+0x566eb0>:
10567eb0:	56                                              	push   esi
10567eb1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567eb5:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
10567ebb:	75 08                                           	jne    0x10567ec5
10567ebd:	8b 0d a8 b0 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b0a8
10567ec3:	eb 35                                           	jmp    0x10567efa
10567ec5:	8b c6                                           	mov    eax,esi
10567ec7:	25 00 00 00 ff                                  	and    eax,0xff000000
10567ecc:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567ed1:	74 04                                           	je     0x10567ed7
10567ed3:	33 c9                                           	xor    ecx,ecx
10567ed5:	eb 23                                           	jmp    0x10567efa
10567ed7:	e8 44 32 ff ff                                  	call   0x1055b120
10567edc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567ede:	8b c8                                           	mov    ecx,eax
10567ee0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567ee6:	56                                              	push   esi
10567ee7:	ff d0                                           	call   eax
10567ee9:	85 c0                                           	test   eax,eax
10567eeb:	74 0b                                           	je     0x10567ef8
10567eed:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567ef2:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567ef8:	8b c8                                           	mov    ecx,eax
10567efa:	85 c9                                           	test   ecx,ecx
10567efc:	5e                                              	pop    esi
10567efd:	75 06                                           	jne    0x10567f05
10567eff:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
10567f04:	c3                                              	ret
10567f05:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10567f09:	83 f8 03                                        	cmp    eax,0x3
10567f0c:	72 06                                           	jb     0x10567f14
10567f0e:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
10567f13:	c3                                              	ret
10567f14:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10567f16:	8b 52 28                                        	mov    edx,DWORD PTR [edx+0x28]
10567f19:	50                                              	push   eax
10567f1a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10567f1e:	50                                              	push   eax
10567f1f:	ff d2                                           	call   edx
10567f21:	f6 d8                                           	neg    al
10567f23:	1b c0                                           	sbb    eax,eax
10567f25:	83 e0 03                                        	and    eax,0x3
10567f28:	83 c0 fd                                        	add    eax,0xfffffffd
10567f2b:	c3                                              	ret
10567f2c:	cc                                              	int3
10567f2d:	cc                                              	int3
10567f2e:	cc                                              	int3
10567f2f:	cc                                              	int3
