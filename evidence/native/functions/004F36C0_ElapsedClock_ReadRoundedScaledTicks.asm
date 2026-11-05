# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x004f36c0 ElapsedClock_ReadRoundedScaledTicks
# Complete Ghidra body [004f36c0, 004f3765] inclusive; 58 instructions, 166 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 004F36C0_ElapsedClock_ReadRoundedScaledTicks.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

004f36c0 <.text+0xf26c0>:
  4f36c0:	83 ec 08                                        	sub    esp,0x8
  4f36c3:	53                                              	push   ebx
  4f36c4:	56                                              	push   esi
  4f36c5:	8b f1                                           	mov    esi,ecx
  4f36c7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  4f36c9:	0b 46 04                                        	or     eax,DWORD PTR [esi+0x4]
  4f36cc:	8b 5e 0c                                        	mov    ebx,DWORD PTR [esi+0xc]
  4f36cf:	57                                              	push   edi
  4f36d0:	8b 7e 08                                        	mov    edi,DWORD PTR [esi+0x8]
  4f36d3:	74 4e                                           	je     0x4f3723
  4f36d5:	83 7e 10 01                                     	cmp    DWORD PTR [esi+0x10],0x1
  4f36d9:	75 04                                           	jne    0x4f36df
  4f36db:	0f 31                                           	rdtsc
  4f36dd:	eb 13                                           	jmp    0x4f36f2
  4f36df:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  4f36e3:	51                                              	push   ecx
  4f36e4:	ff 15 bc 63 f9 00                               	call   DWORD PTR ds:0xf963bc
  4f36ea:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  4f36ee:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  4f36f2:	2b 06                                           	sub    eax,DWORD PTR [esi]
  4f36f4:	55                                              	push   ebp
  4f36f5:	1b 56 04                                        	sbb    edx,DWORD PTR [esi+0x4]
  4f36f8:	8b c8                                           	mov    ecx,eax
  4f36fa:	8b c2                                           	mov    eax,edx
  4f36fc:	8b 15 14 c9 1c 01                               	mov    edx,DWORD PTR ds:0x11cc914
  4f3702:	3b c2                                           	cmp    eax,edx
  4f3704:	72 16                                           	jb     0x4f371c
  4f3706:	8b 2d 10 c9 1c 01                               	mov    ebp,DWORD PTR ds:0x11cc910
  4f370c:	77 04                                           	ja     0x4f3712
  4f370e:	3b cd                                           	cmp    ecx,ebp
  4f3710:	76 0a                                           	jbe    0x4f371c
  4f3712:	2b cd                                           	sub    ecx,ebp
  4f3714:	1b c2                                           	sbb    eax,edx
  4f3716:	03 f9                                           	add    edi,ecx
  4f3718:	13 d8                                           	adc    ebx,eax
  4f371a:	eb 06                                           	jmp    0x4f3722
  4f371c:	83 c7 01                                        	add    edi,0x1
  4f371f:	83 d3 00                                        	adc    ebx,0x0
  4f3722:	5d                                              	pop    ebp
  4f3723:	8b c3                                           	mov    eax,ebx
  4f3725:	8b cb                                           	mov    ecx,ebx
  4f3727:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
  4f372b:	25 ff ff ff 7f                                  	and    eax,0x7fffffff
  4f3730:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  4f3734:	df 6c 24 0c                                     	fild   QWORD PTR [esp+0xc]
  4f3738:	81 e1 00 00 00 80                               	and    ecx,0x80000000
  4f373e:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  4f3742:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  4f374a:	df 6c 24 0c                                     	fild   QWORD PTR [esp+0xc]
  4f374e:	5f                                              	pop    edi
  4f374f:	d9 e0                                           	fchs
  4f3751:	de c1                                           	faddp  st(1),st
  4f3753:	d8 4e 14                                        	fmul   DWORD PTR [esi+0x14]
  4f3756:	5e                                              	pop    esi
  4f3757:	5b                                              	pop    ebx
  4f3758:	d8 05 68 99 f9 00                               	fadd   DWORD PTR ds:0xf99968
  4f375e:	83 c4 08                                        	add    esp,0x8
  4f3761:	e9 f0 be a8 00                                  	jmp    0xf7f656
