# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x006bde80,0x006bdf57); analyst name LightSource_SetDimmerAboveThreshold.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bde80 <.text+0x2bce80>:
  6bde80:	55                   	push   ebp
  6bde81:	8b ec                	mov    ebp,esp
  6bde83:	83 e4 f0             	and    esp,0xfffffff0
  6bde86:	83 ec 3c             	sub    esp,0x3c
  6bde89:	f3 0f 10 4d 08       	movss  xmm1,DWORD PTR [ebp+0x8]
  6bde8e:	0f 28 41 10          	movaps xmm0,XMMWORD PTR [ecx+0x10]
  6bde92:	f3 0f 10 15 cc 4c 0f 	movss  xmm2,DWORD PTR ds:0x10f4ccc
  6bde99:	01 
  6bde9a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6bde9e:	0f 5c c1             	subps  xmm0,xmm1
  6bdea1:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  6bdea5:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  6bdeab:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  6bdeb1:	f3 0f 10 54 24 0c    	movss  xmm2,DWORD PTR [esp+0xc]
  6bdeb7:	0f 2f 54 24 1c       	comiss xmm2,DWORD PTR [esp+0x1c]
  6bdebc:	53                   	push   ebx
  6bdebd:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  6bdec2:	72 06                	jb     0x6bdeca
  6bdec4:	8d 44 24 30          	lea    eax,[esp+0x30]
  6bdec8:	eb 0f                	jmp    0x6bded9
  6bdeca:	0f 57 d2             	xorps  xmm2,xmm2
  6bdecd:	0f 5c d0             	subps  xmm2,xmm0
  6bded0:	0f 29 54 24 20       	movaps XMMWORD PTR [esp+0x20],xmm2
  6bded5:	8d 44 24 20          	lea    eax,[esp+0x20]
  6bded9:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  6bdedc:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  6bdee2:	f3 0f 10 05 ec e6 06 	movss  xmm0,DWORD PTR ds:0x106e6ec
  6bdee9:	01 
  6bdeea:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bdeee:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6bdef4:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  6bdefa:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  6bdeff:	76 2d                	jbe    0x6bdf2e
  6bdf01:	0f 29 49 10          	movaps XMMWORD PTR [ecx+0x10],xmm1
  6bdf05:	0f 28 81 f0 00 00 00 	movaps xmm0,XMMWORD PTR [ecx+0xf0]
  6bdf0c:	0f 29 81 f0 00 00 00 	movaps XMMWORD PTR [ecx+0xf0],xmm0
  6bdf13:	f6 81 00 01 00 00 20 	test   BYTE PTR [ecx+0x100],0x20
  6bdf1a:	b3 01                	mov    bl,0x1
  6bdf1c:	74 19                	je     0x6bdf37
  6bdf1e:	0f 28 81 f0 00 00 00 	movaps xmm0,XMMWORD PTR [ecx+0xf0]
  6bdf25:	0f 28 49 10          	movaps xmm1,XMMWORD PTR [ecx+0x10]
  6bdf29:	0f 59 c1             	mulps  xmm0,xmm1
  6bdf2c:	eb 0c                	jmp    0x6bdf3a
  6bdf2e:	32 c0                	xor    al,al
  6bdf30:	5b                   	pop    ebx
  6bdf31:	8b e5                	mov    esp,ebp
  6bdf33:	5d                   	pop    ebp
  6bdf34:	c2 08 00             	ret    0x8
  6bdf37:	0f 57 c0             	xorps  xmm0,xmm0
  6bdf3a:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  6bdf3e:	0f 29 81 e0 00 00 00 	movaps XMMWORD PTR [ecx+0xe0],xmm0
  6bdf45:	74 07                	je     0x6bdf4e
  6bdf47:	8b 01                	mov    eax,DWORD PTR [ecx]
  6bdf49:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  6bdf4c:	ff d2                	call   edx
  6bdf4e:	8a c3                	mov    al,bl
  6bdf50:	5b                   	pop    ebx
  6bdf51:	8b e5                	mov    esp,ebp
  6bdf53:	5d                   	pop    ebp
  6bdf54:	c2 08 00             	ret    0x8
