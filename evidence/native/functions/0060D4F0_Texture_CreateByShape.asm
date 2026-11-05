# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060d4f0 <.text+0x20c4f0>:
  60d4f0:	55                   	push   ebp
  60d4f1:	8b ec                	mov    ebp,esp
  60d4f3:	83 7d 10 01          	cmp    DWORD PTR [ebp+0x10],0x1
  60d4f7:	76 31                	jbe    0x60d52a
  60d4f9:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  60d4fc:	50                   	push   eax
  60d4fd:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  60d500:	51                   	push   ecx
  60d501:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  60d504:	52                   	push   edx
  60d505:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  60d508:	50                   	push   eax
  60d509:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  60d50c:	51                   	push   ecx
  60d50d:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  60d510:	52                   	push   edx
  60d511:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  60d514:	50                   	push   eax
  60d515:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d518:	e8 a3 cb 00 00       	call   0x61a0c0
  60d51d:	0f b6 c8             	movzx  ecx,al
  60d520:	85 c9                	test   ecx,ecx
  60d522:	75 04                	jne    0x60d528
  60d524:	32 c0                	xor    al,al
  60d526:	eb 5e                	jmp    0x60d586
  60d528:	eb 5a                	jmp    0x60d584
  60d52a:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
  60d52e:	76 29                	jbe    0x60d559
  60d530:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  60d533:	52                   	push   edx
  60d534:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  60d537:	50                   	push   eax
  60d538:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  60d53b:	51                   	push   ecx
  60d53c:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  60d53f:	52                   	push   edx
  60d540:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  60d543:	50                   	push   eax
  60d544:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d547:	e8 04 cb 00 00       	call   0x61a050
  60d54c:	0f b6 c8             	movzx  ecx,al
  60d54f:	85 c9                	test   ecx,ecx
  60d551:	75 04                	jne    0x60d557
  60d553:	32 c0                	xor    al,al
  60d555:	eb 2f                	jmp    0x60d586
  60d557:	eb 2b                	jmp    0x60d584
  60d559:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  60d55c:	52                   	push   edx
  60d55d:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  60d560:	50                   	push   eax
  60d561:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  60d564:	51                   	push   ecx
  60d565:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  60d568:	52                   	push   edx
  60d569:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  60d56c:	50                   	push   eax
  60d56d:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  60d570:	51                   	push   ecx
  60d571:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d574:	e8 e7 cd 00 00       	call   0x61a360
  60d579:	0f b6 d0             	movzx  edx,al
  60d57c:	85 d2                	test   edx,edx
  60d57e:	75 04                	jne    0x60d584
  60d580:	32 c0                	xor    al,al
  60d582:	eb 02                	jmp    0x60d586
  60d584:	b0 01                	mov    al,0x1
  60d586:	5d                   	pop    ebp
  60d587:	c3                   	ret
