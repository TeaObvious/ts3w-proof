# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00797fd0, 0x00798431); analyst name World_ObjectFootprintContainsPoints.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00797fd0 <.text+0x396fd0>:
  797fd0:	55                   	push   ebp
  797fd1:	8b ec                	mov    ebp,esp
  797fd3:	83 e4 f0             	and    esp,0xfffffff0
  797fd6:	81 ec 24 01 00 00    	sub    esp,0x124
  797fdc:	53                   	push   ebx
  797fdd:	56                   	push   esi
  797fde:	57                   	push   edi
  797fdf:	c6 44 24 0d 00       	mov    BYTE PTR [esp+0xd],0x0
  797fe4:	e8 87 f5 19 00       	call   0x937570
  797fe9:	85 c0                	test   eax,eax
  797feb:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  797fef:	0f 84 1f 04 00 00    	je     0x798414
  797ff5:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  797ff8:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  797ffb:	51                   	push   ecx
  797ffc:	52                   	push   edx
  797ffd:	8b c8                	mov    ecx,eax
  797fff:	e8 7c ff 19 00       	call   0x937f80
  798004:	8b f0                	mov    esi,eax
  798006:	85 f6                	test   esi,esi
  798008:	0f 84 06 04 00 00    	je     0x798414
  79800e:	a1 a8 9f 1e 01       	mov    eax,ds:0x11e9fa8
  798013:	50                   	push   eax
  798014:	8b ce                	mov    ecx,esi
  798016:	e8 45 c2 19 00       	call   0x934260
  79801b:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  798021:	51                   	push   ecx
  798022:	8b ce                	mov    ecx,esi
  798024:	8b f8                	mov    edi,eax
  798026:	e8 35 c2 19 00       	call   0x934260
  79802b:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  798031:	52                   	push   edx
  798032:	8b ce                	mov    ecx,esi
  798034:	8b d8                	mov    ebx,eax
  798036:	e8 25 c2 19 00       	call   0x934260
  79803b:	8b f0                	mov    esi,eax
  79803d:	33 c0                	xor    eax,eax
  79803f:	3b f8                	cmp    edi,eax
  798041:	0f 84 cd 03 00 00    	je     0x798414
  798047:	3b d8                	cmp    ebx,eax
  798049:	0f 84 c5 03 00 00    	je     0x798414
  79804f:	3b f0                	cmp    esi,eax
  798051:	0f 84 bd 03 00 00    	je     0x798414
  798057:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  79805a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  79805e:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  798062:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  798066:	8d 44 24 0e          	lea    eax,[esp+0xe]
  79806a:	50                   	push   eax
  79806b:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  79806f:	51                   	push   ecx
  798070:	52                   	push   edx
  798071:	8b cf                	mov    ecx,edi
  798073:	c7 44 24 48 54 1c 01 01 	mov    DWORD PTR [esp+0x48],0x1011c54
  79807b:	e8 60 f0 1a 00       	call   0x9470e0
  798080:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  798083:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  79808b:	8b c1                	mov    eax,ecx
  79808d:	2d ff ff ff 7f       	sub    eax,0x7fffffff
  798092:	f7 d8                	neg    eax
  798094:	1b c0                	sbb    eax,eax
  798096:	23 c1                	and    eax,ecx
  798098:	02 44 24 0e          	add    al,BYTE PTR [esp+0xe]
  79809c:	33 f6                	xor    esi,esi
  79809e:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
  7980a2:	a1 c4 db 1e 01       	mov    eax,ds:0x11edbc4
  7980a7:	3b c6                	cmp    eax,esi
  7980a9:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  7980af:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  7980b5:	89 74 24 54          	mov    DWORD PTR [esp+0x54],esi
  7980b9:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  7980bd:	0f 84 48 03 00 00    	je     0x79840b
  7980c3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  7980c7:	8d 8c 24 f0 00 00 00 	lea    ecx,[esp+0xf0]
  7980ce:	51                   	push   ecx
  7980cf:	8b cb                	mov    ecx,ebx
  7980d1:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  7980d5:	e8 36 f8 1b 00       	call   0x957910
  7980da:	0f 28 9c 24 f0 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0xf0]
  7980e2:	f3 0f 10 15 88 fd 03 01 	movss  xmm2,DWORD PTR ds:0x103fd88
  7980ea:	0f 28 c3             	movaps xmm0,xmm3
  7980ed:	0f 59 c3             	mulps  xmm0,xmm3
  7980f0:	0f 28 c8             	movaps xmm1,xmm0
  7980f3:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  7980f7:	0f 58 c8             	addps  xmm1,xmm0
  7980fa:	0f 28 c1             	movaps xmm0,xmm1
  7980fd:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  798101:	0f 58 c1             	addps  xmm0,xmm1
  798104:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  798108:	0f 53 e0             	rcpps  xmm4,xmm0
  79810b:	0f 28 ec             	movaps xmm5,xmm4
  79810e:	0f 59 e8             	mulps  xmm5,xmm0
  798111:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  798115:	0f 28 ca             	movaps xmm1,xmm2
  798118:	0f 5c cd             	subps  xmm1,xmm5
  79811b:	0f 59 cc             	mulps  xmm1,xmm4
  79811e:	0f 28 e1             	movaps xmm4,xmm1
  798121:	0f 59 e0             	mulps  xmm4,xmm0
  798124:	0f 28 c2             	movaps xmm0,xmm2
  798127:	0f 5c c4             	subps  xmm0,xmm4
  79812a:	0f 59 c1             	mulps  xmm0,xmm1
  79812d:	0f 57 c9             	xorps  xmm1,xmm1
  798130:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  798136:	c7 44 24 10 00 00 00 80 	mov    DWORD PTR [esp+0x10],0x80000000
  79813e:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  798144:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  79814a:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  798150:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  798156:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  79815b:	0f 57 cb             	xorps  xmm1,xmm3
  79815e:	0f 28 9c 24 00 01 00 00 	movaps xmm3,XMMWORD PTR [esp+0x100]
  798166:	0f 59 c1             	mulps  xmm0,xmm1
  798169:	0f 28 e0             	movaps xmm4,xmm0
  79816c:	0f c6 e0 12          	shufps xmm4,xmm0,0x12
  798170:	0f 28 e8             	movaps xmm5,xmm0
  798173:	0f c6 e8 09          	shufps xmm5,xmm0,0x9
  798177:	0f c6 c0 ff          	shufps xmm0,xmm0,0xff
  79817b:	0f 29 84 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  798183:	0f 59 c3             	mulps  xmm0,xmm3
  798186:	0f 28 cb             	movaps xmm1,xmm3
  798189:	0f c6 cb 12          	shufps xmm1,xmm3,0x12
  79818d:	0f 28 f3             	movaps xmm6,xmm3
  798190:	0f c6 f3 09          	shufps xmm6,xmm3,0x9
  798194:	0f 59 f4             	mulps  xmm6,xmm4
  798197:	0f 59 cd             	mulps  xmm1,xmm5
  79819a:	0f 5c ce             	subps  xmm1,xmm6
  79819d:	0f 58 c8             	addps  xmm1,xmm0
  7981a0:	0f 28 f1             	movaps xmm6,xmm1
  7981a3:	0f c6 f1 12          	shufps xmm6,xmm1,0x12
  7981a7:	0f 59 f5             	mulps  xmm6,xmm5
  7981aa:	0f 28 c1             	movaps xmm0,xmm1
  7981ad:	0f c6 c1 09          	shufps xmm0,xmm1,0x9
  7981b1:	0f 59 c4             	mulps  xmm0,xmm4
  7981b4:	0f 5c f0             	subps  xmm6,xmm0
  7981b7:	0f 59 f2             	mulps  xmm6,xmm2
  7981ba:	0f 58 f3             	addps  xmm6,xmm3
  7981bd:	0f 57 c0             	xorps  xmm0,xmm0
  7981c0:	0f 5c c6             	subps  xmm0,xmm6
  7981c3:	0f 29 94 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm2
  7981cb:	0f 29 a4 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm4
  7981d3:	0f 29 ac 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm5
  7981db:	0f 29 84 24 20 01 00 00 	movaps XMMWORD PTR [esp+0x120],xmm0
  7981e3:	e8 a8 11 fd ff       	call   0x769390
  7981e8:	8b d8                	mov    ebx,eax
  7981ea:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  7981ee:	50                   	push   eax
  7981ef:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  7981f2:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  7981f6:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  7981fa:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  7981fe:	8b 13                	mov    edx,DWORD PTR [ebx]
  798200:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  798204:	51                   	push   ecx
  798205:	8b 52 68             	mov    edx,DWORD PTR [edx+0x68]
  798208:	50                   	push   eax
  798209:	8b cb                	mov    ecx,ebx
  79820b:	ff d2                	call   edx
  79820d:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  798211:	3b c6                	cmp    eax,esi
  798213:	0f 84 06 02 00 00    	je     0x79841f
  798219:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  79821d:	3b d6                	cmp    edx,esi
  79821f:	0f 84 fa 01 00 00    	je     0x79841f
  798225:	33 ff                	xor    edi,edi
  798227:	33 c9                	xor    ecx,ecx
  798229:	85 d2                	test   edx,edx
  79822b:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  79822f:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  798233:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  798237:	c7 44 24 2c 4c 1d 01 01 	mov    DWORD PTR [esp+0x2c],0x1011d4c
  79823f:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  798243:	0f 8e 7b 01 00 00    	jle    0x7983c4
  798249:	eb 09                	jmp    0x798254
  79824b:	eb 03                	jmp    0x798250
  79824d:	8d 49 00             	lea    ecx,[ecx+0x0]
  798250:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  798254:	8b 4c f0 04          	mov    ecx,DWORD PTR [eax+esi*8+0x4]
  798258:	8b 14 f0             	mov    edx,DWORD PTR [eax+esi*8]
  79825b:	51                   	push   ecx
  79825c:	8b 4c 24 4c          	mov    ecx,DWORD PTR [esp+0x4c]
  798260:	52                   	push   edx
  798261:	e8 1a fd 19 00       	call   0x937f80
  798266:	50                   	push   eax
  798267:	e8 e4 5d dc ff       	call   0x55e050
  79826c:	83 c4 04             	add    esp,0x4
  79826f:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  798273:	51                   	push   ecx
  798274:	8b c8                	mov    ecx,eax
  798276:	e8 b5 f7 1b 00       	call   0x957a30
  79827b:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  798280:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  798284:	0f 29 84 24 90 00 00 00 	movaps XMMWORD PTR [esp+0x90],xmm0
  79828c:	d9 84 24 98 00 00 00 	fld    DWORD PTR [esp+0x98]
  798293:	83 ec 08             	sub    esp,0x8
  798296:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  79829a:	0f 29 44 24 78       	movaps XMMWORD PTR [esp+0x78],xmm0
  79829f:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  7982a3:	d9 1c 24             	fstp   DWORD PTR [esp]
  7982a6:	e8 25 05 4d 00       	call   0xc687d0
  7982ab:	85 c0                	test   eax,eax
  7982ad:	74 22                	je     0x7982d1
  7982af:	8d 54 24 4c          	lea    edx,[esp+0x4c]
  7982b3:	52                   	push   edx
  7982b4:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  7982b8:	51                   	push   ecx
  7982b9:	50                   	push   eax
  7982ba:	e8 a1 45 34 00       	call   0xadc860
  7982bf:	0f be 54 24 1b       	movsx  edx,BYTE PTR [esp+0x1b]
  7982c4:	83 c4 0c             	add    esp,0xc
  7982c7:	3b 54 24 54          	cmp    edx,DWORD PTR [esp+0x54]
  7982cb:	0f 85 da 00 00 00    	jne    0x7983ab
  7982d1:	0f 28 54 24 60       	movaps xmm2,XMMWORD PTR [esp+0x60]
  7982d6:	0f 28 a4 24 d0 00 00 00 	movaps xmm4,XMMWORD PTR [esp+0xd0]
  7982de:	0f 28 9c 24 b0 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0xb0]
  7982e6:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  7982ea:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
  7982ee:	3b c7                	cmp    eax,edi
  7982f0:	0f 28 c2             	movaps xmm0,xmm2
  7982f3:	0f c6 c2 12          	shufps xmm0,xmm2,0x12
  7982f7:	0f 59 c4             	mulps  xmm0,xmm4
  7982fa:	0f 28 ca             	movaps xmm1,xmm2
  7982fd:	0f c6 ca 09          	shufps xmm1,xmm2,0x9
  798301:	0f 59 cb             	mulps  xmm1,xmm3
  798304:	0f 5c c1             	subps  xmm0,xmm1
  798307:	0f 28 8c 24 e0 00 00 00 	movaps xmm1,XMMWORD PTR [esp+0xe0]
  79830f:	0f 59 ca             	mulps  xmm1,xmm2
  798312:	0f 58 c1             	addps  xmm0,xmm1
  798315:	0f 28 c8             	movaps xmm1,xmm0
  798318:	0f c6 c8 12          	shufps xmm1,xmm0,0x12
  79831c:	0f 59 cc             	mulps  xmm1,xmm4
  79831f:	0f 28 e0             	movaps xmm4,xmm0
  798322:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  798326:	0f 59 e3             	mulps  xmm4,xmm3
  798329:	0f 5c cc             	subps  xmm1,xmm4
  79832c:	0f 59 8c 24 80 00 00 00 	mulps  xmm1,XMMWORD PTR [esp+0x80]
  798334:	0f 58 ca             	addps  xmm1,xmm2
  798337:	0f 58 8c 24 20 01 00 00 	addps  xmm1,XMMWORD PTR [esp+0x120]
  79833f:	0f 29 8c 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm1
  798347:	f3 0f 10 84 24 a0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa0]
  798350:	0f 29 8c 24 c0 00 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm1
  798358:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  79835e:	f3 0f 10 84 24 c8 00 00 00 	movss  xmm0,DWORD PTR [esp+0xc8]
  798367:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  79836d:	74 3c                	je     0x7983ab
  79836f:	8d 70 30             	lea    esi,[eax+0x30]
  798372:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  798375:	2b 06                	sub    eax,DWORD PTR [esi]
  798377:	8b 0e                	mov    ecx,DWORD PTR [esi]
  798379:	c1 f8 03             	sar    eax,0x3
  79837c:	50                   	push   eax
  79837d:	51                   	push   ecx
  79837e:	8d 44 24 60          	lea    eax,[esp+0x60]
  798382:	50                   	push   eax
  798383:	e8 58 56 03 00       	call   0x7cd9e0
  798388:	83 c4 0c             	add    esp,0xc
  79838b:	84 c0                	test   al,al
  79838d:	74 0e                	je     0x79839d
  79838f:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  798393:	51                   	push   ecx
  798394:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  798398:	e8 33 3d e9 ff       	call   0x62c0d0
  79839d:	83 c6 40             	add    esi,0x40
  7983a0:	8d 56 d0             	lea    edx,[esi-0x30]
  7983a3:	3b d7                	cmp    edx,edi
  7983a5:	75 cb                	jne    0x798372
  7983a7:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  7983ab:	83 c6 01             	add    esi,0x1
  7983ae:	3b 74 24 1c          	cmp    esi,DWORD PTR [esp+0x1c]
  7983b2:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  7983b6:	0f 8c 94 fe ff ff    	jl     0x798250
  7983bc:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  7983c0:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  7983c4:	2b cf                	sub    ecx,edi
  7983c6:	c1 f9 02             	sar    ecx,0x2
  7983c9:	8b f1                	mov    esi,ecx
  7983cb:	85 f6                	test   esi,esi
  7983cd:	0f 9f c0             	setg   al
  7983d0:	84 c0                	test   al,al
  7983d2:	88 44 24 0d          	mov    BYTE PTR [esp+0xd],al
  7983d6:	74 26                	je     0x7983fe
  7983d8:	8b 03                	mov    eax,DWORD PTR [ebx]
  7983da:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  7983dd:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7983e1:	8b 90 8c 00 00 00    	mov    edx,DWORD PTR [eax+0x8c]
  7983e7:	56                   	push   esi
  7983e8:	53                   	push   ebx
  7983e9:	ff d2                	call   edx
  7983eb:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7983ef:	8b 01                	mov    eax,DWORD PTR [ecx]
  7983f1:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
  7983f7:	56                   	push   esi
  7983f8:	6a 00                	push   0x0
  7983fa:	57                   	push   edi
  7983fb:	53                   	push   ebx
  7983fc:	ff d2                	call   edx
  7983fe:	85 ff                	test   edi,edi
  798400:	74 09                	je     0x79840b
  798402:	57                   	push   edi
  798403:	e8 d8 c0 d4 ff       	call   0x4e44e0
  798408:	83 c4 04             	add    esp,0x4
  79840b:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  79840f:	e8 cc 15 fb ff       	call   0x7499e0
  798414:	8a 44 24 0d          	mov    al,BYTE PTR [esp+0xd]
  798418:	5f                   	pop    edi
  798419:	5e                   	pop    esi
  79841a:	5b                   	pop    ebx
  79841b:	8b e5                	mov    esp,ebp
  79841d:	5d                   	pop    ebp
  79841e:	c3                   	ret
  79841f:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  798423:	e8 b8 15 fb ff       	call   0x7499e0
  798428:	5f                   	pop    edi
  798429:	5e                   	pop    esi
  79842a:	32 c0                	xor    al,al
  79842c:	5b                   	pop    ebx
  79842d:	8b e5                	mov    esp,ebp
  79842f:	5d                   	pop    ebp
  798430:	c3                   	ret
