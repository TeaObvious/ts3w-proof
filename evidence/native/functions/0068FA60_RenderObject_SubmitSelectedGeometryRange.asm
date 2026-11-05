# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068fa60 <.text+0x28ea60>:
  68fa60:	51                   	push   ecx
  68fa61:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  68fa65:	55                   	push   ebp
  68fa66:	8b 2d c8 fc 1c 01    	mov    ebp,DWORD PTR ds:0x11cfcc8
  68fa6c:	56                   	push   esi
  68fa6d:	8b 30                	mov    esi,DWORD PTR [eax]
  68fa6f:	83 7e 20 00          	cmp    DWORD PTR [esi+0x20],0x0
  68fa73:	0f 85 c0 00 00 00    	jne    0x68fb39
  68fa79:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  68fa7c:	85 c0                	test   eax,eax
  68fa7e:	0f 84 b5 00 00 00    	je     0x68fb39
  68fa84:	53                   	push   ebx
  68fa85:	57                   	push   edi
  68fa86:	50                   	push   eax
  68fa87:	8b cd                	mov    ecx,ebp
  68fa89:	e8 62 fb f7 ff       	call   0x60f5f0
  68fa8e:	b9 f4 ff ff ff       	mov    ecx,0xfffffff4
  68fa93:	33 db                	xor    ebx,ebx
  68fa95:	2b ce                	sub    ecx,esi
  68fa97:	8d 7e 0c             	lea    edi,[esi+0xc]
  68fa9a:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  68fa9e:	eb 04                	jmp    0x68faa4
  68faa0:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  68faa4:	8b 47 f8             	mov    eax,DWORD PTR [edi-0x8]
  68faa7:	85 c0                	test   eax,eax
  68faa9:	74 12                	je     0x68fabd
  68faab:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  68faae:	8b 52 20             	mov    edx,DWORD PTR [edx+0x20]
  68fab1:	03 d1                	add    edx,ecx
  68fab3:	8b 0c 3a             	mov    ecx,DWORD PTR [edx+edi*1]
  68fab6:	8b 17                	mov    edx,DWORD PTR [edi]
  68fab8:	51                   	push   ecx
  68fab9:	52                   	push   edx
  68faba:	50                   	push   eax
  68fabb:	eb 06                	jmp    0x68fac3
  68fabd:	6a 00                	push   0x0
  68fabf:	6a 00                	push   0x0
  68fac1:	6a 00                	push   0x0
  68fac3:	53                   	push   ebx
  68fac4:	8b cd                	mov    ecx,ebp
  68fac6:	e8 95 fb f7 ff       	call   0x60f660
  68facb:	83 c3 01             	add    ebx,0x1
  68face:	83 c7 04             	add    edi,0x4
  68fad1:	83 fb 02             	cmp    ebx,0x2
  68fad4:	72 ca                	jb     0x68faa0
  68fad6:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  68fad9:	50                   	push   eax
  68fada:	8b cd                	mov    ecx,ebp
  68fadc:	e8 4f fc f7 ff       	call   0x60f730
  68fae1:	83 7e 14 00          	cmp    DWORD PTR [esi+0x14],0x0
  68fae5:	5f                   	pop    edi
  68fae6:	5b                   	pop    ebx
  68fae7:	74 3d                	je     0x68fb26
  68fae9:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  68faed:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  68faf0:	85 c0                	test   eax,eax
  68faf2:	74 0f                	je     0x68fb03
  68faf4:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  68faf7:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  68fafa:	52                   	push   edx
  68fafb:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  68fafe:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  68fb01:	eb 0d                	jmp    0x68fb10
  68fb03:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  68fb06:	8b 4e 40             	mov    ecx,DWORD PTR [esi+0x40]
  68fb09:	8b 56 48             	mov    edx,DWORD PTR [esi+0x48]
  68fb0c:	50                   	push   eax
  68fb0d:	8b 46 44             	mov    eax,DWORD PTR [esi+0x44]
  68fb10:	51                   	push   ecx
  68fb11:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  68fb14:	52                   	push   edx
  68fb15:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  68fb18:	50                   	push   eax
  68fb19:	51                   	push   ecx
  68fb1a:	52                   	push   edx
  68fb1b:	8b cd                	mov    ecx,ebp
  68fb1d:	e8 9e fc f7 ff       	call   0x60f7c0
  68fb22:	5e                   	pop    esi
  68fb23:	5d                   	pop    ebp
  68fb24:	59                   	pop    ecx
  68fb25:	c3                   	ret
  68fb26:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  68fb29:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  68fb2c:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  68fb2f:	50                   	push   eax
  68fb30:	51                   	push   ecx
  68fb31:	52                   	push   edx
  68fb32:	8b cd                	mov    ecx,ebp
  68fb34:	e8 57 fc f7 ff       	call   0x60f790
  68fb39:	5e                   	pop    esi
  68fb3a:	5d                   	pop    ebp
  68fb3b:	59                   	pop    ecx
  68fb3c:	c3                   	ret
