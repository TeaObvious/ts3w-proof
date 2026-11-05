# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d5f0 (RouteManager_FootprintSetLockKeys)
Paired Ghidra pseudocode: 1053D5F0_RouteManager_FootprintSetLockKeys.c
Window: [0x1053d5f0, 0x1053d610) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d5f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
1053d600: 08 51 52 50 e8 f7 eb ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1053d5f0 <.text+0x53c5f0>:
1053d5f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1053d5f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053d5f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1053d5fc:	50                                              	push   eax
1053d5fd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1053d601:	51                                              	push   ecx
1053d602:	52                                              	push   edx
1053d603:	50                                              	push   eax
1053d604:	e8 f7 eb ff ff                                  	call   0x1053c200
1053d609:	83 c4 10                                        	add    esp,0x10
1053d60c:	c3                                              	ret
1053d60d:	cc                                              	int3
1053d60e:	cc                                              	int3
1053d60f:	cc                                              	int3
