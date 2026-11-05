# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10533530 (EAText_GetTimeString)
Paired Ghidra pseudocode: 10533530_EAText_GetTimeString.c
Window: [0x10533530, 0x10533640) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10533640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10533530: 81 ec b4 00 00 00 8a 84 24 c4 00 00 00 8b 94 24
10533540: c0 00 00 00 f6 d8 56 8d 4c 24 38 1b c0 83 e0 f4
10533550: 83 c0 18 50 8b 84 24 c4 00 00 00 6a 00 6a 40 51
10533560: 8b 8c 24 cc 00 00 00 52 50 51 e8 21 eb 34 00 83
10533570: c4 1c e8 a9 7b 02 00 8d 54 24 38 52 8d 4c 24 08
10533580: 8b f0 c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00
10533590: 00 00 c7 44 24 10 00 00 00 00 c7 44 24 14 ec a1
105335a0: b1 10 e8 79 70 b3 ff 6a 01 6a 10 8d 44 24 0c 50
105335b0: 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c b4 a5 ac 10
105335c0: 66 c7 44 24 36 13 00 66 c7 44 24 34 0b 00 e8 bd
105335d0: 55 3f 00 8b 16 8b 52 50 8d 44 24 14 50 8d 4c 24
105335e0: 1c 51 8b ce ff d2 f6 44 24 20 04 8b 74 24 14 c7
105335f0: 44 24 18 b4 a5 ac 10 74 0b 6a 00 8d 4c 24 1c e8
10533600: 8c 54 3f 00 8b 4c 24 0c 8b 44 24 04 2b c8 83 e1
10533610: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 70 58 3e 00
10533620: 83 c4 04 8b c6 5e 81 c4 b4 00 00 00 c3 cc cc cc
10533630: 8b 44 24 04 c7 00 a0 f3 c2 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
10533530 <.text+0x532530>:
10533530:	81 ec b4 00 00 00                               	sub    esp,0xb4
10533536:	8a 84 24 c4 00 00 00                            	mov    al,BYTE PTR [esp+0xc4]
1053353d:	8b 94 24 c0 00 00 00                            	mov    edx,DWORD PTR [esp+0xc0]
10533544:	f6 d8                                           	neg    al
10533546:	56                                              	push   esi
10533547:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1053354b:	1b c0                                           	sbb    eax,eax
1053354d:	83 e0 f4                                        	and    eax,0xfffffff4
10533550:	83 c0 18                                        	add    eax,0x18
10533553:	50                                              	push   eax
10533554:	8b 84 24 c4 00 00 00                            	mov    eax,DWORD PTR [esp+0xc4]
1053355b:	6a 00                                           	push   0x0
1053355d:	6a 40                                           	push   0x40
1053355f:	51                                              	push   ecx
10533560:	8b 8c 24 cc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xcc]
10533567:	52                                              	push   edx
10533568:	50                                              	push   eax
10533569:	51                                              	push   ecx
1053356a:	e8 21 eb 34 00                                  	call   0x10882090
1053356f:	83 c4 1c                                        	add    esp,0x1c
10533572:	e8 a9 7b 02 00                                  	call   0x1055b120
10533577:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1053357b:	52                                              	push   edx
1053357c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10533580:	8b f0                                           	mov    esi,eax
10533582:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
1053358a:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10533592:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
1053359a:	c7 44 24 14 ec a1 b1 10                         	mov    DWORD PTR [esp+0x14],0x10b1a1ec
105335a2:	e8 79 70 b3 ff                                  	call   0x1006a620
105335a7:	6a 01                                           	push   0x1
105335a9:	6a 10                                           	push   0x10
105335ab:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
105335af:	50                                              	push   eax
105335b0:	6a 09                                           	push   0x9
105335b2:	6a 13                                           	push   0x13
105335b4:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
105335b8:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
105335c0:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
105335c7:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
105335ce:	e8 bd 55 3f 00                                  	call   0x10928b90
105335d3:	8b 16                                           	mov    edx,DWORD PTR [esi]
105335d5:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
105335d8:	8d 44 24 14                                     	lea    eax,[esp+0x14]
105335dc:	50                                              	push   eax
105335dd:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
105335e1:	51                                              	push   ecx
105335e2:	8b ce                                           	mov    ecx,esi
105335e4:	ff d2                                           	call   edx
105335e6:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
105335eb:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
105335ef:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
105335f7:	74 0b                                           	je     0x10533604
105335f9:	6a 00                                           	push   0x0
105335fb:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
105335ff:	e8 8c 54 3f 00                                  	call   0x10928a90
10533604:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10533608:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053360c:	2b c8                                           	sub    ecx,eax
1053360e:	83 e1 fe                                        	and    ecx,0xfffffffe
10533611:	83 f9 02                                        	cmp    ecx,0x2
10533614:	7e 0d                                           	jle    0x10533623
10533616:	85 c0                                           	test   eax,eax
10533618:	74 09                                           	je     0x10533623
1053361a:	50                                              	push   eax
1053361b:	e8 70 58 3e 00                                  	call   0x10918e90
10533620:	83 c4 04                                        	add    esp,0x4
10533623:	8b c6                                           	mov    eax,esi
10533625:	5e                                              	pop    esi
10533626:	81 c4 b4 00 00 00                               	add    esp,0xb4
1053362c:	c3                                              	ret
1053362d:	cc                                              	int3
1053362e:	cc                                              	int3
1053362f:	cc                                              	int3
10533630:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10533634:	c7 00 a0 f3 c2 10                               	mov    DWORD PTR [eax],0x10c2f3a0
1053363a:	c2 04 00                                        	ret    0x4
1053363d:	cc                                              	int3
1053363e:	cc                                              	int3
1053363f:	cc                                              	int3
