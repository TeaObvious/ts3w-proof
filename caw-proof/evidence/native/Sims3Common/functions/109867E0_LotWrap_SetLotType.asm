# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109867e0 (LotWrap_SetLotType)
Paired Ghidra pseudocode: 109867E0_LotWrap_SetLotType.c
Window: [0x109867e0, 0x10986810) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109867e0: 8b 44 24 04 85 c0 74 1c 8b 4c 24 08 39 88 08 04
109867f0: 00 00 74 10 c7 80 0c 04 00 00 00 00 00 00 89 88
10986800: 08 04 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109867e0 <.text+0x9857e0>:
109867e0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109867e4:	85 c0                                           	test   eax,eax
109867e6:	74 1c                                           	je     0x10986804
109867e8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
109867ec:	39 88 08 04 00 00                               	cmp    DWORD PTR [eax+0x408],ecx
109867f2:	74 10                                           	je     0x10986804
109867f4:	c7 80 0c 04 00 00 00 00 00 00                   	mov    DWORD PTR [eax+0x40c],0x0
109867fe:	89 88 08 04 00 00                               	mov    DWORD PTR [eax+0x408],ecx
10986804:	c3                                              	ret
10986805:	cc                                              	int3
10986806:	cc                                              	int3
10986807:	cc                                              	int3
10986808:	cc                                              	int3
10986809:	cc                                              	int3
1098680a:	cc                                              	int3
1098680b:	cc                                              	int3
1098680c:	cc                                              	int3
1098680d:	cc                                              	int3
1098680e:	cc                                              	int3
1098680f:	cc                                              	int3
