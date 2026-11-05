# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ac80 (World_FireplaceObjectFromChimneyObjectImpl)
Paired Ghidra pseudocode: 1057AC80_World_FireplaceObjectFromChimneyObjectImpl.c
Window: [0x1057ac80, 0x1057acc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057acc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ac80: 8b 0d c4 00 c7 10 85 c9 74 30 8b 44 24 08 8b 54
1057ac90: 24 04 6a 00 50 52 e8 75 c3 cb ff 85 c0 74 1b 8b
1057aca0: 80 cc 02 00 00 85 c0 74 11 8b 4c 24 10 8b 54 24
1057acb0: 0c 51 52 8b c8 e8 86 b7 ab ff 33 c0 33 d2 c3 cc

LINEAR DISASSEMBLY
1057ac80 <.text+0x579c80>:
1057ac80:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057ac86:	85 c9                                           	test   ecx,ecx
1057ac88:	74 30                                           	je     0x1057acba
1057ac8a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ac8e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057ac92:	6a 00                                           	push   0x0
1057ac94:	50                                              	push   eax
1057ac95:	52                                              	push   edx
1057ac96:	e8 75 c3 cb ff                                  	call   0x10237010
1057ac9b:	85 c0                                           	test   eax,eax
1057ac9d:	74 1b                                           	je     0x1057acba
1057ac9f:	8b 80 cc 02 00 00                               	mov    eax,DWORD PTR [eax+0x2cc]
1057aca5:	85 c0                                           	test   eax,eax
1057aca7:	74 11                                           	je     0x1057acba
1057aca9:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057acad:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057acb1:	51                                              	push   ecx
1057acb2:	52                                              	push   edx
1057acb3:	8b c8                                           	mov    ecx,eax
1057acb5:	e8 86 b7 ab ff                                  	call   0x10036440
1057acba:	33 c0                                           	xor    eax,eax
1057acbc:	33 d2                                           	xor    edx,edx
1057acbe:	c3                                              	ret
1057acbf:	cc                                              	int3
