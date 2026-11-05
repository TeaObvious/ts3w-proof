# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fde0 (SlotComponent_Slot_QueryInterface)
Paired Ghidra pseudocode: 1097FDE0_SlotComponent_Slot_QueryInterface.c
Window: [0x1097fde0, 0x1097fe00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fe00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fde0: 8b 4c 24 04 8b 01 8b 54 24 08 8b 40 08 52 ff d0
1097fdf0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fde0 <.text+0x97ede0>:
1097fde0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fde4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097fde6:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1097fdea:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
1097fded:	52                                              	push   edx
1097fdee:	ff d0                                           	call   eax
1097fdf0:	c3                                              	ret
1097fdf1:	cc                                              	int3
1097fdf2:	cc                                              	int3
1097fdf3:	cc                                              	int3
1097fdf4:	cc                                              	int3
1097fdf5:	cc                                              	int3
1097fdf6:	cc                                              	int3
1097fdf7:	cc                                              	int3
1097fdf8:	cc                                              	int3
1097fdf9:	cc                                              	int3
1097fdfa:	cc                                              	int3
1097fdfb:	cc                                              	int3
1097fdfc:	cc                                              	int3
1097fdfd:	cc                                              	int3
1097fdfe:	cc                                              	int3
1097fdff:	cc                                              	int3
