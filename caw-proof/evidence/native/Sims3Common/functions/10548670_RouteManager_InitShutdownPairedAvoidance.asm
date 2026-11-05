# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548670 (RouteManager_InitShutdownPairedAvoidance)
Paired Ghidra pseudocode: 10548670_RouteManager_InitShutdownPairedAvoidance.c
Window: [0x10548670, 0x105486a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105486a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548670: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10548680: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 ad
10548690: ed ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548670 <.text+0x547670>:
10548670:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10548674:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10548678:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1054867c:	50                                              	push   eax
1054867d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10548681:	51                                              	push   ecx
10548682:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10548686:	52                                              	push   edx
10548687:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1054868b:	50                                              	push   eax
1054868c:	51                                              	push   ecx
1054868d:	52                                              	push   edx
1054868e:	e8 ad ed ff ff                                  	call   0x10547440
10548693:	83 c4 18                                        	add    esp,0x18
10548696:	c3                                              	ret
10548697:	cc                                              	int3
10548698:	cc                                              	int3
10548699:	cc                                              	int3
1054869a:	cc                                              	int3
1054869b:	cc                                              	int3
1054869c:	cc                                              	int3
1054869d:	cc                                              	int3
1054869e:	cc                                              	int3
1054869f:	cc                                              	int3
