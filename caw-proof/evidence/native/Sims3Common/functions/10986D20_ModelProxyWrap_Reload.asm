# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986d20 (ModelProxyWrap_Reload)
Paired Ghidra pseudocode: 10986D20_ModelProxyWrap_Reload.c
Window: [0x10986d20, 0x10986d30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986d20: 8b 4c 24 04 e9 57 c9 b4 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986d20 <.text+0x985d20>:
10986d20:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986d24:	e9 57 c9 b4 ff                                  	jmp    0x104d3680
10986d29:	cc                                              	int3
10986d2a:	cc                                              	int3
10986d2b:	cc                                              	int3
10986d2c:	cc                                              	int3
10986d2d:	cc                                              	int3
10986d2e:	cc                                              	int3
10986d2f:	cc                                              	int3
