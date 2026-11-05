# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a3d0 (ResourceMgr_CreateNameFromKey)
Paired Ghidra pseudocode: 1098A3D0_ResourceMgr_CreateNameFromKey.c
Window: [0x1098a3d0, 0x1098a460) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a3d0: 83 ec 10 8b 44 24 14 8b 4c 24 18 8b 54 24 1c 56
1098a3e0: 6a 00 6a 00 89 44 24 14 8b 44 24 2c 89 4c 24 18
1098a3f0: 6a 00 8d 4c 24 24 89 54 24 10 89 44 24 14 b8 44
1098a400: 82 ca 10 51 8d 54 24 14 52 c7 44 24 38 40 6e b9
1098a410: 10 89 44 24 2c 89 44 24 30 c7 44 24 34 46 82 ca
1098a420: 10 e8 0a a7 f5 ff 8b 44 24 2c 83 c4 14 50 ff 15
1098a430: c4 b6 aa 10 8b 4c 24 20 8b f0 8b 44 24 18 2b c8
1098a440: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 3e ea
1098a450: f8 ff 83 c4 04 8b c6 5e 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
1098a3d0 <.text+0x9893d0>:
1098a3d0:	83 ec 10                                        	sub    esp,0x10
1098a3d3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098a3d7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098a3db:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1098a3df:	56                                              	push   esi
1098a3e0:	6a 00                                           	push   0x0
1098a3e2:	6a 00                                           	push   0x0
1098a3e4:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1098a3e8:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098a3ec:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1098a3f0:	6a 00                                           	push   0x0
1098a3f2:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098a3f6:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1098a3fa:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1098a3fe:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1098a403:	51                                              	push   ecx
1098a404:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098a408:	52                                              	push   edx
1098a409:	c7 44 24 38 40 6e b9 10                         	mov    DWORD PTR [esp+0x38],0x10b96e40
1098a411:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
1098a415:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1098a419:	c7 44 24 34 46 82 ca 10                         	mov    DWORD PTR [esp+0x34],0x10ca8246
1098a421:	e8 0a a7 f5 ff                                  	call   0x108e4b30
1098a426:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098a42a:	83 c4 14                                        	add    esp,0x14
1098a42d:	50                                              	push   eax
1098a42e:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098a434:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1098a438:	8b f0                                           	mov    esi,eax
1098a43a:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098a43e:	2b c8                                           	sub    ecx,eax
1098a440:	83 e1 fe                                        	and    ecx,0xfffffffe
1098a443:	83 f9 02                                        	cmp    ecx,0x2
1098a446:	7e 0d                                           	jle    0x1098a455
1098a448:	85 c0                                           	test   eax,eax
1098a44a:	74 09                                           	je     0x1098a455
1098a44c:	50                                              	push   eax
1098a44d:	e8 3e ea f8 ff                                  	call   0x10918e90
1098a452:	83 c4 04                                        	add    esp,0x4
1098a455:	8b c6                                           	mov    eax,esi
1098a457:	5e                                              	pop    esi
1098a458:	83 c4 10                                        	add    esp,0x10
1098a45b:	c3                                              	ret
1098a45c:	cc                                              	int3
1098a45d:	cc                                              	int3
1098a45e:	cc                                              	int3
1098a45f:	cc                                              	int3
