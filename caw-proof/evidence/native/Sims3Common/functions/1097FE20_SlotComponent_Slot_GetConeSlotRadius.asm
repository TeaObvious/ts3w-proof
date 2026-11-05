# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fe20 (SlotComponent_Slot_GetConeSlotRadius)
Paired Ghidra pseudocode: 1097FE20_SlotComponent_Slot_GetConeSlotRadius.c
Window: [0x1097fe20, 0x1097fe40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fe40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fe20: 8b 4c 24 04 85 c9 74 11 8b 01 8b 50 08 6a 06 ff
1097fe30: d2 85 c0 74 04 d9 40 18 c3 d9 ee c3 cc cc cc cc

LINEAR DISASSEMBLY
1097fe20 <.text+0x97ee20>:
1097fe20:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fe24:	85 c9                                           	test   ecx,ecx
1097fe26:	74 11                                           	je     0x1097fe39
1097fe28:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097fe2a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1097fe2d:	6a 06                                           	push   0x6
1097fe2f:	ff d2                                           	call   edx
1097fe31:	85 c0                                           	test   eax,eax
1097fe33:	74 04                                           	je     0x1097fe39
1097fe35:	d9 40 18                                        	fld    DWORD PTR [eax+0x18]
1097fe38:	c3                                              	ret
1097fe39:	d9 ee                                           	fldz
1097fe3b:	c3                                              	ret
1097fe3c:	cc                                              	int3
1097fe3d:	cc                                              	int3
1097fe3e:	cc                                              	int3
1097fe3f:	cc                                              	int3
