# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993460 (StopWatch_Restart)
Paired Ghidra pseudocode: 10993460_StopWatch_Restart.c
Window: [0x10993460, 0x109934b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x109934b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993460: 83 ec 08 33 c0 56 8b 74 24 10 83 7e 10 01 89 06
10993470: 89 46 04 89 46 08 89 46 0c 75 0c 0f 31 89 06 89
10993480: 56 04 5e 83 c4 08 c3 8d 44 24 04 50 ff 15 a4 b2
10993490: aa 10 8b 4c 24 04 8b 54 24 08 89 0e 89 56 04 5e
109934a0: 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993460 <.text+0x992460>:
10993460:	83 ec 08                                        	sub    esp,0x8
10993463:	33 c0                                           	xor    eax,eax
10993465:	56                                              	push   esi
10993466:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1099346a:	83 7e 10 01                                     	cmp    DWORD PTR [esi+0x10],0x1
1099346e:	89 06                                           	mov    DWORD PTR [esi],eax
10993470:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10993473:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10993476:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
10993479:	75 0c                                           	jne    0x10993487
1099347b:	0f 31                                           	rdtsc
1099347d:	89 06                                           	mov    DWORD PTR [esi],eax
1099347f:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
10993482:	5e                                              	pop    esi
10993483:	83 c4 08                                        	add    esp,0x8
10993486:	c3                                              	ret
10993487:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1099348b:	50                                              	push   eax
1099348c:	ff 15 a4 b2 aa 10                               	call   DWORD PTR ds:0x10aab2a4
10993492:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993496:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1099349a:	89 0e                                           	mov    DWORD PTR [esi],ecx
1099349c:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1099349f:	5e                                              	pop    esi
109934a0:	83 c4 08                                        	add    esp,0x8
109934a3:	c3                                              	ret
109934a4:	cc                                              	int3
109934a5:	cc                                              	int3
109934a6:	cc                                              	int3
109934a7:	cc                                              	int3
109934a8:	cc                                              	int3
109934a9:	cc                                              	int3
109934aa:	cc                                              	int3
109934ab:	cc                                              	int3
109934ac:	cc                                              	int3
109934ad:	cc                                              	int3
109934ae:	cc                                              	int3
109934af:	cc                                              	int3
