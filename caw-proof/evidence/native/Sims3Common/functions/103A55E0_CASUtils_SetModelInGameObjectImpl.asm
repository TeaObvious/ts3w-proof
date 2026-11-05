# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a55e0 (CASUtils_SetModelInGameObjectImpl)
Paired Ghidra pseudocode: 103A55E0_CASUtils_SetModelInGameObjectImpl.c
Window: [0x103a55e0, 0x103a5600) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a55e0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
103a55f0: 9c f8 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a55e0 <.text+0x3a45e0>:
103a55e0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a55e4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a55e8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
103a55ec:	50                                              	push   eax
103a55ed:	51                                              	push   ecx
103a55ee:	52                                              	push   edx
103a55ef:	e8 9c f8 ff ff                                  	call   0x103a4e90
103a55f4:	83 c4 0c                                        	add    esp,0xc
103a55f7:	c3                                              	ret
103a55f8:	cc                                              	int3
103a55f9:	cc                                              	int3
103a55fa:	cc                                              	int3
103a55fb:	cc                                              	int3
103a55fc:	cc                                              	int3
103a55fd:	cc                                              	int3
103a55fe:	cc                                              	int3
103a55ff:	cc                                              	int3
