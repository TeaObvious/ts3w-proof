# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aba0 (World_AreHolidayHouseLightsEnabledImpl)
Paired Ghidra pseudocode: 1057ABA0_World_AreHolidayHouseLightsEnabledImpl.c
Window: [0x1057aba0, 0x1057abe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057abe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aba0: 8b 0d c4 00 c7 10 85 c9 74 26 8b 44 24 08 8b 54
1057abb0: 24 04 6a 00 50 52 e8 55 c4 cb ff 85 c0 74 11 8b
1057abc0: 80 ac 02 00 00 85 c0 74 07 8a 80 90 00 00 00 c3
1057abd0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aba0 <.text+0x579ba0>:
1057aba0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057aba6:	85 c9                                           	test   ecx,ecx
1057aba8:	74 26                                           	je     0x1057abd0
1057abaa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057abae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057abb2:	6a 00                                           	push   0x0
1057abb4:	50                                              	push   eax
1057abb5:	52                                              	push   edx
1057abb6:	e8 55 c4 cb ff                                  	call   0x10237010
1057abbb:	85 c0                                           	test   eax,eax
1057abbd:	74 11                                           	je     0x1057abd0
1057abbf:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
1057abc5:	85 c0                                           	test   eax,eax
1057abc7:	74 07                                           	je     0x1057abd0
1057abc9:	8a 80 90 00 00 00                               	mov    al,BYTE PTR [eax+0x90]
1057abcf:	c3                                              	ret
1057abd0:	32 c0                                           	xor    al,al
1057abd2:	c3                                              	ret
1057abd3:	cc                                              	int3
1057abd4:	cc                                              	int3
1057abd5:	cc                                              	int3
1057abd6:	cc                                              	int3
1057abd7:	cc                                              	int3
1057abd8:	cc                                              	int3
1057abd9:	cc                                              	int3
1057abda:	cc                                              	int3
1057abdb:	cc                                              	int3
1057abdc:	cc                                              	int3
1057abdd:	cc                                              	int3
1057abde:	cc                                              	int3
1057abdf:	cc                                              	int3
