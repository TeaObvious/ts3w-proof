# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ca30 (SacsWrap_StateMachine_GetAwarenessOverlayLevel)
Paired Ghidra pseudocode: 1098CA30_SacsWrap_StateMachine_GetAwarenessOverlayLevel.c
Window: [0x1098ca30, 0x1098ca50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ca50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ca30: 8b 44 24 04 85 c0 75 06 b8 06 00 00 00 c3 8b 40
1098ca40: 38 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ca30 <.text+0x98ba30>:
1098ca30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ca34:	85 c0                                           	test   eax,eax
1098ca36:	75 06                                           	jne    0x1098ca3e
1098ca38:	b8 06 00 00 00                                  	mov    eax,0x6
1098ca3d:	c3                                              	ret
1098ca3e:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
1098ca41:	c3                                              	ret
1098ca42:	cc                                              	int3
1098ca43:	cc                                              	int3
1098ca44:	cc                                              	int3
1098ca45:	cc                                              	int3
1098ca46:	cc                                              	int3
1098ca47:	cc                                              	int3
1098ca48:	cc                                              	int3
1098ca49:	cc                                              	int3
1098ca4a:	cc                                              	int3
1098ca4b:	cc                                              	int3
1098ca4c:	cc                                              	int3
1098ca4d:	cc                                              	int3
1098ca4e:	cc                                              	int3
1098ca4f:	cc                                              	int3
