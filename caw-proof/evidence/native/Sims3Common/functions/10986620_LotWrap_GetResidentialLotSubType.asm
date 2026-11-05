# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986620 (LotWrap_GetResidentialLotSubType)
Paired Ghidra pseudocode: 10986620_LotWrap_GetResidentialLotSubType.c
Window: [0x10986620, 0x10986640) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986620: 8b 4c 24 04 33 c0 85 c9 74 11 39 81 08 04 00 00
10986630: 75 07 8b 81 0c 04 00 00 c3 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
10986620 <.text+0x985620>:
10986620:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986624:	33 c0                                           	xor    eax,eax
10986626:	85 c9                                           	test   ecx,ecx
10986628:	74 11                                           	je     0x1098663b
1098662a:	39 81 08 04 00 00                               	cmp    DWORD PTR [ecx+0x408],eax
10986630:	75 07                                           	jne    0x10986639
10986632:	8b 81 0c 04 00 00                               	mov    eax,DWORD PTR [ecx+0x40c]
10986638:	c3                                              	ret
10986639:	33 c0                                           	xor    eax,eax
1098663b:	c3                                              	ret
1098663c:	cc                                              	int3
1098663d:	cc                                              	int3
1098663e:	cc                                              	int3
1098663f:	cc                                              	int3
