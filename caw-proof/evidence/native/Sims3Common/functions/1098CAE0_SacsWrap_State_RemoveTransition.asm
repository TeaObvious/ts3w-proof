# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cae0 (SacsWrap_State_RemoveTransition)
Paired Ghidra pseudocode: 1098CAE0_SacsWrap_State_RemoveTransition.c
Window: [0x1098cae0, 0x1098cb00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cb00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cae0: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098caf0: 50 e8 ea 22 c6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cae0 <.text+0x98bae0>:
1098cae0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cae4:	85 c9                                           	test   ecx,ecx
1098cae6:	74 0e                                           	je     0x1098caf6
1098cae8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098caec:	85 c0                                           	test   eax,eax
1098caee:	74 06                                           	je     0x1098caf6
1098caf0:	50                                              	push   eax
1098caf1:	e8 ea 22 c6 ff                                  	call   0x105eede0
1098caf6:	c3                                              	ret
1098caf7:	cc                                              	int3
1098caf8:	cc                                              	int3
1098caf9:	cc                                              	int3
1098cafa:	cc                                              	int3
1098cafb:	cc                                              	int3
1098cafc:	cc                                              	int3
1098cafd:	cc                                              	int3
1098cafe:	cc                                              	int3
1098caff:	cc                                              	int3
