# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986d50 (ModelProxyWrap_GetModel)
Paired Ghidra pseudocode: 10986D50_ModelProxyWrap_GetModel.c
Window: [0x10986d50, 0x10986d60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986d50: 8b 4c 24 04 e9 d7 b2 b4 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986d50 <.text+0x985d50>:
10986d50:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986d54:	e9 d7 b2 b4 ff                                  	jmp    0x104d2030
10986d59:	cc                                              	int3
10986d5a:	cc                                              	int3
10986d5b:	cc                                              	int3
10986d5c:	cc                                              	int3
10986d5d:	cc                                              	int3
10986d5e:	cc                                              	int3
10986d5f:	cc                                              	int3
