# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x106552d0 (Audio_StartObjectSoundWithFlagsImpl)
Paired Ghidra pseudocode: 106552D0_Audio_StartObjectSoundWithFlagsImpl.c
Window: [0x106552d0, 0x10655390) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
106552d0: 51 56 57 c7 44 24 08 00 00 00 00 e8 c0 4e 0d 00
106552e0: 85 c0 0f 84 a0 00 00 00 8b 4c 24 14 8b 54 24 10
106552f0: 51 52 8b c8 e8 b7 58 0d 00 50 8d 4c 24 0c e8 6d
10655300: e4 01 00 8b 74 24 08 85 f6 74 7d a1 b0 d6 c8 10
10655310: 50 8b ce e8 88 1a 0d 00 8b f8 85 ff 74 4a e8 fd
10655320: 5d f0 ff 8b 4c 24 18 8b 10 8b 52 58 51 8b c8 ff
10655330: d2 8b 4c 24 1c 6a 00 51 50 8b cf e8 20 06 0e 00
10655340: 8b f8 8d 46 04 8b d0 83 c9 ff f0 0f c1 0a 49 75
10655350: 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01 8b ce
10655360: ff d2 8b c7 5f 5e 59 c3 8d 46 04 8b c8 83 ca ff
10655370: f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 16
10655380: 8b 02 6a 01 8b ce ff d0 5f 33 c0 5e 59 c3 cc cc

LINEAR DISASSEMBLY
106552d0 <.text+0x6542d0>:
106552d0:	51                                              	push   ecx
106552d1:	56                                              	push   esi
106552d2:	57                                              	push   edi
106552d3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
106552db:	e8 c0 4e 0d 00                                  	call   0x1072a1a0
106552e0:	85 c0                                           	test   eax,eax
106552e2:	0f 84 a0 00 00 00                               	je     0x10655388
106552e8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
106552ec:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
106552f0:	51                                              	push   ecx
106552f1:	52                                              	push   edx
106552f2:	8b c8                                           	mov    ecx,eax
106552f4:	e8 b7 58 0d 00                                  	call   0x1072abb0
106552f9:	50                                              	push   eax
106552fa:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
106552fe:	e8 6d e4 01 00                                  	call   0x10673770
10655303:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10655307:	85 f6                                           	test   esi,esi
10655309:	74 7d                                           	je     0x10655388
1065530b:	a1 b0 d6 c8 10                                  	mov    eax,ds:0x10c8d6b0
10655310:	50                                              	push   eax
10655311:	8b ce                                           	mov    ecx,esi
10655313:	e8 88 1a 0d 00                                  	call   0x10726da0
10655318:	8b f8                                           	mov    edi,eax
1065531a:	85 ff                                           	test   edi,edi
1065531c:	74 4a                                           	je     0x10655368
1065531e:	e8 fd 5d f0 ff                                  	call   0x1055b120
10655323:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10655327:	8b 10                                           	mov    edx,DWORD PTR [eax]
10655329:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1065532c:	51                                              	push   ecx
1065532d:	8b c8                                           	mov    ecx,eax
1065532f:	ff d2                                           	call   edx
10655331:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10655335:	6a 00                                           	push   0x0
10655337:	51                                              	push   ecx
10655338:	50                                              	push   eax
10655339:	8b cf                                           	mov    ecx,edi
1065533b:	e8 20 06 0e 00                                  	call   0x10735960
10655340:	8b f8                                           	mov    edi,eax
10655342:	8d 46 04                                        	lea    eax,[esi+0x4]
10655345:	8b d0                                           	mov    edx,eax
10655347:	83 c9 ff                                        	or     ecx,0xffffffff
1065534a:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
1065534e:	49                                              	dec    ecx
1065534f:	75 11                                           	jne    0x10655362
10655351:	ba 01 00 00 00                                  	mov    edx,0x1
10655356:	87 10                                           	xchg   DWORD PTR [eax],edx
10655358:	8b 06                                           	mov    eax,DWORD PTR [esi]
1065535a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1065535c:	6a 01                                           	push   0x1
1065535e:	8b ce                                           	mov    ecx,esi
10655360:	ff d2                                           	call   edx
10655362:	8b c7                                           	mov    eax,edi
10655364:	5f                                              	pop    edi
10655365:	5e                                              	pop    esi
10655366:	59                                              	pop    ecx
10655367:	c3                                              	ret
10655368:	8d 46 04                                        	lea    eax,[esi+0x4]
1065536b:	8b c8                                           	mov    ecx,eax
1065536d:	83 ca ff                                        	or     edx,0xffffffff
10655370:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
10655374:	4a                                              	dec    edx
10655375:	75 11                                           	jne    0x10655388
10655377:	b9 01 00 00 00                                  	mov    ecx,0x1
1065537c:	87 08                                           	xchg   DWORD PTR [eax],ecx
1065537e:	8b 16                                           	mov    edx,DWORD PTR [esi]
10655380:	8b 02                                           	mov    eax,DWORD PTR [edx]
10655382:	6a 01                                           	push   0x1
10655384:	8b ce                                           	mov    ecx,esi
10655386:	ff d0                                           	call   eax
10655388:	5f                                              	pop    edi
10655389:	33 c0                                           	xor    eax,eax
1065538b:	5e                                              	pop    esi
1065538c:	59                                              	pop    ecx
1065538d:	c3                                              	ret
1065538e:	cc                                              	int3
1065538f:	cc                                              	int3
