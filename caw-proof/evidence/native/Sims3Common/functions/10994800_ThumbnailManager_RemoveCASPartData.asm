# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994800 (ThumbnailManager_RemoveCASPartData)
Paired Ghidra pseudocode: 10994800_ThumbnailManager_RemoveCASPartData.c
Window: [0x10994800, 0x10994810) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994800: 8b 0d 50 11 c7 10 85 c9 74 05 e9 31 de 98 ff c3

LINEAR DISASSEMBLY
10994800 <.text+0x993800>:
10994800:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10994806:	85 c9                                           	test   ecx,ecx
10994808:	74 05                                           	je     0x1099480f
1099480a:	e9 31 de 98 ff                                  	jmp    0x10322640
1099480f:	c3                                              	ret
