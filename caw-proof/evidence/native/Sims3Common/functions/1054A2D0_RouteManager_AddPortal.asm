# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a2d0 (RouteManager_AddPortal)
Paired Ghidra pseudocode: 1054A2D0_RouteManager_AddPortal.c
Window: [0x1054a2d0, 0x1054a340) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a2d0: 8b 44 24 34 d9 44 24 24 8b 4c 24 30 8b 54 24 2c
1054a2e0: 50 8b 44 24 2c 51 8b 4c 24 20 52 8b 54 24 28 50
1054a2f0: 83 ec 10 d9 5c 24 0c 8b c4 89 08 8b 4c 24 40 89
1054a300: 50 04 8b 54 24 2c 89 48 08 8b 4c 24 30 83 ec 0c
1054a310: 8b c4 89 10 8b 54 24 40 89 48 04 8b 4c 24 30 89
1054a320: 50 08 8b 44 24 34 50 51 e8 63 f1 ff ff 83 c4 34
1054a330: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a2d0 <.text+0x5492d0>:
1054a2d0:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1054a2d4:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
1054a2d8:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1054a2dc:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1054a2e0:	50                                              	push   eax
1054a2e1:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1054a2e5:	51                                              	push   ecx
1054a2e6:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1054a2ea:	52                                              	push   edx
1054a2eb:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1054a2ef:	50                                              	push   eax
1054a2f0:	83 ec 10                                        	sub    esp,0x10
1054a2f3:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1054a2f7:	8b c4                                           	mov    eax,esp
1054a2f9:	89 08                                           	mov    DWORD PTR [eax],ecx
1054a2fb:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1054a2ff:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1054a302:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1054a306:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1054a309:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1054a30d:	83 ec 0c                                        	sub    esp,0xc
1054a310:	8b c4                                           	mov    eax,esp
1054a312:	89 10                                           	mov    DWORD PTR [eax],edx
1054a314:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
1054a318:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1054a31b:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1054a31f:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1054a322:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1054a326:	50                                              	push   eax
1054a327:	51                                              	push   ecx
1054a328:	e8 63 f1 ff ff                                  	call   0x10549490
1054a32d:	83 c4 34                                        	add    esp,0x34
1054a330:	c3                                              	ret
1054a331:	cc                                              	int3
1054a332:	cc                                              	int3
1054a333:	cc                                              	int3
1054a334:	cc                                              	int3
1054a335:	cc                                              	int3
1054a336:	cc                                              	int3
1054a337:	cc                                              	int3
1054a338:	cc                                              	int3
1054a339:	cc                                              	int3
1054a33a:	cc                                              	int3
1054a33b:	cc                                              	int3
1054a33c:	cc                                              	int3
1054a33d:	cc                                              	int3
1054a33e:	cc                                              	int3
1054a33f:	cc                                              	int3
