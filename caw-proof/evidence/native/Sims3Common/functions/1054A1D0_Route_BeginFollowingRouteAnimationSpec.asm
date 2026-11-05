# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a1d0 (Route_BeginFollowingRouteAnimationSpec)
Paired Ghidra pseudocode: 1054A1D0_Route_BeginFollowingRouteAnimationSpec.c
Window: [0x1054a1d0, 0x1054a210) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a1d0: 8b 44 24 18 8b 4c 24 08 8b 54 24 0c 50 83 ec 10
1054a1e0: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 28 89
1054a1f0: 48 08 89 50 0c 8b 44 24 18 50 e8 b1 e8 ff ff 83
1054a200: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a1d0 <.text+0x5491d0>:
1054a1d0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1054a1d4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1054a1d8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1054a1dc:	50                                              	push   eax
1054a1dd:	83 ec 10                                        	sub    esp,0x10
1054a1e0:	8b c4                                           	mov    eax,esp
1054a1e2:	89 08                                           	mov    DWORD PTR [eax],ecx
1054a1e4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1054a1e8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1054a1eb:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1054a1ef:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1054a1f2:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1054a1f5:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1054a1f9:	50                                              	push   eax
1054a1fa:	e8 b1 e8 ff ff                                  	call   0x10548ab0
1054a1ff:	83 c4 18                                        	add    esp,0x18
1054a202:	c3                                              	ret
1054a203:	cc                                              	int3
1054a204:	cc                                              	int3
1054a205:	cc                                              	int3
1054a206:	cc                                              	int3
1054a207:	cc                                              	int3
1054a208:	cc                                              	int3
1054a209:	cc                                              	int3
1054a20a:	cc                                              	int3
1054a20b:	cc                                              	int3
1054a20c:	cc                                              	int3
1054a20d:	cc                                              	int3
1054a20e:	cc                                              	int3
1054a20f:	cc                                              	int3
