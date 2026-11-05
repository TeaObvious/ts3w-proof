# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068fb40 <.text+0x28eb40>:
  68fb40:	51                   	push   ecx
  68fb41:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  68fb45:	55                   	push   ebp
  68fb46:	8b 2d c8 fc 1c 01    	mov    ebp,DWORD PTR ds:0x11cfcc8
  68fb4c:	56                   	push   esi
  68fb4d:	8b 30                	mov    esi,DWORD PTR [eax]
  68fb4f:	83 7e 20 00          	cmp    DWORD PTR [esi+0x20],0x0
  68fb53:	0f 85 bd 00 00 00    	jne    0x68fc16
  68fb59:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  68fb5c:	85 c0                	test   eax,eax
  68fb5e:	0f 84 b2 00 00 00    	je     0x68fc16
  68fb64:	53                   	push   ebx
  68fb65:	57                   	push   edi
  68fb66:	50                   	push   eax
  68fb67:	8b cd                	mov    ecx,ebp
  68fb69:	e8 82 fa f7 ff       	call   0x60f5f0
  68fb6e:	b9 f4 ff ff ff       	mov    ecx,0xfffffff4
  68fb73:	33 db                	xor    ebx,ebx
  68fb75:	2b ce                	sub    ecx,esi
  68fb77:	8d 7e 0c             	lea    edi,[esi+0xc]
  68fb7a:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  68fb7e:	8b ff                	mov    edi,edi
  68fb80:	8b 47 f8             	mov    eax,DWORD PTR [edi-0x8]
  68fb83:	85 c0                	test   eax,eax
  68fb85:	74 1c                	je     0x68fba3
  68fb87:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  68fb8a:	8b 52 20             	mov    edx,DWORD PTR [edx+0x20]
  68fb8d:	03 d1                	add    edx,ecx
  68fb8f:	8b 0c 3a             	mov    ecx,DWORD PTR [edx+edi*1]
  68fb92:	8b 17                	mov    edx,DWORD PTR [edi]
  68fb94:	51                   	push   ecx
  68fb95:	52                   	push   edx
  68fb96:	50                   	push   eax
  68fb97:	53                   	push   ebx
  68fb98:	8b cd                	mov    ecx,ebp
  68fb9a:	e8 c1 fa f7 ff       	call   0x60f660
  68fb9f:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  68fba3:	83 c3 01             	add    ebx,0x1
  68fba6:	83 c7 04             	add    edi,0x4
  68fba9:	83 fb 02             	cmp    ebx,0x2
  68fbac:	72 d2                	jb     0x68fb80
  68fbae:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  68fbb1:	50                   	push   eax
  68fbb2:	8b cd                	mov    ecx,ebp
  68fbb4:	e8 77 fb f7 ff       	call   0x60f730
  68fbb9:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  68fbbd:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  68fbc0:	85 c0                	test   eax,eax
  68fbc2:	5f                   	pop    edi
  68fbc3:	5b                   	pop    ebx
  68fbc4:	74 2a                	je     0x68fbf0
  68fbc6:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  68fbc9:	8b 51 28             	mov    edx,DWORD PTR [ecx+0x28]
  68fbcc:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  68fbcf:	52                   	push   edx
  68fbd0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  68fbd3:	51                   	push   ecx
  68fbd4:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  68fbd7:	52                   	push   edx
  68fbd8:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  68fbdb:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
  68fbde:	51                   	push   ecx
  68fbdf:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
  68fbe2:	52                   	push   edx
  68fbe3:	50                   	push   eax
  68fbe4:	51                   	push   ecx
  68fbe5:	8b cd                	mov    ecx,ebp
  68fbe7:	e8 24 fc f7 ff       	call   0x60f810
  68fbec:	5e                   	pop    esi
  68fbed:	5d                   	pop    ebp
  68fbee:	59                   	pop    ecx
  68fbef:	c3                   	ret
  68fbf0:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  68fbf3:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  68fbf6:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  68fbf9:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
  68fbfc:	50                   	push   eax
  68fbfd:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  68fc00:	51                   	push   ecx
  68fc01:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  68fc04:	52                   	push   edx
  68fc05:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
  68fc08:	50                   	push   eax
  68fc09:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  68fc0c:	51                   	push   ecx
  68fc0d:	52                   	push   edx
  68fc0e:	50                   	push   eax
  68fc0f:	8b cd                	mov    ecx,ebp
  68fc11:	e8 fa fb f7 ff       	call   0x60f810
  68fc16:	5e                   	pop    esi
  68fc17:	5d                   	pop    ebp
  68fc18:	59                   	pop    ecx
  68fc19:	c3                   	ret
