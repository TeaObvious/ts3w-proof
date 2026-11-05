# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x004f34e0 ElapsedClock_SelectCounterScale
# Complete Ghidra body [004f34e0, 004f35f8] inclusive; 72 instructions, 281 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 004F34E0_ElapsedClock_SelectCounterScale.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

004f34e0 <.text+0xf24e0>:
  4f34e0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  4f34e4:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  4f34ec:	83 ec 08                                        	sub    esp,0x8
  4f34ef:	83 f8 06                                        	cmp    eax,0x6
  4f34f2:	89 41 10                                        	mov    DWORD PTR [ecx+0x10],eax
  4f34f5:	f3 0f 11 41 14                                  	movss  DWORD PTR [ecx+0x14],xmm0
  4f34fa:	77 2f                                           	ja     0x4f352b
  4f34fc:	ff 24 85 fc 35 4f 00                            	jmp    DWORD PTR [eax*4+0x4f35fc]
  4f3503:	8b 15 f0 d9 14 01                               	mov    edx,DWORD PTR ds:0x114d9f0
  4f3509:	a1 f4 d9 14 01                                  	mov    eax,ds:0x114d9f4
  4f350e:	56                                              	push   esi
  4f350f:	8b 35 f8 d9 14 01                               	mov    esi,DWORD PTR ds:0x114d9f8
  4f3515:	3b d6                                           	cmp    edx,esi
  4f3517:	57                                              	push   edi
  4f3518:	8b 3d fc d9 14 01                               	mov    edi,DWORD PTR ds:0x114d9fc
  4f351e:	75 11                                           	jne    0x4f3531
  4f3520:	3b c7                                           	cmp    eax,edi
  4f3522:	75 0d                                           	jne    0x4f3531
  4f3524:	5f                                              	pop    edi
  4f3525:	f3 0f 11 41 14                                  	movss  DWORD PTR [ecx+0x14],xmm0
  4f352a:	5e                                              	pop    esi
  4f352b:	83 c4 08                                        	add    esp,0x8
  4f352e:	c2 04 00                                        	ret    0x4
  4f3531:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  4f3535:	8b d0                                           	mov    edx,eax
  4f3537:	25 ff ff ff 7f                                  	and    eax,0x7fffffff
  4f353c:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  4f3540:	df 6c 24 08                                     	fild   QWORD PTR [esp+0x8]
  4f3544:	81 e2 00 00 00 80                               	and    edx,0x80000000
  4f354a:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  4f354e:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  4f3556:	df 6c 24 08                                     	fild   QWORD PTR [esp+0x8]
  4f355a:	8b c7                                           	mov    eax,edi
  4f355c:	8b d7                                           	mov    edx,edi
  4f355e:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
  4f3562:	d9 e0                                           	fchs
  4f3564:	25 ff ff ff 7f                                  	and    eax,0x7fffffff
  4f3569:	de c1                                           	faddp  st(1),st
  4f356b:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  4f356f:	df 6c 24 08                                     	fild   QWORD PTR [esp+0x8]
  4f3573:	81 e2 00 00 00 80                               	and    edx,0x80000000
  4f3579:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  4f357d:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  4f3585:	df 6c 24 08                                     	fild   QWORD PTR [esp+0x8]
  4f3589:	5f                                              	pop    edi
  4f358a:	5e                                              	pop    esi
  4f358b:	d9 e0                                           	fchs
  4f358d:	de c1                                           	faddp  st(1),st
  4f358f:	de f9                                           	fdivp  st(1),st
  4f3591:	d9 59 14                                        	fstp   DWORD PTR [ecx+0x14]
  4f3594:	83 c4 08                                        	add    esp,0x8
  4f3597:	c2 04 00                                        	ret    0x4
  4f359a:	f3 0f 10 05 04 c9 1c 01                         	movss  xmm0,DWORD PTR ds:0x11cc904
  4f35a2:	f3 0f 11 41 14                                  	movss  DWORD PTR [ecx+0x14],xmm0
  4f35a7:	83 c4 08                                        	add    esp,0x8
  4f35aa:	c2 04 00                                        	ret    0x4
  4f35ad:	f3 0f 10 05 00 c9 1c 01                         	movss  xmm0,DWORD PTR ds:0x11cc900
  4f35b5:	f3 0f 11 41 14                                  	movss  DWORD PTR [ecx+0x14],xmm0
  4f35ba:	83 c4 08                                        	add    esp,0x8
  4f35bd:	c2 04 00                                        	ret    0x4
  4f35c0:	f3 0f 10 05 fc c8 1c 01                         	movss  xmm0,DWORD PTR ds:0x11cc8fc
  4f35c8:	f3 0f 11 41 14                                  	movss  DWORD PTR [ecx+0x14],xmm0
  4f35cd:	83 c4 08                                        	add    esp,0x8
  4f35d0:	c2 04 00                                        	ret    0x4
  4f35d3:	f3 0f 10 05 f8 c8 1c 01                         	movss  xmm0,DWORD PTR ds:0x11cc8f8
  4f35db:	f3 0f 11 41 14                                  	movss  DWORD PTR [ecx+0x14],xmm0
  4f35e0:	83 c4 08                                        	add    esp,0x8
  4f35e3:	c2 04 00                                        	ret    0x4
  4f35e6:	f3 0f 10 05 f4 c8 1c 01                         	movss  xmm0,DWORD PTR ds:0x11cc8f4
  4f35ee:	f3 0f 11 41 14                                  	movss  DWORD PTR [ecx+0x14],xmm0
  4f35f3:	83 c4 08                                        	add    esp,0x8
  4f35f6:	c2 04 00                                        	ret    0x4
