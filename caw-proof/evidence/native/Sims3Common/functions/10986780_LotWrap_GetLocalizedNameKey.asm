# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986780 (LotWrap_GetLocalizedNameKey)
Paired Ghidra pseudocode: 10986780_LotWrap_GetLocalizedNameKey.c
Window: [0x10986780, 0x109867a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109867a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986780: 8b 44 24 04 85 c0 74 07 8b 80 c0 03 00 00 c3 33
10986790: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986780 <.text+0x985780>:
10986780:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986784:	85 c0                                           	test   eax,eax
10986786:	74 07                                           	je     0x1098678f
10986788:	8b 80 c0 03 00 00                               	mov    eax,DWORD PTR [eax+0x3c0]
1098678e:	c3                                              	ret
1098678f:	33 c0                                           	xor    eax,eax
10986791:	c3                                              	ret
10986792:	cc                                              	int3
10986793:	cc                                              	int3
10986794:	cc                                              	int3
10986795:	cc                                              	int3
10986796:	cc                                              	int3
10986797:	cc                                              	int3
10986798:	cc                                              	int3
10986799:	cc                                              	int3
1098679a:	cc                                              	int3
1098679b:	cc                                              	int3
1098679c:	cc                                              	int3
1098679d:	cc                                              	int3
1098679e:	cc                                              	int3
1098679f:	cc                                              	int3
