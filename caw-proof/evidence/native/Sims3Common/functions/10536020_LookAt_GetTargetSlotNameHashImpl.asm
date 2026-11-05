# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536020 (LookAt_GetTargetSlotNameHashImpl)
Paired Ghidra pseudocode: 10536020_LookAt_GetTargetSlotNameHashImpl.c
Window: [0x10536020, 0x10536030) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536020: e9 db f3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536020 <.text+0x535020>:
10536020:	e9 db f3 ff ff                                  	jmp    0x10535400
10536025:	cc                                              	int3
10536026:	cc                                              	int3
10536027:	cc                                              	int3
10536028:	cc                                              	int3
10536029:	cc                                              	int3
1053602a:	cc                                              	int3
1053602b:	cc                                              	int3
1053602c:	cc                                              	int3
1053602d:	cc                                              	int3
1053602e:	cc                                              	int3
1053602f:	cc                                              	int3
