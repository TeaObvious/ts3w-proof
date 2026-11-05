# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10582250 (World_IsOnPlatformImpl)
Paired Ghidra pseudocode: 10582250_World_IsOnPlatformImpl.c
Window: [0x10582250, 0x10582280) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10582280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10582250: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
10582260: 4c 24 18 89 50 04 89 48 08 e8 22 e4 ff ff 83 c4
10582270: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10582250 <.text+0x581250>:
10582250:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10582254:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10582258:	83 ec 0c                                        	sub    esp,0xc
1058225b:	8b c4                                           	mov    eax,esp
1058225d:	89 08                                           	mov    DWORD PTR [eax],ecx
1058225f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10582263:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10582266:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10582269:	e8 22 e4 ff ff                                  	call   0x10580690
1058226e:	83 c4 0c                                        	add    esp,0xc
10582271:	c3                                              	ret
10582272:	cc                                              	int3
10582273:	cc                                              	int3
10582274:	cc                                              	int3
10582275:	cc                                              	int3
10582276:	cc                                              	int3
10582277:	cc                                              	int3
10582278:	cc                                              	int3
10582279:	cc                                              	int3
1058227a:	cc                                              	int3
1058227b:	cc                                              	int3
1058227c:	cc                                              	int3
1058227d:	cc                                              	int3
1058227e:	cc                                              	int3
1058227f:	cc                                              	int3
