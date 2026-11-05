# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998200 (WorldWrap_DestroyGameObject)
Paired Ghidra pseudocode: 10998200_WorldWrap_DestroyGameObject.c
Window: [0x10998200, 0x10998250) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998200: 56 8b 74 24 08 85 f6 74 3e 8b ce e8 10 f4 fc ff
10998210: 85 c0 74 13 8b 10 6a 01 8b c8 8b 42 3c 56 ff d0
10998220: b8 01 00 00 00 5e c3 e8 74 1f d9 ff 85 c0 74 17
10998230: 8b 56 08 8b 76 0c 56 52 8b c8 e8 31 28 d9 ff f6
10998240: d8 5e 1b c0 f7 d8 c3 33 c0 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10998200 <.text+0x997200>:
10998200:	56                                              	push   esi
10998201:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10998205:	85 f6                                           	test   esi,esi
10998207:	74 3e                                           	je     0x10998247
10998209:	8b ce                                           	mov    ecx,esi
1099820b:	e8 10 f4 fc ff                                  	call   0x10967620
10998210:	85 c0                                           	test   eax,eax
10998212:	74 13                                           	je     0x10998227
10998214:	8b 10                                           	mov    edx,DWORD PTR [eax]
10998216:	6a 01                                           	push   0x1
10998218:	8b c8                                           	mov    ecx,eax
1099821a:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
1099821d:	56                                              	push   esi
1099821e:	ff d0                                           	call   eax
10998220:	b8 01 00 00 00                                  	mov    eax,0x1
10998225:	5e                                              	pop    esi
10998226:	c3                                              	ret
10998227:	e8 74 1f d9 ff                                  	call   0x1072a1a0
1099822c:	85 c0                                           	test   eax,eax
1099822e:	74 17                                           	je     0x10998247
10998230:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
10998233:	8b 76 0c                                        	mov    esi,DWORD PTR [esi+0xc]
10998236:	56                                              	push   esi
10998237:	52                                              	push   edx
10998238:	8b c8                                           	mov    ecx,eax
1099823a:	e8 31 28 d9 ff                                  	call   0x1072aa70
1099823f:	f6 d8                                           	neg    al
10998241:	5e                                              	pop    esi
10998242:	1b c0                                           	sbb    eax,eax
10998244:	f7 d8                                           	neg    eax
10998246:	c3                                              	ret
10998247:	33 c0                                           	xor    eax,eax
10998249:	5e                                              	pop    esi
1099824a:	c3                                              	ret
1099824b:	cc                                              	int3
1099824c:	cc                                              	int3
1099824d:	cc                                              	int3
1099824e:	cc                                              	int3
1099824f:	cc                                              	int3
