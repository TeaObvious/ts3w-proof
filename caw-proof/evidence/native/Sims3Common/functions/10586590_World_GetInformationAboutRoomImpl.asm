# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10586590 (World_GetInformationAboutRoomImpl)
Paired Ghidra pseudocode: 10586590_World_GetInformationAboutRoomImpl.c
Window: [0x10586590, 0x105865e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105865e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10586590: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 18 50
105865a0: 8b 44 24 24 51 52 50 8d 4c 24 10 51 e8 1f fe ff
105865b0: ff 8b 4c 24 30 8b 10 89 11 8b 50 04 89 51 04 8b
105865c0: 50 08 89 51 08 8b 50 0c 89 51 0c 8b 50 10 8b 40
105865d0: 14 89 51 10 89 41 14 8b c1 83 c4 2c c3 cc cc cc

LINEAR DISASSEMBLY
10586590 <.text+0x585590>:
10586590:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10586594:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10586598:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1058659c:	83 ec 18                                        	sub    esp,0x18
1058659f:	50                                              	push   eax
105865a0:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
105865a4:	51                                              	push   ecx
105865a5:	52                                              	push   edx
105865a6:	50                                              	push   eax
105865a7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
105865ab:	51                                              	push   ecx
105865ac:	e8 1f fe ff ff                                  	call   0x105863d0
105865b1:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
105865b5:	8b 10                                           	mov    edx,DWORD PTR [eax]
105865b7:	89 11                                           	mov    DWORD PTR [ecx],edx
105865b9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
105865bc:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
105865bf:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
105865c2:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
105865c5:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
105865c8:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
105865cb:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
105865ce:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
105865d1:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
105865d4:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
105865d7:	8b c1                                           	mov    eax,ecx
105865d9:	83 c4 2c                                        	add    esp,0x2c
105865dc:	c3                                              	ret
105865dd:	cc                                              	int3
105865de:	cc                                              	int3
105865df:	cc                                              	int3
