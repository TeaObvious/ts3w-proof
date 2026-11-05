# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00715150 (Seasons_ResolveTreeTextureVariant)
Complete body envelope: 0x00715150..0x007154ec (exclusive end)
Body ranges: [[00715150, 007154eb]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00715150 <.text+0x314150>:
  715150:	83 ec 50             	sub    esp,0x50
  715153:	53                   	push   ebx
  715154:	55                   	push   ebp
  715155:	56                   	push   esi
  715156:	33 ed                	xor    ebp,ebp
  715158:	39 6c 24 68          	cmp    DWORD PTR [esp+0x68],ebp
  71515c:	57                   	push   edi
  71515d:	68 c0 cd ff 00       	push   0xffcdc0
  715162:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  715166:	89 6c 24 24          	mov    DWORD PTR [esp+0x24],ebp
  71516a:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  71516e:	c7 44 24 2c 82 d8 b2 	mov    DWORD PTR [esp+0x2c],0xb2d882
  715175:	00 
  715176:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  71517a:	6a ff                	push   0xffffffff
  71517c:	75 71                	jne    0x7151ef
  71517e:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  715182:	50                   	push   eax
  715183:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  715187:	51                   	push   ecx
  715188:	e8 c3 e9 dd ff       	call   0x4f3b50
  71518d:	8b 00                	mov    eax,DWORD PTR [eax]
  71518f:	8d 54 24 7c          	lea    edx,[esp+0x7c]
  715193:	52                   	push   edx
  715194:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  715198:	51                   	push   ecx
  715199:	8d 54 24 30          	lea    edx,[esp+0x30]
  71519d:	52                   	push   edx
  71519e:	50                   	push   eax
  71519f:	89 ac 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ebp
  7151a6:	e8 45 7d dd ff       	call   0x4ecef0
  7151ab:	8b 8c 24 88 00 00 00 	mov    ecx,DWORD PTR [esp+0x88]
  7151b2:	55                   	push   ebp
  7151b3:	55                   	push   ebp
  7151b4:	55                   	push   ebp
  7151b5:	68 82 d8 b2 00       	push   0xb2d882
  7151ba:	51                   	push   ecx
  7151bb:	8d 54 24 54          	lea    edx,[esp+0x54]
  7151bf:	52                   	push   edx
  7151c0:	e8 7b 9c d9 ff       	call   0x4aee40
  7151c5:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  7151cc:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
  7151d0:	2b c8                	sub    ecx,eax
  7151d2:	83 e1 fe             	and    ecx,0xfffffffe
  7151d5:	83 c4 38             	add    esp,0x38
  7151d8:	83 f9 02             	cmp    ecx,0x2
  7151db:	0f 8e 19 02 00 00    	jle    0x7153fa
  7151e1:	3b c5                	cmp    eax,ebp
  7151e3:	0f 84 11 02 00 00    	je     0x7153fa
  7151e9:	50                   	push   eax
  7151ea:	e9 03 02 00 00       	jmp    0x7153f2
  7151ef:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  7151f3:	b8 54 8e 1c 01       	mov    eax,0x11c8e54
  7151f8:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  7151fc:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  715200:	52                   	push   edx
  715201:	8d 44 24 5c          	lea    eax,[esp+0x5c]
  715205:	50                   	push   eax
  715206:	c7 44 24 4c c0 cd ff 	mov    DWORD PTR [esp+0x4c],0xffcdc0
  71520d:	00 
  71520e:	c7 44 24 48 56 8e 1c 	mov    DWORD PTR [esp+0x48],0x11c8e56
  715215:	01 
  715216:	e8 35 e9 dd ff       	call   0x4f3b50
  71521b:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  71521f:	51                   	push   ecx
  715220:	8d 54 24 7c          	lea    edx,[esp+0x7c]
  715224:	52                   	push   edx
  715225:	8b 10                	mov    edx,DWORD PTR [eax]
  715227:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  71522b:	51                   	push   ecx
  71522c:	52                   	push   edx
  71522d:	89 ac 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ebp
  715234:	e8 b7 7c dd ff       	call   0x4ecef0
  715239:	8b 8c 24 88 00 00 00 	mov    ecx,DWORD PTR [esp+0x88]
  715240:	83 c4 20             	add    esp,0x20
  715243:	66 39 29             	cmp    WORD PTR [ecx],bp
  715246:	8b c1                	mov    eax,ecx
  715248:	74 0e                	je     0x715258
  71524a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  715250:	83 c0 02             	add    eax,0x2
  715253:	66 39 28             	cmp    WORD PTR [eax],bp
  715256:	75 f8                	jne    0x715250
  715258:	2b c1                	sub    eax,ecx
  71525a:	d1 f8                	sar    eax,1
  71525c:	8d 04 41             	lea    eax,[ecx+eax*2]
  71525f:	50                   	push   eax
  715260:	51                   	push   ecx
  715261:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  715265:	e8 f6 3a cf ff       	call   0x408d60
  71526a:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  71526e:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  715272:	2b c8                	sub    ecx,eax
  715274:	83 e1 fe             	and    ecx,0xfffffffe
  715277:	83 f9 02             	cmp    ecx,0x2
  71527a:	7e 0d                	jle    0x715289
  71527c:	3b c5                	cmp    eax,ebp
  71527e:	74 09                	je     0x715289
  715280:	50                   	push   eax
  715281:	e8 5a f2 dc ff       	call   0x4e44e0
  715286:	83 c4 04             	add    esp,0x4
  715289:	55                   	push   ebp
  71528a:	68 60 b2 fa 00       	push   0xfab260
  71528f:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  715293:	e8 18 fc ff ff       	call   0x714eb0
  715298:	8b f0                	mov    esi,eax
  71529a:	83 fe ff             	cmp    esi,0xffffffff
  71529d:	75 51                	jne    0x7152f0
  71529f:	8b 74 24 64          	mov    esi,DWORD PTR [esp+0x64]
  7152a3:	8b 15 d0 3a 1d 01    	mov    edx,DWORD PTR ds:0x11d3ad0
  7152a9:	a1 d4 3a 1d 01       	mov    eax,ds:0x11d3ad4
  7152ae:	8b 0d d8 3a 1d 01    	mov    ecx,DWORD PTR ds:0x11d3ad8
  7152b4:	89 16                	mov    DWORD PTR [esi],edx
  7152b6:	8b 15 dc 3a 1d 01    	mov    edx,DWORD PTR ds:0x11d3adc
  7152bc:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  7152bf:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  7152c3:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  7152c6:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  7152ca:	2b c8                	sub    ecx,eax
  7152cc:	83 e1 fe             	and    ecx,0xfffffffe
  7152cf:	83 f9 02             	cmp    ecx,0x2
  7152d2:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  7152d5:	7e 0d                	jle    0x7152e4
  7152d7:	3b c5                	cmp    eax,ebp
  7152d9:	74 09                	je     0x7152e4
  7152db:	50                   	push   eax
  7152dc:	e8 ff f1 dc ff       	call   0x4e44e0
  7152e1:	83 c4 04             	add    esp,0x4
  7152e4:	5f                   	pop    edi
  7152e5:	8b c6                	mov    eax,esi
  7152e7:	5e                   	pop    esi
  7152e8:	5d                   	pop    ebp
  7152e9:	5b                   	pop    ebx
  7152ea:	83 c4 50             	add    esp,0x50
  7152ed:	c2 10 00             	ret    0x10
  7152f0:	8d 56 01             	lea    edx,[esi+0x1]
  7152f3:	52                   	push   edx
  7152f4:	68 60 b2 fa 00       	push   0xfab260
  7152f9:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  7152fd:	e8 ae fb ff ff       	call   0x714eb0
  715302:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
  715306:	8b d8                	mov    ebx,eax
  715308:	83 fb ff             	cmp    ebx,0xffffffff
  71530b:	74 3d                	je     0x71534a
  71530d:	8b 6c 24 34          	mov    ebp,DWORD PTR [esp+0x34]
  715311:	8b c5                	mov    eax,ebp
  715313:	2b c7                	sub    eax,edi
  715315:	d1 f8                	sar    eax,1
  715317:	8d 4e 03             	lea    ecx,[esi+0x3]
  71531a:	3b c8                	cmp    ecx,eax
  71531c:	77 2a                	ja     0x715348
  71531e:	68 be cd ff 00       	push   0xffcdbe
  715323:	68 b8 cd ff 00       	push   0xffcdb8
  715328:	8d 14 77             	lea    edx,[edi+esi*2]
  71532b:	55                   	push   ebp
  71532c:	52                   	push   edx
  71532d:	e8 ae 56 cf ff       	call   0x40a9e0
  715332:	83 c4 10             	add    esp,0x10
  715335:	3b c5                	cmp    eax,ebp
  715337:	74 0f                	je     0x715348
  715339:	2b c7                	sub    eax,edi
  71533b:	d1 f8                	sar    eax,1
  71533d:	83 f8 ff             	cmp    eax,0xffffffff
  715340:	74 06                	je     0x715348
  715342:	3b c3                	cmp    eax,ebx
  715344:	73 02                	jae    0x715348
  715346:	8b f3                	mov    esi,ebx
  715348:	33 ed                	xor    ebp,ebp
  71534a:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  71534e:	68 c0 cd ff 00       	push   0xffcdc0
  715353:	6a ff                	push   0xffffffff
  715355:	50                   	push   eax
  715356:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  71535a:	51                   	push   ecx
  71535b:	e8 f0 e7 dd ff       	call   0x4f3b50
  715360:	83 c4 10             	add    esp,0x10
  715363:	68 60 b2 fa 00       	push   0xfab260
  715368:	55                   	push   ebp
  715369:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  71536d:	e8 fe 4d dc ff       	call   0x4da170
  715372:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  715376:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  71537a:	52                   	push   edx
  71537b:	50                   	push   eax
  71537c:	8d 0c 77             	lea    ecx,[edi+esi*2]
  71537f:	51                   	push   ecx
  715380:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  715384:	e8 17 4a dc ff       	call   0x4d9da0
  715389:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  71538d:	8d 54 24 6c          	lea    edx,[esp+0x6c]
  715391:	52                   	push   edx
  715392:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  715396:	50                   	push   eax
  715397:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  71539b:	51                   	push   ecx
  71539c:	56                   	push   esi
  71539d:	89 6c 24 78          	mov    DWORD PTR [esp+0x78],ebp
  7153a1:	e8 4a 7b dd ff       	call   0x4ecef0
  7153a6:	8b 54 24 78          	mov    edx,DWORD PTR [esp+0x78]
  7153aa:	55                   	push   ebp
  7153ab:	55                   	push   ebp
  7153ac:	55                   	push   ebp
  7153ad:	68 82 d8 b2 00       	push   0xb2d882
  7153b2:	52                   	push   edx
  7153b3:	8d 44 24 44          	lea    eax,[esp+0x44]
  7153b7:	50                   	push   eax
  7153b8:	e8 83 9a d9 ff       	call   0x4aee40
  7153bd:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  7153c1:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  7153c5:	2b c8                	sub    ecx,eax
  7153c7:	83 e1 fe             	and    ecx,0xfffffffe
  7153ca:	83 c4 28             	add    esp,0x28
  7153cd:	83 f9 02             	cmp    ecx,0x2
  7153d0:	7e 0d                	jle    0x7153df
  7153d2:	3b c5                	cmp    eax,ebp
  7153d4:	74 09                	je     0x7153df
  7153d6:	50                   	push   eax
  7153d7:	e8 04 f1 dc ff       	call   0x4e44e0
  7153dc:	83 c4 04             	add    esp,0x4
  7153df:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  7153e3:	2b d6                	sub    edx,esi
  7153e5:	83 e2 fe             	and    edx,0xfffffffe
  7153e8:	83 fa 02             	cmp    edx,0x2
  7153eb:	7e 0d                	jle    0x7153fa
  7153ed:	3b f5                	cmp    esi,ebp
  7153ef:	74 09                	je     0x7153fa
  7153f1:	56                   	push   esi
  7153f2:	e8 e9 f0 dc ff       	call   0x4e44e0
  7153f7:	83 c4 04             	add    esp,0x4
  7153fa:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7153fe:	8d 44 24 14          	lea    eax,[esp+0x14]
  715402:	50                   	push   eax
  715403:	83 c1 08             	add    ecx,0x8
  715406:	51                   	push   ecx
  715407:	e8 d4 24 0c 00       	call   0x7d78e0
  71540c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  715410:	83 c4 08             	add    esp,0x8
  715413:	83 f8 01             	cmp    eax,0x1
  715416:	74 6e                	je     0x715486
  715418:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  71541c:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  715420:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
  715424:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  715428:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  71542c:	8d 54 24 30          	lea    edx,[esp+0x30]
  715430:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  715434:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  715438:	52                   	push   edx
  715439:	50                   	push   eax
  71543a:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
  71543e:	e8 4d 24 0c 00       	call   0x7d7890
  715443:	83 c4 08             	add    esp,0x8
  715446:	e8 35 aa d9 ff       	call   0x4afe80
  71544b:	8b 10                	mov    edx,DWORD PTR [eax]
  71544d:	8b 52 44             	mov    edx,DWORD PTR [edx+0x44]
  715450:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  715454:	51                   	push   ecx
  715455:	8b c8                	mov    ecx,eax
  715457:	ff d2                	call   edx
  715459:	85 c0                	test   eax,eax
  71545b:	74 29                	je     0x715486
  71545d:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  715461:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  715465:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  715469:	5f                   	pop    edi
  71546a:	89 08                	mov    DWORD PTR [eax],ecx
  71546c:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  715470:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  715473:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  715477:	5e                   	pop    esi
  715478:	5d                   	pop    ebp
  715479:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  71547c:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  71547f:	5b                   	pop    ebx
  715480:	83 c4 50             	add    esp,0x50
  715483:	c2 10 00             	ret    0x10
  715486:	80 7c 24 70 00       	cmp    BYTE PTR [esp+0x70],0x0
  71548b:	74 36                	je     0x7154c3
  71548d:	33 f6                	xor    esi,esi
  71548f:	33 ff                	xor    edi,edi
  715491:	33 db                	xor    ebx,ebx
  715493:	e8 e8 a9 d9 ff       	call   0x4afe80
  715498:	8b 10                	mov    edx,DWORD PTR [eax]
  71549a:	8b 52 44             	mov    edx,DWORD PTR [edx+0x44]
  71549d:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  7154a1:	51                   	push   ecx
  7154a2:	8b c8                	mov    ecx,eax
  7154a4:	ff d2                	call   edx
  7154a6:	85 c0                	test   eax,eax
  7154a8:	75 19                	jne    0x7154c3
  7154aa:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  7154ae:	89 30                	mov    DWORD PTR [eax],esi
  7154b0:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  7154b3:	5f                   	pop    edi
  7154b4:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  7154b7:	5e                   	pop    esi
  7154b8:	89 68 0c             	mov    DWORD PTR [eax+0xc],ebp
  7154bb:	5d                   	pop    ebp
  7154bc:	5b                   	pop    ebx
  7154bd:	83 c4 50             	add    esp,0x50
  7154c0:	c2 10 00             	ret    0x10
  7154c3:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  7154c7:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  7154cb:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  7154cf:	5f                   	pop    edi
  7154d0:	89 08                	mov    DWORD PTR [eax],ecx
  7154d2:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  7154d6:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  7154d9:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  7154dd:	5e                   	pop    esi
  7154de:	5d                   	pop    ebp
  7154df:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  7154e2:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  7154e5:	5b                   	pop    ebx
  7154e6:	83 c4 50             	add    esp,0x50
  7154e9:	c2 10 00             	ret    0x10
