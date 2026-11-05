# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00870050 <.text+0x46f050>:
  870050:	83 ec 2c                                        	sub    esp,0x2c
  870053:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  870057:	53                                              	push   ebx
  870058:	55                                              	push   ebp
  870059:	56                                              	push   esi
  87005a:	57                                              	push   edi
  87005b:	8b 7c 24 50                                     	mov    edi,DWORD PTR [esp+0x50]
  87005f:	33 ed                                           	xor    ebp,ebp
  870061:	55                                              	push   ebp
  870062:	57                                              	push   edi
  870063:	83 ec 10                                        	sub    esp,0x10
  870066:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  87006a:	8b f1                                           	mov    esi,ecx
  87006c:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
  870070:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  870074:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
  870078:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  87007c:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
  870080:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  870083:	e8 c8 b1 03 00                                  	call   0x8ab250
  870088:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  87008d:	d9 5c 24 48                                     	fstp   DWORD PTR [esp+0x48]
  870091:	3b c5                                           	cmp    eax,ebp
  870093:	74 0c                                           	je     0x8700a1
  870095:	8d 98 30 84 fd ff                               	lea    ebx,[eax-0x27bd0]
  87009b:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  87009f:	eb 06                                           	jmp    0x8700a7
  8700a1:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
  8700a5:	8b dd                                           	mov    ebx,ebp
  8700a7:	3b fd                                           	cmp    edi,ebp
  8700a9:	75 02                                           	jne    0x8700ad
  8700ab:	8b fe                                           	mov    edi,esi
  8700ad:	39 ae a8 18 00 00                               	cmp    DWORD PTR [esi+0x18a8],ebp
  8700b3:	75 09                                           	jne    0x8700be
  8700b5:	80 be c0 18 00 00 00                            	cmp    BYTE PTR [esi+0x18c0],0x0
  8700bc:	74 48                                           	je     0x870106
  8700be:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  8700c2:	50                                              	push   eax
  8700c3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  8700c7:	51                                              	push   ecx
  8700c8:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  8700cc:	52                                              	push   edx
  8700cd:	6a 02                                           	push   0x2
  8700cf:	8b cb                                           	mov    ecx,ebx
  8700d1:	e8 fa 4a ff ff                                  	call   0x864bd0
  8700d6:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  8700da:	50                                              	push   eax
  8700db:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  8700df:	51                                              	push   ecx
  8700e0:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  8700e4:	52                                              	push   edx
  8700e5:	6a 03                                           	push   0x3
  8700e7:	8b cb                                           	mov    ecx,ebx
  8700e9:	e8 e2 4a ff ff                                  	call   0x864bd0
  8700ee:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  8700f2:	50                                              	push   eax
  8700f3:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  8700f7:	51                                              	push   ecx
  8700f8:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  8700fc:	52                                              	push   edx
  8700fd:	6a 01                                           	push   0x1
  8700ff:	8b cb                                           	mov    ecx,ebx
  870101:	e8 ca 4a ff ff                                  	call   0x864bd0
  870106:	8b 8e a8 18 00 00                               	mov    ecx,DWORD PTR [esi+0x18a8]
  87010c:	3b cd                                           	cmp    ecx,ebp
  87010e:	0f 57 c0                                        	xorps  xmm0,xmm0
  870111:	74 40                                           	je     0x870153
  870113:	f3 0f 10 4c 24 48                               	movss  xmm1,DWORD PTR [esp+0x48]
  870119:	0f 2f c8                                        	comiss xmm1,xmm0
  87011c:	76 35                                           	jbe    0x870153
  87011e:	8b 86 ac 18 00 00                               	mov    eax,DWORD PTR [esi+0x18ac]
  870124:	3b c5                                           	cmp    eax,ebp
  870126:	74 10                                           	je     0x870138
  870128:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  87012c:	3b c2                                           	cmp    eax,edx
  87012e:	75 08                                           	jne    0x870138
  870130:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  870138:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  87013e:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  870142:	51                                              	push   ecx
  870143:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  870146:	e8 25 9a 03 00                                  	call   0x8a9b70
  87014b:	d8 4c 24 48                                     	fmul   DWORD PTR [esp+0x48]
  87014f:	d9 5c 24 48                                     	fstp   DWORD PTR [esp+0x48]
  870153:	80 be c0 18 00 00 00                            	cmp    BYTE PTR [esi+0x18c0],0x0
  87015a:	8a 86 c1 18 00 00                               	mov    al,BYTE PTR [esi+0x18c1]
  870160:	88 44 24 50                                     	mov    BYTE PTR [esp+0x50],al
  870164:	c6 86 c1 18 00 00 00                            	mov    BYTE PTR [esi+0x18c1],0x0
  87016b:	0f 84 d5 01 00 00                               	je     0x870346
  870171:	f3 0f 10 4c 24 48                               	movss  xmm1,DWORD PTR [esp+0x48]
  870177:	0f 57 c0                                        	xorps  xmm0,xmm0
  87017a:	0f 2f c8                                        	comiss xmm1,xmm0
  87017d:	0f 86 c3 01 00 00                               	jbe    0x870346
  870183:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
  870186:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  870189:	83 c7 04                                        	add    edi,0x4
  87018c:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  870190:	50                                              	push   eax
  870191:	68 d1 78 ff 39                                  	push   0x39ff78d1
  870196:	8b cf                                           	mov    ecx,edi
  870198:	33 db                                           	xor    ebx,ebx
  87019a:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  8701a0:	ff d2                                           	call   edx
  8701a2:	84 c0                                           	test   al,al
  8701a4:	74 06                                           	je     0x8701ac
  8701a6:	f3 0f 2c 5c 24 4c                               	cvttss2si ebx,DWORD PTR [esp+0x4c]
  8701ac:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8701ae:	0f 57 c0                                        	xorps  xmm0,xmm0
  8701b1:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  8701b4:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  8701b8:	51                                              	push   ecx
  8701b9:	68 67 d9 be 5d                                  	push   0x5dbed967
  8701be:	8b cf                                           	mov    ecx,edi
  8701c0:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  8701c6:	ff d2                                           	call   edx
  8701c8:	84 c0                                           	test   al,al
  8701ca:	74 26                                           	je     0x8701f2
  8701cc:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  8701d0:	d9 7c 24 4c                                     	fnstcw WORD PTR [esp+0x4c]
  8701d4:	0f b7 44 24 4c                                  	movzx  eax,WORD PTR [esp+0x4c]
  8701d9:	0d 00 0c 00 00                                  	or     eax,0xc00
  8701de:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  8701e2:	d9 6c 24 40                                     	fldcw  WORD PTR [esp+0x40]
  8701e6:	df 7c 24 10                                     	fistp  QWORD PTR [esp+0x10]
  8701ea:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  8701ee:	d9 6c 24 4c                                     	fldcw  WORD PTR [esp+0x4c]
  8701f2:	8b 7c 24 44                                     	mov    edi,DWORD PTR [esp+0x44]
  8701f6:	c6 86 c1 18 00 00 01                            	mov    BYTE PTR [esi+0x18c1],0x1
  8701fd:	8a 8f 09 7d 02 00                               	mov    cl,BYTE PTR [edi+0x27d09]
  870203:	33 c0                                           	xor    eax,eax
  870205:	84 c9                                           	test   cl,cl
  870207:	75 27                                           	jne    0x870230
  870209:	85 ed                                           	test   ebp,ebp
  87020b:	75 06                                           	jne    0x870213
  87020d:	39 6c 04 18                                     	cmp    DWORD PTR [esp+eax*1+0x18],ebp
  870211:	74 43                                           	je     0x870256
  870213:	8b 96 ac 18 00 00                               	mov    edx,DWORD PTR [esi+0x18ac]
  870219:	3b 54 04 24                                     	cmp    edx,DWORD PTR [esp+eax*1+0x24]
  87021d:	75 2d                                           	jne    0x87024c
  87021f:	85 ed                                           	test   ebp,ebp
  870221:	74 29                                           	je     0x87024c
  870223:	83 7c 04 18 00                                  	cmp    DWORD PTR [esp+eax*1+0x18],0x0
  870228:	74 22                                           	je     0x87024c
  87022a:	3b 5c 04 30                                     	cmp    ebx,DWORD PTR [esp+eax*1+0x30]
  87022e:	eb 1a                                           	jmp    0x87024a
  870230:	8b 96 ac 18 00 00                               	mov    edx,DWORD PTR [esi+0x18ac]
  870236:	3b 54 04 24                                     	cmp    edx,DWORD PTR [esp+eax*1+0x24]
  87023a:	75 06                                           	jne    0x870242
  87023c:	3b 6c 04 18                                     	cmp    ebp,DWORD PTR [esp+eax*1+0x18]
  870240:	74 14                                           	je     0x870256
  870242:	85 ed                                           	test   ebp,ebp
  870244:	75 06                                           	jne    0x87024c
  870246:	39 6c 04 18                                     	cmp    DWORD PTR [esp+eax*1+0x18],ebp
  87024a:	74 0a                                           	je     0x870256
  87024c:	83 c0 04                                        	add    eax,0x4
  87024f:	83 f8 0c                                        	cmp    eax,0xc
  870252:	72 b1                                           	jb     0x870205
  870254:	eb 07                                           	jmp    0x87025d
  870256:	c6 86 c1 18 00 00 00                            	mov    BYTE PTR [esi+0x18c1],0x0
  87025d:	80 be c1 18 00 00 00                            	cmp    BYTE PTR [esi+0x18c1],0x0
  870264:	0f 84 dc 00 00 00                               	je     0x870346
  87026a:	8b c3                                           	mov    eax,ebx
  87026c:	2b 44 24 34                                     	sub    eax,DWORD PTR [esp+0x34]
  870270:	99                                              	cdq
  870271:	8b c8                                           	mov    ecx,eax
  870273:	33 ca                                           	xor    ecx,edx
  870275:	8b c3                                           	mov    eax,ebx
  870277:	2b 44 24 30                                     	sub    eax,DWORD PTR [esp+0x30]
  87027b:	2b ca                                           	sub    ecx,edx
  87027d:	99                                              	cdq
  87027e:	33 c2                                           	xor    eax,edx
  870280:	2b c2                                           	sub    eax,edx
  870282:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  870286:	3b c8                                           	cmp    ecx,eax
  870288:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
  87028c:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  870290:	7c 04                                           	jl     0x870296
  870292:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  870296:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  870298:	85 c9                                           	test   ecx,ecx
  87029a:	76 6b                                           	jbe    0x870307
  87029c:	f3 0f 10 4c 24 48                               	movss  xmm1,DWORD PTR [esp+0x48]
  8702a2:	33 d2                                           	xor    edx,edx
  8702a4:	83 f9 04                                        	cmp    ecx,0x4
  8702a7:	7c 39                                           	jl     0x8702e2
  8702a9:	f3 0f 10 86 b0 18 00 00                         	movss  xmm0,DWORD PTR [esi+0x18b0]
  8702b1:	8d 41 fc                                        	lea    eax,[ecx-0x4]
  8702b4:	c1 e8 02                                        	shr    eax,0x2
  8702b7:	83 c0 01                                        	add    eax,0x1
  8702ba:	8d 14 85 00 00 00 00                            	lea    edx,[eax*4+0x0]
  8702c1:	83 e8 01                                        	sub    eax,0x1
  8702c4:	0f 28 d0                                        	movaps xmm2,xmm0
  8702c7:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  8702cb:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  8702cf:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  8702d3:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  8702d7:	0f 28 ca                                        	movaps xmm1,xmm2
  8702da:	75 e5                                           	jne    0x8702c1
  8702dc:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
  8702e2:	3b d1                                           	cmp    edx,ecx
  8702e4:	73 60                                           	jae    0x870346
  8702e6:	f3 0f 10 86 b0 18 00 00                         	movss  xmm0,DWORD PTR [esi+0x18b0]
  8702ee:	2b ca                                           	sub    ecx,edx
  8702f0:	83 e9 01                                        	sub    ecx,0x1
  8702f3:	0f 28 d0                                        	movaps xmm2,xmm0
  8702f6:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  8702fa:	0f 28 ca                                        	movaps xmm1,xmm2
  8702fd:	75 f1                                           	jne    0x8702f0
  8702ff:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
  870305:	eb 3f                                           	jmp    0x870346
  870307:	80 bf 09 7d 02 00 00                            	cmp    BYTE PTR [edi+0x27d09],0x0
  87030e:	74 0a                                           	je     0x87031a
  870310:	f3 0f 10 86 b0 18 00 00                         	movss  xmm0,DWORD PTR [esi+0x18b0]
  870318:	eb 20                                           	jmp    0x87033a
  87031a:	f3 0f 10 8e b0 18 00 00                         	movss  xmm1,DWORD PTR [esi+0x18b0]
  870322:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  87032a:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  87032e:	f3 0f 59 05 b4 b5 f9 00                         	mulss  xmm0,DWORD PTR ds:0xf9b5b4
  870336:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  87033a:	f3 0f 59 44 24 48                               	mulss  xmm0,DWORD PTR [esp+0x48]
  870340:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  870346:	8a 8e c1 18 00 00                               	mov    cl,BYTE PTR [esi+0x18c1]
  87034c:	84 c9                                           	test   cl,cl
  87034e:	0f 85 ce 00 00 00                               	jne    0x870422
  870354:	38 4c 24 50                                     	cmp    BYTE PTR [esp+0x50],cl
  870358:	0f 84 c4 00 00 00                               	je     0x870422
  87035e:	83 7e 58 00                                     	cmp    DWORD PTR [esi+0x58],0x0
  870362:	0f 84 ba 00 00 00                               	je     0x870422
  870368:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  87036c:	85 c0                                           	test   eax,eax
  87036e:	0f 85 b6 00 00 00                               	jne    0x87042a
  870374:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  870377:	0f 57 c0                                        	xorps  xmm0,xmm0
  87037a:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  87037d:	8d 7e 04                                        	lea    edi,[esi+0x4]
  870380:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  870384:	51                                              	push   ecx
  870385:	68 36 78 7a 64                                  	push   0x647a7836
  87038a:	8b cf                                           	mov    ecx,edi
  87038c:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  870392:	ff d2                                           	call   edx
  870394:	84 c0                                           	test   al,al
  870396:	74 43                                           	je     0x8703db
  870398:	d9 46 5c                                        	fld    DWORD PTR [esi+0x5c]
  87039b:	51                                              	push   ecx
  87039c:	8d 8e e0 0a 00 00                               	lea    ecx,[esi+0xae0]
  8703a2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8703a5:	e8 c6 97 03 00                                  	call   0x8a9b70
  8703aa:	d9 54 24 4c                                     	fst    DWORD PTR [esp+0x4c]
  8703ae:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
  8703b2:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  8703b6:	df f1                                           	fcomip st,st(1)
  8703b8:	dd d8                                           	fstp   st(0)
  8703ba:	77 04                                           	ja     0x8703c0
  8703bc:	8d 44 24 54                                     	lea    eax,[esp+0x54]
  8703c0:	d9 00                                           	fld    DWORD PTR [eax]
  8703c2:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  8703c5:	6a 01                                           	push   0x1
  8703c7:	d9 54 24 58                                     	fst    DWORD PTR [esp+0x58]
  8703cb:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  8703cd:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  8703d0:	51                                              	push   ecx
  8703d1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8703d4:	68 36 78 7a 64                                  	push   0x647a7836
  8703d9:	ff d2                                           	call   edx
  8703db:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8703dd:	0f 57 c0                                        	xorps  xmm0,xmm0
  8703e0:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  8703e3:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  8703e7:	51                                              	push   ecx
  8703e8:	68 db 68 eb 49                                  	push   0x49eb68db
  8703ed:	8b cf                                           	mov    ecx,edi
  8703ef:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
  8703f5:	ff d2                                           	call   edx
  8703f7:	84 c0                                           	test   al,al
  8703f9:	74 31                                           	je     0x87042c
  8703fb:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  8703fe:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  870402:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  870404:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  870407:	6a 01                                           	push   0x1
  870409:	51                                              	push   ecx
  87040a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  87040d:	68 db 68 eb 49                                  	push   0x49eb68db
  870412:	ff d2                                           	call   edx
  870414:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
  870418:	5f                                              	pop    edi
  870419:	5e                                              	pop    esi
  87041a:	5d                                              	pop    ebp
  87041b:	5b                                              	pop    ebx
  87041c:	83 c4 2c                                        	add    esp,0x2c
  87041f:	c2 18 00                                        	ret    0x18
  870422:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  870426:	85 c0                                           	test   eax,eax
  870428:	74 02                                           	je     0x87042c
  87042a:	88 08                                           	mov    BYTE PTR [eax],cl
  87042c:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
  870430:	5f                                              	pop    edi
  870431:	5e                                              	pop    esi
  870432:	5d                                              	pop    ebp
  870433:	5b                                              	pop    ebx
  870434:	83 c4 2c                                        	add    esp,0x2c
  870437:	c2 18 00                                        	ret    0x18
