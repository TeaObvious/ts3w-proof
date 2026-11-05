# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b170 (World_ObjectDesigner_SetBuildBuyProductImpl)
Paired Ghidra pseudocode: 1057B170_World_ObjectDesigner_SetBuildBuyProductImpl.c
Window: [0x1057b170, 0x1057b1c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b1c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b170: 8b 4c 24 18 8b 54 24 1c 83 ec 10 8b c4 89 08 8b
1057b180: 4c 24 30 89 50 04 8b 54 24 34 89 48 08 8b 4c 24
1057b190: 18 89 50 0c 8b 54 24 1c 83 ec 10 8b c4 89 08 8b
1057b1a0: 4c 24 30 89 50 04 8b 54 24 34 89 48 08 89 50 0c
1057b1b0: 8b 44 24 24 50 e8 46 dd ff ff 83 c4 24 c3 cc cc

LINEAR DISASSEMBLY
1057b170 <.text+0x57a170>:
1057b170:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057b174:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1057b178:	83 ec 10                                        	sub    esp,0x10
1057b17b:	8b c4                                           	mov    eax,esp
1057b17d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b17f:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1057b183:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b186:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1057b18a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b18d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057b191:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057b194:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1057b198:	83 ec 10                                        	sub    esp,0x10
1057b19b:	8b c4                                           	mov    eax,esp
1057b19d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b19f:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1057b1a3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b1a6:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1057b1aa:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b1ad:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057b1b0:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1057b1b4:	50                                              	push   eax
1057b1b5:	e8 46 dd ff ff                                  	call   0x10578f00
1057b1ba:	83 c4 24                                        	add    esp,0x24
1057b1bd:	c3                                              	ret
1057b1be:	cc                                              	int3
1057b1bf:	cc                                              	int3
