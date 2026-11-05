# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fb70 (UIManager_AttachCameraFlashWinProcImpl)
Paired Ghidra pseudocode: 1056FB70_UIManager_AttachCameraFlashWinProcImpl.c
Window: [0x1056fb70, 0x1056fb80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fb80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fb70: e9 2b f9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fb70 <.text+0x56eb70>:
1056fb70:	e9 2b f9 ff ff                                  	jmp    0x1056f4a0
1056fb75:	cc                                              	int3
1056fb76:	cc                                              	int3
1056fb77:	cc                                              	int3
1056fb78:	cc                                              	int3
1056fb79:	cc                                              	int3
1056fb7a:	cc                                              	int3
1056fb7b:	cc                                              	int3
1056fb7c:	cc                                              	int3
1056fb7d:	cc                                              	int3
1056fb7e:	cc                                              	int3
1056fb7f:	cc                                              	int3
