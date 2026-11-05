# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a430 (OnlineFeaturesHost_ShareHolidayGreetingCard)
Paired Ghidra pseudocode: 1053A430_OnlineFeaturesHost_ShareHolidayGreetingCard.c
Window: [0x1053a430, 0x1053a480) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a430: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 6a 00 6a
1053a440: 00 6a 00 51 8b 4c 24 20 52 8b 54 24 28 83 ec 10
1053a450: 8b c4 89 08 8b 4c 24 3c 89 50 04 8b 54 24 40 89
1053a460: 48 08 8b 4c 24 2c 89 50 0c 8b 44 24 30 50 51 6a
1053a470: 01 e8 9a f7 ff ff 83 c4 34 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053a430 <.text+0x539430>:
1053a430:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1053a434:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1053a438:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1053a43c:	50                                              	push   eax
1053a43d:	6a 00                                           	push   0x0
1053a43f:	6a 00                                           	push   0x0
1053a441:	6a 00                                           	push   0x0
1053a443:	51                                              	push   ecx
1053a444:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1053a448:	52                                              	push   edx
1053a449:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1053a44d:	83 ec 10                                        	sub    esp,0x10
1053a450:	8b c4                                           	mov    eax,esp
1053a452:	89 08                                           	mov    DWORD PTR [eax],ecx
1053a454:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1053a458:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1053a45b:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
1053a45f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1053a462:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1053a466:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1053a469:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1053a46d:	50                                              	push   eax
1053a46e:	51                                              	push   ecx
1053a46f:	6a 01                                           	push   0x1
1053a471:	e8 9a f7 ff ff                                  	call   0x10539c10
1053a476:	83 c4 34                                        	add    esp,0x34
1053a479:	c3                                              	ret
1053a47a:	cc                                              	int3
1053a47b:	cc                                              	int3
1053a47c:	cc                                              	int3
1053a47d:	cc                                              	int3
1053a47e:	cc                                              	int3
1053a47f:	cc                                              	int3
