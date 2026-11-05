# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00ab6e40, 0x00ab6f5c); analyst name Lot_WorldXZToLocalXZ.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ab6e40 <.text+0x6b5e40>:
  ab6e40:	55                   	push   ebp
  ab6e41:	8b ec                	mov    ebp,esp
  ab6e43:	83 e4 f0             	and    esp,0xfffffff0
  ab6e46:	83 ec 20             	sub    esp,0x20
  ab6e49:	d9 81 a0 01 00 00    	fld    DWORD PTR [ecx+0x1a0]
  ab6e4f:	0f 28 81 90 01 00 00 	movaps xmm0,XMMWORD PTR [ecx+0x190]
  ab6e56:	d9 c0                	fld    st(0)
  ab6e58:	0f 28 89 90 01 00 00 	movaps xmm1,XMMWORD PTR [ecx+0x190]
  ab6e5f:	d9 fe                	fsin
  ab6e61:	f3 0f 10 15 f0 98 f9 00 	movss  xmm2,DWORD PTR ds:0xf998f0
  ab6e69:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  ab6e6e:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  ab6e73:	f3 0f 5c 44 24 10    	subss  xmm0,DWORD PTR [esp+0x10]
  ab6e79:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  ab6e7e:	f3 0f 10 4d 0c       	movss  xmm1,DWORD PTR [ebp+0xc]
  ab6e83:	f3 0f 5c 4c 24 18    	subss  xmm1,DWORD PTR [esp+0x18]
  ab6e89:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  ab6e8c:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  ab6e8f:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  ab6e93:	f3 0f 10 5c 24 0c    	movss  xmm3,DWORD PTR [esp+0xc]
  ab6e99:	d9 ff                	fcos
  ab6e9b:	f3 0f 5c d3          	subss  xmm2,xmm3
  ab6e9f:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  ab6ea5:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  ab6eab:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  ab6eb1:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  ab6eb7:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  ab6ebc:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  ab6ec2:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  ab6ec8:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  ab6ece:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  ab6ed4:	0f 28 5c 24 10       	movaps xmm3,XMMWORD PTR [esp+0x10]
  ab6ed9:	0f 59 d3             	mulps  xmm2,xmm3
  ab6edc:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  ab6ee0:	f3 0f 10 5c 24 08    	movss  xmm3,DWORD PTR [esp+0x8]
  ab6ee6:	f3 0f 11 5c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm3
  ab6eec:	f3 0f 10 5c 24 08    	movss  xmm3,DWORD PTR [esp+0x8]
  ab6ef2:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  ab6ef8:	f3 0f 10 5c 24 08    	movss  xmm3,DWORD PTR [esp+0x8]
  ab6efe:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  ab6f04:	f3 0f 10 5c 24 08    	movss  xmm3,DWORD PTR [esp+0x8]
  ab6f0a:	f3 0f 11 5c 24 10    	movss  DWORD PTR [esp+0x10],xmm3
  ab6f10:	0f 28 5c 24 10       	movaps xmm3,XMMWORD PTR [esp+0x10]
  ab6f15:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  ab6f1b:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  ab6f21:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  ab6f27:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  ab6f2d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  ab6f32:	0f 59 d8             	mulps  xmm3,xmm0
  ab6f35:	0f 58 d3             	addps  xmm2,xmm3
  ab6f38:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  ab6f3d:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  ab6f43:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  ab6f47:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  ab6f4c:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  ab6f52:	f3 0f 11 01          	movss  DWORD PTR [ecx],xmm0
  ab6f56:	8b e5                	mov    esp,ebp
  ab6f58:	5d                   	pop    ebp
  ab6f59:	c2 10 00             	ret    0x10
