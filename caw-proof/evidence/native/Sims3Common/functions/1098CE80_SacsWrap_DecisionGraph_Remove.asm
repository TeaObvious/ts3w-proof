# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ce80 (SacsWrap_DecisionGraph_Remove)
Paired Ghidra pseudocode: 1098CE80_SacsWrap_DecisionGraph_Remove.c
Window: [0x1098ce80, 0x1098cea0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ce80: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098ce90: 50 e8 0a 7e c5 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ce80 <.text+0x98be80>:
1098ce80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ce84:	85 c9                                           	test   ecx,ecx
1098ce86:	74 0e                                           	je     0x1098ce96
1098ce88:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098ce8c:	85 c0                                           	test   eax,eax
1098ce8e:	74 06                                           	je     0x1098ce96
1098ce90:	50                                              	push   eax
1098ce91:	e8 0a 7e c5 ff                                  	call   0x105e4ca0
1098ce96:	c3                                              	ret
1098ce97:	cc                                              	int3
1098ce98:	cc                                              	int3
1098ce99:	cc                                              	int3
1098ce9a:	cc                                              	int3
1098ce9b:	cc                                              	int3
1098ce9c:	cc                                              	int3
1098ce9d:	cc                                              	int3
1098ce9e:	cc                                              	int3
1098ce9f:	cc                                              	int3
