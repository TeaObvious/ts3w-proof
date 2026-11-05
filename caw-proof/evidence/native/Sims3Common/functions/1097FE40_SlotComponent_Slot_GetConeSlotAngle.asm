# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fe40 (SlotComponent_Slot_GetConeSlotAngle)
Paired Ghidra pseudocode: 1097FE40_SlotComponent_Slot_GetConeSlotAngle.c
Window: [0x1097fe40, 0x1097fe60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fe60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fe40: 8b 4c 24 04 85 c9 74 11 8b 01 8b 50 08 6a 06 ff
1097fe50: d2 85 c0 74 04 d9 40 1c c3 d9 ee c3 cc cc cc cc

LINEAR DISASSEMBLY
1097fe40 <.text+0x97ee40>:
1097fe40:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fe44:	85 c9                                           	test   ecx,ecx
1097fe46:	74 11                                           	je     0x1097fe59
1097fe48:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097fe4a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1097fe4d:	6a 06                                           	push   0x6
1097fe4f:	ff d2                                           	call   edx
1097fe51:	85 c0                                           	test   eax,eax
1097fe53:	74 04                                           	je     0x1097fe59
1097fe55:	d9 40 1c                                        	fld    DWORD PTR [eax+0x1c]
1097fe58:	c3                                              	ret
1097fe59:	d9 ee                                           	fldz
1097fe5b:	c3                                              	ret
1097fe5c:	cc                                              	int3
1097fe5d:	cc                                              	int3
1097fe5e:	cc                                              	int3
1097fe5f:	cc                                              	int3
