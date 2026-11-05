# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109902e0 (SimBuilderWrap_RemovePart)
Paired Ghidra pseudocode: 109902E0_SimBuilderWrap_RemovePart.c
Window: [0x109902e0, 0x10990320) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109902e0: 83 ec 10 8b 4c 24 24 8b 44 24 20 8b 54 24 18 89
109902f0: 4c 24 04 8d 0c 24 89 04 24 8b 44 24 1c 51 8b 4c
10990300: 24 18 89 54 24 0c 89 44 24 10 e8 31 ec a4 ff 83
10990310: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109902e0 <.text+0x98f2e0>:
109902e0:	83 ec 10                                        	sub    esp,0x10
109902e3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
109902e7:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109902eb:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
109902ef:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
109902f3:	8d 0c 24                                        	lea    ecx,[esp]
109902f6:	89 04 24                                        	mov    DWORD PTR [esp],eax
109902f9:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
109902fd:	51                                              	push   ecx
109902fe:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10990302:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10990306:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1099030a:	e8 31 ec a4 ff                                  	call   0x103def40
1099030f:	83 c4 10                                        	add    esp,0x10
10990312:	c3                                              	ret
10990313:	cc                                              	int3
10990314:	cc                                              	int3
10990315:	cc                                              	int3
10990316:	cc                                              	int3
10990317:	cc                                              	int3
10990318:	cc                                              	int3
10990319:	cc                                              	int3
1099031a:	cc                                              	int3
1099031b:	cc                                              	int3
1099031c:	cc                                              	int3
1099031d:	cc                                              	int3
1099031e:	cc                                              	int3
1099031f:	cc                                              	int3
