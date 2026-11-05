# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540890 (RouteEvent_GetRouteEventDistanceTravelled)
Paired Ghidra pseudocode: 10540890_RouteEvent_GetRouteEventDistanceTravelled.c
Window: [0x10540890, 0x105408f0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105408f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540890: 51 8b 0d 44 89 c7 10 85 c9 56 74 3f 8b 44 24 0c
105408a0: 50 e8 aa b8 ff ff 8b f0 85 f6 74 2f 8b 16 8b 02
105408b0: 8b ce ff d0 8b 16 f3 0f 10 46 50 8b 42 04 8b ce
105408c0: f3 0f 11 44 24 04 ff d0 f3 0f 10 44 24 04 f3 0f
105408d0: 11 44 24 04 d9 44 24 04 5e 59 c3 0f 57 c0 f3 0f
105408e0: 11 44 24 04 d9 44 24 04 5e 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10540890 <.text+0x53f890>:
10540890:	51                                              	push   ecx
10540891:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10540897:	85 c9                                           	test   ecx,ecx
10540899:	56                                              	push   esi
1054089a:	74 3f                                           	je     0x105408db
1054089c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105408a0:	50                                              	push   eax
105408a1:	e8 aa b8 ff ff                                  	call   0x1053c150
105408a6:	8b f0                                           	mov    esi,eax
105408a8:	85 f6                                           	test   esi,esi
105408aa:	74 2f                                           	je     0x105408db
105408ac:	8b 16                                           	mov    edx,DWORD PTR [esi]
105408ae:	8b 02                                           	mov    eax,DWORD PTR [edx]
105408b0:	8b ce                                           	mov    ecx,esi
105408b2:	ff d0                                           	call   eax
105408b4:	8b 16                                           	mov    edx,DWORD PTR [esi]
105408b6:	f3 0f 10 46 50                                  	movss  xmm0,DWORD PTR [esi+0x50]
105408bb:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
105408be:	8b ce                                           	mov    ecx,esi
105408c0:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
105408c6:	ff d0                                           	call   eax
105408c8:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
105408ce:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
105408d4:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
105408d8:	5e                                              	pop    esi
105408d9:	59                                              	pop    ecx
105408da:	c3                                              	ret
105408db:	0f 57 c0                                        	xorps  xmm0,xmm0
105408de:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
105408e4:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
105408e8:	5e                                              	pop    esi
105408e9:	59                                              	pop    ecx
105408ea:	c3                                              	ret
105408eb:	cc                                              	int3
105408ec:	cc                                              	int3
105408ed:	cc                                              	int3
105408ee:	cc                                              	int3
105408ef:	cc                                              	int3
