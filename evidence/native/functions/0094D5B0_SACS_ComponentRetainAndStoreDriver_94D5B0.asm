# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x0094d5b0 SACS_ComponentRetainAndStoreDriver_94D5B0
# Complete current Ghidra body [0094d5b0, 0094d607] inclusive: 38 body instructions, 88 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 0094D5B0_SACS_ComponentRetainAndStoreDriver_94D5B0.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0094d5b0 <.text+0x54c5b0>:
  94d5b0:	56                                              	push   esi
  94d5b1:	57                                              	push   edi
  94d5b2:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  94d5b6:	85 ff                                           	test   edi,edi
  94d5b8:	8b f1                                           	mov    esi,ecx
  94d5ba:	74 47                                           	je     0x94d603
  94d5bc:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  94d5bf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  94d5c1:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  94d5c4:	ff d2                                           	call   edx
  94d5c6:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  94d5c9:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  94d5cc:	3b c2                                           	cmp    eax,edx
  94d5ce:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  94d5d1:	74 0c                                           	je     0x94d5df
  94d5d3:	83 38 00                                        	cmp    DWORD PTR [eax],0x0
  94d5d6:	74 19                                           	je     0x94d5f1
  94d5d8:	83 c0 04                                        	add    eax,0x4
  94d5db:	3b c2                                           	cmp    eax,edx
  94d5dd:	75 f4                                           	jne    0x94d5d3
  94d5df:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  94d5e2:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  94d5e5:	73 11                                           	jae    0x94d5f8
  94d5e7:	85 c0                                           	test   eax,eax
  94d5e9:	8d 50 04                                        	lea    edx,[eax+0x4]
  94d5ec:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  94d5ef:	74 12                                           	je     0x94d603
  94d5f1:	89 38                                           	mov    DWORD PTR [eax],edi
  94d5f3:	5f                                              	pop    edi
  94d5f4:	5e                                              	pop    esi
  94d5f5:	c2 04 00                                        	ret    0x4
  94d5f8:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  94d5fc:	52                                              	push   edx
  94d5fd:	50                                              	push   eax
  94d5fe:	e8 1d 4e 03 00                                  	call   0x982420
  94d603:	5f                                              	pop    edi
  94d604:	5e                                              	pop    esi
  94d605:	c2 04 00                                        	ret    0x4
