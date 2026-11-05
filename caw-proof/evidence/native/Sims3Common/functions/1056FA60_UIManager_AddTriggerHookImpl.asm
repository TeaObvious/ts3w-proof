# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa60 (UIManager_AddTriggerHookImpl)
Paired Ghidra pseudocode: 1056FA60_UIManager_AddTriggerHookImpl.c
Window: [0x1056fa60, 0x1056fa70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa60: e9 db f2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa60 <.text+0x56ea60>:
1056fa60:	e9 db f2 ff ff                                  	jmp    0x1056ed40
1056fa65:	cc                                              	int3
1056fa66:	cc                                              	int3
1056fa67:	cc                                              	int3
1056fa68:	cc                                              	int3
1056fa69:	cc                                              	int3
1056fa6a:	cc                                              	int3
1056fa6b:	cc                                              	int3
1056fa6c:	cc                                              	int3
1056fa6d:	cc                                              	int3
1056fa6e:	cc                                              	int3
1056fa6f:	cc                                              	int3
