# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097e060 (App3D_GetForwardExecutable)
Paired Ghidra pseudocode: 1097E060_App3D_GetForwardExecutable.c
Window: [0x1097e060, 0x1097e0f0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097e0f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097e060: 83 ec 10 b8 44 82 ca 10 89 04 24 89 44 24 04 8d
1097e070: 04 24 50 c7 44 24 10 68 60 b9 10 c7 44 24 0c 46
1097e080: 82 ca 10 e8 c8 4d 0e 00 83 c4 04 84 c0 74 33 8b
1097e090: 0c 24 56 51 ff 15 c4 b6 aa 10 8b 54 24 0c 8b f0
1097e0a0: 8b 44 24 04 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
1097e0b0: 74 09 50 e8 d8 ad f9 ff 83 c4 04 8b c6 5e 83 c4
1097e0c0: 10 c3 8b 4c 24 08 8b 04 24 2b c8 83 e1 fe 83 f9
1097e0d0: 02 7e 0d 85 c0 74 09 50 e8 b3 ad f9 ff 83 c4 04
1097e0e0: 33 c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097e060 <.text+0x97d060>:
1097e060:	83 ec 10                                        	sub    esp,0x10
1097e063:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1097e068:	89 04 24                                        	mov    DWORD PTR [esp],eax
1097e06b:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1097e06f:	8d 04 24                                        	lea    eax,[esp]
1097e072:	50                                              	push   eax
1097e073:	c7 44 24 10 68 60 b9 10                         	mov    DWORD PTR [esp+0x10],0x10b96068
1097e07b:	c7 44 24 0c 46 82 ca 10                         	mov    DWORD PTR [esp+0xc],0x10ca8246
1097e083:	e8 c8 4d 0e 00                                  	call   0x10a62e50
1097e088:	83 c4 04                                        	add    esp,0x4
1097e08b:	84 c0                                           	test   al,al
1097e08d:	74 33                                           	je     0x1097e0c2
1097e08f:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1097e092:	56                                              	push   esi
1097e093:	51                                              	push   ecx
1097e094:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097e09a:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097e09e:	8b f0                                           	mov    esi,eax
1097e0a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097e0a4:	2b d0                                           	sub    edx,eax
1097e0a6:	83 e2 fe                                        	and    edx,0xfffffffe
1097e0a9:	83 fa 02                                        	cmp    edx,0x2
1097e0ac:	7e 0d                                           	jle    0x1097e0bb
1097e0ae:	85 c0                                           	test   eax,eax
1097e0b0:	74 09                                           	je     0x1097e0bb
1097e0b2:	50                                              	push   eax
1097e0b3:	e8 d8 ad f9 ff                                  	call   0x10918e90
1097e0b8:	83 c4 04                                        	add    esp,0x4
1097e0bb:	8b c6                                           	mov    eax,esi
1097e0bd:	5e                                              	pop    esi
1097e0be:	83 c4 10                                        	add    esp,0x10
1097e0c1:	c3                                              	ret
1097e0c2:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097e0c6:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1097e0c9:	2b c8                                           	sub    ecx,eax
1097e0cb:	83 e1 fe                                        	and    ecx,0xfffffffe
1097e0ce:	83 f9 02                                        	cmp    ecx,0x2
1097e0d1:	7e 0d                                           	jle    0x1097e0e0
1097e0d3:	85 c0                                           	test   eax,eax
1097e0d5:	74 09                                           	je     0x1097e0e0
1097e0d7:	50                                              	push   eax
1097e0d8:	e8 b3 ad f9 ff                                  	call   0x10918e90
1097e0dd:	83 c4 04                                        	add    esp,0x4
1097e0e0:	33 c0                                           	xor    eax,eax
1097e0e2:	83 c4 10                                        	add    esp,0x10
1097e0e5:	c3                                              	ret
1097e0e6:	cc                                              	int3
1097e0e7:	cc                                              	int3
1097e0e8:	cc                                              	int3
1097e0e9:	cc                                              	int3
1097e0ea:	cc                                              	int3
1097e0eb:	cc                                              	int3
1097e0ec:	cc                                              	int3
1097e0ed:	cc                                              	int3
1097e0ee:	cc                                              	int3
1097e0ef:	cc                                              	int3
