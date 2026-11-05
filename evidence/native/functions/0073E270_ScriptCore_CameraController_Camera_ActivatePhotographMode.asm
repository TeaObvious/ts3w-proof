# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e270 (ScriptCore.CameraController::Camera_ActivatePhotographMode)
Paired Ghidra pseudocode: 0073E270_ScriptCore_CameraController_Camera_ActivatePhotographMode.c
Window: [0x0073e270, 0x0073e3a0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e3a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e270: e8 5b b9 22 00 85 c0 0f 84 17 01 00 00 56 8b c8
0073e280: e8 6b 3d 7e 00 8b f0 85 f6 0f 84 04 01 00 00 80
0073e290: 7c 24 10 00 8b ce 0f 84 99 00 00 00 6a 01 6a 05
0073e2a0: e8 bb cd 22 00 8b ce e8 34 5b dd ff 85 c0 0f 84
0073e2b0: df 00 00 00 8b 10 8b c8 8b 42 0c 68 29 cd 9d c4
0073e2c0: ff d0 8b f0 85 f6 0f 84 c7 00 00 00 8b 4c 24 0c
0073e2d0: 8b 54 24 08 51 52 8b ce e8 43 f1 23 00 f3 0f 10
0073e2e0: 4c 24 14 f3 0f 10 05 18 b2 fa 00 0f 2e c8 9f f6
0073e2f0: c4 44 7b 28 f3 0f 10 4c 24 18 0f 2e c8 9f f6 c4
0073e300: 44 7b 19 d9 44 24 18 83 ec 08 d9 5c 24 04 8b ce
0073e310: d9 44 24 1c d9 1c 24 e8 94 c8 23 00 8b 44 24 1c
0073e320: 83 f8 03 73 6e 50 8b ce e8 c3 c8 23 00 8b ce 5e
0073e330: e9 9b c8 23 00 e8 a6 5a dd ff 85 c0 74 4a 8b 10
0073e340: 57 8b c8 8b 42 0c 68 29 cd 9d c4 ff d0 8b f8 85
0073e350: ff 74 34 8b cf e8 c6 ee 23 00 6a 03 8b cf e8 8d
0073e360: c8 23 00 d9 05 b0 09 00 01 83 ec 08 d9 5c 24 04
0073e370: 8b cf d9 05 34 b6 f9 00 d9 1c 24 e8 30 c8 23 00
0073e380: 8b cf e8 59 c8 23 00 5f 6a 00 6a 01 8b ce e8 cd
0073e390: cc 22 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e270 <.text+0x33d270>:
  73e270:	e8 5b b9 22 00                                  	call   0x969bd0
  73e275:	85 c0                                           	test   eax,eax
  73e277:	0f 84 17 01 00 00                               	je     0x73e394
  73e27d:	56                                              	push   esi
  73e27e:	8b c8                                           	mov    ecx,eax
  73e280:	e8 6b 3d 7e 00                                  	call   0xf21ff0
  73e285:	8b f0                                           	mov    esi,eax
  73e287:	85 f6                                           	test   esi,esi
  73e289:	0f 84 04 01 00 00                               	je     0x73e393
  73e28f:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
  73e294:	8b ce                                           	mov    ecx,esi
  73e296:	0f 84 99 00 00 00                               	je     0x73e335
  73e29c:	6a 01                                           	push   0x1
  73e29e:	6a 05                                           	push   0x5
  73e2a0:	e8 bb cd 22 00                                  	call   0x96b060
  73e2a5:	8b ce                                           	mov    ecx,esi
  73e2a7:	e8 34 5b dd ff                                  	call   0x513de0
  73e2ac:	85 c0                                           	test   eax,eax
  73e2ae:	0f 84 df 00 00 00                               	je     0x73e393
  73e2b4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e2b6:	8b c8                                           	mov    ecx,eax
  73e2b8:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e2bb:	68 29 cd 9d c4                                  	push   0xc49dcd29
  73e2c0:	ff d0                                           	call   eax
  73e2c2:	8b f0                                           	mov    esi,eax
  73e2c4:	85 f6                                           	test   esi,esi
  73e2c6:	0f 84 c7 00 00 00                               	je     0x73e393
  73e2cc:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73e2d0:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  73e2d4:	51                                              	push   ecx
  73e2d5:	52                                              	push   edx
  73e2d6:	8b ce                                           	mov    ecx,esi
  73e2d8:	e8 43 f1 23 00                                  	call   0x97d420
  73e2dd:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
  73e2e3:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  73e2eb:	0f 2e c8                                        	ucomiss xmm1,xmm0
  73e2ee:	9f                                              	lahf
  73e2ef:	f6 c4 44                                        	test   ah,0x44
  73e2f2:	7b 28                                           	jnp    0x73e31c
  73e2f4:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  73e2fa:	0f 2e c8                                        	ucomiss xmm1,xmm0
  73e2fd:	9f                                              	lahf
  73e2fe:	f6 c4 44                                        	test   ah,0x44
  73e301:	7b 19                                           	jnp    0x73e31c
  73e303:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  73e307:	83 ec 08                                        	sub    esp,0x8
  73e30a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  73e30e:	8b ce                                           	mov    ecx,esi
  73e310:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  73e314:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73e317:	e8 94 c8 23 00                                  	call   0x97abb0
  73e31c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  73e320:	83 f8 03                                        	cmp    eax,0x3
  73e323:	73 6e                                           	jae    0x73e393
  73e325:	50                                              	push   eax
  73e326:	8b ce                                           	mov    ecx,esi
  73e328:	e8 c3 c8 23 00                                  	call   0x97abf0
  73e32d:	8b ce                                           	mov    ecx,esi
  73e32f:	5e                                              	pop    esi
  73e330:	e9 9b c8 23 00                                  	jmp    0x97abd0
  73e335:	e8 a6 5a dd ff                                  	call   0x513de0
  73e33a:	85 c0                                           	test   eax,eax
  73e33c:	74 4a                                           	je     0x73e388
  73e33e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e340:	57                                              	push   edi
  73e341:	8b c8                                           	mov    ecx,eax
  73e343:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e346:	68 29 cd 9d c4                                  	push   0xc49dcd29
  73e34b:	ff d0                                           	call   eax
  73e34d:	8b f8                                           	mov    edi,eax
  73e34f:	85 ff                                           	test   edi,edi
  73e351:	74 34                                           	je     0x73e387
  73e353:	8b cf                                           	mov    ecx,edi
  73e355:	e8 c6 ee 23 00                                  	call   0x97d220
  73e35a:	6a 03                                           	push   0x3
  73e35c:	8b cf                                           	mov    ecx,edi
  73e35e:	e8 8d c8 23 00                                  	call   0x97abf0
  73e363:	d9 05 b0 09 00 01                               	fld    DWORD PTR ds:0x10009b0
  73e369:	83 ec 08                                        	sub    esp,0x8
  73e36c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  73e370:	8b cf                                           	mov    ecx,edi
  73e372:	d9 05 34 b6 f9 00                               	fld    DWORD PTR ds:0xf9b634
  73e378:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73e37b:	e8 30 c8 23 00                                  	call   0x97abb0
  73e380:	8b cf                                           	mov    ecx,edi
  73e382:	e8 59 c8 23 00                                  	call   0x97abe0
  73e387:	5f                                              	pop    edi
  73e388:	6a 00                                           	push   0x0
  73e38a:	6a 01                                           	push   0x1
  73e38c:	8b ce                                           	mov    ecx,esi
  73e38e:	e8 cd cc 22 00                                  	call   0x96b060
  73e393:	5e                                              	pop    esi
  73e394:	c3                                              	ret
  73e395:	cc                                              	int3
  73e396:	cc                                              	int3
  73e397:	cc                                              	int3
  73e398:	cc                                              	int3
  73e399:	cc                                              	int3
  73e39a:	cc                                              	int3
  73e39b:	cc                                              	int3
  73e39c:	cc                                              	int3
  73e39d:	cc                                              	int3
  73e39e:	cc                                              	int3
  73e39f:	cc                                              	int3
