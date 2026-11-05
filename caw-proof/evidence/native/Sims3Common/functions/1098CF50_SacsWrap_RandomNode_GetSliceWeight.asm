# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cf50 (SacsWrap_RandomNode_GetSliceWeight)
Paired Ghidra pseudocode: 1098CF50_SacsWrap_RandomNode_GetSliceWeight.c
Window: [0x1098cf50, 0x1098cf70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cf70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cf50: 8b 4c 24 04 85 c9 74 0b 8b 44 24 08 50 e8 0e a5
1098cf60: c5 ff c3 d9 ee c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cf50 <.text+0x98bf50>:
1098cf50:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cf54:	85 c9                                           	test   ecx,ecx
1098cf56:	74 0b                                           	je     0x1098cf63
1098cf58:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cf5c:	50                                              	push   eax
1098cf5d:	e8 0e a5 c5 ff                                  	call   0x105e7470
1098cf62:	c3                                              	ret
1098cf63:	d9 ee                                           	fldz
1098cf65:	c3                                              	ret
1098cf66:	cc                                              	int3
1098cf67:	cc                                              	int3
1098cf68:	cc                                              	int3
1098cf69:	cc                                              	int3
1098cf6a:	cc                                              	int3
1098cf6b:	cc                                              	int3
1098cf6c:	cc                                              	int3
1098cf6d:	cc                                              	int3
1098cf6e:	cc                                              	int3
1098cf6f:	cc                                              	int3
