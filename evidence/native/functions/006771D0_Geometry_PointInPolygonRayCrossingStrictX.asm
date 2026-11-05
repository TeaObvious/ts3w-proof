# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x006771d0, 0x0067741e); analyst name Geometry_PointInPolygonRayCrossingStrictX.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006771d0 <.text+0x2761d0>:
  6771d0:	51                   	push   ecx
  6771d1:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  6771d5:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  6771d8:	53                   	push   ebx
  6771d9:	55                   	push   ebp
  6771da:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  6771de:	56                   	push   esi
  6771df:	8b 30                	mov    esi,DWORD PTR [eax]
  6771e1:	2b ce                	sub    ecx,esi
  6771e3:	c1 f9 03             	sar    ecx,0x3
  6771e6:	57                   	push   edi
  6771e7:	33 ff                	xor    edi,edi
  6771e9:	83 f9 04             	cmp    ecx,0x4
  6771ec:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  6771f0:	8d 51 ff             	lea    edx,[ecx-0x1]
  6771f3:	0f 8c 87 01 00 00    	jl     0x677380
  6771f9:	f3 0f 10 45 04       	movss  xmm0,DWORD PTR [ebp+0x4]
  6771fe:	8d 1c d5 00 00 00 00 	lea    ebx,[edx*8+0x0]
  677205:	ba 04 00 00 00       	mov    edx,0x4
  67720a:	2b d6                	sub    edx,esi
  67720c:	8d 46 14             	lea    eax,[esi+0x14]
  67720f:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  677213:	f3 0f 10 48 f0       	movss  xmm1,DWORD PTR [eax-0x10]
  677218:	0f 2f c1             	comiss xmm0,xmm1
  67721b:	72 0b                	jb     0x677228
  67721d:	f3 0f 10 54 33 04    	movss  xmm2,DWORD PTR [ebx+esi*1+0x4]
  677223:	0f 2f d0             	comiss xmm2,xmm0
  677226:	77 10                	ja     0x677238
  677228:	f3 0f 10 54 33 04    	movss  xmm2,DWORD PTR [ebx+esi*1+0x4]
  67722e:	0f 2f c2             	comiss xmm0,xmm2
  677231:	72 3d                	jb     0x677270
  677233:	0f 2f c8             	comiss xmm1,xmm0
  677236:	76 38                	jbe    0x677270
  677238:	f3 0f 10 58 ec       	movss  xmm3,DWORD PTR [eax-0x14]
  67723d:	f3 0f 10 2c 33       	movss  xmm5,DWORD PTR [ebx+esi*1]
  677242:	0f 28 e0             	movaps xmm4,xmm0
  677245:	f3 0f 5c e1          	subss  xmm4,xmm1
  677249:	f3 0f 5c eb          	subss  xmm5,xmm3
  67724d:	f3 0f 59 e5          	mulss  xmm4,xmm5
  677251:	f3 0f 5c d1          	subss  xmm2,xmm1
  677255:	f3 0f 5e e2          	divss  xmm4,xmm2
  677259:	f3 0f 58 e3          	addss  xmm4,xmm3
  67725d:	0f 2f 65 00          	comiss xmm4,DWORD PTR [ebp+0x0]
  677261:	76 0d                	jbe    0x677270
  677263:	33 d2                	xor    edx,edx
  677265:	39 54 24 18          	cmp    DWORD PTR [esp+0x18],edx
  677269:	0f 94 c2             	sete   dl
  67726c:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  677270:	f3 0f 10 50 f8       	movss  xmm2,DWORD PTR [eax-0x8]
  677275:	0f 2f c2             	comiss xmm0,xmm2
  677278:	72 05                	jb     0x67727f
  67727a:	0f 2f c8             	comiss xmm1,xmm0
  67727d:	77 0a                	ja     0x677289
  67727f:	0f 2f c1             	comiss xmm0,xmm1
  677282:	72 3d                	jb     0x6772c1
  677284:	0f 2f d0             	comiss xmm2,xmm0
  677287:	76 38                	jbe    0x6772c1
  677289:	f3 0f 10 58 f4       	movss  xmm3,DWORD PTR [eax-0xc]
  67728e:	f3 0f 10 60 ec       	movss  xmm4,DWORD PTR [eax-0x14]
  677293:	f3 0f 5c e3          	subss  xmm4,xmm3
  677297:	0f 28 e8             	movaps xmm5,xmm0
  67729a:	f3 0f 5c ea          	subss  xmm5,xmm2
  67729e:	f3 0f 59 e5          	mulss  xmm4,xmm5
  6772a2:	f3 0f 5c ca          	subss  xmm1,xmm2
  6772a6:	f3 0f 5e e1          	divss  xmm4,xmm1
  6772aa:	f3 0f 58 e3          	addss  xmm4,xmm3
  6772ae:	0f 2f 65 00          	comiss xmm4,DWORD PTR [ebp+0x0]
  6772b2:	76 0d                	jbe    0x6772c1
  6772b4:	33 d2                	xor    edx,edx
  6772b6:	39 54 24 18          	cmp    DWORD PTR [esp+0x18],edx
  6772ba:	0f 94 c2             	sete   dl
  6772bd:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  6772c1:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  6772c5:	0f 2f c1             	comiss xmm0,xmm1
  6772c8:	72 05                	jb     0x6772cf
  6772ca:	0f 2f d0             	comiss xmm2,xmm0
  6772cd:	77 0a                	ja     0x6772d9
  6772cf:	0f 2f c2             	comiss xmm0,xmm2
  6772d2:	72 3d                	jb     0x677311
  6772d4:	0f 2f c8             	comiss xmm1,xmm0
  6772d7:	76 38                	jbe    0x677311
  6772d9:	f3 0f 10 58 fc       	movss  xmm3,DWORD PTR [eax-0x4]
  6772de:	f3 0f 10 60 f4       	movss  xmm4,DWORD PTR [eax-0xc]
  6772e3:	f3 0f 5c e3          	subss  xmm4,xmm3
  6772e7:	0f 28 e8             	movaps xmm5,xmm0
  6772ea:	f3 0f 5c e9          	subss  xmm5,xmm1
  6772ee:	f3 0f 59 e5          	mulss  xmm4,xmm5
  6772f2:	f3 0f 5c d1          	subss  xmm2,xmm1
  6772f6:	f3 0f 5e e2          	divss  xmm4,xmm2
  6772fa:	f3 0f 58 e3          	addss  xmm4,xmm3
  6772fe:	0f 2f 65 00          	comiss xmm4,DWORD PTR [ebp+0x0]
  677302:	76 0d                	jbe    0x677311
  677304:	33 d2                	xor    edx,edx
  677306:	39 54 24 18          	cmp    DWORD PTR [esp+0x18],edx
  67730a:	0f 94 c2             	sete   dl
  67730d:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  677311:	f3 0f 10 58 08       	movss  xmm3,DWORD PTR [eax+0x8]
  677316:	0f 2f c3             	comiss xmm0,xmm3
  677319:	72 05                	jb     0x677320
  67731b:	0f 2f c8             	comiss xmm1,xmm0
  67731e:	77 0a                	ja     0x67732a
  677320:	0f 2f c1             	comiss xmm0,xmm1
  677323:	72 3d                	jb     0x677362
  677325:	0f 2f d8             	comiss xmm3,xmm0
  677328:	76 38                	jbe    0x677362
  67732a:	f3 0f 10 50 04       	movss  xmm2,DWORD PTR [eax+0x4]
  67732f:	f3 0f 10 60 fc       	movss  xmm4,DWORD PTR [eax-0x4]
  677334:	f3 0f 5c e2          	subss  xmm4,xmm2
  677338:	0f 28 e8             	movaps xmm5,xmm0
  67733b:	f3 0f 5c eb          	subss  xmm5,xmm3
  67733f:	f3 0f 59 e5          	mulss  xmm4,xmm5
  677343:	f3 0f 5c cb          	subss  xmm1,xmm3
  677347:	f3 0f 5e e1          	divss  xmm4,xmm1
  67734b:	f3 0f 58 e2          	addss  xmm4,xmm2
  67734f:	0f 2f 65 00          	comiss xmm4,DWORD PTR [ebp+0x0]
  677353:	76 0d                	jbe    0x677362
  677355:	33 d2                	xor    edx,edx
  677357:	39 54 24 18          	cmp    DWORD PTR [esp+0x18],edx
  67735b:	0f 94 c2             	sete   dl
  67735e:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  677362:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  677366:	8d 57 03             	lea    edx,[edi+0x3]
  677369:	03 d8                	add    ebx,eax
  67736b:	8d 69 fd             	lea    ebp,[ecx-0x3]
  67736e:	83 c7 04             	add    edi,0x4
  677371:	83 c0 20             	add    eax,0x20
  677374:	3b fd                	cmp    edi,ebp
  677376:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  67737a:	0f 8c 93 fe ff ff    	jl     0x677213
  677380:	3b f9                	cmp    edi,ecx
  677382:	0f 8d 85 00 00 00    	jge    0x67740d
  677388:	f3 0f 10 4d 04       	movss  xmm1,DWORD PTR [ebp+0x4]
  67738d:	03 d2                	add    edx,edx
  67738f:	03 d2                	add    edx,edx
  677391:	bb fc ff ff ff       	mov    ebx,0xfffffffc
  677396:	03 d2                	add    edx,edx
  677398:	2b de                	sub    ebx,esi
  67739a:	2b cf                	sub    ecx,edi
  67739c:	8d 44 fe 04          	lea    eax,[esi+edi*8+0x4]
  6773a0:	8b f9                	mov    edi,ecx
  6773a2:	f3 0f 10 10          	movss  xmm2,DWORD PTR [eax]
  6773a6:	0f 2f ca             	comiss xmm1,xmm2
  6773a9:	72 0b                	jb     0x6773b6
  6773ab:	f3 0f 10 44 32 04    	movss  xmm0,DWORD PTR [edx+esi*1+0x4]
  6773b1:	0f 2f c1             	comiss xmm0,xmm1
  6773b4:	77 10                	ja     0x6773c6
  6773b6:	f3 0f 10 44 32 04    	movss  xmm0,DWORD PTR [edx+esi*1+0x4]
  6773bc:	0f 2f c8             	comiss xmm1,xmm0
  6773bf:	72 41                	jb     0x677402
  6773c1:	0f 2f d1             	comiss xmm2,xmm1
  6773c4:	76 3c                	jbe    0x677402
  6773c6:	f3 0f 10 10          	movss  xmm2,DWORD PTR [eax]
  6773ca:	f3 0f 10 58 fc       	movss  xmm3,DWORD PTR [eax-0x4]
  6773cf:	f3 0f 10 2c 32       	movss  xmm5,DWORD PTR [edx+esi*1]
  6773d4:	0f 28 e1             	movaps xmm4,xmm1
  6773d7:	f3 0f 5c e2          	subss  xmm4,xmm2
  6773db:	f3 0f 5c eb          	subss  xmm5,xmm3
  6773df:	f3 0f 59 e5          	mulss  xmm4,xmm5
  6773e3:	f3 0f 5c c2          	subss  xmm0,xmm2
  6773e7:	f3 0f 5e e0          	divss  xmm4,xmm0
  6773eb:	f3 0f 58 e3          	addss  xmm4,xmm3
  6773ef:	0f 2f 65 00          	comiss xmm4,DWORD PTR [ebp+0x0]
  6773f3:	76 0d                	jbe    0x677402
  6773f5:	33 c9                	xor    ecx,ecx
  6773f7:	39 4c 24 18          	cmp    DWORD PTR [esp+0x18],ecx
  6773fb:	0f 94 c1             	sete   cl
  6773fe:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  677402:	8d 14 03             	lea    edx,[ebx+eax*1]
  677405:	83 c0 08             	add    eax,0x8
  677408:	83 ef 01             	sub    edi,0x1
  67740b:	75 95                	jne    0x6773a2
  67740d:	5f                   	pop    edi
  67740e:	33 c0                	xor    eax,eax
  677410:	39 44 24 14          	cmp    DWORD PTR [esp+0x14],eax
  677414:	5e                   	pop    esi
  677415:	5d                   	pop    ebp
  677416:	0f 95 c0             	setne  al
  677419:	5b                   	pop    ebx
  67741a:	59                   	pop    ecx
  67741b:	c2 08 00             	ret    0x8
