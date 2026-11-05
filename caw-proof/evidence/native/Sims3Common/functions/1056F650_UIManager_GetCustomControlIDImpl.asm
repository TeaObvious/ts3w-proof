# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f650 (UIManager_GetCustomControlIDImpl)
Paired Ghidra pseudocode: 1056F650_UIManager_GetCustomControlIDImpl.c
Window: [0x1056f650, 0x1056f660) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f650: e9 0b d3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f650 <.text+0x56e650>:
1056f650:	e9 0b d3 ff ff                                  	jmp    0x1056c960
1056f655:	cc                                              	int3
1056f656:	cc                                              	int3
1056f657:	cc                                              	int3
1056f658:	cc                                              	int3
1056f659:	cc                                              	int3
1056f65a:	cc                                              	int3
1056f65b:	cc                                              	int3
1056f65c:	cc                                              	int3
1056f65d:	cc                                              	int3
1056f65e:	cc                                              	int3
1056f65f:	cc                                              	int3
