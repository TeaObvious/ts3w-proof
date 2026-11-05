# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10571d70 (UIManager_ToggleDebugLayoutNamesVisibleImpl)
Paired Ghidra pseudocode: 10571D70_UIManager_ToggleDebugLayoutNamesVisibleImpl.c
Window: [0x10571d70, 0x10571d80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10571d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10571d70: e9 8b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10571d70 <.text+0x570d70>:
10571d70:	e9 8b fc ff ff                                  	jmp    0x10571a00
10571d75:	cc                                              	int3
10571d76:	cc                                              	int3
10571d77:	cc                                              	int3
10571d78:	cc                                              	int3
10571d79:	cc                                              	int3
10571d7a:	cc                                              	int3
10571d7b:	cc                                              	int3
10571d7c:	cc                                              	int3
10571d7d:	cc                                              	int3
10571d7e:	cc                                              	int3
10571d7f:	cc                                              	int3
