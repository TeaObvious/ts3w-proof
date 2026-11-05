# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105329a0 (DeviceConfig_IsNewConfiguration)
Paired Ghidra pseudocode: 105329A0_DeviceConfig_IsNewConfiguration.c
Window: [0x105329a0, 0x105329b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105329b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105329a0: e8 eb 99 e5 ff 85 c0 74 04 8a 40 78 c3 32 c0 c3

LINEAR DISASSEMBLY
105329a0 <.text+0x5319a0>:
105329a0:	e8 eb 99 e5 ff                                  	call   0x1038c390
105329a5:	85 c0                                           	test   eax,eax
105329a7:	74 04                                           	je     0x105329ad
105329a9:	8a 40 78                                        	mov    al,BYTE PTR [eax+0x78]
105329ac:	c3                                              	ret
105329ad:	32 c0                                           	xor    al,al
105329af:	c3                                              	ret
