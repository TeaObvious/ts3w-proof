# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fe60 (SimBuilderWrap_ProcessModelBuilder)
Paired Ghidra pseudocode: 1098FE60_SimBuilderWrap_ProcessModelBuilder.c
Window: [0x1098fe60, 0x1098fe70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fe70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fe60: 8b 4c 24 04 e8 f7 d4 a4 ff 85 c0 0f 95 c0 c3 cc

LINEAR DISASSEMBLY
1098fe60 <.text+0x98ee60>:
1098fe60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098fe64:	e8 f7 d4 a4 ff                                  	call   0x103dd360
1098fe69:	85 c0                                           	test   eax,eax
1098fe6b:	0f 95 c0                                        	setne  al
1098fe6e:	c3                                              	ret
1098fe6f:	cc                                              	int3
