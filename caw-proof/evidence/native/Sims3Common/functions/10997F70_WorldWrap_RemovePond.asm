# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997f70 (WorldWrap_RemovePond)
Paired Ghidra pseudocode: 10997F70_WorldWrap_RemovePond.c
Window: [0x10997f70, 0x10997f80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997f70: 8b 44 24 08 8b 4c 24 04 50 e8 72 24 8a ff c3 cc

LINEAR DISASSEMBLY
10997f70 <.text+0x996f70>:
10997f70:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997f74:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997f78:	50                                              	push   eax
10997f79:	e8 72 24 8a ff                                  	call   0x1023a3f0
10997f7e:	c3                                              	ret
10997f7f:	cc                                              	int3
