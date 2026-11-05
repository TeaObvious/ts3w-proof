# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f3e0, 0x0074f498); analyst name RadialRangeDestination_Initialize.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f3e0 <.text+0x34e3e0>:
  74f3e0:	55                   	push   ebp
  74f3e1:	8b ec                	mov    ebp,esp
  74f3e3:	83 e4 f0             	and    esp,0xfffffff0
  74f3e6:	83 ec 10             	sub    esp,0x10
  74f3e9:	0f 57 c0             	xorps  xmm0,xmm0
  74f3ec:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  74f3f4:	8b c1                	mov    eax,ecx
  74f3f6:	33 c9                	xor    ecx,ecx
  74f3f8:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  74f3fb:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  74f3fe:	f3 0f 11 48 2c       	movss  DWORD PTR [eax+0x2c],xmm1
  74f403:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  74f406:	f3 0f 11 40 0c       	movss  DWORD PTR [eax+0xc],xmm0
  74f40b:	f3 0f 11 40 10       	movss  DWORD PTR [eax+0x10],xmm0
  74f410:	f3 0f 11 40 14       	movss  DWORD PTR [eax+0x14],xmm0
  74f415:	f3 0f 11 40 18       	movss  DWORD PTR [eax+0x18],xmm0
  74f41a:	f3 0f 11 40 1c       	movss  DWORD PTR [eax+0x1c],xmm0
  74f41f:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  74f424:	f3 0f 11 40 24       	movss  DWORD PTR [eax+0x24],xmm0
  74f429:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  74f42f:	c7 00 ac 52 00 01    	mov    DWORD PTR [eax],0x10052ac
  74f435:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  74f43b:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  74f441:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  74f446:	0f 28 14 24          	movaps xmm2,XMMWORD PTR [esp]
  74f44a:	0f 29 50 30          	movaps XMMWORD PTR [eax+0x30],xmm2
  74f44e:	0f 57 d2             	xorps  xmm2,xmm2
  74f451:	0f 29 50 40          	movaps XMMWORD PTR [eax+0x40],xmm2
  74f455:	89 48 50             	mov    DWORD PTR [eax+0x50],ecx
  74f458:	89 48 54             	mov    DWORD PTR [eax+0x54],ecx
  74f45b:	89 48 58             	mov    DWORD PTR [eax+0x58],ecx
  74f45e:	f3 0f 10 15 a8 51 00 01 	movss  xmm2,DWORD PTR ds:0x10051a8
  74f466:	f3 0f 11 48 64       	movss  DWORD PTR [eax+0x64],xmm1
  74f46b:	f3 0f 10 0d 18 b2 fa 00 	movss  xmm1,DWORD PTR ds:0xfab218
  74f473:	f3 0f 11 48 68       	movss  DWORD PTR [eax+0x68],xmm1
  74f478:	f3 0f 10 0d b4 b5 f9 00 	movss  xmm1,DWORD PTR ds:0xf9b5b4
  74f480:	f3 0f 11 50 5c       	movss  DWORD PTR [eax+0x5c],xmm2
  74f485:	f3 0f 11 40 60       	movss  DWORD PTR [eax+0x60],xmm0
  74f48a:	f3 0f 11 48 6c       	movss  DWORD PTR [eax+0x6c],xmm1
  74f48f:	f3 0f 11 40 70       	movss  DWORD PTR [eax+0x70],xmm0
  74f494:	8b e5                	mov    esp,ebp
  74f496:	5d                   	pop    ebp
  74f497:	c3                   	ret
