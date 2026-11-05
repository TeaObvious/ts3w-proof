# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d6dcd0, 0x00d6df30).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_IsSnowMeltedAtPoint (analyst-assigned)
Entry: 0x00d6dcd0
Ghidra body envelope: 0x00d6dcd0..0x00d6df2f inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d6dcd0 <.text+0x96ccd0>:
  d6dcd0:	55                   	push   ebp
  d6dcd1:	8b ec                	mov    ebp,esp
  d6dcd3:	83 e4 f0             	and    esp,0xfffffff0
  d6dcd6:	83 ec 38             	sub    esp,0x38
  d6dcd9:	56                   	push   esi
  d6dcda:	57                   	push   edi
  d6dcdb:	8b f1                	mov    esi,ecx
  d6dcdd:	8d be c8 09 00 00    	lea    edi,[esi+0x9c8]
  d6dce3:	57                   	push   edi
  d6dce4:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  d6dcea:	8b 8e 50 0b 00 00    	mov    ecx,DWORD PTR [esi+0xb50]
  d6dcf0:	0f af 8e 4c 0b 00 00 	imul   ecx,DWORD PTR [esi+0xb4c]
  d6dcf7:	85 c9                	test   ecx,ecx
  d6dcf9:	8d 86 4c 0b 00 00    	lea    eax,[esi+0xb4c]
  d6dcff:	0f 84 1a 02 00 00    	je     0xd6df1f
  d6dd05:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  d6dd08:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  d6dd0b:	f3 0f 10 0d c4 bf 08 	movss  xmm1,DWORD PTR ds:0x108bfc4
  d6dd12:	01
  d6dd13:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d6dd17:	0f 28 d0             	movaps xmm2,xmm0
  d6dd1a:	0f c6 d0 00          	shufps xmm2,xmm0,0x0
  d6dd1e:	0f 59 d1             	mulps  xmm2,xmm1
  d6dd21:	0f 29 54 24 30       	movaps XMMWORD PTR [esp+0x30],xmm2
  d6dd26:	83 ec 44             	sub    esp,0x44
  d6dd29:	0f 28 d0             	movaps xmm2,xmm0
  d6dd2c:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  d6dd30:	8b cc                	mov    ecx,esp
  d6dd32:	0f 59 d1             	mulps  xmm2,xmm1
  d6dd35:	50                   	push   eax
  d6dd36:	0f 29 54 24 68       	movaps XMMWORD PTR [esp+0x68],xmm2
  d6dd3b:	e8 c0 fe ff ff       	call   0xd6dc00
  d6dd40:	d9 44 24 64          	fld    DWORD PTR [esp+0x64]
  d6dd44:	8b 86 9c 0b 00 00    	mov    eax,DWORD PTR [esi+0xb9c]
  d6dd4a:	50                   	push   eax
  d6dd4b:	83 ec 08             	sub    esp,0x8
  d6dd4e:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6dd52:	8b ce                	mov    ecx,esi
  d6dd54:	d9 84 24 80 00 00 00 	fld    DWORD PTR [esp+0x80]
  d6dd5b:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6dd5e:	e8 6d d0 ff ff       	call   0xd6add0
  d6dd63:	f3 0f 10 15 f0 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f0
  d6dd6a:	00
  d6dd6b:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  d6dd6f:	f3 0f 10 45 0c       	movss  xmm0,DWORD PTR [ebp+0xc]
  d6dd74:	f3 0f 59 05 88 fd 03 	mulss  xmm0,DWORD PTR ds:0x103fd88
  d6dd7b:	01
  d6dd7c:	0f 57 db             	xorps  xmm3,xmm3
  d6dd7f:	0f 28 ca             	movaps xmm1,xmm2
  d6dd82:	f3 0f 5c c8          	subss  xmm1,xmm0
  d6dd86:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  d6dd8c:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  d6dd90:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  d6dd97:	00
  d6dd98:	c1 f8 1f             	sar    eax,0x1f
  d6dd9b:	8b c8                	mov    ecx,eax
  d6dd9d:	f7 d1                	not    ecx
  d6dd9f:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  d6dda5:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d6dda9:	23 d0                	and    edx,eax
  d6ddab:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  d6ddb1:	23 4c 24 14          	and    ecx,DWORD PTR [esp+0x14]
  d6ddb5:	0f 28 e1             	movaps xmm4,xmm1
  d6ddb8:	0b ca                	or     ecx,edx
  d6ddba:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  d6ddbe:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  d6ddc4:	f3 0f 5c e0          	subss  xmm4,xmm0
  d6ddc8:	f3 0f 11 64 24 18    	movss  DWORD PTR [esp+0x18],xmm4
  d6ddce:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  d6ddd2:	c1 f8 1f             	sar    eax,0x1f
  d6ddd5:	8b c8                	mov    ecx,eax
  d6ddd7:	f7 d1                	not    ecx
  d6ddd9:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  d6dddf:	23 4c 24 18          	and    ecx,DWORD PTR [esp+0x18]
  d6dde3:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  d6dde9:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  d6dded:	23 d0                	and    edx,eax
  d6ddef:	0b ca                	or     ecx,edx
  d6ddf1:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  d6ddf5:	0f 28 c1             	movaps xmm0,xmm1
  d6ddf8:	f3 0f 5c 44 24 18    	subss  xmm0,DWORD PTR [esp+0x18]
  d6ddfe:	0f 28 e2             	movaps xmm4,xmm2
  d6de01:	f3 0f 5c e0          	subss  xmm4,xmm0
  d6de05:	f3 0f 11 64 24 18    	movss  DWORD PTR [esp+0x18],xmm4
  d6de0b:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  d6de0f:	c1 f8 1f             	sar    eax,0x1f
  d6de12:	8b c8                	mov    ecx,eax
  d6de14:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d6de1a:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  d6de1e:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d6de24:	f7 d1                	not    ecx
  d6de26:	23 4c 24 18          	and    ecx,DWORD PTR [esp+0x18]
  d6de2a:	23 d0                	and    edx,eax
  d6de2c:	0b ca                	or     ecx,edx
  d6de2e:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  d6de32:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  d6de38:	0f 28 e1             	movaps xmm4,xmm1
  d6de3b:	f3 0f 5c e0          	subss  xmm4,xmm0
  d6de3f:	f3 0f 11 64 24 18    	movss  DWORD PTR [esp+0x18],xmm4
  d6de45:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  d6de49:	c1 f8 1f             	sar    eax,0x1f
  d6de4c:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  d6de52:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  d6de58:	f3 0f 59 05 64 e5 fa 	mulss  xmm0,DWORD PTR ds:0xfae564
  d6de5f:	00
  d6de60:	f3 0f 58 05 b4 b5 f9 	addss  xmm0,DWORD PTR ds:0xf9b5b4
  d6de67:	00
  d6de68:	8b c8                	mov    ecx,eax
  d6de6a:	f7 d1                	not    ecx
  d6de6c:	23 4c 24 18          	and    ecx,DWORD PTR [esp+0x18]
  d6de70:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  d6de76:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  d6de7a:	23 d0                	and    edx,eax
  d6de7c:	0b ca                	or     ecx,edx
  d6de7e:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  d6de82:	f3 0f 10 64 24 18    	movss  xmm4,DWORD PTR [esp+0x18]
  d6de88:	f3 0f 59 25 c0 bf 08 	mulss  xmm4,DWORD PTR ds:0x108bfc0
  d6de8f:	01
  d6de90:	f3 0f 5c c4          	subss  xmm0,xmm4
  d6de94:	f3 0f 5c d0          	subss  xmm2,xmm0
  d6de98:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  d6de9e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d6dea2:	c1 f8 1f             	sar    eax,0x1f
  d6dea5:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  d6deab:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d6deaf:	8b c8                	mov    ecx,eax
  d6deb1:	f7 d1                	not    ecx
  d6deb3:	23 d0                	and    edx,eax
  d6deb5:	f3 0f 11 5c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm3
  d6debb:	23 4c 24 1c          	and    ecx,DWORD PTR [esp+0x1c]
  d6debf:	0f 28 d1             	movaps xmm2,xmm1
  d6dec2:	0b ca                	or     ecx,edx
  d6dec4:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  d6dec8:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  d6dece:	f3 0f 5c d0          	subss  xmm2,xmm0
  d6ded2:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  d6ded8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d6dedc:	c1 f8 1f             	sar    eax,0x1f
  d6dedf:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  d6dee5:	f3 0f 10 05 04 e5 f9 	movss  xmm0,DWORD PTR ds:0xf9e504
  d6deec:	00
  d6deed:	8b c8                	mov    ecx,eax
  d6deef:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d6def5:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d6def9:	f7 d1                	not    ecx
  d6defb:	23 4c 24 1c          	and    ecx,DWORD PTR [esp+0x1c]
  d6deff:	23 d0                	and    edx,eax
  d6df01:	0b ca                	or     ecx,edx
  d6df03:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  d6df07:	0f 2f 44 24 1c       	comiss xmm0,DWORD PTR [esp+0x1c]
  d6df0c:	72 11                	jb     0xd6df1f
  d6df0e:	57                   	push   edi
  d6df0f:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  d6df15:	b0 01                	mov    al,0x1
  d6df17:	5f                   	pop    edi
  d6df18:	5e                   	pop    esi
  d6df19:	8b e5                	mov    esp,ebp
  d6df1b:	5d                   	pop    ebp
  d6df1c:	c2 08 00             	ret    0x8
  d6df1f:	57                   	push   edi
  d6df20:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  d6df26:	5f                   	pop    edi
  d6df27:	32 c0                	xor    al,al
  d6df29:	5e                   	pop    esi
  d6df2a:	8b e5                	mov    esp,ebp
  d6df2c:	5d                   	pop    ebp
  d6df2d:	c2 08 00             	ret    0x8
