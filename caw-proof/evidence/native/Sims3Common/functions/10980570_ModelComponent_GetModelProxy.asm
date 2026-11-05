# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980570 (ModelComponent_GetModelProxy)
Paired Ghidra pseudocode: 10980570_ModelComponent_GetModelProxy.c
Window: [0x10980570, 0x10980590) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980570: 8b 4c 24 04 e8 d7 a8 db ff 52 50 e8 90 ff ff ff
10980580: 83 c4 08 85 c0 74 06 05 10 02 00 00 c3 33 c0 c3

LINEAR DISASSEMBLY
10980570 <.text+0x97f570>:
10980570:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10980574:	e8 d7 a8 db ff                                  	call   0x1073ae50
10980579:	52                                              	push   edx
1098057a:	50                                              	push   eax
1098057b:	e8 90 ff ff ff                                  	call   0x10980510
10980580:	83 c4 08                                        	add    esp,0x8
10980583:	85 c0                                           	test   eax,eax
10980585:	74 06                                           	je     0x1098058d
10980587:	05 10 02 00 00                                  	add    eax,0x210
1098058c:	c3                                              	ret
1098058d:	33 c0                                           	xor    eax,eax
1098058f:	c3                                              	ret
