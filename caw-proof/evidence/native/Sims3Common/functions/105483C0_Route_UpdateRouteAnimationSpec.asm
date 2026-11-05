# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105483c0 (Route_UpdateRouteAnimationSpec)
Paired Ghidra pseudocode: 105483C0_Route_UpdateRouteAnimationSpec.c
Window: [0x105483c0, 0x10548430) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105483c0: 83 ec 10 8b 4c 24 24 8b 44 24 20 8b 54 24 28 89
105483d0: 4c 24 04 8b 0d 44 89 c7 10 85 c9 89 04 24 8b 44
105483e0: 24 2c 89 54 24 08 89 44 24 0c 74 3a 8b 54 24 14
105483f0: 56 52 e8 f9 3c ff ff 8b f0 85 f6 74 28 8b 06 8b
10548400: 50 10 8b ce ff d2 6a 00 6a 00 6a 00 8d 44 24 10
10548410: 50 8b ce e8 08 ba ff ff 8b 16 8b 42 14 8b ce 5e
10548420: 83 c4 10 ff e0 5e 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
105483c0 <.text+0x5473c0>:
105483c0:	83 ec 10                                        	sub    esp,0x10
105483c3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
105483c7:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105483cb:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
105483cf:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
105483d3:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105483d9:	85 c9                                           	test   ecx,ecx
105483db:	89 04 24                                        	mov    DWORD PTR [esp],eax
105483de:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
105483e2:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
105483e6:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
105483ea:	74 3a                                           	je     0x10548426
105483ec:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
105483f0:	56                                              	push   esi
105483f1:	52                                              	push   edx
105483f2:	e8 f9 3c ff ff                                  	call   0x1053c0f0
105483f7:	8b f0                                           	mov    esi,eax
105483f9:	85 f6                                           	test   esi,esi
105483fb:	74 28                                           	je     0x10548425
105483fd:	8b 06                                           	mov    eax,DWORD PTR [esi]
105483ff:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
10548402:	8b ce                                           	mov    ecx,esi
10548404:	ff d2                                           	call   edx
10548406:	6a 00                                           	push   0x0
10548408:	6a 00                                           	push   0x0
1054840a:	6a 00                                           	push   0x0
1054840c:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10548410:	50                                              	push   eax
10548411:	8b ce                                           	mov    ecx,esi
10548413:	e8 08 ba ff ff                                  	call   0x10543e20
10548418:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054841a:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1054841d:	8b ce                                           	mov    ecx,esi
1054841f:	5e                                              	pop    esi
10548420:	83 c4 10                                        	add    esp,0x10
10548423:	ff e0                                           	jmp    eax
10548425:	5e                                              	pop    esi
10548426:	83 c4 10                                        	add    esp,0x10
10548429:	c3                                              	ret
1054842a:	cc                                              	int3
1054842b:	cc                                              	int3
1054842c:	cc                                              	int3
1054842d:	cc                                              	int3
1054842e:	cc                                              	int3
1054842f:	cc                                              	int3
