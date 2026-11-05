# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784400 (DownloadContent_DeleteHouseholdContentsImpl)
Paired Ghidra pseudocode: 10784400_DownloadContent_DeleteHouseholdContentsImpl.c
Window: [0x10784400, 0x10784470) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784400: 83 ec 18 56 8b 35 d8 e9 c6 10 85 f6 74 2a 57 8b
10784410: 3d 94 de c8 10 8d 4c 24 08 e8 52 64 e4 ff 8d 44
10784420: 24 08 50 8b cf e8 06 c4 00 00 84 c0 5f 8d 4c 24
10784430: 04 75 0c e8 c8 64 e4 ff 32 c0 5e 83 c4 18 c3 8b
10784440: 54 24 24 8b 44 24 20 51 52 50 8b ce e8 4f 6c 91
10784450: ff 8d 4c 24 04 e8 a6 64 e4 ff b0 01 5e 83 c4 18
10784460: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784400 <.text+0x783400>:
10784400:	83 ec 18                                        	sub    esp,0x18
10784403:	56                                              	push   esi
10784404:	8b 35 d8 e9 c6 10                               	mov    esi,DWORD PTR ds:0x10c6e9d8
1078440a:	85 f6                                           	test   esi,esi
1078440c:	74 2a                                           	je     0x10784438
1078440e:	57                                              	push   edi
1078440f:	8b 3d 94 de c8 10                               	mov    edi,DWORD PTR ds:0x10c8de94
10784415:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10784419:	e8 52 64 e4 ff                                  	call   0x105ca870
1078441e:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10784422:	50                                              	push   eax
10784423:	8b cf                                           	mov    ecx,edi
10784425:	e8 06 c4 00 00                                  	call   0x10790830
1078442a:	84 c0                                           	test   al,al
1078442c:	5f                                              	pop    edi
1078442d:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10784431:	75 0c                                           	jne    0x1078443f
10784433:	e8 c8 64 e4 ff                                  	call   0x105ca900
10784438:	32 c0                                           	xor    al,al
1078443a:	5e                                              	pop    esi
1078443b:	83 c4 18                                        	add    esp,0x18
1078443e:	c3                                              	ret
1078443f:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10784443:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10784447:	51                                              	push   ecx
10784448:	52                                              	push   edx
10784449:	50                                              	push   eax
1078444a:	8b ce                                           	mov    ecx,esi
1078444c:	e8 4f 6c 91 ff                                  	call   0x1009b0a0
10784451:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10784455:	e8 a6 64 e4 ff                                  	call   0x105ca900
1078445a:	b0 01                                           	mov    al,0x1
1078445c:	5e                                              	pop    esi
1078445d:	83 c4 18                                        	add    esp,0x18
10784460:	c3                                              	ret
10784461:	cc                                              	int3
10784462:	cc                                              	int3
10784463:	cc                                              	int3
10784464:	cc                                              	int3
10784465:	cc                                              	int3
10784466:	cc                                              	int3
10784467:	cc                                              	int3
10784468:	cc                                              	int3
10784469:	cc                                              	int3
1078446a:	cc                                              	int3
1078446b:	cc                                              	int3
1078446c:	cc                                              	int3
1078446d:	cc                                              	int3
1078446e:	cc                                              	int3
1078446f:	cc                                              	int3
