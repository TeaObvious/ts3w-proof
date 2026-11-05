# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784510 (DownloadContent_SetPackageEnabledImpl)
Paired Ghidra pseudocode: 10784510_DownloadContent_SetPackageEnabledImpl.c
Window: [0x10784510, 0x10784560) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784510: 83 ec 10 56 8d 44 24 04 50 8d 4c 24 1c e8 9e 95
10784520: dd ff e8 99 ff fe ff 8b f0 85 f6 74 20 8b 4c 24
10784530: 28 51 83 ec 10 8d 54 24 18 8b cc 52 e8 7f f0 1a
10784540: 00 8b ce e8 98 56 ff ff 5e 83 c4 10 c3 b8 01 00
10784550: 00 00 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784510 <.text+0x783510>:
10784510:	83 ec 10                                        	sub    esp,0x10
10784513:	56                                              	push   esi
10784514:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10784518:	50                                              	push   eax
10784519:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1078451d:	e8 9e 95 dd ff                                  	call   0x1055dac0
10784522:	e8 99 ff fe ff                                  	call   0x107744c0
10784527:	8b f0                                           	mov    esi,eax
10784529:	85 f6                                           	test   esi,esi
1078452b:	74 20                                           	je     0x1078454d
1078452d:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10784531:	51                                              	push   ecx
10784532:	83 ec 10                                        	sub    esp,0x10
10784535:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10784539:	8b cc                                           	mov    ecx,esp
1078453b:	52                                              	push   edx
1078453c:	e8 7f f0 1a 00                                  	call   0x109335c0
10784541:	8b ce                                           	mov    ecx,esi
10784543:	e8 98 56 ff ff                                  	call   0x10779be0
10784548:	5e                                              	pop    esi
10784549:	83 c4 10                                        	add    esp,0x10
1078454c:	c3                                              	ret
1078454d:	b8 01 00 00 00                                  	mov    eax,0x1
10784552:	5e                                              	pop    esi
10784553:	83 c4 10                                        	add    esp,0x10
10784556:	c3                                              	ret
10784557:	cc                                              	int3
10784558:	cc                                              	int3
10784559:	cc                                              	int3
1078455a:	cc                                              	int3
1078455b:	cc                                              	int3
1078455c:	cc                                              	int3
1078455d:	cc                                              	int3
1078455e:	cc                                              	int3
1078455f:	cc                                              	int3
