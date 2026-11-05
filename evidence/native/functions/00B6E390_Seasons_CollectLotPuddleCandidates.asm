# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00b6e390, 0x00b6e505).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_CollectLotPuddleCandidates (analyst-assigned)
Entry: 0x00b6e390
Ghidra body envelope: 0x00b6e390..0x00b6e504 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00b6e390 <.text+0x76d390>:
  b6e390:	55                   	push   ebp
  b6e391:	8b ec                	mov    ebp,esp
  b6e393:	83 e4 f0             	and    esp,0xfffffff0
  b6e396:	83 ec 44             	sub    esp,0x44
  b6e399:	53                   	push   ebx
  b6e39a:	56                   	push   esi
  b6e39b:	8b f1                	mov    esi,ecx
  b6e39d:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  b6e3a1:	57                   	push   edi
  b6e3a2:	0f 85 56 01 00 00    	jne    0xb6e4fe
  b6e3a8:	80 7e 38 00          	cmp    BYTE PTR [esi+0x38],0x0
  b6e3ac:	0f 85 4c 01 00 00    	jne    0xb6e4fe
  b6e3b2:	c6 46 38 01          	mov    BYTE PTR [esi+0x38],0x1
  b6e3b6:	a1 c4 db 1e 01       	mov    eax,ds:0x11edbc4
  b6e3bb:	8b 78 74             	mov    edi,DWORD PTR [eax+0x74]
  b6e3be:	68 00 80 00 00       	push   0x8000
  b6e3c3:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  b6e3c8:	e8 d3 59 9b ff       	call   0x523da0
  b6e3cd:	84 c0                	test   al,al
  b6e3cf:	0f 84 29 01 00 00    	je     0xb6e4fe
  b6e3d5:	85 ff                	test   edi,edi
  b6e3d7:	0f 84 21 01 00 00    	je     0xb6e4fe
  b6e3dd:	83 7e 34 00          	cmp    DWORD PTR [esi+0x34],0x0
  b6e3e1:	0f 84 17 01 00 00    	je     0xb6e4fe
  b6e3e7:	8d 4e 04             	lea    ecx,[esi+0x4]
  b6e3ea:	e8 61 4f c2 ff       	call   0x793350
  b6e3ef:	8b 5e 34             	mov    ebx,DWORD PTR [esi+0x34]
  b6e3f2:	8b cb                	mov    ecx,ebx
  b6e3f4:	e8 c7 67 ab ff       	call   0x624bc0
  b6e3f9:	84 c0                	test   al,al
  b6e3fb:	0f 85 fd 00 00 00    	jne    0xb6e4fe
  b6e401:	38 83 bc 04 00 00    	cmp    BYTE PTR [ebx+0x4bc],al
  b6e407:	0f 85 f1 00 00 00    	jne    0xb6e4fe
  b6e40d:	53                   	push   ebx
  b6e40e:	6a 00                	push   0x0
  b6e410:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b6e414:	e8 17 81 f8 ff       	call   0xaf6530
  b6e419:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b6e41d:	e8 6e 80 f8 ff       	call   0xaf6490
  b6e422:	84 c0                	test   al,al
  b6e424:	0f 85 d4 00 00 00    	jne    0xb6e4fe
  b6e42a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  b6e430:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b6e434:	e8 a7 80 f8 ff       	call   0xaf64e0
  b6e439:	0f be 48 01          	movsx  ecx,BYTE PTR [eax+0x1]
  b6e43d:	0f be 10             	movsx  edx,BYTE PTR [eax]
  b6e440:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  b6e444:	0f be 48 02          	movsx  ecx,BYTE PTR [eax+0x2]
  b6e448:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  b6e44b:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  b6e44f:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  b6e453:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  b6e457:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  b6e45d:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  b6e463:	51                   	push   ecx
  b6e464:	8b 88 90 02 00 00    	mov    ecx,DWORD PTR [eax+0x290]
  b6e46a:	e8 21 e2 f1 ff       	call   0xa8c690
  b6e46f:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  b6e473:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [esp+0x28]
  b6e479:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  b6e47f:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  b6e482:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  b6e488:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  b6e48e:	8d 54 24 40          	lea    edx,[esp+0x40]
  b6e492:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  b6e498:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  b6e49e:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  b6e4a4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  b6e4a9:	52                   	push   edx
  b6e4aa:	8b c2                	mov    eax,edx
  b6e4ac:	50                   	push   eax
  b6e4ad:	0f 29 44 24 48       	movaps XMMWORD PTR [esp+0x48],xmm0
  b6e4b2:	e8 89 8b f4 ff       	call   0xab7040
  b6e4b7:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  b6e4ba:	6a 01                	push   0x1
  b6e4bc:	6a 00                	push   0x0
  b6e4be:	51                   	push   ecx
  b6e4bf:	8d 54 24 4c          	lea    edx,[esp+0x4c]
  b6e4c3:	52                   	push   edx
  b6e4c4:	8b cf                	mov    ecx,edi
  b6e4c6:	e8 25 fb 1f 00       	call   0xd6dff0
  b6e4cb:	84 c0                	test   al,al
  b6e4cd:	74 15                	je     0xb6e4e4
  b6e4cf:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  b6e4d2:	8d 44 24 24          	lea    eax,[esp+0x24]
  b6e4d6:	50                   	push   eax
  b6e4d7:	8d 46 04             	lea    eax,[esi+0x4]
  b6e4da:	50                   	push   eax
  b6e4db:	51                   	push   ecx
  b6e4dc:	e8 3f 9e f8 ff       	call   0xaf8320
  b6e4e1:	83 c4 0c             	add    esp,0xc
  b6e4e4:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b6e4e8:	e8 23 81 f8 ff       	call   0xaf6610
  b6e4ed:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b6e4f1:	e8 9a 7f f8 ff       	call   0xaf6490
  b6e4f6:	84 c0                	test   al,al
  b6e4f8:	0f 84 32 ff ff ff    	je     0xb6e430
  b6e4fe:	5f                   	pop    edi
  b6e4ff:	5e                   	pop    esi
  b6e500:	5b                   	pop    ebx
  b6e501:	8b e5                	mov    esp,ebp
  b6e503:	5d                   	pop    ebp
  b6e504:	c3                   	ret
