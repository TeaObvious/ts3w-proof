# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109866d0 (LotWrap_SetLotAdditionalPropertyValue)
Paired Ghidra pseudocode: 109866D0_LotWrap_SetLotAdditionalPropertyValue.c
Window: [0x109866d0, 0x109866f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109866f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109866d0: 8b 44 24 04 85 c0 74 0e f3 0f 10 44 24 08 f3 0f
109866e0: 11 80 20 04 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109866d0 <.text+0x9856d0>:
109866d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109866d4:	85 c0                                           	test   eax,eax
109866d6:	74 0e                                           	je     0x109866e6
109866d8:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
109866de:	f3 0f 11 80 20 04 00 00                         	movss  DWORD PTR [eax+0x420],xmm0
109866e6:	c3                                              	ret
109866e7:	cc                                              	int3
109866e8:	cc                                              	int3
109866e9:	cc                                              	int3
109866ea:	cc                                              	int3
109866eb:	cc                                              	int3
109866ec:	cc                                              	int3
109866ed:	cc                                              	int3
109866ee:	cc                                              	int3
109866ef:	cc                                              	int3
