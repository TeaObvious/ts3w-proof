# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d2b0 (ScriptCore.World::World_ObjectSetColorTintTransition)
Paired Ghidra pseudocode: 0078D2B0_ScriptCore_World_World_ObjectSetColorTintTransition.c
Window: [0x0078d2b0, 0x0078d490) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d2b0: 83 ec 10 e8 b8 a2 1a 00 85 c0 0f 84 cb 01 00 00
0078d2c0: 8b 4c 24 18 8b 54 24 14 51 52 8b c8 e8 af ac 1a
0078d2d0: 00 85 c0 0f 84 b2 01 00 00 8b 0d a8 a2 1e 01 56
0078d2e0: 51 8b c8 e8 78 6f 1a 00 8b f0 85 f6 0f 84 98 01
0078d2f0: 00 00 f3 0f 10 1d 64 3f fb 00 d9 44 24 2c f3 0f
0078d300: 10 25 f0 17 01 01 f3 0f 10 44 24 20 f3 0f 10 4c
0078d310: 24 24 f3 0f 10 54 24 28 53 f3 0f 59 c3 f3 0f 58
0078d320: c4 f3 0f 11 44 24 08 8b 54 24 08 f3 0f 59 cb f3
0078d330: 0f 58 cc f3 0f 11 4c 24 08 8b 5c 24 08 f3 0f 59
0078d340: d3 f3 0f 58 d4 f3 0f 11 54 24 08 8b 44 24 08 81
0078d350: c2 00 00 c0 b8 f3 0f 11 44 24 08 8b 4c 24 08 81
0078d360: c1 00 00 c0 b8 89 4c 24 0c f3 0f 11 4c 24 08 8b
0078d370: 4c 24 08 81 c1 00 00 c0 b8 89 4c 24 10 05 00 00
0078d380: c0 b8 f3 0f 11 54 24 08 8b 4c 24 08 81 c1 00 00
0078d390: c0 b8 89 4c 24 14 8b ca c1 f9 1f 89 44 24 08 f6
0078d3a0: d1 57 0f b6 fa 0f b6 c9 23 cf b8 ff 00 00 00 2b
0078d3b0: c2 c1 f8 1f 0f b6 d0 0b ca 81 c3 00 00 c0 b8 8b
0078d3c0: d3 c1 fa 1f f6 d2 0f b6 d2 0f b6 fb 23 d7 b8 ff
0078d3d0: 00 00 00 2b c3 c1 f8 1f 0f b6 f8 8b 44 24 0c 0b
0078d3e0: d7 c1 e1 08 03 ca 8b d0 c1 fa 1f f6 d2 bb ff 00
0078d3f0: 00 00 2b d8 0f b6 f8 0f b6 d2 c1 fb 1f 0f b6 c3
0078d400: 23 d7 c1 e1 08 0b d0 8b 44 24 10 03 ca 6a 01 51
0078d410: 51 8b c8 c1 f9 1f d9 1c 24 f6 d1 0f b6 d1 0f b6
0078d420: c8 23 d1 b9 ff 00 00 00 2b c8 c1 f9 1f 0f b6 c1
0078d430: 0b d0 8b 44 24 20 8b c8 c1 f9 1f f6 d1 0f b6 c9
0078d440: 0f b6 f8 23 cf bb ff 00 00 00 2b d8 c1 fb 1f 0f
0078d450: b6 c3 0b c8 8b 44 24 24 c1 e2 08 03 d1 8b c8 c1
0078d460: f9 1f f6 d1 bb ff 00 00 00 2b d8 0f b6 c9 0f b6
0078d470: f8 c1 fb 1f 0f b6 c3 23 cf 0b c8 c1 e2 08 03 d1
0078d480: 52 8b ce e8 58 0a 1d 00 5f 5b 5e 83 c4 10 c3 cc

