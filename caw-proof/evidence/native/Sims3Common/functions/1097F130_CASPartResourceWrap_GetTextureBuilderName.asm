# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f130 (CASPartResourceWrap_GetTextureBuilderName)
Paired Ghidra pseudocode: 1097F130_CASPartResourceWrap_GetTextureBuilderName.c
Window: [0x1097f130, 0x1097f190) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f130: 8b 4c 24 04 8b 44 24 08 8b 51 5c 83 ec 10 56 c1
1097f140: e0 05 8b 44 02 10 6a 00 6a ff 50 8d 44 24 10 50
1097f150: e8 5b 7c fa ff 8b 00 83 c4 10 50 ff 15 c4 b6 aa
1097f160: 10 8b 4c 24 0c 8b f0 8b 44 24 04 2b c8 83 e1 fe
1097f170: 83 f9 02 7e 0d 85 c0 74 09 50 e8 11 9d f9 ff 83
1097f180: c4 04 8b c6 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f130 <.text+0x97e130>:
1097f130:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f134:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f138:	8b 51 5c                                        	mov    edx,DWORD PTR [ecx+0x5c]
1097f13b:	83 ec 10                                        	sub    esp,0x10
1097f13e:	56                                              	push   esi
1097f13f:	c1 e0 05                                        	shl    eax,0x5
1097f142:	8b 44 02 10                                     	mov    eax,DWORD PTR [edx+eax*1+0x10]
1097f146:	6a 00                                           	push   0x0
1097f148:	6a ff                                           	push   0xffffffff
1097f14a:	50                                              	push   eax
1097f14b:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1097f14f:	50                                              	push   eax
1097f150:	e8 5b 7c fa ff                                  	call   0x10926db0
1097f155:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f157:	83 c4 10                                        	add    esp,0x10
1097f15a:	50                                              	push   eax
1097f15b:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097f161:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097f165:	8b f0                                           	mov    esi,eax
1097f167:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f16b:	2b c8                                           	sub    ecx,eax
1097f16d:	83 e1 fe                                        	and    ecx,0xfffffffe
1097f170:	83 f9 02                                        	cmp    ecx,0x2
1097f173:	7e 0d                                           	jle    0x1097f182
1097f175:	85 c0                                           	test   eax,eax
1097f177:	74 09                                           	je     0x1097f182
1097f179:	50                                              	push   eax
1097f17a:	e8 11 9d f9 ff                                  	call   0x10918e90
1097f17f:	83 c4 04                                        	add    esp,0x4
1097f182:	8b c6                                           	mov    eax,esi
1097f184:	5e                                              	pop    esi
1097f185:	83 c4 10                                        	add    esp,0x10
1097f188:	c3                                              	ret
1097f189:	cc                                              	int3
1097f18a:	cc                                              	int3
1097f18b:	cc                                              	int3
1097f18c:	cc                                              	int3
1097f18d:	cc                                              	int3
1097f18e:	cc                                              	int3
1097f18f:	cc                                              	int3
