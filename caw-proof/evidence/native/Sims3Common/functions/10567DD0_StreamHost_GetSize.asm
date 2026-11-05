# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567dd0 (StreamHost_GetSize)
Paired Ghidra pseudocode: 10567DD0_StreamHost_GetSize.c
Window: [0x10567dd0, 0x10567e40) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567dd0: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 07 a1 a8 b0
10567de0: c7 10 eb 33 8b c6 25 00 00 00 ff 3d 00 00 00 60
10567df0: 74 04 33 c0 eb 21 e8 25 33 ff ff 8b 10 8b c8 8b
10567e00: 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0 c7
10567e10: 10 89 35 a4 b0 c7 10 85 c0 5e 75 06 b8 fe ff ff
10567e20: ff c3 8b 10 8b c8 8b 42 1c ff d0 83 f8 ff 75 05
10567e30: b8 fd ff ff ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567dd0 <.text+0x566dd0>:
10567dd0:	56                                              	push   esi
10567dd1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567dd5:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
10567ddb:	75 07                                           	jne    0x10567de4
10567ddd:	a1 a8 b0 c7 10                                  	mov    eax,ds:0x10c7b0a8
10567de2:	eb 33                                           	jmp    0x10567e17
10567de4:	8b c6                                           	mov    eax,esi
10567de6:	25 00 00 00 ff                                  	and    eax,0xff000000
10567deb:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567df0:	74 04                                           	je     0x10567df6
10567df2:	33 c0                                           	xor    eax,eax
10567df4:	eb 21                                           	jmp    0x10567e17
10567df6:	e8 25 33 ff ff                                  	call   0x1055b120
10567dfb:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567dfd:	8b c8                                           	mov    ecx,eax
10567dff:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567e05:	56                                              	push   esi
10567e06:	ff d0                                           	call   eax
10567e08:	85 c0                                           	test   eax,eax
10567e0a:	74 0b                                           	je     0x10567e17
10567e0c:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567e11:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567e17:	85 c0                                           	test   eax,eax
10567e19:	5e                                              	pop    esi
10567e1a:	75 06                                           	jne    0x10567e22
10567e1c:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
10567e21:	c3                                              	ret
10567e22:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567e24:	8b c8                                           	mov    ecx,eax
10567e26:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
10567e29:	ff d0                                           	call   eax
10567e2b:	83 f8 ff                                        	cmp    eax,0xffffffff
10567e2e:	75 05                                           	jne    0x10567e35
10567e30:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
10567e35:	c3                                              	ret
10567e36:	cc                                              	int3
10567e37:	cc                                              	int3
10567e38:	cc                                              	int3
10567e39:	cc                                              	int3
10567e3a:	cc                                              	int3
10567e3b:	cc                                              	int3
10567e3c:	cc                                              	int3
10567e3d:	cc                                              	int3
10567e3e:	cc                                              	int3
10567e3f:	cc                                              	int3
