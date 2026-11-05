# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x004f3620 ElapsedClock_StopAndAccumulate
# Complete Ghidra body [004f3620, 004f36b5] inclusive; 49 instructions, 150 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 004F3620_ElapsedClock_StopAndAccumulate.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

004f3620 <.text+0xf2620>:
  4f3620:	83 ec 08                                        	sub    esp,0x8
  4f3623:	56                                              	push   esi
  4f3624:	8b f1                                           	mov    esi,ecx
  4f3626:	8b 06                                           	mov    eax,DWORD PTR [esi]
  4f3628:	0b 46 04                                        	or     eax,DWORD PTR [esi+0x4]
  4f362b:	0f 84 80 00 00 00                               	je     0x4f36b1
  4f3631:	83 7e 10 01                                     	cmp    DWORD PTR [esi+0x10],0x1
  4f3635:	75 14                                           	jne    0x4f364b
  4f3637:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  4f363b:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  4f363f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  4f3643:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  4f3647:	0f 31                                           	rdtsc
  4f3649:	eb 13                                           	jmp    0x4f365e
  4f364b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  4f364f:	50                                              	push   eax
  4f3650:	ff 15 bc 63 f9 00                               	call   DWORD PTR ds:0xf963bc
  4f3656:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  4f365a:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  4f365e:	2b 06                                           	sub    eax,DWORD PTR [esi]
  4f3660:	57                                              	push   edi
  4f3661:	1b 56 04                                        	sbb    edx,DWORD PTR [esi+0x4]
  4f3664:	8b c8                                           	mov    ecx,eax
  4f3666:	8b c2                                           	mov    eax,edx
  4f3668:	8b 15 14 c9 1c 01                               	mov    edx,DWORD PTR ds:0x11cc914
  4f366e:	3b c2                                           	cmp    eax,edx
  4f3670:	72 29                                           	jb     0x4f369b
  4f3672:	8b 3d 10 c9 1c 01                               	mov    edi,DWORD PTR ds:0x11cc910
  4f3678:	77 04                                           	ja     0x4f367e
  4f367a:	3b cf                                           	cmp    ecx,edi
  4f367c:	76 1d                                           	jbe    0x4f369b
  4f367e:	2b cf                                           	sub    ecx,edi
  4f3680:	1b c2                                           	sbb    eax,edx
  4f3682:	01 4e 08                                        	add    DWORD PTR [esi+0x8],ecx
  4f3685:	5f                                              	pop    edi
  4f3686:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  4f368c:	11 46 0c                                        	adc    DWORD PTR [esi+0xc],eax
  4f368f:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
  4f3696:	5e                                              	pop    esi
  4f3697:	83 c4 08                                        	add    esp,0x8
  4f369a:	c3                                              	ret
  4f369b:	83 46 08 01                                     	add    DWORD PTR [esi+0x8],0x1
  4f369f:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  4f36a5:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
  4f36ac:	83 56 0c 00                                     	adc    DWORD PTR [esi+0xc],0x0
  4f36b0:	5f                                              	pop    edi
  4f36b1:	5e                                              	pop    esi
  4f36b2:	83 c4 08                                        	add    esp,0x8
  4f36b5:	c3                                              	ret
