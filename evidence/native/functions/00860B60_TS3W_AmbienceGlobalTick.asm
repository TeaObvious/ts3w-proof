# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00860b60 (TS3W_AmbienceGlobalTick)
Complete function body: 0x00860b60..0x00860c28 (exclusive end)
Ghidra body ranges: [[00860b60, 00860c27]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00860b60 <.text+0x45fb60>:
  860b60:	56                                              	push   esi
  860b61:	8b f1                                           	mov    esi,ecx
  860b63:	80 be a8 00 00 00 00                            	cmp    BYTE PTR [esi+0xa8],0x0
  860b6a:	75 1d                                           	jne    0x860b89
  860b6c:	80 be aa 00 00 00 00                            	cmp    BYTE PTR [esi+0xaa],0x0
  860b73:	74 07                                           	je     0x860b7c
  860b75:	8b 06                                           	mov    eax,DWORD PTR [esi]
  860b77:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  860b7a:	ff d2                                           	call   edx
  860b7c:	80 be a8 00 00 00 00                            	cmp    BYTE PTR [esi+0xa8],0x0
  860b83:	0f 84 9b 00 00 00                               	je     0x860c24
  860b89:	f3 0f 10 86 b0 00 00 00                         	movss  xmm0,DWORD PTR [esi+0xb0]
  860b91:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  860b97:	f3 0f 10 8e ac 00 00 00                         	movss  xmm1,DWORD PTR [esi+0xac]
  860b9f:	0f 2f c8                                        	comiss xmm1,xmm0
  860ba2:	f3 0f 11 86 b0 00 00 00                         	movss  DWORD PTR [esi+0xb0],xmm0
  860baa:	77 78                                           	ja     0x860c24
  860bac:	8b 86 98 00 00 00                               	mov    eax,DWORD PTR [esi+0x98]
  860bb2:	39 86 94 00 00 00                               	cmp    DWORD PTR [esi+0x94],eax
  860bb8:	73 6a                                           	jae    0x860c24
  860bba:	57                                              	push   edi
  860bbb:	33 ff                                           	xor    edi,edi
  860bbd:	85 c0                                           	test   eax,eax
  860bbf:	76 62                                           	jbe    0x860c23
  860bc1:	8d 46 14                                        	lea    eax,[esi+0x14]
  860bc4:	83 38 00                                        	cmp    DWORD PTR [eax],0x0
  860bc7:	74 13                                           	je     0x860bdc
  860bc9:	83 c7 01                                        	add    edi,0x1
  860bcc:	83 c0 04                                        	add    eax,0x4
  860bcf:	3b be 98 00 00 00                               	cmp    edi,DWORD PTR [esi+0x98]
  860bd5:	72 ed                                           	jb     0x860bc4
  860bd7:	5f                                              	pop    edi
  860bd8:	5e                                              	pop    esi
  860bd9:	c2 04 00                                        	ret    0x4
  860bdc:	53                                              	push   ebx
  860bdd:	e8 1e f2 04 00                                  	call   0x8afe00
  860be2:	85 c0                                           	test   eax,eax
  860be4:	74 0d                                           	je     0x860bf3
  860be6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  860be8:	8b c8                                           	mov    ecx,eax
  860bea:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
  860bed:	ff d0                                           	call   eax
  860bef:	8b d8                                           	mov    ebx,eax
  860bf1:	eb 02                                           	jmp    0x860bf5
  860bf3:	33 db                                           	xor    ebx,ebx
  860bf5:	8b 8e a4 00 00 00                               	mov    ecx,DWORD PTR [esi+0xa4]
  860bfb:	8b 96 a0 00 00 00                               	mov    edx,DWORD PTR [esi+0xa0]
  860c01:	53                                              	push   ebx
  860c02:	51                                              	push   ecx
  860c03:	52                                              	push   edx
  860c04:	e8 77 fc ff ff                                  	call   0x860880
  860c09:	0f 57 c0                                        	xorps  xmm0,xmm0
  860c0c:	83 c4 0c                                        	add    esp,0xc
  860c0f:	89 5c be 14                                     	mov    DWORD PTR [esi+edi*4+0x14],ebx
  860c13:	83 86 94 00 00 00 01                            	add    DWORD PTR [esi+0x94],0x1
  860c1a:	f3 0f 11 86 b0 00 00 00                         	movss  DWORD PTR [esi+0xb0],xmm0
  860c22:	5b                                              	pop    ebx
  860c23:	5f                                              	pop    edi
  860c24:	5e                                              	pop    esi
  860c25:	c2 04 00                                        	ret    0x4
