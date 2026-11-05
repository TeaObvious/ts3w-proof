# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 004e2c70..004e2d15; SyncEvent_WaitUntilDeadline
  4e2c70:	56                   	push   esi
  4e2c71:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  4e2c75:	8b 06                	mov    eax,DWORD PTR [esi]
  4e2c77:	83 f8 ff             	cmp    eax,0xffffffff
  4e2c7a:	57                   	push   edi
  4e2c7b:	8b f9                	mov    edi,ecx
  4e2c7d:	74 19                	je     0x4e2c98
  4e2c7f:	85 c0                	test   eax,eax
  4e2c81:	74 15                	je     0x4e2c98
  4e2c83:	e8 b8 eb ff ff       	call   0x4e1840
  4e2c88:	8b 0e                	mov    ecx,DWORD PTR [esi]
  4e2c8a:	3b c8                	cmp    ecx,eax
  4e2c8c:	76 06                	jbe    0x4e2c94
  4e2c8e:	2b c8                	sub    ecx,eax
  4e2c90:	8b f1                	mov    esi,ecx
  4e2c92:	eb 06                	jmp    0x4e2c9a
  4e2c94:	33 f6                	xor    esi,esi
  4e2c96:	eb 02                	jmp    0x4e2c9a
  4e2c98:	8b f0                	mov    esi,eax
  4e2c9a:	80 7f 0c 00          	cmp    BYTE PTR [edi+0xc],0x0
  4e2c9e:	74 45                	je     0x4e2ce5
  4e2ca0:	53                   	push   ebx
  4e2ca1:	8d 5f 04             	lea    ebx,[edi+0x4]
  4e2ca4:	53                   	push   ebx
  4e2ca5:	ff 15 2c 62 f9 00    	call   DWORD PTR ds:0xf9622c
  4e2cab:	85 c0                	test   eax,eax
  4e2cad:	7d 22                	jge    0x4e2cd1
  4e2caf:	8b 07                	mov    eax,DWORD PTR [edi]
  4e2cb1:	56                   	push   esi
  4e2cb2:	50                   	push   eax
  4e2cb3:	ff 15 a4 61 f9 00    	call   DWORD PTR ds:0xf961a4
  4e2cb9:	85 c0                	test   eax,eax
  4e2cbb:	74 14                	je     0x4e2cd1
  4e2cbd:	6a 01                	push   0x1
  4e2cbf:	8b cf                	mov    ecx,edi
  4e2cc1:	e8 8a fe ff ff       	call   0x4e2b50
  4e2cc6:	5b                   	pop    ebx
  4e2cc7:	5f                   	pop    edi
  4e2cc8:	b8 fe ff ff ff       	mov    eax,0xfffffffe
  4e2ccd:	5e                   	pop    esi
  4e2cce:	c2 04 00             	ret    0x4
  4e2cd1:	8b 03                	mov    eax,DWORD PTR [ebx]
  4e2cd3:	33 c9                	xor    ecx,ecx
  4e2cd5:	85 c0                	test   eax,eax
  4e2cd7:	0f 9e c1             	setle  cl
  4e2cda:	5b                   	pop    ebx
  4e2cdb:	5f                   	pop    edi
  4e2cdc:	5e                   	pop    esi
  4e2cdd:	83 e9 01             	sub    ecx,0x1
  4e2ce0:	23 c1                	and    eax,ecx
  4e2ce2:	c2 04 00             	ret    0x4
  4e2ce5:	8b 17                	mov    edx,DWORD PTR [edi]
  4e2ce7:	56                   	push   esi
  4e2ce8:	52                   	push   edx
  4e2ce9:	ff 15 a4 61 f9 00    	call   DWORD PTR ds:0xf961a4
  4e2cef:	85 c0                	test   eax,eax
  4e2cf1:	75 0f                	jne    0x4e2d02
  4e2cf3:	83 c7 04             	add    edi,0x4
  4e2cf6:	57                   	push   edi
  4e2cf7:	ff 15 2c 62 f9 00    	call   DWORD PTR ds:0xf9622c
  4e2cfd:	5f                   	pop    edi
  4e2cfe:	5e                   	pop    esi
  4e2cff:	c2 04 00             	ret    0x4
  4e2d02:	33 c9                	xor    ecx,ecx
  4e2d04:	3d 02 01 00 00       	cmp    eax,0x102
  4e2d09:	0f 95 c1             	setne  cl
  4e2d0c:	5f                   	pop    edi
  4e2d0d:	5e                   	pop    esi
  4e2d0e:	83 c1 fe             	add    ecx,0xfffffffe
  4e2d11:	8b c1                	mov    eax,ecx
  4e2d13:	c2 04 00             	ret    0x4
