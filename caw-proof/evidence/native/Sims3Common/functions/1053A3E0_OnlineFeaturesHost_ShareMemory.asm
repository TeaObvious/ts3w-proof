# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a3e0 (OnlineFeaturesHost_ShareMemory)
Paired Ghidra pseudocode: 1053A3E0_OnlineFeaturesHost_ShareMemory.c
Window: [0x1053a3e0, 0x1053a430) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a3e0: 8b 44 24 2c 8b 4c 24 28 8b 54 24 24 6a 00 50 8b
1053a3f0: 44 24 28 51 8b 4c 24 28 52 8b 54 24 1c 50 51 8b
1053a400: 4c 24 28 83 ec 10 8b c4 89 10 8b 54 24 3c 89 48
1053a410: 04 8b 4c 24 40 89 50 08 8b 54 24 30 89 48 0c 8b
1053a420: 44 24 2c 52 50 6a 00 e8 e4 f7 ff ff 83 c4 34 c3

LINEAR DISASSEMBLY
1053a3e0 <.text+0x5393e0>:
1053a3e0:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1053a3e4:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1053a3e8:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1053a3ec:	6a 00                                           	push   0x0
1053a3ee:	50                                              	push   eax
1053a3ef:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1053a3f3:	51                                              	push   ecx
1053a3f4:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1053a3f8:	52                                              	push   edx
1053a3f9:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1053a3fd:	50                                              	push   eax
1053a3fe:	51                                              	push   ecx
1053a3ff:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1053a403:	83 ec 10                                        	sub    esp,0x10
1053a406:	8b c4                                           	mov    eax,esp
1053a408:	89 10                                           	mov    DWORD PTR [eax],edx
1053a40a:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
1053a40e:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1053a411:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1053a415:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1053a418:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1053a41c:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1053a41f:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1053a423:	52                                              	push   edx
1053a424:	50                                              	push   eax
1053a425:	6a 00                                           	push   0x0
1053a427:	e8 e4 f7 ff ff                                  	call   0x10539c10
1053a42c:	83 c4 34                                        	add    esp,0x34
1053a42f:	c3                                              	ret
