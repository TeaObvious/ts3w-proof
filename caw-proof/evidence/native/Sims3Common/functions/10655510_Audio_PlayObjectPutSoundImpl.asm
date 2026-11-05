# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10655510 (Audio_PlayObjectPutSoundImpl)
Paired Ghidra pseudocode: 10655510_Audio_PlayObjectPutSoundImpl.c
Window: [0x10655510, 0x10655540) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10655510: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 68 30 85 b3
10655520: 10 50 8b 44 24 0c 51 52 50 e8 f2 fb ff ff 83 c4
10655530: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10655510 <.text+0x654510>:
10655510:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10655514:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10655518:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1065551c:	68 30 85 b3 10                                  	push   0x10b38530
10655521:	50                                              	push   eax
10655522:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10655526:	51                                              	push   ecx
10655527:	52                                              	push   edx
10655528:	50                                              	push   eax
10655529:	e8 f2 fb ff ff                                  	call   0x10655120
1065552e:	83 c4 14                                        	add    esp,0x14
10655531:	c3                                              	ret
10655532:	cc                                              	int3
10655533:	cc                                              	int3
10655534:	cc                                              	int3
10655535:	cc                                              	int3
10655536:	cc                                              	int3
10655537:	cc                                              	int3
10655538:	cc                                              	int3
10655539:	cc                                              	int3
1065553a:	cc                                              	int3
1065553b:	cc                                              	int3
1065553c:	cc                                              	int3
1065553d:	cc                                              	int3
1065553e:	cc                                              	int3
1065553f:	cc                                              	int3
