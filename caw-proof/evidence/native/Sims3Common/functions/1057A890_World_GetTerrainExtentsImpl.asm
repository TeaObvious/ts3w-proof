# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a890 (World_GetTerrainExtentsImpl)
Paired Ghidra pseudocode: 1057A890_World_GetTerrainExtentsImpl.c
Window: [0x1057a890, 0x1057a910) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a890: 83 ec 10 0f 57 c0 a1 c4 00 c7 10 85 c0 f3 0f 11
1057a8a0: 04 24 f3 0f 11 44 24 04 f3 0f 11 44 24 08 f3 0f
1057a8b0: 11 44 24 0c 74 37 f3 0f 10 80 b4 00 00 00 f3 0f
1057a8c0: 11 04 24 f3 0f 10 80 b8 00 00 00 f3 0f 11 44 24
1057a8d0: 04 f3 0f 10 80 bc 00 00 00 f3 0f 11 44 24 08 f3
1057a8e0: 0f 10 80 c0 00 00 00 f3 0f 11 44 24 0c 8b 44 24
1057a8f0: 14 8b 0c 24 8b 54 24 04 89 08 8b 4c 24 08 89 50
1057a900: 04 8b 54 24 0c 89 48 08 89 50 0c 83 c4 10 c3 cc

LINEAR DISASSEMBLY
1057a890 <.text+0x579890>:
1057a890:	83 ec 10                                        	sub    esp,0x10
1057a893:	0f 57 c0                                        	xorps  xmm0,xmm0
1057a896:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057a89b:	85 c0                                           	test   eax,eax
1057a89d:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057a8a2:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1057a8a8:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1057a8ae:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1057a8b4:	74 37                                           	je     0x1057a8ed
1057a8b6:	f3 0f 10 80 b4 00 00 00                         	movss  xmm0,DWORD PTR [eax+0xb4]
1057a8be:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057a8c3:	f3 0f 10 80 b8 00 00 00                         	movss  xmm0,DWORD PTR [eax+0xb8]
1057a8cb:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1057a8d1:	f3 0f 10 80 bc 00 00 00                         	movss  xmm0,DWORD PTR [eax+0xbc]
1057a8d9:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1057a8df:	f3 0f 10 80 c0 00 00 00                         	movss  xmm0,DWORD PTR [eax+0xc0]
1057a8e7:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1057a8ed:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057a8f1:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1057a8f4:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057a8f8:	89 08                                           	mov    DWORD PTR [eax],ecx
1057a8fa:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057a8fe:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057a901:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057a905:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057a908:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057a90b:	83 c4 10                                        	add    esp,0x10
1057a90e:	c3                                              	ret
1057a90f:	cc                                              	int3
