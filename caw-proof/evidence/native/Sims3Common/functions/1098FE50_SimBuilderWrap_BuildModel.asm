# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fe50 (SimBuilderWrap_BuildModel)
Paired Ghidra pseudocode: 1098FE50_SimBuilderWrap_BuildModel.c
Window: [0x1098fe50, 0x1098fe60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fe60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fe50: 8b 44 24 08 8b 4c 24 04 50 e8 62 cc a4 ff c3 cc

LINEAR DISASSEMBLY
1098fe50 <.text+0x98ee50>:
1098fe50:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098fe54:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098fe58:	50                                              	push   eax
1098fe59:	e8 62 cc a4 ff                                  	call   0x103dcac0
1098fe5e:	c3                                              	ret
1098fe5f:	cc                                              	int3
