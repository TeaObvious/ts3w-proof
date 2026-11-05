# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986d40 (ModelProxyWrap_SetModel)
Paired Ghidra pseudocode: 10986D40_ModelProxyWrap_SetModel.c
Window: [0x10986d40, 0x10986d50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986d40: 8b 44 24 08 8b 4c 24 04 50 e8 42 c7 b4 ff c3 cc

LINEAR DISASSEMBLY
10986d40 <.text+0x985d40>:
10986d40:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10986d44:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986d48:	50                                              	push   eax
10986d49:	e8 42 c7 b4 ff                                  	call   0x104d3490
10986d4e:	c3                                              	ret
10986d4f:	cc                                              	int3
