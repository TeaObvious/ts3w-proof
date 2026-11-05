# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a210 (Route_BeginFollowingRouteAnimationSpecMult)
Paired Ghidra pseudocode: 1054A210_Route_BeginFollowingRouteAnimationSpecMult.c
Window: [0x1054a210, 0x1054a260) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a210: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 8b 44 24
1054a220: 1c 51 8b 4c 24 10 52 8b 54 24 18 50 83 ec 10 8b
1054a230: c4 89 08 8b 4c 24 30 89 50 04 8b 54 24 34 89 48
1054a240: 08 89 50 0c 8b 44 24 24 50 e8 e2 e8 ff ff 83 c4
1054a250: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a210 <.text+0x549210>:
1054a210:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1054a214:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1054a218:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1054a21c:	50                                              	push   eax
1054a21d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1054a221:	51                                              	push   ecx
1054a222:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1054a226:	52                                              	push   edx
1054a227:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1054a22b:	50                                              	push   eax
1054a22c:	83 ec 10                                        	sub    esp,0x10
1054a22f:	8b c4                                           	mov    eax,esp
1054a231:	89 08                                           	mov    DWORD PTR [eax],ecx
1054a233:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1054a237:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1054a23a:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1054a23e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1054a241:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1054a244:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1054a248:	50                                              	push   eax
1054a249:	e8 e2 e8 ff ff                                  	call   0x10548b30
1054a24e:	83 c4 24                                        	add    esp,0x24
1054a251:	c3                                              	ret
1054a252:	cc                                              	int3
1054a253:	cc                                              	int3
1054a254:	cc                                              	int3
1054a255:	cc                                              	int3
1054a256:	cc                                              	int3
1054a257:	cc                                              	int3
1054a258:	cc                                              	int3
1054a259:	cc                                              	int3
1054a25a:	cc                                              	int3
1054a25b:	cc                                              	int3
1054a25c:	cc                                              	int3
1054a25d:	cc                                              	int3
1054a25e:	cc                                              	int3
1054a25f:	cc                                              	int3
