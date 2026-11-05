# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e840 (SceneManWrap_GetDebugCamera)
Paired Ghidra pseudocode: 1098E840_SceneManWrap_GetDebugCamera.c
Window: [0x1098e840, 0x1098e850) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e840: 8b 4c 24 04 e9 b7 0b 9e ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e840 <.text+0x98d840>:
1098e840:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e844:	e9 b7 0b 9e ff                                  	jmp    0x1036f400
1098e849:	cc                                              	int3
1098e84a:	cc                                              	int3
1098e84b:	cc                                              	int3
1098e84c:	cc                                              	int3
1098e84d:	cc                                              	int3
1098e84e:	cc                                              	int3
1098e84f:	cc                                              	int3
