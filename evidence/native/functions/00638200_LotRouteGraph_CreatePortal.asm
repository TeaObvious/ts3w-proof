# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00638200,0x0063844d); analyst name LotRouteGraph_CreatePortal.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00638200 <.text+0x237200>:
  638200:	83 ec 10             	sub    esp,0x10
  638203:	57                   	push   edi
  638204:	8b f9                	mov    edi,ecx
  638206:	80 bf 0d 01 00 00 00 	cmp    BYTE PTR [edi+0x10d],0x0
  63820d:	74 09                	je     0x638218
  63820f:	33 c0                	xor    eax,eax
  638211:	5f                   	pop    edi
  638212:	83 c4 10             	add    esp,0x10
  638215:	c2 4c 00             	ret    0x4c
  638218:	56                   	push   esi
  638219:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  63821d:	85 f6                	test   esi,esi
  63821f:	0f 84 1e 02 00 00    	je     0x638443
  638225:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  638228:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  63822b:	51                   	push   ecx
  63822c:	50                   	push   eax
  63822d:	8b cf                	mov    ecx,edi
  63822f:	e8 2c 11 ff ff       	call   0x629360
  638234:	84 c0                	test   al,al
  638236:	0f 84 07 02 00 00    	je     0x638443
  63823c:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  63823f:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  638242:	53                   	push   ebx
  638243:	55                   	push   ebp
  638244:	8d 54 24 18          	lea    edx,[esp+0x18]
  638248:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  63824c:	52                   	push   edx
  63824d:	8d 4f 48             	lea    ecx,[edi+0x48]
  638250:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  638254:	e8 77 70 ff ff       	call   0x62f2d0
  638259:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  63825d:	8b 9f c0 00 00 00    	mov    ebx,DWORD PTR [edi+0xc0]
  638263:	0f 57 c0             	xorps  xmm0,xmm0
  638266:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  63826a:	51                   	push   ecx
  63826b:	8d 54 24 18          	lea    edx,[esp+0x18]
  63826f:	52                   	push   edx
  638270:	83 ec 08             	sub    esp,0x8
  638273:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638277:	8b e8                	mov    ebp,eax
  638279:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  63827d:	8d 43 01             	lea    eax,[ebx+0x1]
  638280:	89 87 c0 00 00 00    	mov    DWORD PTR [edi+0xc0],eax
  638286:	d9 1c 24             	fstp   DWORD PTR [esp]
  638289:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  63828c:	8b 4e 48             	mov    ecx,DWORD PTR [esi+0x48]
  63828f:	50                   	push   eax
  638290:	51                   	push   ecx
  638291:	8b cf                	mov    ecx,edi
  638293:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  638297:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  63829d:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  6382a3:	e8 a8 74 ff ff       	call   0x62f750
  6382a8:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  6382ac:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  6382af:	0f 57 c0             	xorps  xmm0,xmm0
  6382b2:	8d 54 24 24          	lea    edx,[esp+0x24]
  6382b6:	52                   	push   edx
  6382b7:	8b 56 48             	mov    edx,DWORD PTR [esi+0x48]
  6382ba:	8d 44 24 38          	lea    eax,[esp+0x38]
  6382be:	50                   	push   eax
  6382bf:	83 ec 08             	sub    esp,0x8
  6382c2:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6382c6:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  6382cc:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  6382d0:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  6382d6:	d9 1c 24             	fstp   DWORD PTR [esp]
  6382d9:	51                   	push   ecx
  6382da:	52                   	push   edx
  6382db:	8b cf                	mov    ecx,edi
  6382dd:	e8 6e 74 ff ff       	call   0x62f750
  6382e2:	6a 00                	push   0x0
  6382e4:	6a 00                	push   0x0
  6382e6:	6a 00                	push   0x0
  6382e8:	6a 00                	push   0x0
  6382ea:	68 c8 d3 fe 00       	push   0xfed3c8
  6382ef:	68 80 00 00 00       	push   0x80
  6382f4:	e8 07 c2 ea ff       	call   0x4e4500
  6382f9:	83 c4 18             	add    esp,0x18
  6382fc:	85 c0                	test   eax,eax
  6382fe:	74 6f                	je     0x63836f
  638300:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  638304:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  638308:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  63830c:	51                   	push   ecx
  63830d:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  638311:	52                   	push   edx
  638312:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  638316:	51                   	push   ecx
  638317:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  63831b:	52                   	push   edx
  63831c:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  638320:	51                   	push   ecx
  638321:	51                   	push   ecx
  638322:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  638326:	d9 1c 24             	fstp   DWORD PTR [esp]
  638329:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  63832d:	52                   	push   edx
  63832e:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  638332:	51                   	push   ecx
  638333:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  638337:	83 ec 08             	sub    esp,0x8
  63833a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  63833e:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  638342:	d9 1c 24             	fstp   DWORD PTR [esp]
  638345:	52                   	push   edx
  638346:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  63834a:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  63834e:	51                   	push   ecx
  63834f:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  638353:	83 ec 08             	sub    esp,0x8
  638356:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  63835a:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  63835e:	d9 1c 24             	fstp   DWORD PTR [esp]
  638361:	53                   	push   ebx
  638362:	52                   	push   edx
  638363:	51                   	push   ecx
  638364:	8b c8                	mov    ecx,eax
  638366:	e8 65 74 01 00       	call   0x64f7d0
  63836b:	8b d8                	mov    ebx,eax
  63836d:	eb 02                	jmp    0x638371
  63836f:	33 db                	xor    ebx,ebx
  638371:	85 db                	test   ebx,ebx
  638373:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  638377:	74 08                	je     0x638381
  638379:	8b 13                	mov    edx,DWORD PTR [ebx]
  63837b:	8b 02                	mov    eax,DWORD PTR [edx]
  63837d:	8b cb                	mov    ecx,ebx
  63837f:	ff d0                	call   eax
  638381:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  638385:	85 c0                	test   eax,eax
  638387:	74 02                	je     0x63838b
  638389:	89 18                	mov    DWORD PTR [eax],ebx
  63838b:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  63838e:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  638391:	6a 12                	push   0x12
  638393:	6a 02                	push   0x2
  638395:	51                   	push   ecx
  638396:	52                   	push   edx
  638397:	e8 d4 78 19 00       	call   0x7cfc70
  63839c:	83 c4 10             	add    esp,0x10
  63839f:	84 c0                	test   al,al
  6383a1:	74 07                	je     0x6383aa
  6383a3:	66 83 4b 58 02       	or     WORD PTR [ebx+0x58],0x2
  6383a8:	eb 06                	jmp    0x6383b0
  6383aa:	66 81 63 58 fd ff    	and    WORD PTR [ebx+0x58],0xfffd
  6383b0:	80 7c 24 68 00       	cmp    BYTE PTR [esp+0x68],0x0
  6383b5:	74 07                	je     0x6383be
  6383b7:	66 83 4b 58 04       	or     WORD PTR [ebx+0x58],0x4
  6383bc:	eb 06                	jmp    0x6383c4
  6383be:	66 81 63 58 fb ff    	and    WORD PTR [ebx+0x58],0xfffb
  6383c4:	6a 01                	push   0x1
  6383c6:	53                   	push   ebx
  6383c7:	56                   	push   esi
  6383c8:	8b cf                	mov    ecx,edi
  6383ca:	e8 71 dd ff ff       	call   0x636140
  6383cf:	83 bf c8 00 00 00 00 	cmp    DWORD PTR [edi+0xc8],0x0
  6383d6:	74 0a                	je     0x6383e2
  6383d8:	8d 44 24 24          	lea    eax,[esp+0x24]
  6383dc:	50                   	push   eax
  6383dd:	8d 4d 54             	lea    ecx,[ebp+0x54]
  6383e0:	eb 08                	jmp    0x6383ea
  6383e2:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  6383e6:	51                   	push   ecx
  6383e7:	8d 4d 44             	lea    ecx,[ebp+0x44]
  6383ea:	e8 61 f0 4e 00       	call   0xb27450
  6383ef:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  6383f2:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  6383f5:	51                   	push   ecx
  6383f6:	50                   	push   eax
  6383f7:	8b cf                	mov    ecx,edi
  6383f9:	e8 c2 9e ff ff       	call   0x6322c0
  6383fe:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
  638402:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  638405:	55                   	push   ebp
  638406:	8a d8                	mov    bl,al
  638408:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  63840b:	52                   	push   edx
  63840c:	50                   	push   eax
  63840d:	8b cf                	mov    ecx,edi
  63840f:	e8 7c a1 ff ff       	call   0x632590
  638414:	84 db                	test   bl,bl
  638416:	74 0f                	je     0x638427
  638418:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  63841b:	8b 56 48             	mov    edx,DWORD PTR [esi+0x48]
  63841e:	51                   	push   ecx
  63841f:	52                   	push   edx
  638420:	8b cf                	mov    ecx,edi
  638422:	e8 e9 9e ff ff       	call   0x632310
  638427:	85 ed                	test   ebp,ebp
  638429:	74 0a                	je     0x638435
  63842b:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  63842e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  638431:	8b cd                	mov    ecx,ebp
  638433:	ff d2                	call   edx
  638435:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  638439:	5d                   	pop    ebp
  63843a:	5b                   	pop    ebx
  63843b:	5e                   	pop    esi
  63843c:	5f                   	pop    edi
  63843d:	83 c4 10             	add    esp,0x10
  638440:	c2 4c 00             	ret    0x4c
  638443:	5e                   	pop    esi
  638444:	33 c0                	xor    eax,eax
  638446:	5f                   	pop    edi
  638447:	83 c4 10             	add    esp,0x10
  63844a:	c2 4c 00             	ret    0x4c
