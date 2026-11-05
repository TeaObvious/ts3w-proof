# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1240 (CASUtils_SimBuilderSetTextureSizeImpl)
Paired Ghidra pseudocode: 103A1240_CASUtils_SimBuilderSetTextureSizeImpl.c
Window: [0x103a1240, 0x103a1290) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1240: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1250: 35 75 2f e8 c8 9e 1b 00 8b 10 8b c8 8b 82 cc 00
103a1260: 00 00 56 ff d0 85 c0 74 19 8b 4c 24 0c 81 48 1c
103a1270: 00 4f 00 00 89 48 64 b9 1f 00 00 00 89 48 14 89
103a1280: 48 18 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1240 <.text+0x3a0240>:
103a1240:	56                                              	push   esi
103a1241:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1245:	8b c6                                           	mov    eax,esi
103a1247:	25 00 00 00 ff                                  	and    eax,0xff000000
103a124c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1251:	75 2f                                           	jne    0x103a1282
103a1253:	e8 c8 9e 1b 00                                  	call   0x1055b120
103a1258:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a125a:	8b c8                                           	mov    ecx,eax
103a125c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1262:	56                                              	push   esi
103a1263:	ff d0                                           	call   eax
103a1265:	85 c0                                           	test   eax,eax
103a1267:	74 19                                           	je     0x103a1282
103a1269:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a126d:	81 48 1c 00 4f 00 00                            	or     DWORD PTR [eax+0x1c],0x4f00
103a1274:	89 48 64                                        	mov    DWORD PTR [eax+0x64],ecx
103a1277:	b9 1f 00 00 00                                  	mov    ecx,0x1f
103a127c:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
103a127f:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
103a1282:	5e                                              	pop    esi
103a1283:	c3                                              	ret
103a1284:	cc                                              	int3
103a1285:	cc                                              	int3
103a1286:	cc                                              	int3
103a1287:	cc                                              	int3
103a1288:	cc                                              	int3
103a1289:	cc                                              	int3
103a128a:	cc                                              	int3
103a128b:	cc                                              	int3
103a128c:	cc                                              	int3
103a128d:	cc                                              	int3
103a128e:	cc                                              	int3
103a128f:	cc                                              	int3
