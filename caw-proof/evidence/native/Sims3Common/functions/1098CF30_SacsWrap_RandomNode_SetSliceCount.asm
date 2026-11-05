# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cf30 (SacsWrap_RandomNode_SetSliceCount)
Paired Ghidra pseudocode: 1098CF30_SacsWrap_RandomNode_SetSliceCount.c
Window: [0x1098cf30, 0x1098cf50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cf50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cf30: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 6e e8
1098cf40: c5 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cf30 <.text+0x98bf30>:
1098cf30:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cf34:	85 c9                                           	test   ecx,ecx
1098cf36:	74 0a                                           	je     0x1098cf42
1098cf38:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cf3c:	50                                              	push   eax
1098cf3d:	e8 6e e8 c5 ff                                  	call   0x105eb7b0
1098cf42:	c3                                              	ret
1098cf43:	cc                                              	int3
1098cf44:	cc                                              	int3
1098cf45:	cc                                              	int3
1098cf46:	cc                                              	int3
1098cf47:	cc                                              	int3
1098cf48:	cc                                              	int3
1098cf49:	cc                                              	int3
1098cf4a:	cc                                              	int3
1098cf4b:	cc                                              	int3
1098cf4c:	cc                                              	int3
1098cf4d:	cc                                              	int3
1098cf4e:	cc                                              	int3
1098cf4f:	cc                                              	int3
