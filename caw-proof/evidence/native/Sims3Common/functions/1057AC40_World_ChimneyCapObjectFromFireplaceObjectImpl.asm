# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ac40 (World_ChimneyCapObjectFromFireplaceObjectImpl)
Paired Ghidra pseudocode: 1057AC40_World_ChimneyCapObjectFromFireplaceObjectImpl.c
Window: [0x1057ac40, 0x1057ac80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ac80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ac40: 8b 0d c4 00 c7 10 85 c9 74 2f 8b 44 24 08 8b 54
1057ac50: 24 04 6a 00 50 52 e8 b5 c3 cb ff 85 c0 74 1a 8b
1057ac60: 88 cc 02 00 00 85 c9 74 10 8b 44 24 10 8b 54 24
1057ac70: 0c 50 52 e8 38 b7 ab ff c3 33 c0 33 d2 c3 cc cc

LINEAR DISASSEMBLY
1057ac40 <.text+0x579c40>:
1057ac40:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057ac46:	85 c9                                           	test   ecx,ecx
1057ac48:	74 2f                                           	je     0x1057ac79
1057ac4a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ac4e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057ac52:	6a 00                                           	push   0x0
1057ac54:	50                                              	push   eax
1057ac55:	52                                              	push   edx
1057ac56:	e8 b5 c3 cb ff                                  	call   0x10237010
1057ac5b:	85 c0                                           	test   eax,eax
1057ac5d:	74 1a                                           	je     0x1057ac79
1057ac5f:	8b 88 cc 02 00 00                               	mov    ecx,DWORD PTR [eax+0x2cc]
1057ac65:	85 c9                                           	test   ecx,ecx
1057ac67:	74 10                                           	je     0x1057ac79
1057ac69:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057ac6d:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057ac71:	50                                              	push   eax
1057ac72:	52                                              	push   edx
1057ac73:	e8 38 b7 ab ff                                  	call   0x100363b0
1057ac78:	c3                                              	ret
1057ac79:	33 c0                                           	xor    eax,eax
1057ac7b:	33 d2                                           	xor    edx,edx
1057ac7d:	c3                                              	ret
1057ac7e:	cc                                              	int3
1057ac7f:	cc                                              	int3
