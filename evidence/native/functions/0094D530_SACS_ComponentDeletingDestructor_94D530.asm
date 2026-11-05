# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x0094d530 SACS_ComponentDeletingDestructor_94D530
# Complete current Ghidra body [0094d530, 0094d579] inclusive: 24 body instructions, 74 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 0094D530_SACS_ComponentDeletingDestructor_94D530.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0094d530 <.text+0x54c530>:
  94d530:	56                                              	push   esi
  94d531:	8b f1                                           	mov    esi,ecx
  94d533:	c7 06 dc 4e 04 01                               	mov    DWORD PTR [esi],0x1044edc
  94d539:	8b 0d 40 9d 1d 01                               	mov    ecx,DWORD PTR ds:0x11d9d40
  94d53f:	56                                              	push   esi
  94d540:	e8 7b f9 ea ff                                  	call   0x7fcec0
  94d545:	6a 00                                           	push   0x0
  94d547:	8b ce                                           	mov    ecx,esi
  94d549:	e8 d2 fd ff ff                                  	call   0x94d320
  94d54e:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  94d551:	85 c0                                           	test   eax,eax
  94d553:	74 09                                           	je     0x94d55e
  94d555:	50                                              	push   eax
  94d556:	e8 85 6f b9 ff                                  	call   0x4e44e0
  94d55b:	83 c4 04                                        	add    esp,0x4
  94d55e:	f6 44 24 08 01                                  	test   BYTE PTR [esp+0x8],0x1
  94d563:	c7 06 78 42 04 01                               	mov    DWORD PTR [esi],0x1044278
  94d569:	74 09                                           	je     0x94d574
  94d56b:	56                                              	push   esi
  94d56c:	e8 6f 6f b9 ff                                  	call   0x4e44e0
  94d571:	83 c4 04                                        	add    esp,0x4
  94d574:	8b c6                                           	mov    eax,esi
  94d576:	5e                                              	pop    esi
  94d577:	c2 04 00                                        	ret    0x4
