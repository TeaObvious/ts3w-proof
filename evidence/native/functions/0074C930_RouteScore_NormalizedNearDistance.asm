# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074c930, 0x0074ca0e); analyst name RouteScore_NormalizedNearDistance.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074c930 <.text+0x34b930>:
  74c930:	55                   	push   ebp
  74c931:	8b ec                	mov    ebp,esp
  74c933:	83 e4 f0             	and    esp,0xfffffff0
  74c936:	83 ec 20             	sub    esp,0x20
  74c939:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  74c93c:	0f 28 49 10          	movaps xmm1,XMMWORD PTR [ecx+0x10]
  74c940:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  74c943:	0f 5c c1             	subps  xmm0,xmm1
  74c946:	0f 59 c0             	mulps  xmm0,xmm0
  74c949:	0f 28 c8             	movaps xmm1,xmm0
  74c94c:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  74c950:	0f 28 d1             	movaps xmm2,xmm1
  74c953:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  74c957:	0f 58 c2             	addps  xmm0,xmm2
  74c95a:	0f 57 d2             	xorps  xmm2,xmm2
  74c95d:	0f 58 c1             	addps  xmm0,xmm1
  74c960:	f3 0f 10 49 20       	movss  xmm1,DWORD PTR [ecx+0x20]
  74c965:	0f 2f d1             	comiss xmm2,xmm1
  74c968:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  74c96c:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  74c971:	72 0a                	jb     0x74c97d
  74c973:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  74c977:	8b e5                	mov    esp,ebp
  74c979:	5d                   	pop    ebp
  74c97a:	c2 04 00             	ret    0x4
  74c97d:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  74c983:	d9 e8                	fld1
  74c985:	f3 0f 5e c1          	divss  xmm0,xmm1
  74c989:	f3 0f 10 0d f0 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f0
  74c991:	f3 0f 5c c8          	subss  xmm1,xmm0
  74c995:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  74c99b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  74c99f:	c1 f8 1f             	sar    eax,0x1f
  74c9a2:	8b c8                	mov    ecx,eax
  74c9a4:	f7 d1                	not    ecx
  74c9a6:	f3 0f 11 54 24 08    	movss  DWORD PTR [esp+0x8],xmm2
  74c9ac:	23 4c 24 08          	and    ecx,DWORD PTR [esp+0x8]
  74c9b0:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  74c9b6:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  74c9ba:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  74c9c2:	23 d0                	and    edx,eax
  74c9c4:	0b ca                	or     ecx,edx
  74c9c6:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  74c9ca:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  74c9d0:	0f 28 d0             	movaps xmm2,xmm0
  74c9d3:	f3 0f 5c d1          	subss  xmm2,xmm1
  74c9d7:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  74c9dd:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  74c9e1:	c1 f8 1f             	sar    eax,0x1f
  74c9e4:	8b c8                	mov    ecx,eax
  74c9e6:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  74c9ec:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  74c9f0:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  74c9f6:	f7 d1                	not    ecx
  74c9f8:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  74c9fc:	23 d0                	and    edx,eax
  74c9fe:	0b ca                	or     ecx,edx
  74ca00:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  74ca04:	d8 64 24 0c          	fsub   DWORD PTR [esp+0xc]
  74ca08:	8b e5                	mov    esp,ebp
  74ca0a:	5d                   	pop    ebp
  74ca0b:	c2 04 00             	ret    0x4
