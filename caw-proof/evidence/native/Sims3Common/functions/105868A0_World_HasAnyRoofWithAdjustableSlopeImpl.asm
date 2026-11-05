# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105868a0 (World_HasAnyRoofWithAdjustableSlopeImpl)
Paired Ghidra pseudocode: 105868A0_World_HasAnyRoofWithAdjustableSlopeImpl.c
Window: [0x105868a0, 0x105868c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105868c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105868a0: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 fd ff ff 83
105868b0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105868a0 <.text+0x5858a0>:
105868a0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105868a4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105868a8:	50                                              	push   eax
105868a9:	51                                              	push   ecx
105868aa:	e8 31 fd ff ff                                  	call   0x105865e0
105868af:	83 c4 08                                        	add    esp,0x8
105868b2:	c3                                              	ret
105868b3:	cc                                              	int3
105868b4:	cc                                              	int3
105868b5:	cc                                              	int3
105868b6:	cc                                              	int3
105868b7:	cc                                              	int3
105868b8:	cc                                              	int3
105868b9:	cc                                              	int3
105868ba:	cc                                              	int3
105868bb:	cc                                              	int3
105868bc:	cc                                              	int3
105868bd:	cc                                              	int3
105868be:	cc                                              	int3
105868bf:	cc                                              	int3
