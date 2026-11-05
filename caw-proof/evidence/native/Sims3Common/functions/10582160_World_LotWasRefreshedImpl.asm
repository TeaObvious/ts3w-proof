# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10582160 (World_LotWasRefreshedImpl)
Paired Ghidra pseudocode: 10582160_World_LotWasRefreshedImpl.c
Window: [0x10582160, 0x105821b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105821b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10582160: 8b 0d c4 00 c7 10 85 c9 56 57 74 36 8b 81 b0 00
10582170: 00 00 85 c0 8b 54 24 10 8b 74 24 0c 74 17 8b 78
10582180: 48 3b fe 75 10 8b 78 4c 3b fa 75 09 8a 80 9c 00
10582190: 00 00 5f 5e c3 6a 00 52 56 e8 72 4e cb ff 85 c0
105821a0: 75 ea 5f 32 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10582160 <.text+0x581160>:
10582160:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10582166:	85 c9                                           	test   ecx,ecx
10582168:	56                                              	push   esi
10582169:	57                                              	push   edi
1058216a:	74 36                                           	je     0x105821a2
1058216c:	8b 81 b0 00 00 00                               	mov    eax,DWORD PTR [ecx+0xb0]
10582172:	85 c0                                           	test   eax,eax
10582174:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10582178:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1058217c:	74 17                                           	je     0x10582195
1058217e:	8b 78 48                                        	mov    edi,DWORD PTR [eax+0x48]
10582181:	3b fe                                           	cmp    edi,esi
10582183:	75 10                                           	jne    0x10582195
10582185:	8b 78 4c                                        	mov    edi,DWORD PTR [eax+0x4c]
10582188:	3b fa                                           	cmp    edi,edx
1058218a:	75 09                                           	jne    0x10582195
1058218c:	8a 80 9c 00 00 00                               	mov    al,BYTE PTR [eax+0x9c]
10582192:	5f                                              	pop    edi
10582193:	5e                                              	pop    esi
10582194:	c3                                              	ret
10582195:	6a 00                                           	push   0x0
10582197:	52                                              	push   edx
10582198:	56                                              	push   esi
10582199:	e8 72 4e cb ff                                  	call   0x10237010
1058219e:	85 c0                                           	test   eax,eax
105821a0:	75 ea                                           	jne    0x1058218c
105821a2:	5f                                              	pop    edi
105821a3:	32 c0                                           	xor    al,al
105821a5:	5e                                              	pop    esi
105821a6:	c3                                              	ret
105821a7:	cc                                              	int3
105821a8:	cc                                              	int3
105821a9:	cc                                              	int3
105821aa:	cc                                              	int3
105821ab:	cc                                              	int3
105821ac:	cc                                              	int3
105821ad:	cc                                              	int3
105821ae:	cc                                              	int3
105821af:	cc                                              	int3