LINEAR DISASSEMBLY
0078d2b0 <.text+0x38c2b0>:
  78d2b0:	83 ec 10                                        	sub    esp,0x10
  78d2b3:	e8 b8 a2 1a 00                                  	call   0x937570
  78d2b8:	85 c0                                           	test   eax,eax
  78d2ba:	0f 84 cb 01 00 00                               	je     0x78d48b
  78d2c0:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78d2c4:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  78d2c8:	51                                              	push   ecx
  78d2c9:	52                                              	push   edx
  78d2ca:	8b c8                                           	mov    ecx,eax
  78d2cc:	e8 af ac 1a 00                                  	call   0x937f80
  78d2d1:	85 c0                                           	test   eax,eax
  78d2d3:	0f 84 b2 01 00 00                               	je     0x78d48b
  78d2d9:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d2df:	56                                              	push   esi
  78d2e0:	51                                              	push   ecx
  78d2e1:	8b c8                                           	mov    ecx,eax
  78d2e3:	e8 78 6f 1a 00                                  	call   0x934260
  78d2e8:	8b f0                                           	mov    esi,eax
  78d2ea:	85 f6                                           	test   esi,esi
  78d2ec:	0f 84 98 01 00 00                               	je     0x78d48a
  78d2f2:	f3 0f 10 1d 64 3f fb 00                         	movss  xmm3,DWORD PTR ds:0xfb3f64
  78d2fa:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  78d2fe:	f3 0f 10 25 f0 17 01 01                         	movss  xmm4,DWORD PTR ds:0x10117f0
  78d306:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  78d30c:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  78d312:	f3 0f 10 54 24 28                               	movss  xmm2,DWORD PTR [esp+0x28]
  78d318:	53                                              	push   ebx
  78d319:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  78d31d:	f3 0f 58 c4                                     	addss  xmm0,xmm4
  78d321:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  78d327:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  78d32b:	f3 0f 59 cb                                     	mulss  xmm1,xmm3
  78d32f:	f3 0f 58 cc                                     	addss  xmm1,xmm4
  78d333:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  78d339:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  78d33d:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  78d341:	f3 0f 58 d4                                     	addss  xmm2,xmm4
  78d345:	f3 0f 11 54 24 08                               	movss  DWORD PTR [esp+0x8],xmm2
  78d34b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78d34f:	81 c2 00 00 c0 b8                               	add    edx,0xb8c00000
  78d355:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  78d35b:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d35f:	81 c1 00 00 c0 b8                               	add    ecx,0xb8c00000
  78d365:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  78d369:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  78d36f:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d373:	81 c1 00 00 c0 b8                               	add    ecx,0xb8c00000
  78d379:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  78d37d:	05 00 00 c0 b8                                  	add    eax,0xb8c00000
  78d382:	f3 0f 11 54 24 08                               	movss  DWORD PTR [esp+0x8],xmm2
  78d388:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d38c:	81 c1 00 00 c0 b8                               	add    ecx,0xb8c00000
  78d392:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  78d396:	8b ca                                           	mov    ecx,edx
  78d398:	c1 f9 1f                                        	sar    ecx,0x1f
  78d39b:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  78d39f:	f6 d1                                           	not    cl
  78d3a1:	57                                              	push   edi
  78d3a2:	0f b6 fa                                        	movzx  edi,dl
  78d3a5:	0f b6 c9                                        	movzx  ecx,cl
  78d3a8:	23 cf                                           	and    ecx,edi
  78d3aa:	b8 ff 00 00 00                                  	mov    eax,0xff
  78d3af:	2b c2                                           	sub    eax,edx
  78d3b1:	c1 f8 1f                                        	sar    eax,0x1f
  78d3b4:	0f b6 d0                                        	movzx  edx,al
  78d3b7:	0b ca                                           	or     ecx,edx
  78d3b9:	81 c3 00 00 c0 b8                               	add    ebx,0xb8c00000
  78d3bf:	8b d3                                           	mov    edx,ebx
  78d3c1:	c1 fa 1f                                        	sar    edx,0x1f
  78d3c4:	f6 d2                                           	not    dl
  78d3c6:	0f b6 d2                                        	movzx  edx,dl
  78d3c9:	0f b6 fb                                        	movzx  edi,bl
  78d3cc:	23 d7                                           	and    edx,edi
  78d3ce:	b8 ff 00 00 00                                  	mov    eax,0xff
  78d3d3:	2b c3                                           	sub    eax,ebx
  78d3d5:	c1 f8 1f                                        	sar    eax,0x1f
  78d3d8:	0f b6 f8                                        	movzx  edi,al
  78d3db:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78d3df:	0b d7                                           	or     edx,edi
  78d3e1:	c1 e1 08                                        	shl    ecx,0x8
  78d3e4:	03 ca                                           	add    ecx,edx
  78d3e6:	8b d0                                           	mov    edx,eax
  78d3e8:	c1 fa 1f                                        	sar    edx,0x1f
  78d3eb:	f6 d2                                           	not    dl
  78d3ed:	bb ff 00 00 00                                  	mov    ebx,0xff
  78d3f2:	2b d8                                           	sub    ebx,eax
  78d3f4:	0f b6 f8                                        	movzx  edi,al
  78d3f7:	0f b6 d2                                        	movzx  edx,dl
  78d3fa:	c1 fb 1f                                        	sar    ebx,0x1f
  78d3fd:	0f b6 c3                                        	movzx  eax,bl
  78d400:	23 d7                                           	and    edx,edi
  78d402:	c1 e1 08                                        	shl    ecx,0x8
  78d405:	0b d0                                           	or     edx,eax
  78d407:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  78d40b:	03 ca                                           	add    ecx,edx
  78d40d:	6a 01                                           	push   0x1
  78d40f:	51                                              	push   ecx
  78d410:	51                                              	push   ecx
  78d411:	8b c8                                           	mov    ecx,eax
  78d413:	c1 f9 1f                                        	sar    ecx,0x1f
  78d416:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78d419:	f6 d1                                           	not    cl
  78d41b:	0f b6 d1                                        	movzx  edx,cl
  78d41e:	0f b6 c8                                        	movzx  ecx,al
  78d421:	23 d1                                           	and    edx,ecx
  78d423:	b9 ff 00 00 00                                  	mov    ecx,0xff
  78d428:	2b c8                                           	sub    ecx,eax
  78d42a:	c1 f9 1f                                        	sar    ecx,0x1f
  78d42d:	0f b6 c1                                        	movzx  eax,cl
  78d430:	0b d0                                           	or     edx,eax
  78d432:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  78d436:	8b c8                                           	mov    ecx,eax
  78d438:	c1 f9 1f                                        	sar    ecx,0x1f
  78d43b:	f6 d1                                           	not    cl
  78d43d:	0f b6 c9                                        	movzx  ecx,cl
  78d440:	0f b6 f8                                        	movzx  edi,al
  78d443:	23 cf                                           	and    ecx,edi
  78d445:	bb ff 00 00 00                                  	mov    ebx,0xff
  78d44a:	2b d8                                           	sub    ebx,eax
  78d44c:	c1 fb 1f                                        	sar    ebx,0x1f
  78d44f:	0f b6 c3                                        	movzx  eax,bl
  78d452:	0b c8                                           	or     ecx,eax
  78d454:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  78d458:	c1 e2 08                                        	shl    edx,0x8
  78d45b:	03 d1                                           	add    edx,ecx
  78d45d:	8b c8                                           	mov    ecx,eax
  78d45f:	c1 f9 1f                                        	sar    ecx,0x1f
  78d462:	f6 d1                                           	not    cl
  78d464:	bb ff 00 00 00                                  	mov    ebx,0xff
  78d469:	2b d8                                           	sub    ebx,eax
  78d46b:	0f b6 c9                                        	movzx  ecx,cl
  78d46e:	0f b6 f8                                        	movzx  edi,al
  78d471:	c1 fb 1f                                        	sar    ebx,0x1f
  78d474:	0f b6 c3                                        	movzx  eax,bl
  78d477:	23 cf                                           	and    ecx,edi
  78d479:	0b c8                                           	or     ecx,eax
  78d47b:	c1 e2 08                                        	shl    edx,0x8
  78d47e:	03 d1                                           	add    edx,ecx
  78d480:	52                                              	push   edx
  78d481:	8b ce                                           	mov    ecx,esi
  78d483:	e8 58 0a 1d 00                                  	call   0x95dee0
  78d488:	5f                                              	pop    edi
  78d489:	5b                                              	pop    ebx
  78d48a:	5e                                              	pop    esi
  78d48b:	83 c4 10                                        	add    esp,0x10
  78d48e:	c3                                              	ret
  78d48f:	cc                                              	int3
