# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10555180 (RouteManager_PlaceSocialFootprintObjectImpl)
Paired Ghidra pseudocode: 10555180_RouteManager_PlaceSocialFootprintObjectImpl.c
Window: [0x10555180, 0x105551e0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105551e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10555180: 83 ec 0c 8b 44 24 10 8b 4c 24 14 8b 54 24 18 89
10555190: 04 24 8b 44 24 34 50 89 4c 24 08 8b 4c 24 34 51
105551a0: 8b 4c 24 28 89 54 24 10 8b 54 24 34 52 8b 54 24
105551b0: 30 83 ec 0c 8b c4 89 08 8b 4c 24 40 89 50 04 8b
105551c0: 54 24 34 89 48 08 52 8d 44 24 1c 50 6a 00 e8 0d
105551d0: a5 ff ff 83 c4 30 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10555180 <.text+0x554180>:
10555180:	83 ec 0c                                        	sub    esp,0xc
10555183:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10555187:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055518b:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1055518f:	89 04 24                                        	mov    DWORD PTR [esp],eax
10555192:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10555196:	50                                              	push   eax
10555197:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1055519b:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1055519f:	51                                              	push   ecx
105551a0:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
105551a4:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
105551a8:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
105551ac:	52                                              	push   edx
105551ad:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
105551b1:	83 ec 0c                                        	sub    esp,0xc
105551b4:	8b c4                                           	mov    eax,esp
105551b6:	89 08                                           	mov    DWORD PTR [eax],ecx
105551b8:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
105551bc:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105551bf:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
105551c3:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105551c6:	52                                              	push   edx
105551c7:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
105551cb:	50                                              	push   eax
105551cc:	6a 00                                           	push   0x0
105551ce:	e8 0d a5 ff ff                                  	call   0x1054f6e0
105551d3:	83 c4 30                                        	add    esp,0x30
105551d6:	c3                                              	ret
105551d7:	cc                                              	int3
105551d8:	cc                                              	int3
105551d9:	cc                                              	int3
105551da:	cc                                              	int3
105551db:	cc                                              	int3
105551dc:	cc                                              	int3
105551dd:	cc                                              	int3
105551de:	cc                                              	int3
105551df:	cc                                              	int3
