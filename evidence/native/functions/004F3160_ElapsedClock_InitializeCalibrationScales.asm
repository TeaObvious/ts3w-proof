# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x004f3160 ElapsedClock_InitializeCalibrationScales
# Complete Ghidra body [004f3160, 004f34d2] inclusive; 252 instructions, 883 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 004F3160_ElapsedClock_InitializeCalibrationScales.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

004f3160 <.text+0xf2160>:
  4f3160:	55                                              	push   ebp
  4f3161:	8b ec                                           	mov    ebp,esp
  4f3163:	83 e4 f8                                        	and    esp,0xfffffff8
  4f3166:	83 ec 50                                        	sub    esp,0x50
  4f3169:	53                                              	push   ebx
  4f316a:	55                                              	push   ebp
  4f316b:	56                                              	push   esi
  4f316c:	33 f6                                           	xor    esi,esi
  4f316e:	39 35 f4 d9 14 01                               	cmp    DWORD PTR ds:0x114d9f4,esi
  4f3174:	57                                              	push   edi
  4f3175:	0f 87 50 03 00 00                               	ja     0x4f34cb
  4f317b:	72 0d                                           	jb     0x4f318a
  4f317d:	83 3d f0 d9 14 01 01                            	cmp    DWORD PTR ds:0x114d9f0,0x1
  4f3184:	0f 87 41 03 00 00                               	ja     0x4f34cb
  4f318a:	ff 15 a4 63 f9 00                               	call   DWORD PTR ds:0xf963a4
  4f3190:	8b f8                                           	mov    edi,eax
  4f3192:	57                                              	push   edi
  4f3193:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  4f3197:	ff 15 a8 63 f9 00                               	call   DWORD PTR ds:0xf963a8
  4f319d:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  4f31a1:	ff 15 ac 63 f9 00                               	call   DWORD PTR ds:0xf963ac
  4f31a7:	8b e8                                           	mov    ebp,eax
  4f31a9:	55                                              	push   ebp
  4f31aa:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
  4f31ae:	ff 15 b0 63 f9 00                               	call   DWORD PTR ds:0xf963b0
  4f31b4:	68 00 01 00 00                                  	push   0x100
  4f31b9:	57                                              	push   edi
  4f31ba:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  4f31be:	ff 15 b4 63 f9 00                               	call   DWORD PTR ds:0xf963b4
  4f31c4:	6a 0f                                           	push   0xf
  4f31c6:	55                                              	push   ebp
  4f31c7:	ff 15 b8 63 f9 00                               	call   DWORD PTR ds:0xf963b8
  4f31cd:	8b 1d bc 63 f9 00                               	mov    ebx,DWORD PTR ds:0xf963bc
  4f31d3:	89 35 f8 d9 14 01                               	mov    DWORD PTR ds:0x114d9f8,esi
  4f31d9:	89 35 fc d9 14 01                               	mov    DWORD PTR ds:0x114d9fc,esi
  4f31df:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  4f31e3:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  4f31e7:	50                                              	push   eax
  4f31e8:	ff d3                                           	call   ebx
  4f31ea:	0f 31                                           	rdtsc
  4f31ec:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  4f31f0:	8b c2                                           	mov    eax,edx
  4f31f2:	8b ca                                           	mov    ecx,edx
  4f31f4:	25 ff ff ff 7f                                  	and    eax,0x7fffffff
  4f31f9:	81 e1 00 00 00 80                               	and    ecx,0x80000000
  4f31ff:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  4f3203:	df 6c 24 38                                     	fild   QWORD PTR [esp+0x38]
  4f3207:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  4f320b:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  4f320f:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  4f3213:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  4f3217:	df 6c 24 28                                     	fild   QWORD PTR [esp+0x28]
  4f321b:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
  4f321f:	8b c8                                           	mov    ecx,eax
  4f3221:	d9 e0                                           	fchs
  4f3223:	25 ff ff ff 7f                                  	and    eax,0x7fffffff
  4f3228:	de c1                                           	faddp  st(1),st
  4f322a:	81 e1 00 00 00 80                               	and    ecx,0x80000000
  4f3230:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  4f3234:	df 6c 24 40                                     	fild   QWORD PTR [esp+0x40]
  4f3238:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
  4f323c:	89 74 24 48                                     	mov    DWORD PTR [esp+0x48],esi
  4f3240:	df 6c 24 48                                     	fild   QWORD PTR [esp+0x48]
  4f3244:	d9 e0                                           	fchs
  4f3246:	de c1                                           	faddp  st(1),st
  4f3248:	de f9                                           	fdivp  st(1),st
  4f324a:	dd 05 60 99 f9 00                               	fld    QWORD PTR ds:0xf99960
  4f3250:	d9 c9                                           	fxch   st(1)
  4f3252:	db f1                                           	fcomi  st,st(1)
  4f3254:	dd d9                                           	fstp   st(1)
  4f3256:	76 55                                           	jbe    0x4f32ad
  4f3258:	dd 05 58 99 f9 00                               	fld    QWORD PTR ds:0xf99958
  4f325e:	df f1                                           	fcomip st,st(1)
  4f3260:	dd d8                                           	fstp   st(0)
  4f3262:	76 4b                                           	jbe    0x4f32af
  4f3264:	68 f8 d9 14 01                                  	push   0x114d9f8
  4f3269:	ff 15 c4 63 f9 00                               	call   DWORD PTR ds:0xf963c4
  4f326f:	8b 15 f8 d9 14 01                               	mov    edx,DWORD PTR ds:0x114d9f8
  4f3275:	0b 15 fc d9 14 01                               	or     edx,DWORD PTR ds:0x114d9fc
  4f327b:	0f 85 1c 01 00 00                               	jne    0x4f339d
  4f3281:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  4f3285:	50                                              	push   eax
  4f3286:	89 74 24 5c                                     	mov    DWORD PTR [esp+0x5c],esi
  4f328a:	89 74 24 60                                     	mov    DWORD PTR [esp+0x60],esi
  4f328e:	ff 15 c4 63 f9 00                               	call   DWORD PTR ds:0xf963c4
  4f3294:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  4f3298:	51                                              	push   ecx
  4f3299:	ff d3                                           	call   ebx
  4f329b:	0f 31                                           	rdtsc
  4f329d:	8b 2d f0 61 f9 00                               	mov    ebp,DWORD PTR ds:0xf961f0
  4f32a3:	89 54 24 3c                                     	mov    DWORD PTR [esp+0x3c],edx
  4f32a7:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  4f32ab:	eb 1a                                           	jmp    0x4f32c7
  4f32ad:	dd d8                                           	fstp   st(0)
  4f32af:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  4f32b3:	83 c0 01                                        	add    eax,0x1
  4f32b6:	83 f8 05                                        	cmp    eax,0x5
  4f32b9:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  4f32bd:	0f 8c 20 ff ff ff                               	jl     0x4f31e3
  4f32c3:	eb aa                                           	jmp    0x4f326f
  4f32c5:	dd d8                                           	fstp   st(0)
  4f32c7:	6a 01                                           	push   0x1
  4f32c9:	6a 32                                           	push   0x32
  4f32cb:	ff d5                                           	call   ebp
  4f32cd:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  4f32d1:	52                                              	push   edx
  4f32d2:	ff d3                                           	call   ebx
  4f32d4:	0f 31                                           	rdtsc
  4f32d6:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  4f32da:	2b 7c 24 28                                     	sub    edi,DWORD PTR [esp+0x28]
  4f32de:	8b c8                                           	mov    ecx,eax
  4f32e0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  4f32e4:	1b 44 24 2c                                     	sbb    eax,DWORD PTR [esp+0x2c]
  4f32e8:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  4f32ec:	8b f8                                           	mov    edi,eax
  4f32ee:	25 ff ff ff 7f                                  	and    eax,0x7fffffff
  4f32f3:	81 e7 00 00 00 80                               	and    edi,0x80000000
  4f32f9:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  4f32fd:	df 6c 24 48                                     	fild   QWORD PTR [esp+0x48]
  4f3301:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  4f3305:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  4f3309:	8b 7c 24 30                                     	mov    edi,DWORD PTR [esp+0x30]
  4f330d:	89 74 24 40                                     	mov    DWORD PTR [esp+0x40],esi
  4f3311:	df 6c 24 40                                     	fild   QWORD PTR [esp+0x40]
  4f3315:	89 7c 24 50                                     	mov    DWORD PTR [esp+0x50],edi
  4f3319:	8b f8                                           	mov    edi,eax
  4f331b:	25 ff ff ff 7f                                  	and    eax,0x7fffffff
  4f3320:	d9 e0                                           	fchs
  4f3322:	81 e7 00 00 00 80                               	and    edi,0x80000000
  4f3328:	de c1                                           	faddp  st(1),st
  4f332a:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
  4f332e:	df 6c 24 50                                     	fild   QWORD PTR [esp+0x50]
  4f3332:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
  4f3336:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  4f333a:	df 6c 24 58                                     	fild   QWORD PTR [esp+0x58]
  4f333e:	d9 e0                                           	fchs
  4f3340:	de c1                                           	faddp  st(1),st
  4f3342:	de f9                                           	fdivp  st(1),st
  4f3344:	dd 05 50 99 f9 00                               	fld    QWORD PTR ds:0xf99950
  4f334a:	df f1                                           	fcomip st,st(1)
  4f334c:	0f 87 73 ff ff ff                               	ja     0x4f32c5
  4f3352:	2b 4c 24 38                                     	sub    ecx,DWORD PTR [esp+0x38]
  4f3356:	1b 54 24 3c                                     	sbb    edx,DWORD PTR [esp+0x3c]
  4f335a:	89 4c 24 58                                     	mov    DWORD PTR [esp+0x58],ecx
  4f335e:	8b c2                                           	mov    eax,edx
  4f3360:	81 e2 ff ff ff 7f                               	and    edx,0x7fffffff
  4f3366:	89 54 24 5c                                     	mov    DWORD PTR [esp+0x5c],edx
  4f336a:	df 6c 24 58                                     	fild   QWORD PTR [esp+0x58]
  4f336e:	25 00 00 00 80                                  	and    eax,0x80000000
  4f3373:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
  4f3377:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  4f337b:	df 6c 24 58                                     	fild   QWORD PTR [esp+0x58]
  4f337f:	d9 e0                                           	fchs
  4f3381:	de c1                                           	faddp  st(1),st
  4f3383:	de f1                                           	fdivrp st(1),st
  4f3385:	e8 cc c2 a8 00                                  	call   0xf7f656
  4f338a:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  4f338e:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
  4f3392:	a3 f8 d9 14 01                                  	mov    ds:0x114d9f8,eax
  4f3397:	89 15 fc d9 14 01                               	mov    DWORD PTR ds:0x114d9fc,edx
  4f339d:	68 f0 d9 14 01                                  	push   0x114d9f0
  4f33a2:	ff 15 c4 63 f9 00                               	call   DWORD PTR ds:0xf963c4
  4f33a8:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  4f33ac:	50                                              	push   eax
  4f33ad:	57                                              	push   edi
  4f33ae:	ff 15 b4 63 f9 00                               	call   DWORD PTR ds:0xf963b4
  4f33b4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  4f33b8:	51                                              	push   ecx
  4f33b9:	55                                              	push   ebp
  4f33ba:	ff 15 b8 63 f9 00                               	call   DWORD PTR ds:0xf963b8
  4f33c0:	df 2d f0 d9 14 01                               	fild   QWORD PTR ds:0x114d9f0
  4f33c6:	d9 e8                                           	fld1
  4f33c8:	83 cf ff                                        	or     edi,0xffffffff
  4f33cb:	de f1                                           	fdivrp st(1),st
  4f33cd:	83 ce ff                                        	or     esi,0xffffffff
  4f33d0:	bd 08 00 00 00                                  	mov    ebp,0x8
  4f33d5:	d9 05 78 99 f9 00                               	fld    DWORD PTR ds:0xf99978
  4f33db:	d8 c9                                           	fmul   st,st(1)
  4f33dd:	d9 1d f4 c8 1c 01                               	fstp   DWORD PTR ds:0x11cc8f4
  4f33e3:	d9 15 f8 c8 1c 01                               	fst    DWORD PTR ds:0x11cc8f8
  4f33e9:	d9 05 74 99 f9 00                               	fld    DWORD PTR ds:0xf99974
  4f33ef:	d8 c9                                           	fmul   st,st(1)
  4f33f1:	d9 1d fc c8 1c 01                               	fstp   DWORD PTR ds:0x11cc8fc
  4f33f7:	d9 05 70 99 f9 00                               	fld    DWORD PTR ds:0xf99970
  4f33fd:	d8 c9                                           	fmul   st,st(1)
  4f33ff:	d9 1d 00 c9 1c 01                               	fstp   DWORD PTR ds:0x11cc900
  4f3405:	d8 0d 6c 99 f9 00                               	fmul   DWORD PTR ds:0xf9996c
  4f340b:	d9 1d 04 c9 1c 01                               	fstp   DWORD PTR ds:0x11cc904
  4f3411:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  4f3415:	52                                              	push   edx
  4f3416:	ff d3                                           	call   ebx
  4f3418:	8d 44 24 58                                     	lea    eax,[esp+0x58]
  4f341c:	50                                              	push   eax
  4f341d:	ff d3                                           	call   ebx
  4f341f:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  4f3423:	2b 4c 24 50                                     	sub    ecx,DWORD PTR [esp+0x50]
  4f3427:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  4f342b:	1b 44 24 54                                     	sbb    eax,DWORD PTR [esp+0x54]
  4f342f:	3b f0                                           	cmp    esi,eax
  4f3431:	72 0a                                           	jb     0x4f343d
  4f3433:	77 04                                           	ja     0x4f3439
  4f3435:	3b f9                                           	cmp    edi,ecx
  4f3437:	76 04                                           	jbe    0x4f343d
  4f3439:	8b f9                                           	mov    edi,ecx
  4f343b:	8b f0                                           	mov    esi,eax
  4f343d:	83 ed 01                                        	sub    ebp,0x1
  4f3440:	75 cf                                           	jne    0x4f3411
  4f3442:	df 2d f8 d9 14 01                               	fild   QWORD PTR ds:0x114d9f8
  4f3448:	89 3d 10 c9 1c 01                               	mov    DWORD PTR ds:0x11cc910,edi
  4f344e:	d9 e8                                           	fld1
  4f3450:	83 cb ff                                        	or     ebx,0xffffffff
  4f3453:	de f1                                           	fdivrp st(1),st
  4f3455:	89 35 14 c9 1c 01                               	mov    DWORD PTR ds:0x11cc914,esi
  4f345b:	83 cf ff                                        	or     edi,0xffffffff
  4f345e:	bd 08 00 00 00                                  	mov    ebp,0x8
  4f3463:	d9 05 78 99 f9 00                               	fld    DWORD PTR ds:0xf99978
  4f3469:	d8 c9                                           	fmul   st,st(1)
  4f346b:	d9 1d e0 c8 1c 01                               	fstp   DWORD PTR ds:0x11cc8e0
  4f3471:	d9 15 e4 c8 1c 01                               	fst    DWORD PTR ds:0x11cc8e4
  4f3477:	d9 05 74 99 f9 00                               	fld    DWORD PTR ds:0xf99974
  4f347d:	d8 c9                                           	fmul   st,st(1)
  4f347f:	d9 1d e8 c8 1c 01                               	fstp   DWORD PTR ds:0x11cc8e8
  4f3485:	d9 05 70 99 f9 00                               	fld    DWORD PTR ds:0xf99970
  4f348b:	d8 c9                                           	fmul   st,st(1)
  4f348d:	d9 1d ec c8 1c 01                               	fstp   DWORD PTR ds:0x11cc8ec
  4f3493:	d8 0d 6c 99 f9 00                               	fmul   DWORD PTR ds:0xf9996c
  4f3499:	d9 1d f0 c8 1c 01                               	fstp   DWORD PTR ds:0x11cc8f0
  4f349f:	90                                              	nop
  4f34a0:	0f 31                                           	rdtsc
  4f34a2:	8b f2                                           	mov    esi,edx
  4f34a4:	8b c8                                           	mov    ecx,eax
  4f34a6:	0f 31                                           	rdtsc
  4f34a8:	2b c1                                           	sub    eax,ecx
  4f34aa:	1b d6                                           	sbb    edx,esi
  4f34ac:	3b fa                                           	cmp    edi,edx
  4f34ae:	72 0a                                           	jb     0x4f34ba
  4f34b0:	77 04                                           	ja     0x4f34b6
  4f34b2:	3b d8                                           	cmp    ebx,eax
  4f34b4:	76 04                                           	jbe    0x4f34ba
  4f34b6:	8b d8                                           	mov    ebx,eax
  4f34b8:	8b fa                                           	mov    edi,edx
  4f34ba:	83 ed 01                                        	sub    ebp,0x1
  4f34bd:	75 e1                                           	jne    0x4f34a0
  4f34bf:	89 1d 08 c9 1c 01                               	mov    DWORD PTR ds:0x11cc908,ebx
  4f34c5:	89 3d 0c c9 1c 01                               	mov    DWORD PTR ds:0x11cc90c,edi
  4f34cb:	5f                                              	pop    edi
  4f34cc:	5e                                              	pop    esi
  4f34cd:	5d                                              	pop    ebp
  4f34ce:	5b                                              	pop    ebx
  4f34cf:	8b e5                                           	mov    esp,ebp
  4f34d1:	5d                                              	pop    ebp
  4f34d2:	c3                                              	ret
