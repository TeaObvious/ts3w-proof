# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00aea470, 0x00aea5cc); analyst name LotTerrainHeight_SampleLocalXZ.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00aea470 <.text+0x6e9470>:
  aea470:	f3 0f 10 4c 24 04    	movss  xmm1,DWORD PTR [esp+0x4]
  aea476:	0f 57 d2             	xorps  xmm2,xmm2
  aea479:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  aea47c:	83 ec 18             	sub    esp,0x18
  aea47f:	0f 2f ca             	comiss xmm1,xmm2
  aea482:	72 25                	jb     0xaea4a9
  aea484:	f3 0f 2a 80 74 01 00 00 	cvtsi2ss xmm0,DWORD PTR [eax+0x174]
  aea48c:	0f 2f c1             	comiss xmm0,xmm1
  aea48f:	72 18                	jb     0xaea4a9
  aea491:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  aea497:	0f 2f c2             	comiss xmm0,xmm2
  aea49a:	72 0d                	jb     0xaea4a9
  aea49c:	f3 0f 2a 90 78 01 00 00 	cvtsi2ss xmm2,DWORD PTR [eax+0x178]
  aea4a4:	0f 2f d0             	comiss xmm2,xmm0
  aea4a7:	73 08                	jae    0xaea4b1
  aea4a9:	d9 ee                	fldz
  aea4ab:	83 c4 18             	add    esp,0x18
  aea4ae:	c2 08 00             	ret    0x8
  aea4b1:	56                   	push   esi
  aea4b2:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  aea4b6:	db 54 24 08          	fist   DWORD PTR [esp+0x8]
  aea4ba:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
  aea4be:	de e9                	fsubp  st(1),st
  aea4c0:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  aea4c4:	81 7c 24 04 01 00 00 80 	cmp    DWORD PTR [esp+0x4],0x80000001
  aea4cc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  aea4d0:	83 d0 ff             	adc    eax,0xffffffff
  aea4d3:	8b d0                	mov    edx,eax
  aea4d5:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  aea4d9:	db 54 24 0c          	fist   DWORD PTR [esp+0xc]
  aea4dd:	db 44 24 0c          	fild   DWORD PTR [esp+0xc]
  aea4e1:	de e9                	fsubp  st(1),st
  aea4e3:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  aea4e7:	81 7c 24 20 01 00 00 80 	cmp    DWORD PTR [esp+0x20],0x80000001
  aea4ef:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  aea4f3:	83 d0 ff             	adc    eax,0xffffffff
  aea4f6:	8b 71 0c             	mov    esi,DWORD PTR [ecx+0xc]
  aea4f9:	3b d6                	cmp    edx,esi
  aea4fb:	7c 03                	jl     0xaea500
  aea4fd:	8d 56 ff             	lea    edx,[esi-0x1]
  aea500:	8b 71 10             	mov    esi,DWORD PTR [ecx+0x10]
  aea503:	3b c6                	cmp    eax,esi
  aea505:	7c 03                	jl     0xaea50a
  aea507:	8d 46 ff             	lea    eax,[esi-0x1]
  aea50a:	8b b1 c8 00 00 00    	mov    esi,DWORD PTR [ecx+0xc8]
  aea510:	53                   	push   ebx
  aea511:	8b 5e 0c             	mov    ebx,DWORD PTR [esi+0xc]
  aea514:	57                   	push   edi
  aea515:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
  aea518:	0f af fa             	imul   edi,edx
  aea51b:	8b 89 c8 00 00 00    	mov    ecx,DWORD PTR [ecx+0xc8]
  aea521:	f3 0f 2a d2          	cvtsi2ss xmm2,edx
  aea525:	f3 0f 5c ca          	subss  xmm1,xmm2
  aea529:	03 f8                	add    edi,eax
  aea52b:	f3 0f 2a d0          	cvtsi2ss xmm2,eax
  aea52f:	f3 0f 5c c2          	subss  xmm0,xmm2
  aea533:	f3 0f 10 14 bb       	movss  xmm2,DWORD PTR [ebx+edi*4]
  aea538:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
  aea53b:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  aea53e:	8d 7a 01             	lea    edi,[edx+0x1]
  aea541:	0f af df             	imul   ebx,edi
  aea544:	03 d8                	add    ebx,eax
  aea546:	0f 2f c1             	comiss xmm0,xmm1
  aea549:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  aea54f:	f3 0f 10 54 9e 04    	movss  xmm2,DWORD PTR [esi+ebx*4+0x4]
  aea555:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  aea55b:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  aea561:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  aea567:	72 32                	jb     0xaea59b
  aea569:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  aea56c:	0f af f2             	imul   esi,edx
  aea56f:	03 f0                	add    esi,eax
  aea571:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
  aea574:	5f                   	pop    edi
  aea575:	5b                   	pop    ebx
  aea576:	d9 44 b0 04          	fld    DWORD PTR [eax+esi*4+0x4]
  aea57a:	5e                   	pop    esi
  aea57b:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  aea57f:	d8 e1                	fsub   st,st(1)
  aea581:	d8 4c 24 14          	fmul   DWORD PTR [esp+0x14]
  aea585:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  aea589:	dc ea                	fsub   st(2),st
  aea58b:	d9 ca                	fxch   st(2)
  aea58d:	d8 4c 24 0c          	fmul   DWORD PTR [esp+0xc]
  aea591:	de c1                	faddp  st(1),st
  aea593:	de c1                	faddp  st(1),st
  aea595:	83 c4 18             	add    esp,0x18
  aea598:	c2 08 00             	ret    0x8
  aea59b:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  aea59e:	0f af d7             	imul   edx,edi
  aea5a1:	03 d0                	add    edx,eax
  aea5a3:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
  aea5a6:	5f                   	pop    edi
  aea5a7:	5b                   	pop    ebx
  aea5a8:	d9 04 90             	fld    DWORD PTR [eax+edx*4]
  aea5ab:	5e                   	pop    esi
  aea5ac:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  aea5b0:	d8 e1                	fsub   st,st(1)
  aea5b2:	d8 4c 24 0c          	fmul   DWORD PTR [esp+0xc]
  aea5b6:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  aea5ba:	dc ea                	fsub   st(2),st
  aea5bc:	d9 ca                	fxch   st(2)
  aea5be:	d8 4c 24 14          	fmul   DWORD PTR [esp+0x14]
  aea5c2:	de c1                	faddp  st(1),st
  aea5c4:	de c1                	faddp  st(1),st
  aea5c6:	83 c4 18             	add    esp,0x18
  aea5c9:	c2 08 00             	ret    0x8
