# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057baf0 (World_SetVisualOverrideImpl)
Paired Ghidra pseudocode: 1057BAF0_World_SetVisualOverrideImpl.c
Window: [0x1057baf0, 0x1057bb10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057bb10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057baf0: 8b 0d c4 00 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
1057bb00: fc 80 cb ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057baf0 <.text+0x57aaf0>:
1057baf0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057baf6:	85 c9                                           	test   ecx,ecx
1057baf8:	74 0a                                           	je     0x1057bb04
1057bafa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057bafe:	50                                              	push   eax
1057baff:	e8 fc 80 cb ff                                  	call   0x10233c00
1057bb04:	c3                                              	ret
1057bb05:	cc                                              	int3
1057bb06:	cc                                              	int3
1057bb07:	cc                                              	int3
1057bb08:	cc                                              	int3
1057bb09:	cc                                              	int3
1057bb0a:	cc                                              	int3
1057bb0b:	cc                                              	int3
1057bb0c:	cc                                              	int3
1057bb0d:	cc                                              	int3
1057bb0e:	cc                                              	int3
1057bb0f:	cc                                              	int3
