# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f0d0 (CASPartResourceWrap_GetTextureBuilderPath)
Paired Ghidra pseudocode: 1097F0D0_CASPartResourceWrap_GetTextureBuilderPath.c
Window: [0x1097f0d0, 0x1097f130) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f0d0: 8b 4c 24 04 8b 44 24 08 8b 51 5c 83 ec 10 56 c1
1097f0e0: e0 05 8b 04 10 6a 00 6a ff 50 8d 44 24 10 50 e8
1097f0f0: bc 7c fa ff 8b 00 83 c4 10 50 ff 15 c4 b6 aa 10
1097f100: 8b 4c 24 0c 8b f0 8b 44 24 04 2b c8 83 e1 fe 83
1097f110: f9 02 7e 0d 85 c0 74 09 50 e8 72 9d f9 ff 83 c4
1097f120: 04 8b c6 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f0d0 <.text+0x97e0d0>:
1097f0d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f0d4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f0d8:	8b 51 5c                                        	mov    edx,DWORD PTR [ecx+0x5c]
1097f0db:	83 ec 10                                        	sub    esp,0x10
1097f0de:	56                                              	push   esi
1097f0df:	c1 e0 05                                        	shl    eax,0x5
1097f0e2:	8b 04 10                                        	mov    eax,DWORD PTR [eax+edx*1]
1097f0e5:	6a 00                                           	push   0x0
1097f0e7:	6a ff                                           	push   0xffffffff
1097f0e9:	50                                              	push   eax
1097f0ea:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1097f0ee:	50                                              	push   eax
1097f0ef:	e8 bc 7c fa ff                                  	call   0x10926db0
1097f0f4:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f0f6:	83 c4 10                                        	add    esp,0x10
1097f0f9:	50                                              	push   eax
1097f0fa:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097f100:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097f104:	8b f0                                           	mov    esi,eax
1097f106:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f10a:	2b c8                                           	sub    ecx,eax
1097f10c:	83 e1 fe                                        	and    ecx,0xfffffffe
1097f10f:	83 f9 02                                        	cmp    ecx,0x2
1097f112:	7e 0d                                           	jle    0x1097f121
1097f114:	85 c0                                           	test   eax,eax
1097f116:	74 09                                           	je     0x1097f121
1097f118:	50                                              	push   eax
1097f119:	e8 72 9d f9 ff                                  	call   0x10918e90
1097f11e:	83 c4 04                                        	add    esp,0x4
1097f121:	8b c6                                           	mov    eax,esi
1097f123:	5e                                              	pop    esi
1097f124:	83 c4 10                                        	add    esp,0x10
1097f127:	c3                                              	ret
1097f128:	cc                                              	int3
1097f129:	cc                                              	int3
1097f12a:	cc                                              	int3
1097f12b:	cc                                              	int3
1097f12c:	cc                                              	int3
1097f12d:	cc                                              	int3
1097f12e:	cc                                              	int3
1097f12f:	cc                                              	int3
