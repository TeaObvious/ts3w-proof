# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00863a10 <.text+0x462a10>:
  863a10:	51                                              	push   ecx
  863a11:	56                                              	push   esi
  863a12:	57                                              	push   edi
  863a13:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  863a1b:	e8 50 3b 0d 00                                  	call   0x937570
  863a20:	85 c0                                           	test   eax,eax
  863a22:	0f 84 a9 00 00 00                               	je     0x863ad1
  863a28:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  863a2c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  863a30:	51                                              	push   ecx
  863a31:	52                                              	push   edx
  863a32:	8b c8                                           	mov    ecx,eax
  863a34:	e8 47 45 0d 00                                  	call   0x937f80
  863a39:	50                                              	push   eax
  863a3a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  863a3e:	e8 6d 15 01 00                                  	call   0x874fb0
  863a43:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  863a47:	85 f6                                           	test   esi,esi
  863a49:	0f 84 82 00 00 00                               	je     0x863ad1
  863a4f:	a1 70 9e 1e 01                                  	mov    eax,ds:0x11e9e70
  863a54:	50                                              	push   eax
  863a55:	8b ce                                           	mov    ecx,esi
  863a57:	e8 04 08 0d 00                                  	call   0x934260
  863a5c:	8b f8                                           	mov    edi,eax
  863a5e:	85 ff                                           	test   edi,edi
  863a60:	74 4f                                           	je     0x863ab1
  863a62:	e8 29 59 f0 ff                                  	call   0x769390
  863a67:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  863a6b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863a6d:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  863a70:	51                                              	push   ecx
  863a71:	8b c8                                           	mov    ecx,eax
  863a73:	ff d2                                           	call   edx
  863a75:	33 c9                                           	xor    ecx,ecx
  863a77:	38 4c 24 1c                                     	cmp    BYTE PTR [esp+0x1c],cl
  863a7b:	6a 00                                           	push   0x0
  863a7d:	0f 95 c1                                        	setne  cl
  863a80:	51                                              	push   ecx
  863a81:	50                                              	push   eax
  863a82:	8b cf                                           	mov    ecx,edi
  863a84:	e8 17 f9 0d 00                                  	call   0x9433a0
  863a89:	8b f8                                           	mov    edi,eax
  863a8b:	8d 46 04                                        	lea    eax,[esi+0x4]
  863a8e:	8b d0                                           	mov    edx,eax
  863a90:	83 c9 ff                                        	or     ecx,0xffffffff
  863a93:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  863a97:	49                                              	dec    ecx
  863a98:	75 11                                           	jne    0x863aab
  863a9a:	ba 01 00 00 00                                  	mov    edx,0x1
  863a9f:	87 10                                           	xchg   DWORD PTR [eax],edx
  863aa1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863aa3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863aa5:	6a 01                                           	push   0x1
  863aa7:	8b ce                                           	mov    ecx,esi
  863aa9:	ff d2                                           	call   edx
  863aab:	8b c7                                           	mov    eax,edi
  863aad:	5f                                              	pop    edi
  863aae:	5e                                              	pop    esi
  863aaf:	59                                              	pop    ecx
  863ab0:	c3                                              	ret
  863ab1:	8d 46 04                                        	lea    eax,[esi+0x4]
  863ab4:	8b c8                                           	mov    ecx,eax
  863ab6:	83 ca ff                                        	or     edx,0xffffffff
  863ab9:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  863abd:	4a                                              	dec    edx
  863abe:	75 11                                           	jne    0x863ad1
  863ac0:	b9 01 00 00 00                                  	mov    ecx,0x1
  863ac5:	87 08                                           	xchg   DWORD PTR [eax],ecx
  863ac7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863ac9:	8b 02                                           	mov    eax,DWORD PTR [edx]
  863acb:	6a 01                                           	push   0x1
  863acd:	8b ce                                           	mov    ecx,esi
  863acf:	ff d0                                           	call   eax
  863ad1:	5f                                              	pop    edi
  863ad2:	33 c0                                           	xor    eax,eax
  863ad4:	5e                                              	pop    esi
  863ad5:	59                                              	pop    ecx
  863ad6:	c3                                              	ret
