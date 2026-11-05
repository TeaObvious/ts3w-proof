# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052e820 (Automation_SetFailureExitCode)
Paired Ghidra pseudocode: 1052E820_Automation_SetFailureExitCode.c
Window: [0x1052e820, 0x1052e830) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052e830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052e820: e9 4b 7c e5 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052e820 <.text+0x52d820>:
1052e820:	e9 4b 7c e5 ff                                  	jmp    0x10386470
1052e825:	cc                                              	int3
1052e826:	cc                                              	int3
1052e827:	cc                                              	int3
1052e828:	cc                                              	int3
1052e829:	cc                                              	int3
1052e82a:	cc                                              	int3
1052e82b:	cc                                              	int3
1052e82c:	cc                                              	int3
1052e82d:	cc                                              	int3
1052e82e:	cc                                              	int3
1052e82f:	cc                                              	int3
