# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f760 (UIManager_SetCaptureTargetImpl)
Paired Ghidra pseudocode: 1056F760_UIManager_SetCaptureTargetImpl.c
Window: [0x1056f760, 0x1056f770) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f760: e9 3b d8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f760 <.text+0x56e760>:
1056f760:	e9 3b d8 ff ff                                  	jmp    0x1056cfa0
1056f765:	cc                                              	int3
1056f766:	cc                                              	int3
1056f767:	cc                                              	int3
1056f768:	cc                                              	int3
1056f769:	cc                                              	int3
1056f76a:	cc                                              	int3
1056f76b:	cc                                              	int3
1056f76c:	cc                                              	int3
1056f76d:	cc                                              	int3
1056f76e:	cc                                              	int3
1056f76f:	cc                                              	int3
