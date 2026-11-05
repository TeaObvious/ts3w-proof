# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c8aea0, 0x00c8b042); analyst name LocationComponent_SetOwningLot.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c8aea0 <.text+0x889ea0>:
  c8aea0:	83 ec 14             	sub    esp,0x14
  c8aea3:	53                   	push   ebx
  c8aea4:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  c8aea8:	56                   	push   esi
  c8aea9:	8b f1                	mov    esi,ecx
  c8aeab:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c8aeae:	85 c9                	test   ecx,ecx
  c8aeb0:	74 1c                	je     0xc8aece
  c8aeb2:	a1 fc a0 1e 01       	mov    eax,ds:0x11ea0fc
  c8aeb7:	50                   	push   eax
  c8aeb8:	e8 a3 93 ca ff       	call   0x934260
  c8aebd:	85 c0                	test   eax,eax
  c8aebf:	74 0d                	je     0xc8aece
  c8aec1:	e8 5a e0 ff ff       	call   0xc88f20
  c8aec6:	3b d8                	cmp    ebx,eax
  c8aec8:	0f 85 5d 01 00 00    	jne    0xc8b02b
  c8aece:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c8aed1:	85 c9                	test   ecx,ecx
  c8aed3:	57                   	push   edi
  c8aed4:	c6 44 24 24 00       	mov    BYTE PTR [esp+0x24],0x0
  c8aed9:	74 43                	je     0xc8af1e
  c8aedb:	8b 15 38 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea138
  c8aee1:	52                   	push   edx
  c8aee2:	e8 79 93 ca ff       	call   0x934260
  c8aee7:	8b f8                	mov    edi,eax
  c8aee9:	85 ff                	test   edi,edi
  c8aeeb:	74 31                	je     0xc8af1e
  c8aeed:	80 bf dc 00 00 00 00 	cmp    BYTE PTR [edi+0xdc],0x0
  c8aef4:	74 0d                	je     0xc8af03
  c8aef6:	e8 25 e0 ff ff       	call   0xc88f20
  c8aefb:	3b d8                	cmp    ebx,eax
  c8aefd:	0f 85 27 01 00 00    	jne    0xc8b02a
  c8af03:	8b cf                	mov    ecx,edi
  c8af05:	e8 e6 72 cc ff       	call   0x9521f0
  c8af0a:	84 c0                	test   al,al
  c8af0c:	74 10                	je     0xc8af1e
  c8af0e:	85 db                	test   ebx,ebx
  c8af10:	74 0c                	je     0xc8af1e
  c8af12:	e8 09 e0 ff ff       	call   0xc88f20
  c8af17:	8b d8                	mov    ebx,eax
  c8af19:	c6 44 24 24 01       	mov    BYTE PTR [esp+0x24],0x1
  c8af1e:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c8af21:	e8 0a 42 a0 ff       	call   0x68f130
  c8af26:	3b d8                	cmp    ebx,eax
  c8af28:	74 3e                	je     0xc8af68
  c8af2a:	85 c0                	test   eax,eax
  c8af2c:	74 29                	je     0xc8af57
  c8af2e:	8b 48 48             	mov    ecx,DWORD PTR [eax+0x48]
  c8af31:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
  c8af34:	3b f9                	cmp    edi,ecx
  c8af36:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  c8af39:	75 07                	jne    0xc8af42
  c8af3b:	8b 7e 0c             	mov    edi,DWORD PTR [esi+0xc]
  c8af3e:	3b fa                	cmp    edi,edx
  c8af40:	74 06                	je     0xc8af48
  c8af42:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  c8af45:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  c8af48:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c8af4b:	8b 10                	mov    edx,DWORD PTR [eax]
  c8af4d:	8b 52 3c             	mov    edx,DWORD PTR [edx+0x3c]
  c8af50:	6a 00                	push   0x0
  c8af52:	51                   	push   ecx
  c8af53:	8b c8                	mov    ecx,eax
  c8af55:	ff d2                	call   edx
  c8af57:	85 db                	test   ebx,ebx
  c8af59:	74 0d                	je     0xc8af68
  c8af5b:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c8af5e:	8b 03                	mov    eax,DWORD PTR [ebx]
  c8af60:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  c8af63:	51                   	push   ecx
  c8af64:	8b cb                	mov    ecx,ebx
  c8af66:	ff d2                	call   edx
  c8af68:	55                   	push   ebp
  c8af69:	33 ff                	xor    edi,edi
  c8af6b:	33 ed                	xor    ebp,ebp
  c8af6d:	85 db                	test   ebx,ebx
  c8af6f:	74 14                	je     0xc8af85
  c8af71:	8b 03                	mov    eax,DWORD PTR [ebx]
  c8af73:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  c8af76:	8b cb                	mov    ecx,ebx
  c8af78:	ff d2                	call   edx
  c8af7a:	83 f8 01             	cmp    eax,0x1
  c8af7d:	75 06                	jne    0xc8af85
  c8af7f:	8b 7b 48             	mov    edi,DWORD PTR [ebx+0x48]
  c8af82:	8b 6b 4c             	mov    ebp,DWORD PTR [ebx+0x4c]
  c8af85:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c8af88:	3b c7                	cmp    eax,edi
  c8af8a:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c8af8d:	75 04                	jne    0xc8af93
  c8af8f:	3b cd                	cmp    ecx,ebp
  c8af91:	74 33                	je     0xc8afc6
  c8af93:	80 7c 24 28 00       	cmp    BYTE PTR [esp+0x28],0x0
  c8af98:	75 2c                	jne    0xc8afc6
  c8af9a:	0b c1                	or     eax,ecx
  c8af9c:	0f 84 91 00 00 00    	je     0xc8b033
  c8afa2:	8b c7                	mov    eax,edi
  c8afa4:	0b c5                	or     eax,ebp
  c8afa6:	75 0d                	jne    0xc8afb5
  c8afa8:	8b ce                	mov    ecx,esi
  c8afaa:	e8 71 f3 ff ff       	call   0xc8a320
  c8afaf:	8b d7                	mov    edx,edi
  c8afb1:	0b d5                	or     edx,ebp
  c8afb3:	74 09                	je     0xc8afbe
  c8afb5:	55                   	push   ebp
  c8afb6:	57                   	push   edi
  c8afb7:	8b ce                	mov    ecx,esi
  c8afb9:	e8 82 fd ff ff       	call   0xc8ad40
  c8afbe:	53                   	push   ebx
  c8afbf:	8b ce                	mov    ecx,esi
  c8afc1:	e8 ca ee ff ff       	call   0xc89e90
  c8afc6:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c8afc9:	85 c9                	test   ecx,ecx
  c8afcb:	5d                   	pop    ebp
  c8afcc:	74 5c                	je     0xc8b02a
  c8afce:	a1 14 a1 1e 01       	mov    eax,ds:0x11ea114
  c8afd3:	50                   	push   eax
  c8afd4:	e8 87 92 ca ff       	call   0x934260
  c8afd9:	85 c0                	test   eax,eax
  c8afdb:	74 4d                	je     0xc8b02a
  c8afdd:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c8afe1:	51                   	push   ecx
  c8afe2:	8b c8                	mov    ecx,eax
  c8afe4:	e8 a7 68 cc ff       	call   0x951890
  c8afe9:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c8afed:	e8 4e 5f cc ff       	call   0x950f40
  c8aff2:	84 c0                	test   al,al
  c8aff4:	74 34                	je     0xc8b02a
  c8aff6:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c8affa:	e8 c1 53 cc ff       	call   0x9503c0
  c8afff:	85 c0                	test   eax,eax
  c8b001:	74 1a                	je     0xc8b01d
  c8b003:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  c8b009:	52                   	push   edx
  c8b00a:	8b c8                	mov    ecx,eax
  c8b00c:	e8 4f 92 ca ff       	call   0x934260
  c8b011:	85 c0                	test   eax,eax
  c8b013:	74 08                	je     0xc8b01d
  c8b015:	53                   	push   ebx
  c8b016:	8b c8                	mov    ecx,eax
  c8b018:	e8 83 fe ff ff       	call   0xc8aea0
  c8b01d:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c8b021:	e8 1a 5f cc ff       	call   0x950f40
  c8b026:	84 c0                	test   al,al
  c8b028:	75 cc                	jne    0xc8aff6
  c8b02a:	5f                   	pop    edi
  c8b02b:	5e                   	pop    esi
  c8b02c:	5b                   	pop    ebx
  c8b02d:	83 c4 14             	add    esp,0x14
  c8b030:	c2 04 00             	ret    0x4
  c8b033:	8b cf                	mov    ecx,edi
  c8b035:	0b cd                	or     ecx,ebp
  c8b037:	0f 85 78 ff ff ff    	jne    0xc8afb5
  c8b03d:	e9 7c ff ff ff       	jmp    0xc8afbe
