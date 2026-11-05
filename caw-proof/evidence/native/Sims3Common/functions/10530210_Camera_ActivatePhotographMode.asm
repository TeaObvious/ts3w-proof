# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530210 (Camera_ActivatePhotographMode)
Paired Ghidra pseudocode: 10530210_Camera_ActivatePhotographMode.c
Window: [0x10530210, 0x10530340) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530210: e8 1b c4 22 00 85 c0 0f 84 17 01 00 00 56 8b c8
10530220: e8 5b 78 40 00 8b f0 85 f6 0f 84 04 01 00 00 80
10530230: 7c 24 10 00 8b ce 0f 84 99 00 00 00 6a 01 6a 05
10530240: e8 6b d7 22 00 8b ce e8 04 c7 22 00 85 c0 0f 84
10530250: df 00 00 00 8b 10 8b c8 8b 42 0c 68 29 cd 9d c4
10530260: ff d0 8b f0 85 f6 0f 84 c7 00 00 00 8b 4c 24 0c
10530270: 8b 54 24 08 51 52 8b ce e8 83 f7 23 00 f3 0f 10
10530280: 4c 24 14 f3 0f 10 05 84 e1 aa 10 0f 2e c8 9f f6
10530290: c4 44 7b 28 f3 0f 10 4c 24 18 0f 2e c8 9f f6 c4
105302a0: 44 7b 19 d9 44 24 18 83 ec 08 d9 5c 24 04 8b ce
105302b0: d9 44 24 1c d9 1c 24 e8 24 d2 23 00 8b 44 24 1c
105302c0: 83 f8 03 73 6e 50 8b ce e8 53 d2 23 00 8b ce 5e
105302d0: e9 2b d2 23 00 e8 76 c6 22 00 85 c0 74 4a 8b 10
105302e0: 57 8b c8 8b 42 0c 68 29 cd 9d c4 ff d0 8b f8 85
105302f0: ff 74 34 8b cf e8 d6 f5 23 00 6a 03 8b cf e8 1d
10530300: d2 23 00 d9 05 94 9d b1 10 83 ec 08 d9 5c 24 04
10530310: 8b cf d9 05 30 7e ab 10 d9 1c 24 e8 c0 d1 23 00
10530320: 8b cf e8 e9 d1 23 00 5f 6a 00 6a 01 8b ce e8 7d
10530330: d6 22 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530210 <.text+0x52f210>:
10530210:	e8 1b c4 22 00                                  	call   0x1075c630
10530215:	85 c0                                           	test   eax,eax
10530217:	0f 84 17 01 00 00                               	je     0x10530334
1053021d:	56                                              	push   esi
1053021e:	8b c8                                           	mov    ecx,eax
10530220:	e8 5b 78 40 00                                  	call   0x10937a80
10530225:	8b f0                                           	mov    esi,eax
10530227:	85 f6                                           	test   esi,esi
10530229:	0f 84 04 01 00 00                               	je     0x10530333
1053022f:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
10530234:	8b ce                                           	mov    ecx,esi
10530236:	0f 84 99 00 00 00                               	je     0x105302d5
1053023c:	6a 01                                           	push   0x1
1053023e:	6a 05                                           	push   0x5
10530240:	e8 6b d7 22 00                                  	call   0x1075d9b0
10530245:	8b ce                                           	mov    ecx,esi
10530247:	e8 04 c7 22 00                                  	call   0x1075c950
1053024c:	85 c0                                           	test   eax,eax
1053024e:	0f 84 df 00 00 00                               	je     0x10530333
10530254:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530256:	8b c8                                           	mov    ecx,eax
10530258:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1053025b:	68 29 cd 9d c4                                  	push   0xc49dcd29
10530260:	ff d0                                           	call   eax
10530262:	8b f0                                           	mov    esi,eax
10530264:	85 f6                                           	test   esi,esi
10530266:	0f 84 c7 00 00 00                               	je     0x10530333
1053026c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10530270:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10530274:	51                                              	push   ecx
10530275:	52                                              	push   edx
10530276:	8b ce                                           	mov    ecx,esi
10530278:	e8 83 f7 23 00                                  	call   0x1076fa00
1053027d:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
10530283:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
1053028b:	0f 2e c8                                        	ucomiss xmm1,xmm0
1053028e:	9f                                              	lahf
1053028f:	f6 c4 44                                        	test   ah,0x44
10530292:	7b 28                                           	jnp    0x105302bc
10530294:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
1053029a:	0f 2e c8                                        	ucomiss xmm1,xmm0
1053029d:	9f                                              	lahf
1053029e:	f6 c4 44                                        	test   ah,0x44
105302a1:	7b 19                                           	jnp    0x105302bc
105302a3:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
105302a7:	83 ec 08                                        	sub    esp,0x8
105302aa:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
105302ae:	8b ce                                           	mov    ecx,esi
105302b0:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
105302b4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105302b7:	e8 24 d2 23 00                                  	call   0x1076d4e0
105302bc:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
105302c0:	83 f8 03                                        	cmp    eax,0x3
105302c3:	73 6e                                           	jae    0x10530333
105302c5:	50                                              	push   eax
105302c6:	8b ce                                           	mov    ecx,esi
105302c8:	e8 53 d2 23 00                                  	call   0x1076d520
105302cd:	8b ce                                           	mov    ecx,esi
105302cf:	5e                                              	pop    esi
105302d0:	e9 2b d2 23 00                                  	jmp    0x1076d500
105302d5:	e8 76 c6 22 00                                  	call   0x1075c950
105302da:	85 c0                                           	test   eax,eax
105302dc:	74 4a                                           	je     0x10530328
105302de:	8b 10                                           	mov    edx,DWORD PTR [eax]
105302e0:	57                                              	push   edi
105302e1:	8b c8                                           	mov    ecx,eax
105302e3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
105302e6:	68 29 cd 9d c4                                  	push   0xc49dcd29
105302eb:	ff d0                                           	call   eax
105302ed:	8b f8                                           	mov    edi,eax
105302ef:	85 ff                                           	test   edi,edi
105302f1:	74 34                                           	je     0x10530327
105302f3:	8b cf                                           	mov    ecx,edi
105302f5:	e8 d6 f5 23 00                                  	call   0x1076f8d0
105302fa:	6a 03                                           	push   0x3
105302fc:	8b cf                                           	mov    ecx,edi
105302fe:	e8 1d d2 23 00                                  	call   0x1076d520
10530303:	d9 05 94 9d b1 10                               	fld    DWORD PTR ds:0x10b19d94
10530309:	83 ec 08                                        	sub    esp,0x8
1053030c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10530310:	8b cf                                           	mov    ecx,edi
10530312:	d9 05 30 7e ab 10                               	fld    DWORD PTR ds:0x10ab7e30
10530318:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053031b:	e8 c0 d1 23 00                                  	call   0x1076d4e0
10530320:	8b cf                                           	mov    ecx,edi
10530322:	e8 e9 d1 23 00                                  	call   0x1076d510
10530327:	5f                                              	pop    edi
10530328:	6a 00                                           	push   0x0
1053032a:	6a 01                                           	push   0x1
1053032c:	8b ce                                           	mov    ecx,esi
1053032e:	e8 7d d6 22 00                                  	call   0x1075d9b0
10530333:	5e                                              	pop    esi
10530334:	c3                                              	ret
10530335:	cc                                              	int3
10530336:	cc                                              	int3
10530337:	cc                                              	int3
10530338:	cc                                              	int3
10530339:	cc                                              	int3
1053033a:	cc                                              	int3
1053033b:	cc                                              	int3
1053033c:	cc                                              	int3
1053033d:	cc                                              	int3
1053033e:	cc                                              	int3
1053033f:	cc                                              	int3
