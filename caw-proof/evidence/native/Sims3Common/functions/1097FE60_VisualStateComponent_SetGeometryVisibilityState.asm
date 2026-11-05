# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fe60 (VisualStateComponent_SetGeometryVisibilityState)
Paired Ghidra pseudocode: 1097FE60_VisualStateComponent_SetGeometryVisibilityState.c
Window: [0x1097fe60, 0x1097fe80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fe80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fe60: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 de 13
1097fe70: dd ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fe60 <.text+0x97ee60>:
1097fe60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fe64:	85 c9                                           	test   ecx,ecx
1097fe66:	74 0a                                           	je     0x1097fe72
1097fe68:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097fe6c:	50                                              	push   eax
1097fe6d:	e8 de 13 dd ff                                  	call   0x10751250
1097fe72:	c3                                              	ret
1097fe73:	cc                                              	int3
1097fe74:	cc                                              	int3
1097fe75:	cc                                              	int3
1097fe76:	cc                                              	int3
1097fe77:	cc                                              	int3
1097fe78:	cc                                              	int3
1097fe79:	cc                                              	int3
1097fe7a:	cc                                              	int3
1097fe7b:	cc                                              	int3
1097fe7c:	cc                                              	int3
1097fe7d:	cc                                              	int3
1097fe7e:	cc                                              	int3
1097fe7f:	cc                                              	int3
