# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053e7f0 (RouteManager_ResetAvoidanceFieldForSnorkeling)
Paired Ghidra pseudocode: 1053E7F0_RouteManager_ResetAvoidanceFieldForSnorkeling.c
Window: [0x1053e7f0, 0x1053e830) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053e830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053e7f0: e8 ab b9 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
1053e800: 04 51 52 8b c8 e8 a6 c3 1e 00 85 c0 74 19 8b 0d
1053e810: 78 d9 c8 10 51 8b c8 e8 84 85 1e 00 85 c0 74 07
1053e820: 8b c8 e9 d9 67 20 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053e7f0 <.text+0x53d7f0>:
1053e7f0:	e8 ab b9 1e 00                                  	call   0x1072a1a0
1053e7f5:	85 c0                                           	test   eax,eax
1053e7f7:	74 2e                                           	je     0x1053e827
1053e7f9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053e7fd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053e801:	51                                              	push   ecx
1053e802:	52                                              	push   edx
1053e803:	8b c8                                           	mov    ecx,eax
1053e805:	e8 a6 c3 1e 00                                  	call   0x1072abb0
1053e80a:	85 c0                                           	test   eax,eax
1053e80c:	74 19                                           	je     0x1053e827
1053e80e:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
1053e814:	51                                              	push   ecx
1053e815:	8b c8                                           	mov    ecx,eax
1053e817:	e8 84 85 1e 00                                  	call   0x10726da0
1053e81c:	85 c0                                           	test   eax,eax
1053e81e:	74 07                                           	je     0x1053e827
1053e820:	8b c8                                           	mov    ecx,eax
1053e822:	e9 d9 67 20 00                                  	jmp    0x10745000
1053e827:	c3                                              	ret
1053e828:	cc                                              	int3
1053e829:	cc                                              	int3
1053e82a:	cc                                              	int3
1053e82b:	cc                                              	int3
1053e82c:	cc                                              	int3
1053e82d:	cc                                              	int3
1053e82e:	cc                                              	int3
1053e82f:	cc                                              	int3
