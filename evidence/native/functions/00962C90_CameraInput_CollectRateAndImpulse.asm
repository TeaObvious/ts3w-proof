# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00962c90, 0x00963056).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: CameraInput_CollectRateAndImpulse.
Paired annotated Ghidra pseudocode: 00962C90_CameraInput_CollectRateAndImpulse.c
Complete Ghidra-body envelope [0x00962c90,0x00963056); inferred boundaries.
Original instructions govern decompiler ABI/SIMD interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00962c90 <.text+0x561c90>:
  962c90:	55                   	push   ebp
  962c91:	8b ec                	mov    ebp,esp
  962c93:	83 e4 f0             	and    esp,0xfffffff0
  962c96:	0f 57 ed             	xorps  xmm5,xmm5
  962c99:	83 ec 14             	sub    esp,0x14
  962c9c:	53                   	push   ebx
  962c9d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  962ca0:	56                   	push   esi
  962ca1:	0f 57 ff             	xorps  xmm7,xmm7
  962ca4:	0f 29 3b             	movaps XMMWORD PTR [ebx],xmm7
  962ca7:	0f 29 7b 10          	movaps XMMWORD PTR [ebx+0x10],xmm7
  962cab:	f3 0f 11 6b 20       	movss  DWORD PTR [ebx+0x20],xmm5
  962cb0:	57                   	push   edi
  962cb1:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  962cb4:	8b d1                	mov    edx,ecx
  962cb6:	0f 29 3f             	movaps XMMWORD PTR [edi],xmm7
  962cb9:	0f 29 7f 10          	movaps XMMWORD PTR [edi+0x10],xmm7
  962cbd:	f3 0f 11 6f 20       	movss  DWORD PTR [edi+0x20],xmm5
  962cc2:	f3 0f 10 82 f0 01 00 	movss  xmm0,DWORD PTR [edx+0x1f0]
  962cc9:	00
  962cca:	f3 0f 5c 82 c0 01 00 	subss  xmm0,DWORD PTR [edx+0x1c0]
  962cd1:	00
  962cd2:	0f 2f c5             	comiss xmm0,xmm5
  962cd5:	b9 02 00 00 00       	mov    ecx,0x2
  962cda:	8b c1                	mov    eax,ecx
  962cdc:	77 05                	ja     0x962ce3
  962cde:	b8 03 00 00 00       	mov    eax,0x3
  962ce3:	f3 0f 10 8c 82 00 01 	movss  xmm1,DWORD PTR [edx+eax*4+0x100]
  962cea:	00 00
  962cec:	f3 0f 11 aa f0 01 00 	movss  DWORD PTR [edx+0x1f0],xmm5
  962cf3:	00
  962cf4:	f3 0f 11 aa c0 01 00 	movss  DWORD PTR [edx+0x1c0],xmm5
  962cfb:	00
  962cfc:	80 ba e0 04 00 00 00 	cmp    BYTE PTR [edx+0x4e0],0x0
  962d03:	f3 0f 59 c8          	mulss  xmm1,xmm0
  962d07:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  962d0d:	0f 84 ab 02 00 00    	je     0x962fbe
  962d13:	0f 28 8a f0 04 00 00 	movaps xmm1,XMMWORD PTR [edx+0x4f0]
  962d1a:	0f 28 82 20 05 00 00 	movaps xmm0,XMMWORD PTR [edx+0x520]
  962d21:	0f 58 c1             	addps  xmm0,xmm1
  962d24:	0f 29 82 f0 04 00 00 	movaps XMMWORD PTR [edx+0x4f0],xmm0
  962d2b:	0f 28 8a 10 05 00 00 	movaps xmm1,XMMWORD PTR [edx+0x510]
  962d32:	0f 28 82 20 05 00 00 	movaps xmm0,XMMWORD PTR [edx+0x520]
  962d39:	0f 58 c1             	addps  xmm0,xmm1
  962d3c:	0f 29 82 10 05 00 00 	movaps XMMWORD PTR [edx+0x510],xmm0
  962d43:	0f 28 9a 00 05 00 00 	movaps xmm3,XMMWORD PTR [edx+0x500]
  962d4a:	0f 28 8a f0 04 00 00 	movaps xmm1,XMMWORD PTR [edx+0x4f0]
  962d51:	0f 28 92 10 05 00 00 	movaps xmm2,XMMWORD PTR [edx+0x510]
  962d58:	0f 28 c3             	movaps xmm0,xmm3
  962d5b:	0f 5c c1             	subps  xmm0,xmm1
  962d5e:	0f 28 cb             	movaps xmm1,xmm3
  962d61:	0f 5c ca             	subps  xmm1,xmm2
  962d64:	0f 28 d0             	movaps xmm2,xmm0
  962d67:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  962d6b:	0f 28 e7             	movaps xmm4,xmm7
  962d6e:	0f 5c e2             	subps  xmm4,xmm2
  962d71:	0f 28 d0             	movaps xmm2,xmm0
  962d74:	0f c6 d4 00          	shufps xmm2,xmm4,0x0
  962d78:	0f c6 d0 e8          	shufps xmm2,xmm0,0xe8
  962d7c:	0f 28 c1             	movaps xmm0,xmm1
  962d7f:	0f c6 c1 55          	shufps xmm0,xmm1,0x55
  962d83:	0f 28 e7             	movaps xmm4,xmm7
  962d86:	0f 5c e0             	subps  xmm4,xmm0
  962d89:	0f 28 c1             	movaps xmm0,xmm1
  962d8c:	0f c6 c4 00          	shufps xmm0,xmm4,0x0
  962d90:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  962d94:	0f 28 e0             	movaps xmm4,xmm0
  962d97:	0f 28 c2             	movaps xmm0,xmm2
  962d9a:	0f 59 c2             	mulps  xmm0,xmm2
  962d9d:	0f 28 c8             	movaps xmm1,xmm0
  962da0:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  962da4:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  962da8:	0f 58 c8             	addps  xmm1,xmm0
  962dab:	0f 51 c1             	sqrtps xmm0,xmm1
  962dae:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  962db3:	f3 0f 10 05 dc ed 17 	movss  xmm0,DWORD PTR ds:0x117eddc
  962dba:	01
  962dbb:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  962dc1:	0f 2f c1             	comiss xmm0,xmm1
  962dc4:	0f 29 9a 10 05 00 00 	movaps XMMWORD PTR [edx+0x510],xmm3
  962dcb:	76 05                	jbe    0x962dd2
  962dcd:	0f 28 d7             	movaps xmm2,xmm7
  962dd0:	eb 12                	jmp    0x962de4
  962dd2:	f3 0f 5e c1          	divss  xmm0,xmm1
  962dd6:	f3 0f 10 c0          	movss  xmm0,xmm0
  962dda:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  962dde:	0f 59 c2             	mulps  xmm0,xmm2
  962de1:	0f 5c d0             	subps  xmm2,xmm0
  962de4:	84 8a e0 04 00 00    	test   BYTE PTR [edx+0x4e0],cl
  962dea:	8d 44 24 10          	lea    eax,[esp+0x10]
  962dee:	74 0e                	je     0x962dfe
  962df0:	0f 28 c4             	movaps xmm0,xmm4
  962df3:	0f c6 c4 55          	shufps xmm0,xmm4,0x55
  962df7:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  962dfc:	eb 05                	jmp    0x962e03
  962dfe:	0f 29 7c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm7
  962e03:	0f 28 8a e0 01 00 00 	movaps xmm1,XMMWORD PTR [edx+0x1e0]
  962e0a:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  962e0d:	0f 28 c1             	movaps xmm0,xmm1
  962e10:	0f c6 c3 05          	shufps xmm0,xmm3,0x5
  962e14:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  962e18:	0f 29 82 e0 01 00 00 	movaps XMMWORD PTR [edx+0x1e0],xmm0
  962e1f:	84 8a e0 04 00 00    	test   BYTE PTR [edx+0x4e0],cl
  962e25:	8d 44 24 10          	lea    eax,[esp+0x10]
  962e29:	74 0b                	je     0x962e36
  962e2b:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  962e2f:	0f 29 64 24 10       	movaps XMMWORD PTR [esp+0x10],xmm4
  962e34:	eb 05                	jmp    0x962e3b
  962e36:	0f 29 7c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm7
  962e3b:	0f 28 8a e0 01 00 00 	movaps xmm1,XMMWORD PTR [edx+0x1e0]
  962e42:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  962e45:	0f 28 c1             	movaps xmm0,xmm1
  962e48:	0f c6 c3 00          	shufps xmm0,xmm3,0x0
  962e4c:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  962e50:	0f 29 82 e0 01 00 00 	movaps XMMWORD PTR [edx+0x1e0],xmm0
  962e57:	0f 28 9a b0 01 00 00 	movaps xmm3,XMMWORD PTR [edx+0x1b0]
  962e5e:	f3 0f 10 c5          	movss  xmm0,xmm5
  962e62:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  962e66:	0f 28 cb             	movaps xmm1,xmm3
  962e69:	0f c6 c8 05          	shufps xmm1,xmm0,0x5
  962e6d:	0f c6 cb e2          	shufps xmm1,xmm3,0xe2
  962e71:	0f 29 8a b0 01 00 00 	movaps XMMWORD PTR [edx+0x1b0],xmm1
  962e78:	0f 28 9a b0 01 00 00 	movaps xmm3,XMMWORD PTR [edx+0x1b0]
  962e7f:	0f 28 cb             	movaps xmm1,xmm3
  962e82:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  962e86:	0f c6 cb e8          	shufps xmm1,xmm3,0xe8
  962e8a:	0f 29 8a b0 01 00 00 	movaps XMMWORD PTR [edx+0x1b0],xmm1
  962e91:	f6 82 e0 04 00 00 04 	test   BYTE PTR [edx+0x4e0],0x4
  962e98:	74 0d                	je     0x962ea7
  962e9a:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  962e9f:	f3 0f 10 5c 24 10    	movss  xmm3,DWORD PTR [esp+0x10]
  962ea5:	eb 03                	jmp    0x962eaa
  962ea7:	0f 28 dd             	movaps xmm3,xmm5
  962eaa:	0f 28 a2 70 01 00 00 	movaps xmm4,XMMWORD PTR [edx+0x170]
  962eb1:	f3 0f 10 db          	movss  xmm3,xmm3
  962eb5:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  962eb9:	0f 28 cc             	movaps xmm1,xmm4
  962ebc:	0f c6 cb 05          	shufps xmm1,xmm3,0x5
  962ec0:	0f c6 cc e2          	shufps xmm1,xmm4,0xe2
  962ec4:	0f 29 8a 70 01 00 00 	movaps XMMWORD PTR [edx+0x170],xmm1
  962ecb:	0f 28 9a 40 01 00 00 	movaps xmm3,XMMWORD PTR [edx+0x140]
  962ed2:	0f 28 cb             	movaps xmm1,xmm3
  962ed5:	0f c6 c8 05          	shufps xmm1,xmm0,0x5
  962ed9:	0f c6 cb e2          	shufps xmm1,xmm3,0xe2
  962edd:	0f 29 8a 40 01 00 00 	movaps XMMWORD PTR [edx+0x140],xmm1
  962ee4:	8a 82 e0 04 00 00    	mov    al,BYTE PTR [edx+0x4e0]
  962eea:	a8 08                	test   al,0x8
  962eec:	74 49                	je     0x962f37
  962eee:	a8 04                	test   al,0x4
  962ef0:	74 0d                	je     0x962eff
  962ef2:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  962ef7:	f3 0f 10 54 24 14    	movss  xmm2,DWORD PTR [esp+0x14]
  962efd:	eb 03                	jmp    0x962f02
  962eff:	0f 28 d5             	movaps xmm2,xmm5
  962f02:	0f 28 9a 70 01 00 00 	movaps xmm3,XMMWORD PTR [edx+0x170]
  962f09:	f3 0f 10 d2          	movss  xmm2,xmm2
  962f0d:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  962f11:	0f 28 cb             	movaps xmm1,xmm3
  962f14:	0f c6 ca 00          	shufps xmm1,xmm2,0x0
  962f18:	0f c6 cb e8          	shufps xmm1,xmm3,0xe8
  962f1c:	0f 29 8a 70 01 00 00 	movaps XMMWORD PTR [edx+0x170],xmm1
  962f23:	0f 28 8a 70 01 00 00 	movaps xmm1,XMMWORD PTR [edx+0x170]
  962f2a:	0f 28 d1             	movaps xmm2,xmm1
  962f2d:	0f c6 d0 0f          	shufps xmm2,xmm0,0xf
  962f31:	0f c6 ca 24          	shufps xmm1,xmm2,0x24
  962f35:	eb 4c                	jmp    0x962f83
  962f37:	0f 28 9a 70 01 00 00 	movaps xmm3,XMMWORD PTR [edx+0x170]
  962f3e:	0f 28 cb             	movaps xmm1,xmm3
  962f41:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  962f45:	0f c6 cb e8          	shufps xmm1,xmm3,0xe8
  962f49:	0f 29 8a 70 01 00 00 	movaps XMMWORD PTR [edx+0x170],xmm1
  962f50:	f6 82 e0 04 00 00 04 	test   BYTE PTR [edx+0x4e0],0x4
  962f57:	74 0d                	je     0x962f66
  962f59:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  962f5e:	f3 0f 10 54 24 14    	movss  xmm2,DWORD PTR [esp+0x14]
  962f64:	eb 03                	jmp    0x962f69
  962f66:	0f 28 d5             	movaps xmm2,xmm5
  962f69:	0f 28 8a 70 01 00 00 	movaps xmm1,XMMWORD PTR [edx+0x170]
  962f70:	0f 28 d9             	movaps xmm3,xmm1
  962f73:	f3 0f 10 d2          	movss  xmm2,xmm2
  962f77:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  962f7b:	0f c6 da 0f          	shufps xmm3,xmm2,0xf
  962f7f:	0f c6 cb 24          	shufps xmm1,xmm3,0x24
  962f83:	0f 29 8a 70 01 00 00 	movaps XMMWORD PTR [edx+0x170],xmm1
  962f8a:	0f 28 92 40 01 00 00 	movaps xmm2,XMMWORD PTR [edx+0x140]
  962f91:	0f 28 ca             	movaps xmm1,xmm2
  962f94:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  962f98:	0f c6 ca e8          	shufps xmm1,xmm2,0xe8
  962f9c:	0f 29 8a 40 01 00 00 	movaps XMMWORD PTR [edx+0x140],xmm1
  962fa3:	0f 28 8a 40 01 00 00 	movaps xmm1,XMMWORD PTR [edx+0x140]
  962faa:	0f 28 d1             	movaps xmm2,xmm1
  962fad:	0f c6 d0 0f          	shufps xmm2,xmm0,0xf
  962fb1:	0f c6 ca 24          	shufps xmm1,xmm2,0x24
  962fb5:	0f 29 8a 40 01 00 00 	movaps XMMWORD PTR [edx+0x140],xmm1
  962fbc:	eb 5f                	jmp    0x96301d
  962fbe:	c6 82 e0 04 00 00 00 	mov    BYTE PTR [edx+0x4e0],0x0
  962fc5:	0f 29 ba 70 01 00 00 	movaps XMMWORD PTR [edx+0x170],xmm7
  962fcc:	0f 29 ba 80 01 00 00 	movaps XMMWORD PTR [edx+0x180],xmm7
  962fd3:	f3 0f 11 aa 90 01 00 	movss  DWORD PTR [edx+0x190],xmm5
  962fda:	00
  962fdb:	0f 29 ba 40 01 00 00 	movaps XMMWORD PTR [edx+0x140],xmm7
  962fe2:	0f 29 ba 50 01 00 00 	movaps XMMWORD PTR [edx+0x150],xmm7
  962fe9:	f3 0f 11 aa 60 01 00 	movss  DWORD PTR [edx+0x160],xmm5
  962ff0:	00
  962ff1:	0f 29 ba d0 01 00 00 	movaps XMMWORD PTR [edx+0x1d0],xmm7
  962ff8:	0f 29 ba e0 01 00 00 	movaps XMMWORD PTR [edx+0x1e0],xmm7
  962fff:	f3 0f 11 aa f0 01 00 	movss  DWORD PTR [edx+0x1f0],xmm5
  963006:	00
  963007:	0f 29 ba a0 01 00 00 	movaps XMMWORD PTR [edx+0x1a0],xmm7
  96300e:	0f 29 ba b0 01 00 00 	movaps XMMWORD PTR [edx+0x1b0],xmm7
  963015:	f3 0f 11 aa c0 01 00 	movss  DWORD PTR [edx+0x1c0],xmm5
  96301c:	00
  96301d:	8b ca                	mov    ecx,edx
  96301f:	be 04 00 00 00       	mov    esi,0x4
  963024:	57                   	push   edi
  963025:	53                   	push   ebx
  963026:	e8 95 f2 ff ff       	call   0x9622c0
  96302b:	81 c1 00 01 00 00    	add    ecx,0x100
  963031:	83 ee 01             	sub    esi,0x1
  963034:	75 ee                	jne    0x963024
  963036:	f3 0f 10 47 20       	movss  xmm0,DWORD PTR [edi+0x20]
  96303b:	f3 0f 58 44 24 0c    	addss  xmm0,DWORD PTR [esp+0xc]
  963041:	f3 0f 11 47 20       	movss  DWORD PTR [edi+0x20],xmm0
  963046:	5f                   	pop    edi
  963047:	5e                   	pop    esi
  963048:	0f 29 ba 20 05 00 00 	movaps XMMWORD PTR [edx+0x520],xmm7
  96304f:	5b                   	pop    ebx
  963050:	8b e5                	mov    esp,ebp
  963052:	5d                   	pop    ebp
  963053:	c2 08 00             	ret    0x8
