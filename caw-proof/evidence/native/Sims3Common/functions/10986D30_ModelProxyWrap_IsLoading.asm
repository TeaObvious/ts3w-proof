# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986d30 (ModelProxyWrap_IsLoading)
Paired Ghidra pseudocode: 10986D30_ModelProxyWrap_IsLoading.c
Window: [0x10986d30, 0x10986d40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986d30: 8b 4c 24 04 e8 27 b3 b4 ff f6 d8 1b c0 f7 d8 c3

LINEAR DISASSEMBLY
10986d30 <.text+0x985d30>:
10986d30:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986d34:	e8 27 b3 b4 ff                                  	call   0x104d2060
10986d39:	f6 d8                                           	neg    al
10986d3b:	1b c0                                           	sbb    eax,eax
10986d3d:	f7 d8                                           	neg    eax
10986d3f:	c3                                              	ret
