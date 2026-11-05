# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f590 (GetExePath)
Paired Ghidra pseudocode: 1097F590_GetExePath.c
Window: [0x1097f590, 0x1097f5a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f5a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f590: b9 c0 26 c7 10 e8 a6 f0 a0 ff 8b 00 c3 cc cc cc

LINEAR DISASSEMBLY
1097f590 <.text+0x97e590>:
1097f590:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097f595:	e8 a6 f0 a0 ff                                  	call   0x1038e640
1097f59a:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f59c:	c3                                              	ret
1097f59d:	cc                                              	int3
1097f59e:	cc                                              	int3
1097f59f:	cc                                              	int3
