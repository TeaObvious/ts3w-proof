# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0070ec40, 0x0070f10c).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_BindTreeSnowAndTwigInputs (analyst-assigned)
Entry: 0x0070ec40
Ghidra body envelope: 0x0070ec40..0x0070f10b inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

0070ec40 <.text+0x30dc40>:
  70ec40:	55                   	push   ebp
  70ec41:	8b ec                	mov    ebp,esp
  70ec43:	83 e4 f0             	and    esp,0xfffffff0
  70ec46:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ec4b:	83 ec 34             	sub    esp,0x34
  70ec4e:	53                   	push   ebx
  70ec4f:	56                   	push   esi
  70ec50:	8b 35 30 85 1d 01    	mov    esi,DWORD PTR ds:0x11d8530
  70ec56:	33 db                	xor    ebx,ebx
  70ec58:	3b c3                	cmp    eax,ebx
  70ec5a:	57                   	push   edi
  70ec5b:	8b f9                	mov    edi,ecx
  70ec5d:	0f 84 dd 02 00 00    	je     0x70ef40
  70ec63:	38 98 da 01 00 00    	cmp    BYTE PTR [eax+0x1da],bl
  70ec69:	0f 84 4f 01 00 00    	je     0x70edbe
  70ec6f:	38 98 d8 01 00 00    	cmp    BYTE PTR [eax+0x1d8],bl
  70ec75:	75 0c                	jne    0x70ec83
  70ec77:	38 98 d9 01 00 00    	cmp    BYTE PTR [eax+0x1d9],bl
  70ec7d:	0f 84 3b 01 00 00    	je     0x70edbe
  70ec83:	8b 87 b0 04 00 00    	mov    eax,DWORD PTR [edi+0x4b0]
  70ec89:	8d 88 c8 00 00 00    	lea    ecx,[eax+0xc8]
  70ec8f:	e8 3c 42 01 00       	call   0x722ed0
  70ec94:	85 c0                	test   eax,eax
  70ec96:	0f 84 ad 00 00 00    	je     0x70ed49
  70ec9c:	38 5d 08             	cmp    BYTE PTR [ebp+0x8],bl
  70ec9f:	8b 87 b0 04 00 00    	mov    eax,DWORD PTR [edi+0x4b0]
  70eca5:	74 2f                	je     0x70ecd6
  70eca7:	8d 88 10 01 00 00    	lea    ecx,[eax+0x110]
  70ecad:	e8 1e 42 01 00       	call   0x722ed0
  70ecb2:	50                   	push   eax
  70ecb3:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ecb8:	8b 88 84 00 00 00    	mov    ecx,DWORD PTR [eax+0x84]
  70ecbe:	51                   	push   ecx
  70ecbf:	8b ce                	mov    ecx,esi
  70ecc1:	e8 fa 8b ee ff       	call   0x5f78c0
  70ecc6:	8b 15 88 c4 15 01    	mov    edx,DWORD PTR ds:0x115c488
  70eccc:	8b 82 88 00 00 00    	mov    eax,DWORD PTR [edx+0x88]
  70ecd2:	53                   	push   ebx
  70ecd3:	50                   	push   eax
  70ecd4:	eb 3e                	jmp    0x70ed14
  70ecd6:	8d 88 c8 00 00 00    	lea    ecx,[eax+0xc8]
  70ecdc:	e8 ef 41 01 00       	call   0x722ed0
  70ece1:	8b 0d 88 c4 15 01    	mov    ecx,DWORD PTR ds:0x115c488
  70ece7:	8b 91 84 00 00 00    	mov    edx,DWORD PTR [ecx+0x84]
  70eced:	50                   	push   eax
  70ecee:	52                   	push   edx
  70ecef:	8b ce                	mov    ecx,esi
  70ecf1:	e8 ca 8b ee ff       	call   0x5f78c0
  70ecf6:	8b 87 b0 04 00 00    	mov    eax,DWORD PTR [edi+0x4b0]
  70ecfc:	8d 88 e0 00 00 00    	lea    ecx,[eax+0xe0]
  70ed02:	e8 c9 41 01 00       	call   0x722ed0
  70ed07:	50                   	push   eax
  70ed08:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ed0d:	8b 88 88 00 00 00    	mov    ecx,DWORD PTR [eax+0x88]
  70ed13:	51                   	push   ecx
  70ed14:	8b ce                	mov    ecx,esi
  70ed16:	e8 a5 8b ee ff       	call   0x5f78c0
  70ed1b:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ed20:	8b 88 8c 00 00 00    	mov    ecx,DWORD PTR [eax+0x8c]
  70ed26:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70ed29:	0f 83 8f 00 00 00    	jae    0x70edbe
  70ed2f:	c1 e1 04             	shl    ecx,0x4
  70ed32:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70ed35:	83 01 01             	add    DWORD PTR [ecx],0x1
  70ed38:	66 8b 56 12          	mov    dx,WORD PTR [esi+0x12]
  70ed3c:	66 89 51 04          	mov    WORD PTR [ecx+0x4],dx
  70ed40:	c7 41 0c 74 c4 15 01 	mov    DWORD PTR [ecx+0xc],0x115c474
  70ed47:	eb 70                	jmp    0x70edb9
  70ed49:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ed4e:	8b 88 84 00 00 00    	mov    ecx,DWORD PTR [eax+0x84]
  70ed54:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70ed57:	73 19                	jae    0x70ed72
  70ed59:	c1 e1 04             	shl    ecx,0x4
  70ed5c:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70ed5f:	83 01 01             	add    DWORD PTR [ecx],0x1
  70ed62:	66 8b 46 12          	mov    ax,WORD PTR [esi+0x12]
  70ed66:	66 89 41 04          	mov    WORD PTR [ecx+0x4],ax
  70ed6a:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  70ed6d:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ed72:	8b 88 88 00 00 00    	mov    ecx,DWORD PTR [eax+0x88]
  70ed78:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70ed7b:	73 19                	jae    0x70ed96
  70ed7d:	c1 e1 04             	shl    ecx,0x4
  70ed80:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70ed83:	83 01 01             	add    DWORD PTR [ecx],0x1
  70ed86:	66 8b 56 12          	mov    dx,WORD PTR [esi+0x12]
  70ed8a:	66 89 51 04          	mov    WORD PTR [ecx+0x4],dx
  70ed8e:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  70ed91:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ed96:	8b 88 8c 00 00 00    	mov    ecx,DWORD PTR [eax+0x8c]
  70ed9c:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70ed9f:	73 1d                	jae    0x70edbe
  70eda1:	c1 e1 04             	shl    ecx,0x4
  70eda4:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70eda7:	83 01 01             	add    DWORD PTR [ecx],0x1
  70edaa:	66 8b 46 12          	mov    ax,WORD PTR [esi+0x12]
  70edae:	66 89 41 04          	mov    WORD PTR [ecx+0x4],ax
  70edb2:	c7 41 0c f4 30 1d 01 	mov    DWORD PTR [ecx+0xc],0x11d30f4
  70edb9:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70edbe:	3b c3                	cmp    eax,ebx
  70edc0:	0f 84 7a 01 00 00    	je     0x70ef40
  70edc6:	38 98 dc 01 00 00    	cmp    BYTE PTR [eax+0x1dc],bl
  70edcc:	0f 84 6e 01 00 00    	je     0x70ef40
  70edd2:	38 98 d8 01 00 00    	cmp    BYTE PTR [eax+0x1d8],bl
  70edd8:	0f 84 8e 01 00 00    	je     0x70ef6c
  70edde:	8b 8f b0 04 00 00    	mov    ecx,DWORD PTR [edi+0x4b0]
  70ede4:	38 99 71 01 00 00    	cmp    BYTE PTR [ecx+0x171],bl
  70edea:	f3 0f 10 90 e0 01 00 	movss  xmm2,DWORD PTR [eax+0x1e0]
  70edf1:	00
  70edf2:	0f 84 ab 00 00 00    	je     0x70eea3
  70edf8:	f6 05 f0 30 1d 01 01 	test   BYTE PTR ds:0x11d30f0,0x1
  70edff:	75 07                	jne    0x70ee08
  70ee01:	83 0d f0 30 1d 01 01 	or     DWORD PTR ds:0x11d30f0,0x1
  70ee08:	0f 28 89 60 01 00 00 	movaps xmm1,XMMWORD PTR [ecx+0x160]
  70ee0f:	0f 28 81 60 01 00 00 	movaps xmm0,XMMWORD PTR [ecx+0x160]
  70ee16:	0f 28 d9             	movaps xmm3,xmm1
  70ee19:	0f c6 d9 55          	shufps xmm3,xmm1,0x55
  70ee1d:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  70ee21:	0f 5c d8             	subps  xmm3,xmm0
  70ee24:	f3 0f 10 ca          	movss  xmm1,xmm2
  70ee28:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  70ee2c:	0f 59 d9             	mulps  xmm3,xmm1
  70ee2f:	0f 58 d8             	addps  xmm3,xmm0
  70ee32:	0f 28 81 60 01 00 00 	movaps xmm0,XMMWORD PTR [ecx+0x160]
  70ee39:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  70ee3e:	f3 0f 10 81 74 01 00 	movss  xmm0,DWORD PTR [ecx+0x174]
  70ee45:	00
  70ee46:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [esp+0x28]
  70ee4c:	0f 29 5c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm3
  70ee51:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  70ee57:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  70ee5d:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  70ee63:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  70ee69:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  70ee6f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  70ee74:	0f 29 05 e0 30 1d 01 	movaps XMMWORD PTR ds:0x11d30e0,xmm0
  70ee7b:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
  70ee81:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70ee84:	0f 83 e2 00 00 00    	jae    0x70ef6c
  70ee8a:	c1 e1 04             	shl    ecx,0x4
  70ee8d:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70ee90:	83 01 01             	add    DWORD PTR [ecx],0x1
  70ee93:	66 8b 56 12          	mov    dx,WORD PTR [esi+0x12]
  70ee97:	c7 41 0c e0 30 1d 01 	mov    DWORD PTR [ecx+0xc],0x11d30e0
  70ee9e:	e9 c0 00 00 00       	jmp    0x70ef63
  70eea3:	f6 05 f0 30 1d 01 02 	test   BYTE PTR ds:0x11d30f0,0x2
  70eeaa:	75 07                	jne    0x70eeb3
  70eeac:	83 0d f0 30 1d 01 02 	or     DWORD PTR ds:0x11d30f0,0x2
  70eeb3:	0f 28 05 20 31 1d 01 	movaps xmm0,XMMWORD PTR ds:0x11d3120
  70eeba:	0f 28 c8             	movaps xmm1,xmm0
  70eebd:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  70eec1:	0f 28 d8             	movaps xmm3,xmm0
  70eec4:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  70eec8:	0f 5c d9             	subps  xmm3,xmm1
  70eecb:	f3 0f 10 d2          	movss  xmm2,xmm2
  70eecf:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  70eed4:	f3 0f 10 81 74 01 00 	movss  xmm0,DWORD PTR [ecx+0x174]
  70eedb:	00
  70eedc:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  70eee0:	0f 59 da             	mulps  xmm3,xmm2
  70eee3:	0f 58 d9             	addps  xmm3,xmm1
  70eee6:	f3 0f 10 4c 24 38    	movss  xmm1,DWORD PTR [esp+0x38]
  70eeec:	0f 29 5c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm3
  70eef1:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  70eef7:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  70eefd:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  70ef03:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  70ef09:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  70ef0f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  70ef14:	0f 29 05 d0 30 1d 01 	movaps XMMWORD PTR ds:0x11d30d0,xmm0
  70ef1b:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
  70ef21:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70ef24:	73 46                	jae    0x70ef6c
  70ef26:	c1 e1 04             	shl    ecx,0x4
  70ef29:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70ef2c:	83 01 01             	add    DWORD PTR [ecx],0x1
  70ef2f:	66 8b 46 12          	mov    ax,WORD PTR [esi+0x12]
  70ef33:	66 89 41 04          	mov    WORD PTR [ecx+0x4],ax
  70ef37:	c7 41 0c d0 30 1d 01 	mov    DWORD PTR [ecx+0xc],0x11d30d0
  70ef3e:	eb 27                	jmp    0x70ef67
  70ef40:	38 98 d8 01 00 00    	cmp    BYTE PTR [eax+0x1d8],bl
  70ef46:	74 24                	je     0x70ef6c
  70ef48:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
  70ef4e:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70ef51:	73 19                	jae    0x70ef6c
  70ef53:	c1 e1 04             	shl    ecx,0x4
  70ef56:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70ef59:	83 01 01             	add    DWORD PTR [ecx],0x1
  70ef5c:	66 8b 56 12          	mov    dx,WORD PTR [esi+0x12]
  70ef60:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  70ef63:	66 89 51 04          	mov    WORD PTR [ecx+0x4],dx
  70ef67:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70ef6c:	3b c3                	cmp    eax,ebx
  70ef6e:	0f 84 18 01 00 00    	je     0x70f08c
  70ef74:	38 98 dd 01 00 00    	cmp    BYTE PTR [eax+0x1dd],bl
  70ef7a:	74 10                	je     0x70ef8c
  70ef7c:	38 98 d8 01 00 00    	cmp    BYTE PTR [eax+0x1d8],bl
  70ef82:	75 28                	jne    0x70efac
  70ef84:	38 98 d9 01 00 00    	cmp    BYTE PTR [eax+0x1d9],bl
  70ef8a:	75 20                	jne    0x70efac
  70ef8c:	38 98 da 01 00 00    	cmp    BYTE PTR [eax+0x1da],bl
  70ef92:	0f 84 f4 00 00 00    	je     0x70f08c
  70ef98:	38 98 d8 01 00 00    	cmp    BYTE PTR [eax+0x1d8],bl
  70ef9e:	75 0c                	jne    0x70efac
  70efa0:	38 98 d9 01 00 00    	cmp    BYTE PTR [eax+0x1d9],bl
  70efa6:	0f 84 e0 00 00 00    	je     0x70f08c
  70efac:	8b 97 b0 04 00 00    	mov    edx,DWORD PTR [edi+0x4b0]
  70efb2:	38 9a 70 01 00 00    	cmp    BYTE PTR [edx+0x170],bl
  70efb8:	8b 88 90 00 00 00    	mov    ecx,DWORD PTR [eax+0x90]
  70efbe:	0f 84 8c 00 00 00    	je     0x70f050
  70efc4:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70efc7:	73 1f                	jae    0x70efe8
  70efc9:	c1 e1 04             	shl    ecx,0x4
  70efcc:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70efcf:	83 01 01             	add    DWORD PTR [ecx],0x1
  70efd2:	66 8b 46 12          	mov    ax,WORD PTR [esi+0x12]
  70efd6:	81 c2 30 01 00 00    	add    edx,0x130
  70efdc:	66 89 41 04          	mov    WORD PTR [ecx+0x4],ax
  70efe0:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  70efe3:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70efe8:	8b 88 94 00 00 00    	mov    ecx,DWORD PTR [eax+0x94]
  70efee:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70eff1:	8b 97 b0 04 00 00    	mov    edx,DWORD PTR [edi+0x4b0]
  70eff7:	73 1f                	jae    0x70f018
  70eff9:	c1 e1 04             	shl    ecx,0x4
  70effc:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70efff:	83 01 01             	add    DWORD PTR [ecx],0x1
  70f002:	66 8b 46 12          	mov    ax,WORD PTR [esi+0x12]
  70f006:	81 c2 40 01 00 00    	add    edx,0x140
  70f00c:	66 89 41 04          	mov    WORD PTR [ecx+0x4],ax
  70f010:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  70f013:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70f018:	8b 80 98 00 00 00    	mov    eax,DWORD PTR [eax+0x98]
  70f01e:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  70f021:	8b 8f b0 04 00 00    	mov    ecx,DWORD PTR [edi+0x4b0]
  70f027:	0f 83 d6 00 00 00    	jae    0x70f103
  70f02d:	c1 e0 04             	shl    eax,0x4
  70f030:	03 46 04             	add    eax,DWORD PTR [esi+0x4]
  70f033:	83 00 01             	add    DWORD PTR [eax],0x1
  70f036:	66 8b 56 12          	mov    dx,WORD PTR [esi+0x12]
  70f03a:	81 c1 50 01 00 00    	add    ecx,0x150
  70f040:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  70f044:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  70f047:	5f                   	pop    edi
  70f048:	5e                   	pop    esi
  70f049:	5b                   	pop    ebx
  70f04a:	8b e5                	mov    esp,ebp
  70f04c:	5d                   	pop    ebp
  70f04d:	c2 04 00             	ret    0x4
  70f050:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70f053:	73 19                	jae    0x70f06e
  70f055:	c1 e1 04             	shl    ecx,0x4
  70f058:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70f05b:	83 01 01             	add    DWORD PTR [ecx],0x1
  70f05e:	66 8b 46 12          	mov    ax,WORD PTR [esi+0x12]
  70f062:	66 89 41 04          	mov    WORD PTR [ecx+0x4],ax
  70f066:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  70f069:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70f06e:	8b 88 94 00 00 00    	mov    ecx,DWORD PTR [eax+0x94]
  70f074:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70f077:	73 6b                	jae    0x70f0e4
  70f079:	c1 e1 04             	shl    ecx,0x4
  70f07c:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70f07f:	83 01 01             	add    DWORD PTR [ecx],0x1
  70f082:	66 8b 56 12          	mov    dx,WORD PTR [esi+0x12]
  70f086:	66 89 51 04          	mov    WORD PTR [ecx+0x4],dx
  70f08a:	eb 50                	jmp    0x70f0dc
  70f08c:	38 98 d8 01 00 00    	cmp    BYTE PTR [eax+0x1d8],bl
  70f092:	75 08                	jne    0x70f09c
  70f094:	38 98 d9 01 00 00    	cmp    BYTE PTR [eax+0x1d9],bl
  70f09a:	74 67                	je     0x70f103
  70f09c:	8b 88 90 00 00 00    	mov    ecx,DWORD PTR [eax+0x90]
  70f0a2:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70f0a5:	73 19                	jae    0x70f0c0
  70f0a7:	c1 e1 04             	shl    ecx,0x4
  70f0aa:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70f0ad:	83 01 01             	add    DWORD PTR [ecx],0x1
  70f0b0:	66 8b 56 12          	mov    dx,WORD PTR [esi+0x12]
  70f0b4:	66 89 51 04          	mov    WORD PTR [ecx+0x4],dx
  70f0b8:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  70f0bb:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70f0c0:	8b 88 94 00 00 00    	mov    ecx,DWORD PTR [eax+0x94]
  70f0c6:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  70f0c9:	73 19                	jae    0x70f0e4
  70f0cb:	c1 e1 04             	shl    ecx,0x4
  70f0ce:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
  70f0d1:	83 01 01             	add    DWORD PTR [ecx],0x1
  70f0d4:	66 8b 46 12          	mov    ax,WORD PTR [esi+0x12]
  70f0d8:	66 89 41 04          	mov    WORD PTR [ecx+0x4],ax
  70f0dc:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  70f0df:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  70f0e4:	8b 80 98 00 00 00    	mov    eax,DWORD PTR [eax+0x98]
  70f0ea:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  70f0ed:	73 14                	jae    0x70f103
  70f0ef:	c1 e0 04             	shl    eax,0x4
  70f0f2:	03 46 04             	add    eax,DWORD PTR [esi+0x4]
  70f0f5:	83 00 01             	add    DWORD PTR [eax],0x1
  70f0f8:	66 8b 4e 12          	mov    cx,WORD PTR [esi+0x12]
  70f0fc:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
  70f0ff:	66 89 48 04          	mov    WORD PTR [eax+0x4],cx
  70f103:	5f                   	pop    edi
  70f104:	5e                   	pop    esi
  70f105:	5b                   	pop    ebx
  70f106:	8b e5                	mov    esp,ebp
  70f108:	5d                   	pop    ebp
  70f109:	c2 04 00             	ret    0x4
