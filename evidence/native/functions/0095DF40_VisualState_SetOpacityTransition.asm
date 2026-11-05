# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095df40 (VisualState_SetOpacityTransition)
Full Ghidra function-body envelope: 0x0095df40..0x0095e02c (exclusive end)
Ghidra body ranges: [[0095df40, 0095e02b]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095df40 <.text+0x55cf40>:
  95df40:	83 ec 10             	sub    esp,0x10
  95df43:	f3 0f 10 54 24 14    	movss  xmm2,DWORD PTR [esp+0x14]
  95df49:	f3 0f 10 05 64 3f fb 00 	movss  xmm0,DWORD PTR ds:0xfb3f64
  95df51:	f3 0f 10 0d 80 5a 04 01 	movss  xmm1,DWORD PTR ds:0x1045a80
  95df59:	f3 0f 59 d0          	mulss  xmm2,xmm0
  95df5d:	f3 0f 58 d1          	addss  xmm2,xmm1
  95df61:	56                   	push   esi
  95df62:	8b f1                	mov    esi,ecx
  95df64:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  95df6a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  95df6e:	81 c1 00 00 c0 b8    	add    ecx,0xb8c00000
  95df74:	8b c1                	mov    eax,ecx
  95df76:	c1 f8 1f             	sar    eax,0x1f
  95df79:	f6 d0                	not    al
  95df7b:	0f b6 c0             	movzx  eax,al
  95df7e:	0f b6 d1             	movzx  edx,cl
  95df81:	23 c2                	and    eax,edx
  95df83:	ba ff 00 00 00       	mov    edx,0xff
  95df88:	2b d1                	sub    edx,ecx
  95df8a:	c1 fa 1f             	sar    edx,0x1f
  95df8d:	0f b6 ca             	movzx  ecx,dl
  95df90:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  95df93:	0b c1                	or     eax,ecx
  95df95:	8a 4c 24 24          	mov    cl,BYTE PTR [esp+0x24]
  95df99:	c1 e0 18             	shl    eax,0x18
  95df9c:	81 e2 ff ff ff 00    	and    edx,0xffffff
  95dfa2:	03 c2                	add    eax,edx
  95dfa4:	39 46 0c             	cmp    DWORD PTR [esi+0xc],eax
  95dfa7:	75 04                	jne    0x95dfad
  95dfa9:	84 c9                	test   cl,cl
  95dfab:	74 78                	je     0x95e025
  95dfad:	f3 0f 10 54 24 1c    	movss  xmm2,DWORD PTR [esp+0x1c]
  95dfb3:	f3 0f 11 54 24 04    	movss  DWORD PTR [esp+0x4],xmm2
  95dfb9:	f3 0f 10 54 24 20    	movss  xmm2,DWORD PTR [esp+0x20]
  95dfbf:	f3 0f 59 d0          	mulss  xmm2,xmm0
  95dfc3:	88 4c 24 08          	mov    BYTE PTR [esp+0x8],cl
  95dfc7:	f3 0f 58 d1          	addss  xmm2,xmm1
  95dfcb:	f3 0f 11 54 24 24    	movss  DWORD PTR [esp+0x24],xmm2
  95dfd1:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  95dfd5:	81 c1 00 00 c0 b8    	add    ecx,0xb8c00000
  95dfdb:	53                   	push   ebx
  95dfdc:	8b d1                	mov    edx,ecx
  95dfde:	c1 fa 1f             	sar    edx,0x1f
  95dfe1:	f6 d2                	not    dl
  95dfe3:	0f b6 d2             	movzx  edx,dl
  95dfe6:	57                   	push   edi
  95dfe7:	bb ff 00 00 00       	mov    ebx,0xff
  95dfec:	2b d9                	sub    ebx,ecx
  95dfee:	0f b6 f9             	movzx  edi,cl
  95dff1:	23 d7                	and    edx,edi
  95dff3:	c1 fb 1f             	sar    ebx,0x1f
  95dff6:	0f b6 cb             	movzx  ecx,bl
  95dff9:	0b d1                	or     edx,ecx
  95dffb:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  95dffe:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  95e002:	c1 e2 18             	shl    edx,0x18
  95e005:	25 ff ff ff 00       	and    eax,0xffffff
  95e00a:	03 d0                	add    edx,eax
  95e00c:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  95e00f:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  95e013:	8d 54 24 0c          	lea    edx,[esp+0xc]
  95e017:	52                   	push   edx
  95e018:	50                   	push   eax
  95e019:	6a 1a                	push   0x1a
  95e01b:	e8 a0 76 fd ff       	call   0x9356c0
  95e020:	83 c4 0c             	add    esp,0xc
  95e023:	5f                   	pop    edi
  95e024:	5b                   	pop    ebx
  95e025:	5e                   	pop    esi
  95e026:	83 c4 10             	add    esp,0x10
  95e029:	c2 10 00             	ret    0x10
