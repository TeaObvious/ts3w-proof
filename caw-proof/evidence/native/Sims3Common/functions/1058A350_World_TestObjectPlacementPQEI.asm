# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058a350 (World_TestObjectPlacementPQEI)
Paired Ghidra pseudocode: 1058A350_World_TestObjectPlacementPQEI.c
Window: [0x1058a350, 0x1058a390) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058a390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058a350: 8b 44 24 28 8b 4c 24 24 8b 54 24 20 50 8b 44 24
1058a360: 20 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20
1058a370: 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20 51
1058a380: 52 50 e8 19 fb ff ff 83 c4 28 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1058a350 <.text+0x589350>:
1058a350:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1058a354:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1058a358:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1058a35c:	50                                              	push   eax
1058a35d:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1058a361:	51                                              	push   ecx
1058a362:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1058a366:	52                                              	push   edx
1058a367:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1058a36b:	50                                              	push   eax
1058a36c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1058a370:	51                                              	push   ecx
1058a371:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1058a375:	52                                              	push   edx
1058a376:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1058a37a:	50                                              	push   eax
1058a37b:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1058a37f:	51                                              	push   ecx
1058a380:	52                                              	push   edx
1058a381:	50                                              	push   eax
1058a382:	e8 19 fb ff ff                                  	call   0x10589ea0
1058a387:	83 c4 28                                        	add    esp,0x28
1058a38a:	c3                                              	ret
1058a38b:	cc                                              	int3
1058a38c:	cc                                              	int3
1058a38d:	cc                                              	int3
1058a38e:	cc                                              	int3
1058a38f:	cc                                              	int3
