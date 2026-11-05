# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x007fcf80 SACS_QueueOrRevisitDriver_7FCF80
# Complete current Ghidra body [007fcf80, 007fcff8] inclusive: 49 body instructions, 121 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 007FCF80_SACS_QueueOrRevisitDriver_7FCF80.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007fcf80 <.text+0x3fbf80>:
  7fcf80:	56                                              	push   esi
  7fcf81:	8b f1                                           	mov    esi,ecx
  7fcf83:	80 7e 19 00                                     	cmp    BYTE PTR [esi+0x19],0x0
  7fcf87:	57                                              	push   edi
  7fcf88:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  7fcf8c:	74 15                                           	je     0x7fcfa3
  7fcf8e:	3b 7e 14                                        	cmp    edi,DWORD PTR [esi+0x14]
  7fcf91:	75 10                                           	jne    0x7fcfa3
  7fcf93:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
  7fcf98:	74 10                                           	je     0x7fcfaa
  7fcf9a:	8b cf                                           	mov    ecx,edi
  7fcf9c:	e8 6f 2e 00 00                                  	call   0x7ffe10
  7fcfa1:	eb 07                                           	jmp    0x7fcfaa
  7fcfa3:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
  7fcfa8:	75 0e                                           	jne    0x7fcfb8
  7fcfaa:	3b 7e 14                                        	cmp    edi,DWORD PTR [esi+0x14]
  7fcfad:	75 09                                           	jne    0x7fcfb8
  7fcfaf:	5f                                              	pop    edi
  7fcfb0:	c6 46 18 01                                     	mov    BYTE PTR [esi+0x18],0x1
  7fcfb4:	5e                                              	pop    esi
  7fcfb5:	c2 08 00                                        	ret    0x8
  7fcfb8:	8b 46 1c                                        	mov    eax,DWORD PTR [esi+0x1c]
  7fcfbb:	8d 4e 1c                                        	lea    ecx,[esi+0x1c]
  7fcfbe:	8b 76 20                                        	mov    esi,DWORD PTR [esi+0x20]
  7fcfc1:	3b c6                                           	cmp    eax,esi
  7fcfc3:	74 0b                                           	je     0x7fcfd0
  7fcfc5:	39 38                                           	cmp    DWORD PTR [eax],edi
  7fcfc7:	74 2b                                           	je     0x7fcff4
  7fcfc9:	83 c0 04                                        	add    eax,0x4
  7fcfcc:	3b c6                                           	cmp    eax,esi
  7fcfce:	75 f5                                           	jne    0x7fcfc5
  7fcfd0:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  7fcfd3:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  7fcfd6:	73 11                                           	jae    0x7fcfe9
  7fcfd8:	85 c0                                           	test   eax,eax
  7fcfda:	8d 50 04                                        	lea    edx,[eax+0x4]
  7fcfdd:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7fcfe0:	74 12                                           	je     0x7fcff4
  7fcfe2:	89 38                                           	mov    DWORD PTR [eax],edi
  7fcfe4:	5f                                              	pop    edi
  7fcfe5:	5e                                              	pop    esi
  7fcfe6:	c2 08 00                                        	ret    0x8
  7fcfe9:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  7fcfed:	52                                              	push   edx
  7fcfee:	50                                              	push   eax
  7fcfef:	e8 2c 54 18 00                                  	call   0x982420
  7fcff4:	5f                                              	pop    edi
  7fcff5:	5e                                              	pop    esi
  7fcff6:	c2 08 00                                        	ret    0x8
