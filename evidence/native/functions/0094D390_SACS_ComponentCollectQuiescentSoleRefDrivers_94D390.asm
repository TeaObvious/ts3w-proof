# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x0094d390 SACS_ComponentCollectQuiescentSoleRefDrivers_94D390
# Complete current Ghidra body [0094d390, 0094d405] inclusive: 51 body instructions, 118 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 0094D390_SACS_ComponentCollectQuiescentSoleRefDrivers_94D390.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0094d390 <.text+0x54c390>:
  94d390:	56                                              	push   esi
  94d391:	8b f1                                           	mov    esi,ecx
  94d393:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  94d396:	85 c9                                           	test   ecx,ecx
  94d398:	74 6a                                           	je     0x94d404
  94d39a:	a1 84 d4 1d 01                                  	mov    eax,ds:0x11dd484
  94d39f:	50                                              	push   eax
  94d3a0:	e8 bb 6e fe ff                                  	call   0x934260
  94d3a5:	85 c0                                           	test   eax,eax
  94d3a7:	74 5b                                           	je     0x94d404
  94d3a9:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  94d3ac:	8d 48 08                                        	lea    ecx,[eax+0x8]
  94d3af:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  94d3b2:	ff d0                                           	call   eax
  94d3b4:	85 c0                                           	test   eax,eax
  94d3b6:	74 4c                                           	je     0x94d404
  94d3b8:	55                                              	push   ebp
  94d3b9:	8b 6e 0c                                        	mov    ebp,DWORD PTR [esi+0xc]
  94d3bc:	57                                              	push   edi
  94d3bd:	8b 7e 08                                        	mov    edi,DWORD PTR [esi+0x8]
  94d3c0:	3b fd                                           	cmp    edi,ebp
  94d3c2:	74 3e                                           	je     0x94d402
  94d3c4:	53                                              	push   ebx
  94d3c5:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  94d3c7:	85 db                                           	test   ebx,ebx
  94d3c9:	74 2f                                           	je     0x94d3fa
  94d3cb:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  94d3ce:	83 f9 01                                        	cmp    ecx,0x1
  94d3d1:	75 27                                           	jne    0x94d3fa
  94d3d3:	8b cb                                           	mov    ecx,ebx
  94d3d5:	e8 86 2e eb ff                                  	call   0x800260
  94d3da:	84 c0                                           	test   al,al
  94d3dc:	74 1c                                           	je     0x94d3fa
  94d3de:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  94d3e1:	8b 42 fc                                        	mov    eax,DWORD PTR [edx-0x4]
  94d3e4:	89 07                                           	mov    DWORD PTR [edi],eax
  94d3e6:	83 46 0c fc                                     	add    DWORD PTR [esi+0xc],0xfffffffc
  94d3ea:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
  94d3ed:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  94d3f0:	8b 6e 0c                                        	mov    ebp,DWORD PTR [esi+0xc]
  94d3f3:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
  94d3f6:	ff d0                                           	call   eax
  94d3f8:	eb 03                                           	jmp    0x94d3fd
  94d3fa:	83 c7 04                                        	add    edi,0x4
  94d3fd:	3b fd                                           	cmp    edi,ebp
  94d3ff:	75 c4                                           	jne    0x94d3c5
  94d401:	5b                                              	pop    ebx
  94d402:	5f                                              	pop    edi
  94d403:	5d                                              	pop    ebp
  94d404:	5e                                              	pop    esi
  94d405:	c3                                              	ret
