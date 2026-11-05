# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cf70 (SacsWrap_RandomNode_SetSliceWeight)
Paired Ghidra pseudocode: 1098CF70_SacsWrap_RandomNode_SetSliceWeight.c
Window: [0x1098cf70, 0x1098cf90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cf90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cf70: 8b 4c 24 04 85 c9 74 12 d9 44 24 0c 8b 44 24 08
1098cf80: 51 d9 1c 24 50 e8 b6 a4 c5 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098cf70 <.text+0x98bf70>:
1098cf70:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cf74:	85 c9                                           	test   ecx,ecx
1098cf76:	74 12                                           	je     0x1098cf8a
1098cf78:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1098cf7c:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cf80:	51                                              	push   ecx
1098cf81:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098cf84:	50                                              	push   eax
1098cf85:	e8 b6 a4 c5 ff                                  	call   0x105e7440
1098cf8a:	c3                                              	ret
1098cf8b:	cc                                              	int3
1098cf8c:	cc                                              	int3
1098cf8d:	cc                                              	int3
1098cf8e:	cc                                              	int3
1098cf8f:	cc                                              	int3
