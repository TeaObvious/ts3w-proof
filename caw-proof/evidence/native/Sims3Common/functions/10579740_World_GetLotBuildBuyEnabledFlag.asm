# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579740 (World_GetLotBuildBuyEnabledFlag)
Paired Ghidra pseudocode: 10579740_World_GetLotBuildBuyEnabledFlag.c
Window: [0x10579740, 0x10579770) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579740: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
10579750: 24 04 6a 00 50 52 e8 b5 d8 cb ff 85 c0 74 07 8a
10579760: 80 1c 04 00 00 c3 b0 01 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579740 <.text+0x578740>:
10579740:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10579746:	85 c9                                           	test   ecx,ecx
10579748:	74 1c                                           	je     0x10579766
1057974a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057974e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10579752:	6a 00                                           	push   0x0
10579754:	50                                              	push   eax
10579755:	52                                              	push   edx
10579756:	e8 b5 d8 cb ff                                  	call   0x10237010
1057975b:	85 c0                                           	test   eax,eax
1057975d:	74 07                                           	je     0x10579766
1057975f:	8a 80 1c 04 00 00                               	mov    al,BYTE PTR [eax+0x41c]
10579765:	c3                                              	ret
10579766:	b0 01                                           	mov    al,0x1
10579768:	c3                                              	ret
10579769:	cc                                              	int3
1057976a:	cc                                              	int3
1057976b:	cc                                              	int3
1057976c:	cc                                              	int3
1057976d:	cc                                              	int3
1057976e:	cc                                              	int3
1057976f:	cc                                              	int3
