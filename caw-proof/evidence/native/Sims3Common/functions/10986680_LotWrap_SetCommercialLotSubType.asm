# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986680 (LotWrap_SetCommercialLotSubType)
Paired Ghidra pseudocode: 10986680_LotWrap_SetCommercialLotSubType.c
Window: [0x10986680, 0x109866a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109866a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986680: 8b 44 24 04 85 c0 74 13 83 b8 08 04 00 00 01 75
10986690: 0a 8b 4c 24 08 89 88 0c 04 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
10986680 <.text+0x985680>:
10986680:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986684:	85 c0                                           	test   eax,eax
10986686:	74 13                                           	je     0x1098669b
10986688:	83 b8 08 04 00 00 01                            	cmp    DWORD PTR [eax+0x408],0x1
1098668f:	75 0a                                           	jne    0x1098669b
10986691:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10986695:	89 88 0c 04 00 00                               	mov    DWORD PTR [eax+0x40c],ecx
1098669b:	c3                                              	ret
1098669c:	cc                                              	int3
1098669d:	cc                                              	int3
1098669e:	cc                                              	int3
1098669f:	cc                                              	int3
