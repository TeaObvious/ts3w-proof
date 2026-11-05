# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532a90 (DeviceConfig_AuthenticateDisc)
Paired Ghidra pseudocode: 10532A90_DeviceConfig_AuthenticateDisc.c
Window: [0x10532a90, 0x10532aa0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532a90: 6a 00 e8 f9 a2 e5 ff 83 c4 04 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10532a90 <.text+0x531a90>:
10532a90:	6a 00                                           	push   0x0
10532a92:	e8 f9 a2 e5 ff                                  	call   0x1038cd90
10532a97:	83 c4 04                                        	add    esp,0x4
10532a9a:	c3                                              	ret
10532a9b:	cc                                              	int3
10532a9c:	cc                                              	int3
10532a9d:	cc                                              	int3
10532a9e:	cc                                              	int3
10532a9f:	cc                                              	int3
