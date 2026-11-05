# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532ca0 (DeviceConfig_GetVideoCardLevel)
Paired Ghidra pseudocode: 10532CA0_DeviceConfig_GetVideoCardLevel.c
Window: [0x10532ca0, 0x10532cc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532ca0: e8 eb 96 e5 ff 85 c0 74 11 8b 80 18 01 00 00 50
10532cb0: ff 15 94 b6 aa 10 83 c4 04 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
10532ca0 <.text+0x531ca0>:
10532ca0:	e8 eb 96 e5 ff                                  	call   0x1038c390
10532ca5:	85 c0                                           	test   eax,eax
10532ca7:	74 11                                           	je     0x10532cba
10532ca9:	8b 80 18 01 00 00                               	mov    eax,DWORD PTR [eax+0x118]
10532caf:	50                                              	push   eax
10532cb0:	ff 15 94 b6 aa 10                               	call   DWORD PTR ds:0x10aab694
10532cb6:	83 c4 04                                        	add    esp,0x4
10532cb9:	c3                                              	ret
10532cba:	33 c0                                           	xor    eax,eax
10532cbc:	c3                                              	ret
10532cbd:	cc                                              	int3
10532cbe:	cc                                              	int3
10532cbf:	cc                                              	int3
