# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105571c0 (Route_ReplanFromPosition)
Paired Ghidra pseudocode: 105571C0_Route_ReplanFromPosition.c
Window: [0x105571c0, 0x10557210) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10557210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105571c0: 8b 4c 24 0c 8b 54 24 10 83 ec 48 56 57 83 ec 0c
105571d0: 8b c4 89 08 8b 4c 24 70 89 50 04 8b 54 24 64 89
105571e0: 48 08 52 8d 44 24 18 50 e8 b3 fe ff ff 8b f0 8b
105571f0: 44 24 68 83 c4 14 b9 12 00 00 00 8b f8 f3 a5 5f
10557200: 5e 83 c4 48 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105571c0 <.text+0x5561c0>:
105571c0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105571c4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105571c8:	83 ec 48                                        	sub    esp,0x48
105571cb:	56                                              	push   esi
105571cc:	57                                              	push   edi
105571cd:	83 ec 0c                                        	sub    esp,0xc
105571d0:	8b c4                                           	mov    eax,esp
105571d2:	89 08                                           	mov    DWORD PTR [eax],ecx
105571d4:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
105571d8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105571db:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
105571df:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105571e2:	52                                              	push   edx
105571e3:	8d 44 24 18                                     	lea    eax,[esp+0x18]
105571e7:	50                                              	push   eax
105571e8:	e8 b3 fe ff ff                                  	call   0x105570a0
105571ed:	8b f0                                           	mov    esi,eax
105571ef:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
105571f3:	83 c4 14                                        	add    esp,0x14
105571f6:	b9 12 00 00 00                                  	mov    ecx,0x12
105571fb:	8b f8                                           	mov    edi,eax
105571fd:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
105571ff:	5f                                              	pop    edi
10557200:	5e                                              	pop    esi
10557201:	83 c4 48                                        	add    esp,0x48
10557204:	c3                                              	ret
10557205:	cc                                              	int3
10557206:	cc                                              	int3
10557207:	cc                                              	int3
10557208:	cc                                              	int3
10557209:	cc                                              	int3
1055720a:	cc                                              	int3
1055720b:	cc                                              	int3
1055720c:	cc                                              	int3
1055720d:	cc                                              	int3
1055720e:	cc                                              	int3
1055720f:	cc                                              	int3
