# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578c30 (World_ObjectCanBeMovedUpAndDownOnWall)
Paired Ghidra pseudocode: 10578C30_World_ObjectCanBeMovedUpAndDownOnWall.c
Window: [0x10578c30, 0x10578c80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578c30: 56 e8 6a 15 1b 00 85 c0 74 36 8b 4c 24 0c 8b 54
10578c40: 24 08 51 52 8b c8 e8 65 1f 1b 00 8b f0 85 f6 74
10578c50: 1f 8b 0d 34 05 c7 10 8d 46 18 50 e8 70 ca ce ff
10578c60: 85 c0 74 0c 50 56 e8 65 18 b5 ff 83 c4 08 5e c3
10578c70: 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578c30 <.text+0x577c30>:
10578c30:	56                                              	push   esi
10578c31:	e8 6a 15 1b 00                                  	call   0x1072a1a0
10578c36:	85 c0                                           	test   eax,eax
10578c38:	74 36                                           	je     0x10578c70
10578c3a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10578c3e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10578c42:	51                                              	push   ecx
10578c43:	52                                              	push   edx
10578c44:	8b c8                                           	mov    ecx,eax
10578c46:	e8 65 1f 1b 00                                  	call   0x1072abb0
10578c4b:	8b f0                                           	mov    esi,eax
10578c4d:	85 f6                                           	test   esi,esi
10578c4f:	74 1f                                           	je     0x10578c70
10578c51:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
10578c57:	8d 46 18                                        	lea    eax,[esi+0x18]
10578c5a:	50                                              	push   eax
10578c5b:	e8 70 ca ce ff                                  	call   0x102656d0
10578c60:	85 c0                                           	test   eax,eax
10578c62:	74 0c                                           	je     0x10578c70
10578c64:	50                                              	push   eax
10578c65:	56                                              	push   esi
10578c66:	e8 65 18 b5 ff                                  	call   0x100ca4d0
10578c6b:	83 c4 08                                        	add    esp,0x8
10578c6e:	5e                                              	pop    esi
10578c6f:	c3                                              	ret
10578c70:	32 c0                                           	xor    al,al
10578c72:	5e                                              	pop    esi
10578c73:	c3                                              	ret
10578c74:	cc                                              	int3
10578c75:	cc                                              	int3
10578c76:	cc                                              	int3
10578c77:	cc                                              	int3
10578c78:	cc                                              	int3
10578c79:	cc                                              	int3
10578c7a:	cc                                              	int3
10578c7b:	cc                                              	int3
10578c7c:	cc                                              	int3
10578c7d:	cc                                              	int3
10578c7e:	cc                                              	int3
10578c7f:	cc                                              	int3
