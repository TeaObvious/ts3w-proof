# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532980 (DeviceConfig_IsAASupported)
Paired Ghidra pseudocode: 10532980_DeviceConfig_IsAASupported.c
Window: [0x10532980, 0x105329a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105329a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532980: a1 00 e3 c1 10 6a 00 68 50 a1 b1 10 50 e8 5e 60
10532990: e5 ff 83 c4 0c f7 d8 1b c0 83 c0 01 c3 cc cc cc

LINEAR DISASSEMBLY
10532980 <.text+0x531980>:
10532980:	a1 00 e3 c1 10                                  	mov    eax,ds:0x10c1e300
10532985:	6a 00                                           	push   0x0
10532987:	68 50 a1 b1 10                                  	push   0x10b1a150
1053298c:	50                                              	push   eax
1053298d:	e8 5e 60 e5 ff                                  	call   0x103889f0
10532992:	83 c4 0c                                        	add    esp,0xc
10532995:	f7 d8                                           	neg    eax
10532997:	1b c0                                           	sbb    eax,eax
10532999:	83 c0 01                                        	add    eax,0x1
1053299c:	c3                                              	ret
1053299d:	cc                                              	int3
1053299e:	cc                                              	int3
1053299f:	cc                                              	int3
