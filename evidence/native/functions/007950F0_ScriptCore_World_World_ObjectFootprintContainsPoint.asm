# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007950f0, 0x007953a6); analyst name World_ObjectFootprintContainsPoint.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007950f0 <.text+0x3940f0>:
  7950f0:	55                   	push   ebp
  7950f1:	8b ec                	mov    ebp,esp
  7950f3:	83 e4 f0             	and    esp,0xfffffff0
  7950f6:	81 ec 04 01 00 00    	sub    esp,0x104
  7950fc:	53                   	push   ebx
  7950fd:	56                   	push   esi
  7950fe:	57                   	push   edi
  7950ff:	e8 6c 24 1a 00       	call   0x937570
  795104:	85 c0                	test   eax,eax
  795106:	0f 84 7f 02 00 00    	je     0x79538b
  79510c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  79510f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  795112:	51                   	push   ecx
  795113:	52                   	push   edx
  795114:	8b c8                	mov    ecx,eax
  795116:	e8 65 2e 1a 00       	call   0x937f80
  79511b:	8b f0                	mov    esi,eax
  79511d:	85 f6                	test   esi,esi
  79511f:	0f 84 66 02 00 00    	je     0x79538b
  795125:	a1 a8 9f 1e 01       	mov    eax,ds:0x11e9fa8
  79512a:	50                   	push   eax
  79512b:	8b ce                	mov    ecx,esi
  79512d:	e8 2e f1 19 00       	call   0x934260
  795132:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  795138:	51                   	push   ecx
  795139:	8b ce                	mov    ecx,esi
  79513b:	8b f8                	mov    edi,eax
  79513d:	e8 1e f1 19 00       	call   0x934260
  795142:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  795148:	52                   	push   edx
  795149:	8b ce                	mov    ecx,esi
  79514b:	8b d8                	mov    ebx,eax
  79514d:	e8 0e f1 19 00       	call   0x934260
  795152:	33 f6                	xor    esi,esi
  795154:	3b fe                	cmp    edi,esi
  795156:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  79515a:	0f 84 2b 02 00 00    	je     0x79538b
  795160:	3b de                	cmp    ebx,esi
  795162:	0f 84 23 02 00 00    	je     0x79538b
  795168:	3b c6                	cmp    eax,esi
  79516a:	0f 84 1b 02 00 00    	je     0x79538b
  795170:	8d 44 24 70          	lea    eax,[esp+0x70]
  795174:	50                   	push   eax
  795175:	8b cb                	mov    ecx,ebx
  795177:	e8 94 27 1c 00       	call   0x957910
  79517c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  79517f:	8d 4c 24 0f          	lea    ecx,[esp+0xf]
  795183:	51                   	push   ecx
  795184:	8d 54 24 24          	lea    edx,[esp+0x24]
  795188:	52                   	push   edx
  795189:	50                   	push   eax
  79518a:	8b cf                	mov    ecx,edi
  79518c:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
  795190:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  795194:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
  795198:	c7 44 24 38 54 1c 01 01 	mov    DWORD PTR [esp+0x38],0x1011c54
  7951a0:	e8 3b 1f 1b 00       	call   0x9470e0
  7951a5:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7951a9:	8b 49 18             	mov    ecx,DWORD PTR [ecx+0x18]
  7951ac:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  7951b4:	8b c1                	mov    eax,ecx
  7951b6:	2d ff ff ff 7f       	sub    eax,0x7fffffff
  7951bb:	f7 d8                	neg    eax
  7951bd:	1b c0                	sbb    eax,eax
  7951bf:	23 c1                	and    eax,ecx
  7951c1:	02 44 24 0f          	add    al,BYTE PTR [esp+0xf]
  7951c5:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  7951cb:	3b ce                	cmp    ecx,esi
  7951cd:	8a d8                	mov    bl,al
  7951cf:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  7951d5:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  7951db:	89 74 24 4c          	mov    DWORD PTR [esp+0x4c],esi
  7951df:	74 6a                	je     0x79524b
  7951e1:	d9 45 1c             	fld    DWORD PTR [ebp+0x1c]
  7951e4:	83 ec 08             	sub    esp,0x8
  7951e7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7951eb:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  7951ee:	d9 1c 24             	fstp   DWORD PTR [esp]
  7951f1:	e8 da 35 4d 00       	call   0xc687d0
  7951f6:	3b c6                	cmp    eax,esi
  7951f8:	74 51                	je     0x79524b
  7951fa:	f3 0f 10 4d 1c       	movss  xmm1,DWORD PTR [ebp+0x1c]
  7951ff:	f3 0f 10 45 14       	movss  xmm0,DWORD PTR [ebp+0x14]
  795204:	8d 54 24 44          	lea    edx,[esp+0x44]
  795208:	52                   	push   edx
  795209:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  79520f:	f3 0f 10 4d 18       	movss  xmm1,DWORD PTR [ebp+0x18]
  795214:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  795218:	51                   	push   ecx
  795219:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  79521f:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  795225:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  79522b:	0f 28 44 24 18       	movaps xmm0,XMMWORD PTR [esp+0x18]
  795230:	50                   	push   eax
  795231:	0f 29 44 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm0
  795236:	e8 25 76 34 00       	call   0xadc860
  79523b:	0f be d3             	movsx  edx,bl
  79523e:	83 c4 0c             	add    esp,0xc
  795241:	3b 54 24 4c          	cmp    edx,DWORD PTR [esp+0x4c]
  795245:	0f 85 37 01 00 00    	jne    0x795382
  79524b:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  79524f:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  795253:	3b c8                	cmp    ecx,eax
  795255:	8b f8                	mov    edi,eax
  795257:	0f 84 25 01 00 00    	je     0x795382
  79525d:	8d 71 30             	lea    esi,[ecx+0x30]
  795260:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  795263:	2b 16                	sub    edx,DWORD PTR [esi]
  795265:	0f 57 f6             	xorps  xmm6,xmm6
  795268:	33 c0                	xor    eax,eax
  79526a:	c1 fa 03             	sar    edx,0x3
  79526d:	0f 84 d1 00 00 00    	je     0x795344
  795273:	0f 28 ac 24 80 00 00 00 	movaps xmm5,XMMWORD PTR [esp+0x80]
  79527b:	0f 28 54 24 70       	movaps xmm2,XMMWORD PTR [esp+0x70]
  795280:	83 f8 10             	cmp    eax,0x10
  795283:	0f 83 bb 00 00 00    	jae    0x795344
  795289:	8b 0e                	mov    ecx,DWORD PTR [esi]
  79528b:	f3 0f 10 04 c1       	movss  xmm0,DWORD PTR [ecx+eax*8]
  795290:	f3 0f 10 4c c1 04    	movss  xmm1,DWORD PTR [ecx+eax*8+0x4]
  795296:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  79529c:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  7952a2:	8d 0c c1             	lea    ecx,[ecx+eax*8]
  7952a5:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  7952ab:	f3 0f 11 74 24 34    	movss  DWORD PTR [esp+0x34],xmm6
  7952b1:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  7952b6:	0f 28 da             	movaps xmm3,xmm2
  7952b9:	0f c6 da 09          	shufps xmm3,xmm2,0x9
  7952bd:	0f 28 e2             	movaps xmm4,xmm2
  7952c0:	0f c6 e2 12          	shufps xmm4,xmm2,0x12
  7952c4:	0f 28 f9             	movaps xmm7,xmm1
  7952c7:	0f c6 f9 09          	shufps xmm7,xmm1,0x9
  7952cb:	0f 59 fc             	mulps  xmm7,xmm4
  7952ce:	0f 28 c1             	movaps xmm0,xmm1
  7952d1:	0f c6 c1 12          	shufps xmm0,xmm1,0x12
  7952d5:	0f 59 c3             	mulps  xmm0,xmm3
  7952d8:	0f 5c c7             	subps  xmm0,xmm7
  7952db:	0f 28 fa             	movaps xmm7,xmm2
  7952de:	0f c6 fa ff          	shufps xmm7,xmm2,0xff
  7952e2:	0f 59 f9             	mulps  xmm7,xmm1
  7952e5:	0f 58 c7             	addps  xmm0,xmm7
  7952e8:	0f 28 f8             	movaps xmm7,xmm0
  7952eb:	0f c6 f8 09          	shufps xmm7,xmm0,0x9
  7952ef:	0f c6 c0 12          	shufps xmm0,xmm0,0x12
  7952f3:	0f 59 c3             	mulps  xmm0,xmm3
  7952f6:	f3 0f 10 1d 88 fd 03 01 	movss  xmm3,DWORD PTR ds:0x103fd88
  7952fe:	0f 59 fc             	mulps  xmm7,xmm4
  795301:	0f 5c c7             	subps  xmm0,xmm7
  795304:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  795308:	0f 59 c3             	mulps  xmm0,xmm3
  79530b:	0f 58 c1             	addps  xmm0,xmm1
  79530e:	0f 58 c5             	addps  xmm0,xmm5
  795311:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  795316:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  79531b:	f3 0f 10 44 24 60    	movss  xmm0,DWORD PTR [esp+0x60]
  795321:	f3 0f 11 84 c4 90 00 00 00 	movss  DWORD PTR [esp+eax*8+0x90],xmm0
  79532a:	f3 0f 10 44 24 58    	movss  xmm0,DWORD PTR [esp+0x58]
  795330:	f3 0f 11 84 c4 94 00 00 00 	movss  DWORD PTR [esp+eax*8+0x94],xmm0
  795339:	83 c0 01             	add    eax,0x1
  79533c:	3b c2                	cmp    eax,edx
  79533e:	0f 82 3c ff ff ff    	jb     0x795280
  795344:	f3 0f 10 45 14       	movss  xmm0,DWORD PTR [ebp+0x14]
  795349:	50                   	push   eax
  79534a:	8d 94 24 94 00 00 00 	lea    edx,[esp+0x94]
  795351:	52                   	push   edx
  795352:	8d 44 24 18          	lea    eax,[esp+0x18]
  795356:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  79535c:	f3 0f 10 45 1c       	movss  xmm0,DWORD PTR [ebp+0x1c]
  795361:	50                   	push   eax
  795362:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  795368:	e8 73 86 03 00       	call   0x7cd9e0
  79536d:	83 c4 0c             	add    esp,0xc
  795370:	84 c0                	test   al,al
  795372:	75 20                	jne    0x795394
  795374:	83 c6 40             	add    esi,0x40
  795377:	8d 4e d0             	lea    ecx,[esi-0x30]
  79537a:	3b cf                	cmp    ecx,edi
  79537c:	0f 85 de fe ff ff    	jne    0x795260
  795382:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  795386:	e8 55 46 fb ff       	call   0x7499e0
  79538b:	32 c0                	xor    al,al
  79538d:	5f                   	pop    edi
  79538e:	5e                   	pop    esi
  79538f:	5b                   	pop    ebx
  795390:	8b e5                	mov    esp,ebp
  795392:	5d                   	pop    ebp
  795393:	c3                   	ret
  795394:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  795398:	e8 43 46 fb ff       	call   0x7499e0
  79539d:	5f                   	pop    edi
  79539e:	5e                   	pop    esi
  79539f:	b0 01                	mov    al,0x1
  7953a1:	5b                   	pop    ebx
  7953a2:	8b e5                	mov    esp,ebp
  7953a4:	5d                   	pop    ebp
  7953a5:	c3                   	ret
