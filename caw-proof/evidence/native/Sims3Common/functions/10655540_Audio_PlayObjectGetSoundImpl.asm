# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10655540 (Audio_PlayObjectGetSoundImpl)
Paired Ghidra pseudocode: 10655540_Audio_PlayObjectGetSoundImpl.c
Window: [0x10655540, 0x10655570) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10655540: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 68 38 85 b3
10655550: 10 50 8b 44 24 0c 51 52 50 e8 c2 fb ff ff 83 c4
10655560: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10655540 <.text+0x654540>:
10655540:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10655544:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10655548:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1065554c:	68 38 85 b3 10                                  	push   0x10b38538
10655551:	50                                              	push   eax
10655552:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10655556:	51                                              	push   ecx
10655557:	52                                              	push   edx
10655558:	50                                              	push   eax
10655559:	e8 c2 fb ff ff                                  	call   0x10655120
1065555e:	83 c4 14                                        	add    esp,0x14
10655561:	c3                                              	ret
10655562:	cc                                              	int3
10655563:	cc                                              	int3
10655564:	cc                                              	int3
10655565:	cc                                              	int3
10655566:	cc                                              	int3
10655567:	cc                                              	int3
10655568:	cc                                              	int3
10655569:	cc                                              	int3
1065556a:	cc                                              	int3
1065556b:	cc                                              	int3
1065556c:	cc                                              	int3
1065556d:	cc                                              	int3
1065556e:	cc                                              	int3
1065556f:	cc                                              	int3
