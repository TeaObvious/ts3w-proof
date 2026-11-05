# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997d40 (WorldWrap_SetActiveObjectManager)
Paired Ghidra pseudocode: 10997D40_WorldWrap_SetActiveObjectManager.c
Window: [0x10997d40, 0x10997d60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997d40: 8b 44 24 04 85 c0 74 0a 8b 4c 24 08 89 88 ac 00
10997d50: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997d40 <.text+0x996d40>:
10997d40:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997d44:	85 c0                                           	test   eax,eax
10997d46:	74 0a                                           	je     0x10997d52
10997d48:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10997d4c:	89 88 ac 00 00 00                               	mov    DWORD PTR [eax+0xac],ecx
10997d52:	c3                                              	ret
10997d53:	cc                                              	int3
10997d54:	cc                                              	int3
10997d55:	cc                                              	int3
10997d56:	cc                                              	int3
10997d57:	cc                                              	int3
10997d58:	cc                                              	int3
10997d59:	cc                                              	int3
10997d5a:	cc                                              	int3
10997d5b:	cc                                              	int3
10997d5c:	cc                                              	int3
10997d5d:	cc                                              	int3
10997d5e:	cc                                              	int3
10997d5f:	cc                                              	int3
