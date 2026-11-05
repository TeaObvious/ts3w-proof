# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f720 (Sims3_HashUtils_Unhash64)
Paired Ghidra pseudocode: 1097F720_Sims3_HashUtils_Unhash64.c
Window: [0x1097f720, 0x1097f740) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f720: 8b 44 24 08 8b 4c 24 04 50 51 e8 d1 c7 c4 ff 83
1097f730: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f720 <.text+0x97e720>:
1097f720:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f724:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f728:	50                                              	push   eax
1097f729:	51                                              	push   ecx
1097f72a:	e8 d1 c7 c4 ff                                  	call   0x105cbf00
1097f72f:	83 c4 08                                        	add    esp,0x8
1097f732:	c3                                              	ret
1097f733:	cc                                              	int3
1097f734:	cc                                              	int3
1097f735:	cc                                              	int3
1097f736:	cc                                              	int3
1097f737:	cc                                              	int3
1097f738:	cc                                              	int3
1097f739:	cc                                              	int3
1097f73a:	cc                                              	int3
1097f73b:	cc                                              	int3
1097f73c:	cc                                              	int3
1097f73d:	cc                                              	int3
1097f73e:	cc                                              	int3
1097f73f:	cc                                              	int3
