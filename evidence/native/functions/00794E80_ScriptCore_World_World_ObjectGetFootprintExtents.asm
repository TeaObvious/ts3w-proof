# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00794e80, 0x007950e8); analyst name World_ObjectGetFootprintExtents.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00794e80 <.text+0x393e80>:
  794e80:	55                   	push   ebp
  794e81:	8b ec                	mov    ebp,esp
  794e83:	83 e4 f0             	and    esp,0xfffffff0
  794e86:	83 ec 64             	sub    esp,0x64
  794e89:	53                   	push   ebx
  794e8a:	56                   	push   esi
  794e8b:	57                   	push   edi
  794e8c:	e8 df 26 1a 00       	call   0x937570
  794e91:	85 c0                	test   eax,eax
  794e93:	0f 84 46 02 00 00    	je     0x7950df
  794e99:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  794e9c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  794e9f:	51                   	push   ecx
  794ea0:	52                   	push   edx
  794ea1:	8b c8                	mov    ecx,eax
  794ea3:	e8 d8 30 1a 00       	call   0x937f80
  794ea8:	8b f0                	mov    esi,eax
  794eaa:	85 f6                	test   esi,esi
  794eac:	0f 84 2d 02 00 00    	je     0x7950df
  794eb2:	a1 a8 9f 1e 01       	mov    eax,ds:0x11e9fa8
  794eb7:	50                   	push   eax
  794eb8:	8b ce                	mov    ecx,esi
  794eba:	e8 a1 f3 19 00       	call   0x934260
  794ebf:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  794ec5:	51                   	push   ecx
  794ec6:	8b ce                	mov    ecx,esi
  794ec8:	8b f8                	mov    edi,eax
  794eca:	e8 91 f3 19 00       	call   0x934260
  794ecf:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  794ed5:	52                   	push   edx
  794ed6:	8b ce                	mov    ecx,esi
  794ed8:	8b d8                	mov    ebx,eax
  794eda:	e8 81 f3 19 00       	call   0x934260
  794edf:	85 ff                	test   edi,edi
  794ee1:	8b f0                	mov    esi,eax
  794ee3:	0f 84 f6 01 00 00    	je     0x7950df
  794ee9:	85 db                	test   ebx,ebx
  794eeb:	0f 84 ee 01 00 00    	je     0x7950df
  794ef1:	85 f6                	test   esi,esi
  794ef3:	0f 84 e6 01 00 00    	je     0x7950df
  794ef9:	8d 44 24 50          	lea    eax,[esp+0x50]
  794efd:	50                   	push   eax
  794efe:	8b cb                	mov    ecx,ebx
  794f00:	e8 0b 2a 1c 00       	call   0x957910
  794f05:	33 c0                	xor    eax,eax
  794f07:	8d 4c 24 0f          	lea    ecx,[esp+0xf]
  794f0b:	51                   	push   ecx
  794f0c:	8d 54 24 14          	lea    edx,[esp+0x14]
  794f10:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  794f14:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  794f18:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  794f1c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  794f1f:	52                   	push   edx
  794f20:	50                   	push   eax
  794f21:	8b cf                	mov    ecx,edi
  794f23:	c7 44 24 28 28 1c 01 01 	mov    DWORD PTR [esp+0x28],0x1011c28
  794f2b:	e8 b0 21 1b 00       	call   0x9470e0
  794f30:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  794f33:	f3 0f 10 05 90 18 01 01 	movss  xmm0,DWORD PTR ds:0x1011890
  794f3b:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  794f3f:	8b c1                	mov    eax,ecx
  794f41:	2d ff ff ff 7f       	sub    eax,0x7fffffff
  794f46:	f7 d8                	neg    eax
  794f48:	1b c0                	sbb    eax,eax
  794f4a:	23 c1                	and    eax,ecx
  794f4c:	02 44 24 0f          	add    al,BYTE PTR [esp+0xf]
  794f50:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  794f53:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  794f59:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  794f5f:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  794f65:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  794f6b:	0f 28 64 24 20       	movaps xmm4,XMMWORD PTR [esp+0x20]
  794f70:	f3 0f 10 05 a4 cb fc 00 	movss  xmm0,DWORD PTR ds:0xfccba4
  794f78:	88 01                	mov    BYTE PTR [ecx],al
  794f7a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  794f7e:	3b c6                	cmp    eax,esi
  794f80:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  794f86:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  794f8c:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  794f92:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  794f98:	0f 28 6c 24 20       	movaps xmm5,XMMWORD PTR [esp+0x20]
  794f9d:	0f 29 6c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm5
  794fa2:	0f 84 cd 00 00 00    	je     0x795075
  794fa8:	0f 28 5c 24 50       	movaps xmm3,XMMWORD PTR [esp+0x50]
  794fad:	8d 50 30             	lea    edx,[eax+0x30]
  794fb0:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  794fb3:	8b 02                	mov    eax,DWORD PTR [edx]
  794fb5:	3b c1                	cmp    eax,ecx
  794fb7:	0f 84 a5 00 00 00    	je     0x795062
  794fbd:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  794fc5:	0f 28 f3             	movaps xmm6,xmm3
  794fc8:	0f 28 d3             	movaps xmm2,xmm3
  794fcb:	0f c6 f3 ff          	shufps xmm6,xmm3,0xff
  794fcf:	0f c6 d3 09          	shufps xmm2,xmm3,0x9
  794fd3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  794fd7:	0f c6 db 12          	shufps xmm3,xmm3,0x12
  794fdb:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  794fe0:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  794fe5:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  794fe9:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  794fef:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  794ff5:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  794ffb:	0f 57 c9             	xorps  xmm1,xmm1
  794ffe:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  795004:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  795009:	0f 28 f9             	movaps xmm7,xmm1
  79500c:	0f c6 f9 09          	shufps xmm7,xmm1,0x9
  795010:	0f 59 fb             	mulps  xmm7,xmm3
  795013:	0f 28 c1             	movaps xmm0,xmm1
  795016:	0f c6 c1 12          	shufps xmm0,xmm1,0x12
  79501a:	0f 59 c2             	mulps  xmm0,xmm2
  79501d:	0f 5c c7             	subps  xmm0,xmm7
  795020:	0f 28 fe             	movaps xmm7,xmm6
  795023:	0f 59 f9             	mulps  xmm7,xmm1
  795026:	0f 58 c7             	addps  xmm0,xmm7
  795029:	0f 28 f8             	movaps xmm7,xmm0
  79502c:	0f c6 f8 09          	shufps xmm7,xmm0,0x9
  795030:	0f c6 c0 12          	shufps xmm0,xmm0,0x12
  795034:	0f 59 c2             	mulps  xmm0,xmm2
  795037:	0f 59 fb             	mulps  xmm7,xmm3
  79503a:	0f 5c c7             	subps  xmm0,xmm7
  79503d:	0f 59 44 24 40       	mulps  xmm0,XMMWORD PTR [esp+0x40]
  795042:	0f 58 c1             	addps  xmm0,xmm1
  795045:	0f 58 44 24 60       	addps  xmm0,XMMWORD PTR [esp+0x60]
  79504a:	0f 28 cc             	movaps xmm1,xmm4
  79504d:	83 c0 08             	add    eax,0x8
  795050:	3b c1                	cmp    eax,ecx
  795052:	0f 5d c8             	minps  xmm1,xmm0
  795055:	0f 28 e1             	movaps xmm4,xmm1
  795058:	0f 5f e8             	maxps  xmm5,xmm0
  79505b:	75 83                	jne    0x794fe0
  79505d:	0f 28 5c 24 50       	movaps xmm3,XMMWORD PTR [esp+0x50]
  795062:	83 c2 40             	add    edx,0x40
  795065:	8d 42 d0             	lea    eax,[edx-0x30]
  795068:	3b c6                	cmp    eax,esi
  79506a:	0f 85 40 ff ff ff    	jne    0x794fb0
  795070:	0f 29 6c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm5
  795075:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  795078:	0f 29 64 24 40       	movaps XMMWORD PTR [esp+0x40],xmm4
  79507d:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  795081:	83 ec 08             	sub    esp,0x8
  795084:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  795088:	0f 29 64 24 28       	movaps XMMWORD PTR [esp+0x28],xmm4
  79508d:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  795091:	d9 1c 24             	fstp   DWORD PTR [esp]
  795094:	e8 b7 6e fd ff       	call   0x76bf50
  795099:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  79509e:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  7950a1:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  7950a6:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  7950aa:	83 ec 08             	sub    esp,0x8
  7950ad:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7950b1:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  7950b6:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  7950ba:	d9 1c 24             	fstp   DWORD PTR [esp]
  7950bd:	e8 8e 6e fd ff       	call   0x76bf50
  7950c2:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7950c6:	3b 4c 24 14          	cmp    ecx,DWORD PTR [esp+0x14]
  7950ca:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7950ce:	0f 95 c3             	setne  bl
  7950d1:	e8 0a 49 fb ff       	call   0x7499e0
  7950d6:	8a c3                	mov    al,bl
  7950d8:	5f                   	pop    edi
  7950d9:	5e                   	pop    esi
  7950da:	5b                   	pop    ebx
  7950db:	8b e5                	mov    esp,ebp
  7950dd:	5d                   	pop    ebp
  7950de:	c3                   	ret
  7950df:	5f                   	pop    edi
  7950e0:	5e                   	pop    esi
  7950e1:	32 c0                	xor    al,al
  7950e3:	5b                   	pop    ebx
  7950e4:	8b e5                	mov    esp,ebp
  7950e6:	5d                   	pop    ebp
  7950e7:	c3                   	ret
