# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x007fd0c0 SACS_ManagerProcessComponentAndScheduledDrivers_7FD0C0
# Complete current Ghidra body [007fd0c0, 007fd133] inclusive: 49 body instructions, 116 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 007FD0C0_SACS_ManagerProcessComponentAndScheduledDrivers_7FD0C0.c
# Stored prototype omits a stack word consumed by RET4; no prototype/storage correction is claimed.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007fd0c0 <.text+0x3fc0c0>:
  7fd0c0:	53                                              	push   ebx
  7fd0c1:	55                                              	push   ebp
  7fd0c2:	56                                              	push   esi
  7fd0c3:	8b f1                                           	mov    esi,ecx
  7fd0c5:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  7fd0c8:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  7fd0cb:	3b c1                                           	cmp    eax,ecx
  7fd0cd:	57                                              	push   edi
  7fd0ce:	74 1f                                           	je     0x7fd0ef
  7fd0d0:	8b 38                                           	mov    edi,DWORD PTR [eax]
  7fd0d2:	83 c0 04                                        	add    eax,0x4
  7fd0d5:	3b c1                                           	cmp    eax,ecx
  7fd0d7:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
  7fd0da:	75 05                                           	jne    0x7fd0e1
  7fd0dc:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7fd0de:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
  7fd0e1:	8b cf                                           	mov    ecx,edi
  7fd0e3:	e8 28 03 15 00                                  	call   0x94d410
  7fd0e8:	8b cf                                           	mov    ecx,edi
  7fd0ea:	e8 a1 02 15 00                                  	call   0x94d390
  7fd0ef:	8d 7e 1c                                        	lea    edi,[esi+0x1c]
  7fd0f2:	8d 6e 2c                                        	lea    ebp,[esi+0x2c]
  7fd0f5:	57                                              	push   edi
  7fd0f6:	8b cd                                           	mov    ecx,ebp
  7fd0f8:	e8 83 65 dd ff                                  	call   0x5d3680
  7fd0fd:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  7fd0ff:	89 4f 04                                        	mov    DWORD PTR [edi+0x4],ecx
  7fd102:	8b 7d 00                                        	mov    edi,DWORD PTR [ebp+0x0]
  7fd105:	8b 5e 30                                        	mov    ebx,DWORD PTR [esi+0x30]
  7fd108:	3b fb                                           	cmp    edi,ebx
  7fd10a:	74 1b                                           	je     0x7fd127
  7fd10c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  7fd110:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7fd112:	85 c0                                           	test   eax,eax
  7fd114:	74 0a                                           	je     0x7fd120
  7fd116:	6a 00                                           	push   0x0
  7fd118:	50                                              	push   eax
  7fd119:	8b ce                                           	mov    ecx,esi
  7fd11b:	e8 e0 fe ff ff                                  	call   0x7fd000
  7fd120:	83 c7 04                                        	add    edi,0x4
  7fd123:	3b fb                                           	cmp    edi,ebx
  7fd125:	75 e9                                           	jne    0x7fd110
  7fd127:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7fd12a:	5f                                              	pop    edi
  7fd12b:	5e                                              	pop    esi
  7fd12c:	89 55 04                                        	mov    DWORD PTR [ebp+0x4],edx
  7fd12f:	5d                                              	pop    ebp
  7fd130:	5b                                              	pop    ebx
  7fd131:	c2 04 00                                        	ret    0x4
