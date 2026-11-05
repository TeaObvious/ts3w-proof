# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f770 (UIManager_ReleaseCaptureImpl)
Paired Ghidra pseudocode: 1056F770_UIManager_ReleaseCaptureImpl.c
Window: [0x1056f770, 0x1056f780) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f770: e9 8b d8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f770 <.text+0x56e770>:
1056f770:	e9 8b d8 ff ff                                  	jmp    0x1056d000
1056f775:	cc                                              	int3
1056f776:	cc                                              	int3
1056f777:	cc                                              	int3
1056f778:	cc                                              	int3
1056f779:	cc                                              	int3
1056f77a:	cc                                              	int3
1056f77b:	cc                                              	int3
1056f77c:	cc                                              	int3
1056f77d:	cc                                              	int3
1056f77e:	cc                                              	int3
1056f77f:	cc                                              	int3
