# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b1e0 (World_ObjectDesigner_GetPatternKeyImpl)
Paired Ghidra pseudocode: 1057B1E0_World_ObjectDesigner_GetPatternKeyImpl.c
Window: [0x1057b1e0, 0x1057b240) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b1e0: 83 ec 20 56 57 e8 76 d2 b7 ff 8b 4c 24 30 33 d2
1057b1f0: 89 54 24 18 89 54 24 1c 89 54 24 20 89 54 24 24
1057b200: 51 8d 54 24 0c 52 8b c8 e8 03 3b b8 ff 8b 44 24
1057b210: 2c 8b 7c 24 10 8b 74 24 14 8b 4c 24 08 8b 54 24
1057b220: 0c 89 38 89 70 04 5f 89 48 08 89 50 0c 5e 83 c4
1057b230: 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b1e0 <.text+0x57a1e0>:
1057b1e0:	83 ec 20                                        	sub    esp,0x20
1057b1e3:	56                                              	push   esi
1057b1e4:	57                                              	push   edi
1057b1e5:	e8 76 d2 b7 ff                                  	call   0x100f8460
1057b1ea:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1057b1ee:	33 d2                                           	xor    edx,edx
1057b1f0:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
1057b1f4:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
1057b1f8:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
1057b1fc:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1057b200:	51                                              	push   ecx
1057b201:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
1057b205:	52                                              	push   edx
1057b206:	8b c8                                           	mov    ecx,eax
1057b208:	e8 03 3b b8 ff                                  	call   0x100fed10
1057b20d:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1057b211:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1057b215:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1057b219:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057b21d:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057b221:	89 38                                           	mov    DWORD PTR [eax],edi
1057b223:	89 70 04                                        	mov    DWORD PTR [eax+0x4],esi
1057b226:	5f                                              	pop    edi
1057b227:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b22a:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057b22d:	5e                                              	pop    esi
1057b22e:	83 c4 20                                        	add    esp,0x20
1057b231:	c3                                              	ret
1057b232:	cc                                              	int3
1057b233:	cc                                              	int3
1057b234:	cc                                              	int3
1057b235:	cc                                              	int3
1057b236:	cc                                              	int3
1057b237:	cc                                              	int3
1057b238:	cc                                              	int3
1057b239:	cc                                              	int3
1057b23a:	cc                                              	int3
1057b23b:	cc                                              	int3
1057b23c:	cc                                              	int3
1057b23d:	cc                                              	int3
1057b23e:	cc                                              	int3
1057b23f:	cc                                              	int3
