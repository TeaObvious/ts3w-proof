# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563d70 (SocialFeaturesHost_PostChallengeCompletion)
Paired Ghidra pseudocode: 10563D70_SocialFeaturesHost_PostChallengeCompletion.c
Window: [0x10563d70, 0x10563d80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563d70: e9 9b f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563d70 <.text+0x562d70>:
10563d70:	e9 9b f6 ff ff                                  	jmp    0x10563410
10563d75:	cc                                              	int3
10563d76:	cc                                              	int3
10563d77:	cc                                              	int3
10563d78:	cc                                              	int3
10563d79:	cc                                              	int3
10563d7a:	cc                                              	int3
10563d7b:	cc                                              	int3
10563d7c:	cc                                              	int3
10563d7d:	cc                                              	int3
10563d7e:	cc                                              	int3
10563d7f:	cc                                              	int3
