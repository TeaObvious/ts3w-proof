# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e950 (SceneManWrap_GetBoundingBoxesEnabled)
Paired Ghidra pseudocode: 1098E950_SceneManWrap_GetBoundingBoxesEnabled.c
Window: [0x1098e950, 0x1098e960) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e950: 8b 4c 24 04 33 c0 38 81 5d 02 00 00 0f 95 c0 c3

LINEAR DISASSEMBLY
1098e950 <.text+0x98d950>:
1098e950:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e954:	33 c0                                           	xor    eax,eax
1098e956:	38 81 5d 02 00 00                               	cmp    BYTE PTR [ecx+0x25d],al
1098e95c:	0f 95 c0                                        	setne  al
1098e95f:	c3                                              	ret
