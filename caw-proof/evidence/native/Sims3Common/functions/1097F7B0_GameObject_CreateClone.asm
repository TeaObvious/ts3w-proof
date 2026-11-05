# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f7b0 (GameObject_CreateClone)
Paired Ghidra pseudocode: 1097F7B0_GameObject_CreateClone.c
Window: [0x1097f7b0, 0x1097f7d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f7d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f7b0: e8 eb a9 da ff 85 c0 74 13 8b 4c 24 04 6a ff 6a
1097f7c0: 00 6a 00 51 8b c8 e8 25 c1 da ff c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1097f7b0 <.text+0x97e7b0>:
1097f7b0:	e8 eb a9 da ff                                  	call   0x1072a1a0
1097f7b5:	85 c0                                           	test   eax,eax
1097f7b7:	74 13                                           	je     0x1097f7cc
1097f7b9:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f7bd:	6a ff                                           	push   0xffffffff
1097f7bf:	6a 00                                           	push   0x0
1097f7c1:	6a 00                                           	push   0x0
1097f7c3:	51                                              	push   ecx
1097f7c4:	8b c8                                           	mov    ecx,eax
1097f7c6:	e8 25 c1 da ff                                  	call   0x1072b8f0
1097f7cb:	c3                                              	ret
1097f7cc:	33 c0                                           	xor    eax,eax
1097f7ce:	c3                                              	ret
1097f7cf:	cc                                              	int3
