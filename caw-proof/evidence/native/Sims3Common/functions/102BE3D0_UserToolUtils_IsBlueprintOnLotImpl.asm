# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be3d0 (UserToolUtils_IsBlueprintOnLotImpl)
Paired Ghidra pseudocode: 102BE3D0_UserToolUtils_IsBlueprintOnLotImpl.c
Window: [0x102be3d0, 0x102be3e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be3e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be3d0: e8 fb fb ff ff 0f b6 c0 99 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be3d0 <.text+0x2bd3d0>:
102be3d0:	e8 fb fb ff ff                                  	call   0x102bdfd0
102be3d5:	0f b6 c0                                        	movzx  eax,al
102be3d8:	99                                              	cdq
102be3d9:	c3                                              	ret
102be3da:	cc                                              	int3
102be3db:	cc                                              	int3
102be3dc:	cc                                              	int3
102be3dd:	cc                                              	int3
102be3de:	cc                                              	int3
102be3df:	cc                                              	int3
