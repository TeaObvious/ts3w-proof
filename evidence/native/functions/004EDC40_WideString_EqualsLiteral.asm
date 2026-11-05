# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004edc40 (WideString_EqualsLiteral)
Full Ghidra function-body envelope: 0x004edc40..0x004edd07 (exclusive end)
Ghidra body ranges: [[004edc40, 004edc7c] [004edc80, 004edd06]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004edc40 <.text+0xecc40>:
  4edc40:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  4edc44:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  4edc48:	8b c1                                           	mov    eax,ecx
  4edc4a:	74 0d                                           	je     0x4edc59
  4edc4c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  4edc50:	83 c0 02                                        	add    eax,0x2
  4edc53:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  4edc57:	75 f7                                           	jne    0x4edc50
  4edc59:	56                                              	push   esi
  4edc5a:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  4edc5e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  4edc60:	8b 76 04                                        	mov    esi,DWORD PTR [esi+0x4]
  4edc63:	2b c1                                           	sub    eax,ecx
  4edc65:	2b f2                                           	sub    esi,edx
  4edc67:	d1 f8                                           	sar    eax,1
  4edc69:	d1 fe                                           	sar    esi,1
  4edc6b:	3b f0                                           	cmp    esi,eax
  4edc6d:	0f 85 90 00 00 00                               	jne    0x4edd03
  4edc73:	03 c0                                           	add    eax,eax
  4edc75:	83 f8 04                                        	cmp    eax,0x4
  4edc78:	57                                              	push   edi
  4edc79:	72 19                                           	jb     0x4edc94
  4edc7b:	eb 03                                           	jmp    0x4edc80
  4edc7d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  4edc80:	8b 32                                           	mov    esi,DWORD PTR [edx]
  4edc82:	3b 31                                           	cmp    esi,DWORD PTR [ecx]
  4edc84:	75 12                                           	jne    0x4edc98
  4edc86:	83 e8 04                                        	sub    eax,0x4
  4edc89:	83 c1 04                                        	add    ecx,0x4
  4edc8c:	83 c2 04                                        	add    edx,0x4
  4edc8f:	83 f8 04                                        	cmp    eax,0x4
  4edc92:	73 ec                                           	jae    0x4edc80
  4edc94:	85 c0                                           	test   eax,eax
  4edc96:	74 5d                                           	je     0x4edcf5
  4edc98:	0f b6 32                                        	movzx  esi,BYTE PTR [edx]
  4edc9b:	0f b6 39                                        	movzx  edi,BYTE PTR [ecx]
  4edc9e:	2b f7                                           	sub    esi,edi
  4edca0:	75 45                                           	jne    0x4edce7
  4edca2:	83 e8 01                                        	sub    eax,0x1
  4edca5:	83 c1 01                                        	add    ecx,0x1
  4edca8:	83 c2 01                                        	add    edx,0x1
  4edcab:	85 c0                                           	test   eax,eax
  4edcad:	74 46                                           	je     0x4edcf5
  4edcaf:	0f b6 32                                        	movzx  esi,BYTE PTR [edx]
  4edcb2:	0f b6 39                                        	movzx  edi,BYTE PTR [ecx]
  4edcb5:	2b f7                                           	sub    esi,edi
  4edcb7:	75 2e                                           	jne    0x4edce7
  4edcb9:	83 e8 01                                        	sub    eax,0x1
  4edcbc:	83 c1 01                                        	add    ecx,0x1
  4edcbf:	83 c2 01                                        	add    edx,0x1
  4edcc2:	85 c0                                           	test   eax,eax
  4edcc4:	74 2f                                           	je     0x4edcf5
  4edcc6:	0f b6 32                                        	movzx  esi,BYTE PTR [edx]
  4edcc9:	0f b6 39                                        	movzx  edi,BYTE PTR [ecx]
  4edccc:	2b f7                                           	sub    esi,edi
  4edcce:	75 17                                           	jne    0x4edce7
  4edcd0:	83 e8 01                                        	sub    eax,0x1
  4edcd3:	83 c1 01                                        	add    ecx,0x1
  4edcd6:	83 c2 01                                        	add    edx,0x1
  4edcd9:	85 c0                                           	test   eax,eax
  4edcdb:	74 18                                           	je     0x4edcf5
  4edcdd:	0f b6 32                                        	movzx  esi,BYTE PTR [edx]
  4edce0:	0f b6 01                                        	movzx  eax,BYTE PTR [ecx]
  4edce3:	2b f0                                           	sub    esi,eax
  4edce5:	74 0e                                           	je     0x4edcf5
  4edce7:	85 f6                                           	test   esi,esi
  4edce9:	b8 01 00 00 00                                  	mov    eax,0x1
  4edcee:	7f 07                                           	jg     0x4edcf7
  4edcf0:	83 c8 ff                                        	or     eax,0xffffffff
  4edcf3:	eb 02                                           	jmp    0x4edcf7
  4edcf5:	33 c0                                           	xor    eax,eax
  4edcf7:	85 c0                                           	test   eax,eax
  4edcf9:	5f                                              	pop    edi
  4edcfa:	75 07                                           	jne    0x4edd03
  4edcfc:	b8 01 00 00 00                                  	mov    eax,0x1
  4edd01:	5e                                              	pop    esi
  4edd02:	c3                                              	ret
  4edd03:	33 c0                                           	xor    eax,eax
  4edd05:	5e                                              	pop    esi
  4edd06:	c3                                              	ret
