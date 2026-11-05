# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095dc50 <.text+0x55cc50>:
  95dc50:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  95dc54:	53                   	push   ebx
  95dc55:	0f b7 58 04          	movzx  ebx,WORD PTR [eax+0x4]
  95dc59:	66 83 fb 07          	cmp    bx,0x7
  95dc5d:	56                   	push   esi
  95dc5e:	57                   	push   edi
  95dc5f:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  95dc63:	8b f1                	mov    esi,ecx
  95dc65:	73 28                	jae    0x95dc8f
  95dc67:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  95dc6a:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  95dc6e:	51                   	push   ecx
  95dc6f:	52                   	push   edx
  95dc70:	e8 1b fc b7 ff       	call   0x4dd890
  95dc75:	83 c4 08             	add    esp,0x8
  95dc78:	8b cf                	mov    ecx,edi
  95dc7a:	50                   	push   eax
  95dc7b:	e8 70 9d e7 ff       	call   0x7d79f0
  95dc80:	0f b6 44 24 10       	movzx  eax,BYTE PTR [esp+0x10]
  95dc85:	0d 00 01 00 00       	or     eax,0x100
  95dc8a:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  95dc8d:	eb 25                	jmp    0x95dcb4
  95dc8f:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  95dc92:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  95dc95:	51                   	push   ecx
  95dc96:	8d 54 24 14          	lea    edx,[esp+0x14]
  95dc9a:	52                   	push   edx
  95dc9b:	50                   	push   eax
  95dc9c:	e8 3f fc b7 ff       	call   0x4dd8e0
  95dca1:	83 c4 0c             	add    esp,0xc
  95dca4:	8b cf                	mov    ecx,edi
  95dca6:	50                   	push   eax
  95dca7:	e8 44 9d e7 ff       	call   0x7d79f0
  95dcac:	0f b7 4c 24 10       	movzx  ecx,WORD PTR [esp+0x10]
  95dcb1:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  95dcb4:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  95dcb7:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  95dcba:	25 1b 99 e8 ff       	and    eax,0xffe8991b
  95dcbf:	83 c8 08             	or     eax,0x8
  95dcc2:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  95dcc5:	8b 0d fc a0 1e 01    	mov    ecx,DWORD PTR ds:0x11ea0fc
  95dccb:	85 4a 2c             	test   DWORD PTR [edx+0x2c],ecx
  95dcce:	74 06                	je     0x95dcd6
  95dcd0:	83 c8 40             	or     eax,0x40
  95dcd3:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  95dcd6:	83 4e 08 20          	or     DWORD PTR [esi+0x8],0x20
  95dcda:	66 83 fb 08          	cmp    bx,0x8
  95dcde:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  95dce1:	73 14                	jae    0x95dcf7
  95dce3:	0d 00 08 00 00       	or     eax,0x800
  95dce8:	66 83 fb 03          	cmp    bx,0x3
  95dcec:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  95dcef:	73 06                	jae    0x95dcf7
  95dcf1:	83 c8 10             	or     eax,0x10
  95dcf4:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  95dcf7:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  95dcfd:	85 c9                	test   ecx,ecx
  95dcff:	74 24                	je     0x95dd25
  95dd01:	8d 42 18             	lea    eax,[edx+0x18]
  95dd04:	50                   	push   eax
  95dd05:	e8 a6 0e 33 00       	call   0xc8ebb0
  95dd0a:	85 c0                	test   eax,eax
  95dd0c:	74 17                	je     0x95dd25
  95dd0e:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
  95dd14:	c1 ea 0d             	shr    edx,0xd
  95dd17:	f6 c2 01             	test   dl,0x1
  95dd1a:	74 09                	je     0x95dd25
  95dd1c:	81 4e 08 00 00 10 00 	or     DWORD PTR [esi+0x8],0x100000
  95dd23:	eb 07                	jmp    0x95dd2c
  95dd25:	81 66 08 ff ff ef ff 	and    DWORD PTR [esi+0x8],0xffefffff
  95dd2c:	66 83 fb 02          	cmp    bx,0x2
  95dd30:	72 1e                	jb     0x95dd50
  95dd32:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  95dd35:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  95dd38:	50                   	push   eax
  95dd39:	8d 4e 14             	lea    ecx,[esi+0x14]
  95dd3c:	51                   	push   ecx
  95dd3d:	52                   	push   edx
  95dd3e:	e8 3d fc b7 ff       	call   0x4dd980
  95dd43:	83 c4 0c             	add    esp,0xc
  95dd46:	8b cf                	mov    ecx,edi
  95dd48:	50                   	push   eax
  95dd49:	e8 a2 9c e7 ff       	call   0x7d79f0
  95dd4e:	eb 07                	jmp    0x95dd57
  95dd50:	c7 46 14 00 00 00 00 	mov    DWORD PTR [esi+0x14],0x0
  95dd57:	66 83 fb 05          	cmp    bx,0x5
  95dd5b:	72 1c                	jb     0x95dd79
  95dd5d:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  95dd60:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  95dd63:	50                   	push   eax
  95dd64:	83 c6 0c             	add    esi,0xc
  95dd67:	56                   	push   esi
  95dd68:	51                   	push   ecx
  95dd69:	e8 12 fc b7 ff       	call   0x4dd980
  95dd6e:	83 c4 0c             	add    esp,0xc
  95dd71:	8b cf                	mov    ecx,edi
  95dd73:	50                   	push   eax
  95dd74:	e8 77 9c e7 ff       	call   0x7d79f0
  95dd79:	8a 47 14             	mov    al,BYTE PTR [edi+0x14]
  95dd7c:	5f                   	pop    edi
  95dd7d:	5e                   	pop    esi
  95dd7e:	5b                   	pop    ebx
  95dd7f:	c2 08 00             	ret    0x8
