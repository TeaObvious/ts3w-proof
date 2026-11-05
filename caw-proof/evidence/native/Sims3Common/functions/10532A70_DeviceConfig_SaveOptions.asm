# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532a70 (DeviceConfig_SaveOptions)
Paired Ghidra pseudocode: 10532A70_DeviceConfig_SaveOptions.c
Window: [0x10532a70, 0x10532a90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532a70: e8 1b 99 e5 ff 85 c0 74 08 8d 48 04 e9 1f 99 e5
10532a80: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532a70 <.text+0x531a70>:
10532a70:	e8 1b 99 e5 ff                                  	call   0x1038c390
10532a75:	85 c0                                           	test   eax,eax
10532a77:	74 08                                           	je     0x10532a81
10532a79:	8d 48 04                                        	lea    ecx,[eax+0x4]
10532a7c:	e9 1f 99 e5 ff                                  	jmp    0x1038c3a0
10532a81:	c3                                              	ret
10532a82:	cc                                              	int3
10532a83:	cc                                              	int3
10532a84:	cc                                              	int3
10532a85:	cc                                              	int3
10532a86:	cc                                              	int3
10532a87:	cc                                              	int3
10532a88:	cc                                              	int3
10532a89:	cc                                              	int3
10532a8a:	cc                                              	int3
10532a8b:	cc                                              	int3
10532a8c:	cc                                              	int3
10532a8d:	cc                                              	int3
10532a8e:	cc                                              	int3
10532a8f:	cc                                              	int3
