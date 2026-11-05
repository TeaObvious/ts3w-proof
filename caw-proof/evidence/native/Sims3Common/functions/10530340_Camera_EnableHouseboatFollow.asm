# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530340 (Camera_EnableHouseboatFollow)
Paired Ghidra pseudocode: 10530340_Camera_EnableHouseboatFollow.c
Window: [0x10530340, 0x10530390) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530340: e8 eb c2 22 00 85 c0 74 39 8b c8 e8 30 77 40 00
10530350: 85 c0 74 2e 8b c8 e8 f5 c5 22 00 85 c0 74 23 8b
10530360: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
10530370: 11 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 1e 42
10530380: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530340 <.text+0x52f340>:
10530340:	e8 eb c2 22 00                                  	call   0x1075c630
10530345:	85 c0                                           	test   eax,eax
10530347:	74 39                                           	je     0x10530382
10530349:	8b c8                                           	mov    ecx,eax
1053034b:	e8 30 77 40 00                                  	call   0x10937a80
10530350:	85 c0                                           	test   eax,eax
10530352:	74 2e                                           	je     0x10530382
10530354:	8b c8                                           	mov    ecx,eax
10530356:	e8 f5 c5 22 00                                  	call   0x1075c950
1053035b:	85 c0                                           	test   eax,eax
1053035d:	74 23                                           	je     0x10530382
1053035f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530361:	8b c8                                           	mov    ecx,eax
10530363:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10530366:	68 89 dd 0f 11                                  	push   0x110fdd89
1053036b:	ff d0                                           	call   eax
1053036d:	85 c0                                           	test   eax,eax
1053036f:	74 11                                           	je     0x10530382
10530371:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10530375:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10530379:	51                                              	push   ecx
1053037a:	52                                              	push   edx
1053037b:	8b c8                                           	mov    ecx,eax
1053037d:	e8 1e 42 23 00                                  	call   0x107645a0
10530382:	c3                                              	ret
10530383:	cc                                              	int3
10530384:	cc                                              	int3
10530385:	cc                                              	int3
10530386:	cc                                              	int3
10530387:	cc                                              	int3
10530388:	cc                                              	int3
10530389:	cc                                              	int3
1053038a:	cc                                              	int3
1053038b:	cc                                              	int3
1053038c:	cc                                              	int3
1053038d:	cc                                              	int3
1053038e:	cc                                              	int3
1053038f:	cc                                              	int3
