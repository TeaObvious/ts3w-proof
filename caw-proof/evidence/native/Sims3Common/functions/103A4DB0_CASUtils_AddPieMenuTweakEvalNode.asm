# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4db0 (CASUtils_AddPieMenuTweakEvalNode)
Paired Ghidra pseudocode: 103A4DB0_CASUtils_AddPieMenuTweakEvalNode.c
Window: [0x103a4db0, 0x103a4dd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4db0: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 f8 ff ff 83
103a4dc0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4db0 <.text+0x3a3db0>:
103a4db0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a4db4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a4db8:	50                                              	push   eax
103a4db9:	51                                              	push   ecx
103a4dba:	e8 f1 f8 ff ff                                  	call   0x103a46b0
103a4dbf:	83 c4 08                                        	add    esp,0x8
103a4dc2:	c3                                              	ret
103a4dc3:	cc                                              	int3
103a4dc4:	cc                                              	int3
103a4dc5:	cc                                              	int3
103a4dc6:	cc                                              	int3
103a4dc7:	cc                                              	int3
103a4dc8:	cc                                              	int3
103a4dc9:	cc                                              	int3
103a4dca:	cc                                              	int3
103a4dcb:	cc                                              	int3
103a4dcc:	cc                                              	int3
103a4dcd:	cc                                              	int3
103a4dce:	cc                                              	int3
103a4dcf:	cc                                              	int3
