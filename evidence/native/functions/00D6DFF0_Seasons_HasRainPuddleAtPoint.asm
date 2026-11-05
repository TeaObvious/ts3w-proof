# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d6dff0, 0x00d6e19f).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_HasRainPuddleAtPoint (analyst-assigned)
Entry: 0x00d6dff0
Ghidra body envelope: 0x00d6dff0..0x00d6e19e inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d6dff0 <.text+0x96cff0>:
  d6dff0:	55                   	push   ebp
  d6dff1:	8b ec                	mov    ebp,esp
  d6dff3:	83 e4 f0             	and    esp,0xfffffff0
  d6dff6:	83 ec 28             	sub    esp,0x28
  d6dff9:	56                   	push   esi
  d6dffa:	57                   	push   edi
  d6dffb:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  d6dfff:	e8 cc ac f1 ff       	call   0xc88cd0
  d6e004:	84 c0                	test   al,al
  d6e006:	0f 84 89 01 00 00    	je     0xd6e195
  d6e00c:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  d6e00f:	85 f6                	test   esi,esi
  d6e011:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  d6e014:	0f 84 82 00 00 00    	je     0xd6e09c
  d6e01a:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  d6e01e:	74 61                	je     0xd6e081
  d6e020:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  d6e027:	00
  d6e028:	8d 44 24 10          	lea    eax,[esp+0x10]
  d6e02c:	50                   	push   eax
  d6e02d:	57                   	push   edi
  d6e02e:	56                   	push   esi
  d6e02f:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  d6e035:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  d6e03b:	c7 44 24 24 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  d6e042:	00
  d6e043:	e8 d8 e8 d6 ff       	call   0xadc920
  d6e048:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  d6e04c:	0c ff                	or     al,0xff
  d6e04e:	51                   	push   ecx
  d6e04f:	8d 54 24 20          	lea    edx,[esp+0x20]
  d6e053:	52                   	push   edx
  d6e054:	88 44 24 1c          	mov    BYTE PTR [esp+0x1c],al
  d6e058:	88 44 24 1d          	mov    BYTE PTR [esp+0x1d],al
  d6e05c:	c6 44 24 1e 00       	mov    BYTE PTR [esp+0x1e],0x0
  d6e061:	88 44 24 1f          	mov    BYTE PTR [esp+0x1f],al
  d6e065:	e8 46 9d d8 ff       	call   0xaf7db0
  d6e06a:	83 c4 14             	add    esp,0x14
  d6e06d:	8d 44 24 08          	lea    eax,[esp+0x8]
  d6e071:	50                   	push   eax
  d6e072:	8b ce                	mov    ecx,esi
  d6e074:	e8 d7 21 d4 ff       	call   0xab0250
  d6e079:	84 c0                	test   al,al
  d6e07b:	0f 84 14 01 00 00    	je     0xd6e195
  d6e081:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  d6e088:	75 09                	jne    0xd6e093
  d6e08a:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  d6e091:	74 09                	je     0xd6e09c
  d6e093:	80 be b0 04 00 00 00 	cmp    BYTE PTR [esi+0x4b0],0x0
  d6e09a:	74 41                	je     0xd6e0dd
  d6e09c:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  d6e0a2:	85 c9                	test   ecx,ecx
  d6e0a4:	74 37                	je     0xd6e0dd
  d6e0a6:	e8 e5 2f ef ff       	call   0xc61090
  d6e0ab:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6e0af:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  d6e0b2:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  d6e0b6:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  d6e0bc:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  d6e0c2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d6e0c6:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  d6e0cc:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  d6e0d2:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  d6e0d7:	0f 87 b8 00 00 00    	ja     0xd6e195
  d6e0dd:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  d6e0e1:	57                   	push   edi
  d6e0e2:	e8 49 fe ff ff       	call   0xd6df30
  d6e0e7:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  d6e0eb:	80 7d 14 00          	cmp    BYTE PTR [ebp+0x14],0x0
  d6e0ef:	74 0a                	je     0xd6e0fb
  d6e0f1:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  d6e0f8:	00
  d6e0f9:	eb 12                	jmp    0xd6e10d
  d6e0fb:	0f 28 05 40 f1 1e 01 	movaps xmm0,XMMWORD PTR ds:0x11ef140
  d6e102:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  d6e107:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  d6e10d:	f3 0f 59 44 24 0c    	mulss  xmm0,DWORD PTR [esp+0xc]
  d6e113:	f3 0f 59 05 64 e5 fa 	mulss  xmm0,DWORD PTR ds:0xfae564
  d6e11a:	00
  d6e11b:	f3 0f 10 0d 74 b2 08 	movss  xmm1,DWORD PTR ds:0x108b274
  d6e122:	01
  d6e123:	0f 2f c8             	comiss xmm1,xmm0
  d6e126:	77 6d                	ja     0xd6e195
  d6e128:	85 f6                	test   esi,esi
  d6e12a:	b0 01                	mov    al,0x1
  d6e12c:	75 69                	jne    0xd6e197
  d6e12e:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  d6e131:	83 ec 08             	sub    esp,0x8
  d6e134:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  d6e139:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  d6e13d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6e141:	0f 29 44 24 18       	movaps XMMWORD PTR [esp+0x18],xmm0
  d6e146:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  d6e14a:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  d6e14e:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6e151:	51                   	push   ecx
  d6e152:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  d6e158:	e8 73 c8 ef ff       	call   0xc6a9d0
  d6e15d:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  d6e162:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  d6e166:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  d6e16c:	f3 0f 10 05 3c 3a ff 	movss  xmm0,DWORD PTR ds:0xff3a3c
  d6e173:	00
  d6e174:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d6e178:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  d6e17e:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  d6e184:	0f 2f 44 24 10       	comiss xmm0,DWORD PTR [esp+0x10]
  d6e189:	72 0a                	jb     0xd6e195
  d6e18b:	b0 01                	mov    al,0x1
  d6e18d:	5f                   	pop    edi
  d6e18e:	5e                   	pop    esi
  d6e18f:	8b e5                	mov    esp,ebp
  d6e191:	5d                   	pop    ebp
  d6e192:	c2 10 00             	ret    0x10
  d6e195:	32 c0                	xor    al,al
  d6e197:	5f                   	pop    edi
  d6e198:	5e                   	pop    esi
  d6e199:	8b e5                	mov    esp,ebp
  d6e19b:	5d                   	pop    ebp
  d6e19c:	c2 10 00             	ret    0x10
