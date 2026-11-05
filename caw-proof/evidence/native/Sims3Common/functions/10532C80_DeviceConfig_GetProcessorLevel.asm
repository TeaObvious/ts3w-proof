# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532c80 (DeviceConfig_GetProcessorLevel)
Paired Ghidra pseudocode: 10532C80_DeviceConfig_GetProcessorLevel.c
Window: [0x10532c80, 0x10532ca0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532c80: e8 0b 97 e5 ff 85 c0 74 11 8b 80 38 01 00 00 50
10532c90: ff 15 94 b6 aa 10 83 c4 04 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
10532c80 <.text+0x531c80>:
10532c80:	e8 0b 97 e5 ff                                  	call   0x1038c390
10532c85:	85 c0                                           	test   eax,eax
10532c87:	74 11                                           	je     0x10532c9a
10532c89:	8b 80 38 01 00 00                               	mov    eax,DWORD PTR [eax+0x138]
10532c8f:	50                                              	push   eax
10532c90:	ff 15 94 b6 aa 10                               	call   DWORD PTR ds:0x10aab694
10532c96:	83 c4 04                                        	add    esp,0x4
10532c99:	c3                                              	ret
10532c9a:	33 c0                                           	xor    eax,eax
10532c9c:	c3                                              	ret
10532c9d:	cc                                              	int3
10532c9e:	cc                                              	int3
10532c9f:	cc                                              	int3
