# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105698b0 (ThumbnailManager_NotifyPreparationCompleted)
Paired Ghidra pseudocode: 105698B0_ThumbnailManager_NotifyPreparationCompleted.c
Window: [0x105698b0, 0x105698c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105698c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105698b0: 8b 0d 50 11 c7 10 85 c9 74 05 e9 c1 9d db ff c3

LINEAR DISASSEMBLY
105698b0 <.text+0x5688b0>:
105698b0:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
105698b6:	85 c9                                           	test   ecx,ecx
105698b8:	74 05                                           	je     0x105698bf
105698ba:	e9 c1 9d db ff                                  	jmp    0x10323680
105698bf:	c3                                              	ret
