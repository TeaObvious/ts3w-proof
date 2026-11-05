# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986660 (LotWrap_GetCommercialLotSubType)
Paired Ghidra pseudocode: 10986660_LotWrap_GetCommercialLotSubType.c
Window: [0x10986660, 0x10986680) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986660: 8b 4c 24 04 33 c0 85 c9 74 12 83 b9 08 04 00 00
10986670: 01 75 07 8b 81 0c 04 00 00 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
10986660 <.text+0x985660>:
10986660:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986664:	33 c0                                           	xor    eax,eax
10986666:	85 c9                                           	test   ecx,ecx
10986668:	74 12                                           	je     0x1098667c
1098666a:	83 b9 08 04 00 00 01                            	cmp    DWORD PTR [ecx+0x408],0x1
10986671:	75 07                                           	jne    0x1098667a
10986673:	8b 81 0c 04 00 00                               	mov    eax,DWORD PTR [ecx+0x40c]
10986679:	c3                                              	ret
1098667a:	33 c0                                           	xor    eax,eax
1098667c:	c3                                              	ret
1098667d:	cc                                              	int3
1098667e:	cc                                              	int3
1098667f:	cc                                              	int3
