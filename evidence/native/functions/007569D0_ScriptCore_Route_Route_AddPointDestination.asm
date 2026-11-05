# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007569d0, 0x00756b02); analyst name Route_AddPointDestination.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007569d0 <.text+0x3559d0>:
  7569d0:	55                   	push   ebp
  7569d1:	8b ec                	mov    ebp,esp
  7569d3:	83 e4 f0             	and    esp,0xfffffff0
  7569d6:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  7569dc:	83 ec 24             	sub    esp,0x24
  7569df:	85 c9                	test   ecx,ecx
  7569e1:	53                   	push   ebx
  7569e2:	56                   	push   esi
  7569e3:	57                   	push   edi
  7569e4:	0f 84 0f 01 00 00    	je     0x756af9
  7569ea:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  7569ed:	50                   	push   eax
  7569ee:	e8 bd 4a ff ff       	call   0x74b4b0
  7569f3:	8b d8                	mov    ebx,eax
  7569f5:	85 db                	test   ebx,ebx
  7569f7:	0f 84 fc 00 00 00    	je     0x756af9
  7569fd:	8b 13                	mov    edx,DWORD PTR [ebx]
  7569ff:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  756a02:	8b cb                	mov    ecx,ebx
  756a04:	ff d0                	call   eax
  756a06:	8b cb                	mov    ecx,ebx
  756a08:	e8 f3 b8 ff ff       	call   0x752300
  756a0d:	8b f8                	mov    edi,eax
  756a0f:	85 ff                	test   edi,edi
  756a11:	0f 84 d9 00 00 00    	je     0x756af0
  756a17:	8b 17                	mov    edx,DWORD PTR [edi]
  756a19:	8b 02                	mov    eax,DWORD PTR [edx]
  756a1b:	8b cf                	mov    ecx,edi
  756a1d:	ff d0                	call   eax
  756a1f:	6a 00                	push   0x0
  756a21:	6a 00                	push   0x0
  756a23:	6a 00                	push   0x0
  756a25:	6a 00                	push   0x0
  756a27:	68 94 55 00 01       	push   0x1005594
  756a2c:	6a 50                	push   0x50
  756a2e:	e8 cd da d8 ff       	call   0x4e4500
  756a33:	83 c4 18             	add    esp,0x18
  756a36:	85 c0                	test   eax,eax
  756a38:	0f 84 a9 00 00 00    	je     0x756ae7
  756a3e:	8b c8                	mov    ecx,eax
  756a40:	e8 fb 86 ff ff       	call   0x74f140
  756a45:	8b f0                	mov    esi,eax
  756a47:	85 f6                	test   esi,esi
  756a49:	0f 84 98 00 00 00    	je     0x756ae7
  756a4f:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  756a53:	51                   	push   ecx
  756a54:	8d 4d 18             	lea    ecx,[ebp+0x18]
  756a57:	e8 f4 55 01 00       	call   0x76c050
  756a5c:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  756a5f:	8d 54 24 20          	lea    edx,[esp+0x20]
  756a63:	52                   	push   edx
  756a64:	8d 4d 24             	lea    ecx,[ebp+0x24]
  756a67:	0f 29 46 30          	movaps XMMWORD PTR [esi+0x30],xmm0
  756a6b:	e8 e0 55 01 00       	call   0x76c050
  756a70:	83 7d 14 00          	cmp    DWORD PTR [ebp+0x14],0x0
  756a74:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  756a77:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  756a7a:	0f 29 46 40          	movaps XMMWORD PTR [esi+0x40],xmm0
  756a7e:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  756a83:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  756a86:	f3 0f 11 46 2c       	movss  DWORD PTR [esi+0x2c],xmm0
  756a8b:	74 37                	je     0x756ac4
  756a8d:	e8 fe 28 01 00       	call   0x769390
  756a92:	33 c9                	xor    ecx,ecx
  756a94:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  756a98:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  756a9c:	8b 10                	mov    edx,DWORD PTR [eax]
  756a9e:	8b 52 78             	mov    edx,DWORD PTR [edx+0x78]
  756aa1:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  756aa5:	51                   	push   ecx
  756aa6:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  756aaa:	51                   	push   ecx
  756aab:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  756aae:	51                   	push   ecx
  756aaf:	8b c8                	mov    ecx,eax
  756ab1:	ff d2                	call   edx
  756ab3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  756ab7:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  756abb:	50                   	push   eax
  756abc:	51                   	push   ecx
  756abd:	8b ce                	mov    ecx,esi
  756abf:	e8 7c 52 ff ff       	call   0x74bd40
  756ac4:	56                   	push   esi
  756ac5:	8b cf                	mov    ecx,edi
  756ac7:	e8 34 86 ff ff       	call   0x74f100
  756acc:	8b 17                	mov    edx,DWORD PTR [edi]
  756ace:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  756ad1:	8b cf                	mov    ecx,edi
  756ad3:	ff d0                	call   eax
  756ad5:	8b 13                	mov    edx,DWORD PTR [ebx]
  756ad7:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  756ada:	8b cb                	mov    ecx,ebx
  756adc:	ff d0                	call   eax
  756ade:	b0 01                	mov    al,0x1
  756ae0:	5f                   	pop    edi
  756ae1:	5e                   	pop    esi
  756ae2:	5b                   	pop    ebx
  756ae3:	8b e5                	mov    esp,ebp
  756ae5:	5d                   	pop    ebp
  756ae6:	c3                   	ret
  756ae7:	8b 17                	mov    edx,DWORD PTR [edi]
  756ae9:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  756aec:	8b cf                	mov    ecx,edi
  756aee:	ff d0                	call   eax
  756af0:	8b 13                	mov    edx,DWORD PTR [ebx]
  756af2:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  756af5:	8b cb                	mov    ecx,ebx
  756af7:	ff d0                	call   eax
  756af9:	5f                   	pop    edi
  756afa:	5e                   	pop    esi
  756afb:	32 c0                	xor    al,al
  756afd:	5b                   	pop    ebx
  756afe:	8b e5                	mov    esp,ebp
  756b00:	5d                   	pop    ebp
  756b01:	c3                   	ret
