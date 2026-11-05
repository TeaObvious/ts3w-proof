# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a2140 (CASUtils_GenerateLowResTexturesFromTCCImpl)
Paired Ghidra pseudocode: 103A2140_CASUtils_GenerateLowResTexturesFromTCCImpl.c
Window: [0x103a2140, 0x103a21f0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a21f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a2140: 53 55 56 57 e8 97 14 4e 00 8b e8 e8 d0 8f 1b 00
103a2150: 6a 18 8b f8 e8 77 a8 1b 00 8b f0 83 c4 04 85 f6
103a2160: 74 2e 8b 07 8b 90 18 01 00 00 8b cf ff d2 c7 06
103a2170: 30 0b b6 10 33 c9 8d 5e 04 87 0b 89 46 08 89 56
103a2180: 0c c7 46 10 80 90 3a 10 c7 06 70 a6 af 10 eb 02
103a2190: 33 f6 8b 16 8b 42 04 8b ce ff d0 8b 4c 24 14 8b
103a21a0: 1f 8b 93 18 01 00 00 6a 00 51 6a ff 8b cf ff d2
103a21b0: 52 50 8b 83 20 01 00 00 8b cf ff d0 8b 55 00 8b
103a21c0: 42 1c 6a 00 6a 00 56 68 f0 90 02 03 8b cd ff d0
103a21d0: 8b 16 8b 42 08 8b ce ff d0 8b 17 8b 82 1c 01 00
103a21e0: 00 8b cf 5f 5e 5d 5b ff e0 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a2140 <.text+0x3a1140>:
103a2140:	53                                              	push   ebx
103a2141:	55                                              	push   ebp
103a2142:	56                                              	push   esi
103a2143:	57                                              	push   edi
103a2144:	e8 97 14 4e 00                                  	call   0x108835e0
103a2149:	8b e8                                           	mov    ebp,eax
103a214b:	e8 d0 8f 1b 00                                  	call   0x1055b120
103a2150:	6a 18                                           	push   0x18
103a2152:	8b f8                                           	mov    edi,eax
103a2154:	e8 77 a8 1b 00                                  	call   0x1055c9d0
103a2159:	8b f0                                           	mov    esi,eax
103a215b:	83 c4 04                                        	add    esp,0x4
103a215e:	85 f6                                           	test   esi,esi
103a2160:	74 2e                                           	je     0x103a2190
103a2162:	8b 07                                           	mov    eax,DWORD PTR [edi]
103a2164:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
103a216a:	8b cf                                           	mov    ecx,edi
103a216c:	ff d2                                           	call   edx
103a216e:	c7 06 30 0b b6 10                               	mov    DWORD PTR [esi],0x10b60b30
103a2174:	33 c9                                           	xor    ecx,ecx
103a2176:	8d 5e 04                                        	lea    ebx,[esi+0x4]
103a2179:	87 0b                                           	xchg   DWORD PTR [ebx],ecx
103a217b:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
103a217e:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
103a2181:	c7 46 10 80 90 3a 10                            	mov    DWORD PTR [esi+0x10],0x103a9080
103a2188:	c7 06 70 a6 af 10                               	mov    DWORD PTR [esi],0x10afa670
103a218e:	eb 02                                           	jmp    0x103a2192
103a2190:	33 f6                                           	xor    esi,esi
103a2192:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a2194:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
103a2197:	8b ce                                           	mov    ecx,esi
103a2199:	ff d0                                           	call   eax
103a219b:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
103a219f:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
103a21a1:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
103a21a7:	6a 00                                           	push   0x0
103a21a9:	51                                              	push   ecx
103a21aa:	6a ff                                           	push   0xffffffff
103a21ac:	8b cf                                           	mov    ecx,edi
103a21ae:	ff d2                                           	call   edx
103a21b0:	52                                              	push   edx
103a21b1:	50                                              	push   eax
103a21b2:	8b 83 20 01 00 00                               	mov    eax,DWORD PTR [ebx+0x120]
103a21b8:	8b cf                                           	mov    ecx,edi
103a21ba:	ff d0                                           	call   eax
103a21bc:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
103a21bf:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
103a21c2:	6a 00                                           	push   0x0
103a21c4:	6a 00                                           	push   0x0
103a21c6:	56                                              	push   esi
103a21c7:	68 f0 90 02 03                                  	push   0x30290f0
103a21cc:	8b cd                                           	mov    ecx,ebp
103a21ce:	ff d0                                           	call   eax
103a21d0:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a21d2:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
103a21d5:	8b ce                                           	mov    ecx,esi
103a21d7:	ff d0                                           	call   eax
103a21d9:	8b 17                                           	mov    edx,DWORD PTR [edi]
103a21db:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
103a21e1:	8b cf                                           	mov    ecx,edi
103a21e3:	5f                                              	pop    edi
103a21e4:	5e                                              	pop    esi
103a21e5:	5d                                              	pop    ebp
103a21e6:	5b                                              	pop    ebx
103a21e7:	ff e0                                           	jmp    eax
103a21e9:	cc                                              	int3
103a21ea:	cc                                              	int3
103a21eb:	cc                                              	int3
103a21ec:	cc                                              	int3
103a21ed:	cc                                              	int3
103a21ee:	cc                                              	int3
103a21ef:	cc                                              	int3
