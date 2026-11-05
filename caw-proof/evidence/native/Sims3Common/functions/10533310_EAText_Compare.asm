# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10533310 (EAText_Compare)
Paired Ghidra pseudocode: 10533310_EAText_Compare.c
Window: [0x10533310, 0x10533360) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10533360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10533310: a1 90 87 c7 10 85 c0 53 56 57 74 05 8d 58 f8 eb
10533320: 02 33 db e8 f8 7d 02 00 8b 4c 24 10 8b f0 8b 06
10533330: 8b 50 58 51 8b ce ff d2 8b 4c 24 14 8b f8 8b 06
10533340: 8b 50 58 51 8b ce ff d2 50 57 8d 4b 08 e8 5e 69
10533350: 35 00 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10533310 <.text+0x532310>:
10533310:	a1 90 87 c7 10                                  	mov    eax,ds:0x10c78790
10533315:	85 c0                                           	test   eax,eax
10533317:	53                                              	push   ebx
10533318:	56                                              	push   esi
10533319:	57                                              	push   edi
1053331a:	74 05                                           	je     0x10533321
1053331c:	8d 58 f8                                        	lea    ebx,[eax-0x8]
1053331f:	eb 02                                           	jmp    0x10533323
10533321:	33 db                                           	xor    ebx,ebx
10533323:	e8 f8 7d 02 00                                  	call   0x1055b120
10533328:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1053332c:	8b f0                                           	mov    esi,eax
1053332e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10533330:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10533333:	51                                              	push   ecx
10533334:	8b ce                                           	mov    ecx,esi
10533336:	ff d2                                           	call   edx
10533338:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1053333c:	8b f8                                           	mov    edi,eax
1053333e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10533340:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10533343:	51                                              	push   ecx
10533344:	8b ce                                           	mov    ecx,esi
10533346:	ff d2                                           	call   edx
10533348:	50                                              	push   eax
10533349:	57                                              	push   edi
1053334a:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
1053334d:	e8 5e 69 35 00                                  	call   0x10889cb0
10533352:	5f                                              	pop    edi
10533353:	5e                                              	pop    esi
10533354:	5b                                              	pop    ebx
10533355:	c3                                              	ret
10533356:	cc                                              	int3
10533357:	cc                                              	int3
10533358:	cc                                              	int3
10533359:	cc                                              	int3
1053335a:	cc                                              	int3
1053335b:	cc                                              	int3
1053335c:	cc                                              	int3
1053335d:	cc                                              	int3
1053335e:	cc                                              	int3
1053335f:	cc                                              	int3
