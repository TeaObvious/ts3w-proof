# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00b5cba0, 0x00b5ce1a); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00b5cba0 <.text+0x75bba0>:
  b5cba0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  b5cba4:	83 ec 1c             	sub    esp,0x1c
  b5cba7:	85 c0                	test   eax,eax
  b5cba9:	57                   	push   edi
  b5cbaa:	8b f9                	mov    edi,ecx
  b5cbac:	0f 84 61 02 00 00    	je     0xb5ce13
  b5cbb2:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  b5cbb6:	53                   	push   ebx
  b5cbb7:	56                   	push   esi
  b5cbb8:	51                   	push   ecx
  b5cbb9:	50                   	push   eax
  b5cbba:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b5cbbe:	e8 1d c8 c7 ff       	call   0x7d93e0
  b5cbc3:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  b5cbc7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  b5cbcb:	52                   	push   edx
  b5cbcc:	6a 03                	push   0x3
  b5cbce:	50                   	push   eax
  b5cbcf:	e8 8c 14 98 ff       	call   0x4de060
  b5cbd4:	83 c4 0c             	add    esp,0xc
  b5cbd7:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5cbdb:	50                   	push   eax
  b5cbdc:	e8 0f ae c7 ff       	call   0x7d79f0
  b5cbe1:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  b5cbe5:	8b 07                	mov    eax,DWORD PTR [edi]
  b5cbe7:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  b5cbeb:	51                   	push   ecx
  b5cbec:	50                   	push   eax
  b5cbed:	52                   	push   edx
  b5cbee:	e8 6d 14 98 ff       	call   0x4de060
  b5cbf3:	83 c4 0c             	add    esp,0xc
  b5cbf6:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5cbfa:	50                   	push   eax
  b5cbfb:	e8 f0 ad c7 ff       	call   0x7d79f0
  b5cc00:	33 db                	xor    ebx,ebx
  b5cc02:	39 1f                	cmp    DWORD PTR [edi],ebx
  b5cc04:	0f 86 0d 01 00 00    	jbe    0xb5cd17
  b5cc0a:	55                   	push   ebp
  b5cc0b:	33 ed                	xor    ebp,ebp
  b5cc0d:	8d 49 00             	lea    ecx,[ecx+0x0]
  b5cc10:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  b5cc14:	8b 30                	mov    esi,DWORD PTR [eax]
  b5cc16:	0f b7 04 2e          	movzx  eax,WORD PTR [esi+ebp*1]
  b5cc1a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  b5cc1e:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b5cc22:	03 f5                	add    esi,ebp
  b5cc24:	51                   	push   ecx
  b5cc25:	50                   	push   eax
  b5cc26:	52                   	push   edx
  b5cc27:	e8 f4 12 98 ff       	call   0x4ddf20
  b5cc2c:	83 c4 0c             	add    esp,0xc
  b5cc2f:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5cc33:	50                   	push   eax
  b5cc34:	e8 b7 ad c7 ff       	call   0x7d79f0
  b5cc39:	0f b7 46 02          	movzx  eax,WORD PTR [esi+0x2]
  b5cc3d:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  b5cc41:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b5cc45:	51                   	push   ecx
  b5cc46:	50                   	push   eax
  b5cc47:	52                   	push   edx
  b5cc48:	e8 d3 12 98 ff       	call   0x4ddf20
  b5cc4d:	83 c4 0c             	add    esp,0xc
  b5cc50:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5cc54:	50                   	push   eax
  b5cc55:	e8 96 ad c7 ff       	call   0x7d79f0
  b5cc5a:	0f b7 46 04          	movzx  eax,WORD PTR [esi+0x4]
  b5cc5e:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  b5cc62:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b5cc66:	51                   	push   ecx
  b5cc67:	50                   	push   eax
  b5cc68:	52                   	push   edx
  b5cc69:	e8 b2 12 98 ff       	call   0x4ddf20
  b5cc6e:	83 c4 0c             	add    esp,0xc
  b5cc71:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5cc75:	50                   	push   eax
  b5cc76:	e8 75 ad c7 ff       	call   0x7d79f0
  b5cc7b:	0f b7 46 06          	movzx  eax,WORD PTR [esi+0x6]
  b5cc7f:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  b5cc83:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b5cc87:	51                   	push   ecx
  b5cc88:	50                   	push   eax
  b5cc89:	52                   	push   edx
  b5cc8a:	e8 91 12 98 ff       	call   0x4ddf20
  b5cc8f:	83 c4 0c             	add    esp,0xc
  b5cc92:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5cc96:	50                   	push   eax
  b5cc97:	e8 54 ad c7 ff       	call   0x7d79f0
  b5cc9c:	0f b6 46 08          	movzx  eax,BYTE PTR [esi+0x8]
  b5cca0:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b5cca4:	88 44 24 34          	mov    BYTE PTR [esp+0x34],al
  b5cca8:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  b5ccac:	51                   	push   ecx
  b5ccad:	52                   	push   edx
  b5ccae:	e8 7d 11 98 ff       	call   0x4dde30
  b5ccb3:	83 c4 08             	add    esp,0x8
  b5ccb6:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5ccba:	50                   	push   eax
  b5ccbb:	e8 30 ad c7 ff       	call   0x7d79f0
  b5ccc0:	0f b6 46 09          	movzx  eax,BYTE PTR [esi+0x9]
  b5ccc4:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b5ccc8:	88 44 24 38          	mov    BYTE PTR [esp+0x38],al
  b5cccc:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  b5ccd0:	51                   	push   ecx
  b5ccd1:	52                   	push   edx
  b5ccd2:	e8 59 11 98 ff       	call   0x4dde30
  b5ccd7:	83 c4 08             	add    esp,0x8
  b5ccda:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5ccde:	50                   	push   eax
  b5ccdf:	e8 0c ad c7 ff       	call   0x7d79f0
  b5cce4:	0f b6 46 0a          	movzx  eax,BYTE PTR [esi+0xa]
  b5cce8:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b5ccec:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
  b5ccf0:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  b5ccf4:	51                   	push   ecx
  b5ccf5:	52                   	push   edx
  b5ccf6:	e8 35 11 98 ff       	call   0x4dde30
  b5ccfb:	83 c4 08             	add    esp,0x8
  b5ccfe:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5cd02:	50                   	push   eax
  b5cd03:	e8 e8 ac c7 ff       	call   0x7d79f0
  b5cd08:	83 c3 01             	add    ebx,0x1
  b5cd0b:	83 c5 0c             	add    ebp,0xc
  b5cd0e:	3b 1f                	cmp    ebx,DWORD PTR [edi]
  b5cd10:	0f 82 fa fe ff ff    	jb     0xb5cc10
  b5cd16:	5d                   	pop    ebp
  b5cd17:	80 bf a1 00 00 00 00 	cmp    BYTE PTR [edi+0xa1],0x0
  b5cd1e:	0f 84 a8 00 00 00    	je     0xb5cdcc
  b5cd24:	8b 4f 60             	mov    ecx,DWORD PTR [edi+0x60]
  b5cd27:	2b 4f 5c             	sub    ecx,DWORD PTR [edi+0x5c]
  b5cd2a:	b8 67 66 66 66       	mov    eax,0x66666667
  b5cd2f:	f7 e9                	imul   ecx
  b5cd31:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  b5cd35:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  b5cd39:	c1 fa 04             	sar    edx,0x4
  b5cd3c:	8b f2                	mov    esi,edx
  b5cd3e:	c1 ee 1f             	shr    esi,0x1f
  b5cd41:	50                   	push   eax
  b5cd42:	03 f2                	add    esi,edx
  b5cd44:	56                   	push   esi
  b5cd45:	51                   	push   ecx
  b5cd46:	e8 25 12 98 ff       	call   0x4ddf70
  b5cd4b:	83 c4 0c             	add    esp,0xc
  b5cd4e:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5cd52:	50                   	push   eax
  b5cd53:	e8 98 ac c7 ff       	call   0x7d79f0
  b5cd58:	85 f6                	test   esi,esi
  b5cd5a:	76 1b                	jbe    0xb5cd77
  b5cd5c:	33 db                	xor    ebx,ebx
  b5cd5e:	8b ff                	mov    edi,edi
  b5cd60:	8b 4f 5c             	mov    ecx,DWORD PTR [edi+0x5c]
  b5cd63:	8d 54 24 10          	lea    edx,[esp+0x10]
  b5cd67:	52                   	push   edx
  b5cd68:	03 cb                	add    ecx,ebx
  b5cd6a:	e8 e1 f2 ff ff       	call   0xb5c050
  b5cd6f:	83 c3 28             	add    ebx,0x28
  b5cd72:	83 ee 01             	sub    esi,0x1
  b5cd75:	75 e9                	jne    0xb5cd60
  b5cd77:	8b 77 70             	mov    esi,DWORD PTR [edi+0x70]
  b5cd7a:	2b 77 6c             	sub    esi,DWORD PTR [edi+0x6c]
  b5cd7d:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  b5cd81:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  b5cd85:	50                   	push   eax
  b5cd86:	c1 fe 04             	sar    esi,0x4
  b5cd89:	56                   	push   esi
  b5cd8a:	51                   	push   ecx
  b5cd8b:	e8 e0 11 98 ff       	call   0x4ddf70
  b5cd90:	83 c4 0c             	add    esp,0xc
  b5cd93:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5cd97:	50                   	push   eax
  b5cd98:	e8 53 ac c7 ff       	call   0x7d79f0
  b5cd9d:	85 f6                	test   esi,esi
  b5cd9f:	76 67                	jbe    0xb5ce08
  b5cda1:	33 db                	xor    ebx,ebx
  b5cda3:	8b 57 6c             	mov    edx,DWORD PTR [edi+0x6c]
  b5cda6:	03 d3                	add    edx,ebx
  b5cda8:	52                   	push   edx
  b5cda9:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b5cdad:	e8 ee bb c7 ff       	call   0x7d89a0
  b5cdb2:	83 c3 10             	add    ebx,0x10
  b5cdb5:	83 ee 01             	sub    esi,0x1
  b5cdb8:	75 e9                	jne    0xb5cda3
  b5cdba:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5cdbe:	e8 cd ab c7 ff       	call   0x7d7990
  b5cdc3:	5e                   	pop    esi
  b5cdc4:	5b                   	pop    ebx
  b5cdc5:	5f                   	pop    edi
  b5cdc6:	83 c4 1c             	add    esp,0x1c
  b5cdc9:	c2 0c 00             	ret    0xc
  b5cdcc:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  b5cdd0:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  b5cdd4:	50                   	push   eax
  b5cdd5:	6a 00                	push   0x0
  b5cdd7:	51                   	push   ecx
  b5cdd8:	e8 93 11 98 ff       	call   0x4ddf70
  b5cddd:	83 c4 0c             	add    esp,0xc
  b5cde0:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5cde4:	50                   	push   eax
  b5cde5:	e8 06 ac c7 ff       	call   0x7d79f0
  b5cdea:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  b5cdee:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  b5cdf2:	52                   	push   edx
  b5cdf3:	6a 00                	push   0x0
  b5cdf5:	50                   	push   eax
  b5cdf6:	e8 75 11 98 ff       	call   0x4ddf70
  b5cdfb:	83 c4 0c             	add    esp,0xc
  b5cdfe:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5ce02:	50                   	push   eax
  b5ce03:	e8 e8 ab c7 ff       	call   0x7d79f0
  b5ce08:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b5ce0c:	e8 7f ab c7 ff       	call   0x7d7990
  b5ce11:	5e                   	pop    esi
  b5ce12:	5b                   	pop    ebx
  b5ce13:	5f                   	pop    edi
  b5ce14:	83 c4 1c             	add    esp,0x1c
  b5ce17:	c2 0c 00             	ret    0xc
