# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x005673c0, 0x005674a5); analyst name AnimationSequenceController_ActivateNext.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005673c0 <.text+0x1663c0>:
  5673c0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  5673c4:	53                   	push   ebx
  5673c5:	55                   	push   ebp
  5673c6:	56                   	push   esi
  5673c7:	57                   	push   edi
  5673c8:	8b e9                	mov    ebp,ecx
  5673ca:	bb 01 00 00 00       	mov    ebx,0x1
  5673cf:	53                   	push   ebx
  5673d0:	8d 7d 50             	lea    edi,[ebp+0x50]
  5673d3:	55                   	push   ebp
  5673d4:	8b cf                	mov    ecx,edi
  5673d6:	c6 00 00             	mov    BYTE PTR [eax],0x0
  5673d9:	e8 32 f6 ff ff       	call   0x566a10
  5673de:	8d 75 30             	lea    esi,[ebp+0x30]
  5673e1:	39 36                	cmp    DWORD PTR [esi],esi
  5673e3:	0f 84 b3 00 00 00    	je     0x56749c
  5673e9:	8b 06                	mov    eax,DWORD PTR [esi]
  5673eb:	f6 40 10 04          	test   BYTE PTR [eax+0x10],0x4
  5673ef:	0f 85 a7 00 00 00    	jne    0x56749c
  5673f5:	83 c0 08             	add    eax,0x8
  5673f8:	50                   	push   eax
  5673f9:	8b cf                	mov    ecx,edi
  5673fb:	e8 00 f8 ff ff       	call   0x566c00
  567400:	8b 36                	mov    esi,DWORD PTR [esi]
  567402:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  567405:	8b 16                	mov    edx,DWORD PTR [esi]
  567407:	89 11                	mov    DWORD PTR [ecx],edx
  567409:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  56740c:	8b 06                	mov    eax,DWORD PTR [esi]
  56740e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  567411:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  567414:	85 c9                	test   ecx,ecx
  567416:	74 15                	je     0x56742d
  567418:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  56741b:	83 c0 ff             	add    eax,0xffffffff
  56741e:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  567421:	75 0a                	jne    0x56742d
  567423:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  567426:	8b 11                	mov    edx,DWORD PTR [ecx]
  567428:	8b 02                	mov    eax,DWORD PTR [edx]
  56742a:	53                   	push   ebx
  56742b:	ff d0                	call   eax
  56742d:	56                   	push   esi
  56742e:	e8 ad d0 f7 ff       	call   0x4e44e0
  567433:	83 c4 04             	add    esp,0x4
  567436:	8b cd                	mov    ecx,ebp
  567438:	e8 73 f8 ff ff       	call   0x566cb0
  56743d:	8b 37                	mov    esi,DWORD PTR [edi]
  56743f:	85 f6                	test   esi,esi
  567441:	74 03                	je     0x567446
  567443:	01 5e 04             	add    DWORD PTR [esi+0x4],ebx
  567446:	85 f6                	test   esi,esi
  567448:	8b 6f 04             	mov    ebp,DWORD PTR [edi+0x4]
  56744b:	8b 5f 08             	mov    ebx,DWORD PTR [edi+0x8]
  56744e:	74 0f                	je     0x56745f
  567450:	8b 16                	mov    edx,DWORD PTR [esi]
  567452:	d9 ee                	fldz
  567454:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  567457:	51                   	push   ecx
  567458:	8b ce                	mov    ecx,esi
  56745a:	d9 1c 24             	fstp   DWORD PTR [esp]
  56745d:	ff d0                	call   eax
  56745f:	f6 c3 02             	test   bl,0x2
  567462:	75 0f                	jne    0x567473
  567464:	55                   	push   ebp
  567465:	e8 86 fc 00 00       	call   0x5770f0
  56746a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  56746e:	83 c4 04             	add    esp,0x4
  567471:	88 01                	mov    BYTE PTR [ecx],al
  567473:	85 f6                	test   esi,esi
  567475:	74 1c                	je     0x567493
  567477:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  56747a:	83 c0 ff             	add    eax,0xffffffff
  56747d:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  567480:	75 11                	jne    0x567493
  567482:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  567489:	8b 16                	mov    edx,DWORD PTR [esi]
  56748b:	8b 02                	mov    eax,DWORD PTR [edx]
  56748d:	6a 01                	push   0x1
  56748f:	8b ce                	mov    ecx,esi
  567491:	ff d0                	call   eax
  567493:	5f                   	pop    edi
  567494:	5e                   	pop    esi
  567495:	5d                   	pop    ebp
  567496:	b0 01                	mov    al,0x1
  567498:	5b                   	pop    ebx
  567499:	c2 04 00             	ret    0x4
  56749c:	5f                   	pop    edi
  56749d:	5e                   	pop    esi
  56749e:	5d                   	pop    ebp
  56749f:	32 c0                	xor    al,al
  5674a1:	5b                   	pop    ebx
  5674a2:	c2 04 00             	ret    0x4
