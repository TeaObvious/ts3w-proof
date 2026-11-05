# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cf90 (SacsWrap_RandomNode_AddSliceTarget)
Paired Ghidra pseudocode: 1098CF90_SacsWrap_RandomNode_AddSliceTarget.c
Window: [0x1098cf90, 0x1098cfb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cfb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cf90: 8b 4c 24 04 85 c9 74 13 8b 44 24 0c 85 c0 74 0b
1098cfa0: 50 8b 44 24 0c 50 e8 a5 b4 c5 ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1098cf90 <.text+0x98bf90>:
1098cf90:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cf94:	85 c9                                           	test   ecx,ecx
1098cf96:	74 13                                           	je     0x1098cfab
1098cf98:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cf9c:	85 c0                                           	test   eax,eax
1098cf9e:	74 0b                                           	je     0x1098cfab
1098cfa0:	50                                              	push   eax
1098cfa1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cfa5:	50                                              	push   eax
1098cfa6:	e8 a5 b4 c5 ff                                  	call   0x105e8450
1098cfab:	c3                                              	ret
1098cfac:	cc                                              	int3
1098cfad:	cc                                              	int3
1098cfae:	cc                                              	int3
1098cfaf:	cc                                              	int3
