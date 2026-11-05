# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105693d0 (Swarm_SetIntParams)
Paired Ghidra pseudocode: 105693D0_Swarm_SetIntParams.c
Window: [0x105693d0, 0x10569430) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105693d0: 83 ec 08 e8 48 1d ff ff 33 c9 3b c1 74 42 8b 10
105693e0: 8b 52 74 89 0c 24 89 4c 24 04 8d 0c 24 51 8d 4c
105693f0: 24 08 51 8b 4c 24 20 51 8b c8 ff d2 8b 04 24 8b
10569400: 4c 24 04 8b 54 24 14 50 8b 44 24 14 51 8b 4c 24
10569410: 14 52 50 51 e8 f7 fd ff ff 83 c4 14 83 c4 08 c3
10569420: 32 c0 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105693d0 <.text+0x5683d0>:
105693d0:	83 ec 08                                        	sub    esp,0x8
105693d3:	e8 48 1d ff ff                                  	call   0x1055b120
105693d8:	33 c9                                           	xor    ecx,ecx
105693da:	3b c1                                           	cmp    eax,ecx
105693dc:	74 42                                           	je     0x10569420
105693de:	8b 10                                           	mov    edx,DWORD PTR [eax]
105693e0:	8b 52 74                                        	mov    edx,DWORD PTR [edx+0x74]
105693e3:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
105693e6:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
105693ea:	8d 0c 24                                        	lea    ecx,[esp]
105693ed:	51                                              	push   ecx
105693ee:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
105693f2:	51                                              	push   ecx
105693f3:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
105693f7:	51                                              	push   ecx
105693f8:	8b c8                                           	mov    ecx,eax
105693fa:	ff d2                                           	call   edx
105693fc:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
105693ff:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10569403:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10569407:	50                                              	push   eax
10569408:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1056940c:	51                                              	push   ecx
1056940d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10569411:	52                                              	push   edx
10569412:	50                                              	push   eax
10569413:	51                                              	push   ecx
10569414:	e8 f7 fd ff ff                                  	call   0x10569210
10569419:	83 c4 14                                        	add    esp,0x14
1056941c:	83 c4 08                                        	add    esp,0x8
1056941f:	c3                                              	ret
10569420:	32 c0                                           	xor    al,al
10569422:	83 c4 08                                        	add    esp,0x8
10569425:	c3                                              	ret
10569426:	cc                                              	int3
10569427:	cc                                              	int3
10569428:	cc                                              	int3
10569429:	cc                                              	int3
1056942a:	cc                                              	int3
1056942b:	cc                                              	int3
1056942c:	cc                                              	int3
1056942d:	cc                                              	int3
1056942e:	cc                                              	int3
1056942f:	cc                                              	int3
