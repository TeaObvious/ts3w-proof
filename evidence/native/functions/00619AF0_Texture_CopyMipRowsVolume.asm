# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00619af0 <.text+0x218af0>:
  619af0:	83 ec 1c             	sub    esp,0x1c
  619af3:	53                   	push   ebx
  619af4:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  619af8:	57                   	push   edi
  619af9:	6a 00                	push   0x0
  619afb:	6a 00                	push   0x0
  619afd:	8b f9                	mov    edi,ecx
  619aff:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  619b02:	8b 08                	mov    ecx,DWORD PTR [eax]
  619b04:	8d 54 24 20          	lea    edx,[esp+0x20]
  619b08:	52                   	push   edx
  619b09:	53                   	push   ebx
  619b0a:	50                   	push   eax
  619b0b:	8b 41 4c             	mov    eax,DWORD PTR [ecx+0x4c]
  619b0e:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  619b12:	ff d0                	call   eax
  619b14:	85 c0                	test   eax,eax
  619b16:	7d 0a                	jge    0x619b22
  619b18:	5f                   	pop    edi
  619b19:	32 c0                	xor    al,al
  619b1b:	5b                   	pop    ebx
  619b1c:	83 c4 1c             	add    esp,0x1c
  619b1f:	c2 10 00             	ret    0x10
  619b22:	55                   	push   ebp
  619b23:	8b 6f 18             	mov    ebp,DWORD PTR [edi+0x18]
  619b26:	56                   	push   esi
  619b27:	8b 77 14             	mov    esi,DWORD PTR [edi+0x14]
  619b2a:	8b cb                	mov    ecx,ebx
  619b2c:	d3 ee                	shr    esi,cl
  619b2e:	d3 ed                	shr    ebp,cl
  619b30:	85 f6                	test   esi,esi
  619b32:	75 05                	jne    0x619b39
  619b34:	be 01 00 00 00       	mov    esi,0x1
  619b39:	85 ed                	test   ebp,ebp
  619b3b:	75 05                	jne    0x619b42
  619b3d:	bd 01 00 00 00       	mov    ebp,0x1
  619b42:	8b 5f 24             	mov    ebx,DWORD PTR [edi+0x24]
  619b45:	d3 eb                	shr    ebx,cl
  619b47:	85 db                	test   ebx,ebx
  619b49:	75 05                	jne    0x619b50
  619b4b:	bb 01 00 00 00       	mov    ebx,0x1
  619b50:	8b 4f 28             	mov    ecx,DWORD PTR [edi+0x28]
  619b53:	51                   	push   ecx
  619b54:	e8 a7 e3 ff ff       	call   0x617f00
  619b59:	83 c4 04             	add    esp,0x4
  619b5c:	8b f8                	mov    edi,eax
  619b5e:	56                   	push   esi
  619b5f:	8b cf                	mov    ecx,edi
  619b61:	e8 5a e4 ff ff       	call   0x617fc0
  619b66:	55                   	push   ebp
  619b67:	8b cf                	mov    ecx,edi
  619b69:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  619b6d:	e8 4e e3 ff ff       	call   0x617ec0
  619b72:	85 db                	test   ebx,ebx
  619b74:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  619b78:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
  619b7c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  619b80:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  619b84:	76 49                	jbe    0x619bcf
  619b86:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  619b8a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  619b90:	85 c0                	test   eax,eax
  619b92:	8b f5                	mov    esi,ebp
  619b94:	76 26                	jbe    0x619bbc
  619b96:	8b d8                	mov    ebx,eax
  619b98:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  619b9c:	52                   	push   edx
  619b9d:	57                   	push   edi
  619b9e:	56                   	push   esi
  619b9f:	e8 e2 56 96 00       	call   0xf7f286
  619ba4:	03 74 24 2c          	add    esi,DWORD PTR [esp+0x2c]
  619ba8:	03 7c 24 44          	add    edi,DWORD PTR [esp+0x44]
  619bac:	83 c4 0c             	add    esp,0xc
  619baf:	83 eb 01             	sub    ebx,0x1
  619bb2:	75 e4                	jne    0x619b98
  619bb4:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  619bb8:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  619bbc:	03 7c 24 3c          	add    edi,DWORD PTR [esp+0x3c]
  619bc0:	03 6c 24 24          	add    ebp,DWORD PTR [esp+0x24]
  619bc4:	83 6c 24 10 01       	sub    DWORD PTR [esp+0x10],0x1
  619bc9:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  619bcd:	75 c1                	jne    0x619b90
  619bcf:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  619bd3:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  619bd6:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  619bda:	8b 08                	mov    ecx,DWORD PTR [eax]
  619bdc:	52                   	push   edx
  619bdd:	50                   	push   eax
  619bde:	8b 41 50             	mov    eax,DWORD PTR [ecx+0x50]
  619be1:	ff d0                	call   eax
  619be3:	5e                   	pop    esi
  619be4:	5d                   	pop    ebp
  619be5:	5f                   	pop    edi
  619be6:	b0 01                	mov    al,0x1
  619be8:	5b                   	pop    ebx
  619be9:	83 c4 1c             	add    esp,0x1c
  619bec:	c2 10 00             	ret    0x10
