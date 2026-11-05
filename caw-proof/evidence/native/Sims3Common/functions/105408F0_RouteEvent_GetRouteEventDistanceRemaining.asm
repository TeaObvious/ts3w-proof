# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105408f0 (RouteEvent_GetRouteEventDistanceRemaining)
Paired Ghidra pseudocode: 105408F0_RouteEvent_GetRouteEventDistanceRemaining.c
Window: [0x105408f0, 0x10540950) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105408f0: 51 8b 0d 44 89 c7 10 85 c9 56 74 3f 8b 44 24 0c
10540900: 50 e8 4a b8 ff ff 8b f0 85 f6 74 2f 8b 16 8b 02
10540910: 8b ce ff d0 8b 16 f3 0f 10 46 54 8b 42 04 8b ce
10540920: f3 0f 11 44 24 04 ff d0 f3 0f 10 44 24 04 f3 0f
10540930: 11 44 24 04 d9 44 24 04 5e 59 c3 0f 57 c0 f3 0f
10540940: 11 44 24 04 d9 44 24 04 5e 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105408f0 <.text+0x53f8f0>:
105408f0:	51                                              	push   ecx
105408f1:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105408f7:	85 c9                                           	test   ecx,ecx
105408f9:	56                                              	push   esi
105408fa:	74 3f                                           	je     0x1054093b
105408fc:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10540900:	50                                              	push   eax
10540901:	e8 4a b8 ff ff                                  	call   0x1053c150
10540906:	8b f0                                           	mov    esi,eax
10540908:	85 f6                                           	test   esi,esi
1054090a:	74 2f                                           	je     0x1054093b
1054090c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054090e:	8b 02                                           	mov    eax,DWORD PTR [edx]
10540910:	8b ce                                           	mov    ecx,esi
10540912:	ff d0                                           	call   eax
10540914:	8b 16                                           	mov    edx,DWORD PTR [esi]
10540916:	f3 0f 10 46 54                                  	movss  xmm0,DWORD PTR [esi+0x54]
1054091b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1054091e:	8b ce                                           	mov    ecx,esi
10540920:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10540926:	ff d0                                           	call   eax
10540928:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
1054092e:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10540934:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
10540938:	5e                                              	pop    esi
10540939:	59                                              	pop    ecx
1054093a:	c3                                              	ret
1054093b:	0f 57 c0                                        	xorps  xmm0,xmm0
1054093e:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10540944:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
10540948:	5e                                              	pop    esi
10540949:	59                                              	pop    ecx
1054094a:	c3                                              	ret
1054094b:	cc                                              	int3
1054094c:	cc                                              	int3
1054094d:	cc                                              	int3
1054094e:	cc                                              	int3
1054094f:	cc                                              	int3
