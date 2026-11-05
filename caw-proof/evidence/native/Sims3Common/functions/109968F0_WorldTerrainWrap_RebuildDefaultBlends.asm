# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109968f0 (WorldTerrainWrap_RebuildDefaultBlends)
Paired Ghidra pseudocode: 109968F0_WorldTerrainWrap_RebuildDefaultBlends.c
Window: [0x109968f0, 0x10996930) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109968f0: 8b 44 24 04 85 c0 74 31 56 8b 70 64 85 f6 74 28
10996900: 57 8b ce e8 48 01 d2 ff 8b f8 85 ff 8b 46 08 74
10996910: 16 85 c0 74 12 56 50 8b cf e8 f2 b8 85 ff 8b cf
10996920: 5f 5e e9 69 9b 85 ff 5f 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
109968f0 <.text+0x9958f0>:
109968f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109968f4:	85 c0                                           	test   eax,eax
109968f6:	74 31                                           	je     0x10996929
109968f8:	56                                              	push   esi
109968f9:	8b 70 64                                        	mov    esi,DWORD PTR [eax+0x64]
109968fc:	85 f6                                           	test   esi,esi
109968fe:	74 28                                           	je     0x10996928
10996900:	57                                              	push   edi
10996901:	8b ce                                           	mov    ecx,esi
10996903:	e8 48 01 d2 ff                                  	call   0x106b6a50
10996908:	8b f8                                           	mov    edi,eax
1099690a:	85 ff                                           	test   edi,edi
1099690c:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1099690f:	74 16                                           	je     0x10996927
10996911:	85 c0                                           	test   eax,eax
10996913:	74 12                                           	je     0x10996927
10996915:	56                                              	push   esi
10996916:	50                                              	push   eax
10996917:	8b cf                                           	mov    ecx,edi
10996919:	e8 f2 b8 85 ff                                  	call   0x101f2210
1099691e:	8b cf                                           	mov    ecx,edi
10996920:	5f                                              	pop    edi
10996921:	5e                                              	pop    esi
10996922:	e9 69 9b 85 ff                                  	jmp    0x101f0490
10996927:	5f                                              	pop    edi
10996928:	5e                                              	pop    esi
10996929:	c3                                              	ret
1099692a:	cc                                              	int3
1099692b:	cc                                              	int3
1099692c:	cc                                              	int3
1099692d:	cc                                              	int3
1099692e:	cc                                              	int3
1099692f:	cc                                              	int3
