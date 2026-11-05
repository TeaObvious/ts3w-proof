# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f140, 0x0074f192); analyst name PointDestination_Initialize.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f140 <.text+0x34e140>:
  74f140:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  74f148:	8b c1                	mov    eax,ecx
  74f14a:	33 c9                	xor    ecx,ecx
  74f14c:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  74f14f:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  74f152:	f3 0f 11 40 2c       	movss  DWORD PTR [eax+0x2c],xmm0
  74f157:	0f 57 c0             	xorps  xmm0,xmm0
  74f15a:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  74f15d:	f3 0f 11 40 0c       	movss  DWORD PTR [eax+0xc],xmm0
  74f162:	f3 0f 11 40 10       	movss  DWORD PTR [eax+0x10],xmm0
  74f167:	f3 0f 11 40 14       	movss  DWORD PTR [eax+0x14],xmm0
  74f16c:	f3 0f 11 40 18       	movss  DWORD PTR [eax+0x18],xmm0
  74f171:	f3 0f 11 40 1c       	movss  DWORD PTR [eax+0x1c],xmm0
  74f176:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  74f17b:	f3 0f 11 40 24       	movss  DWORD PTR [eax+0x24],xmm0
  74f180:	c7 00 38 52 00 01    	mov    DWORD PTR [eax],0x1005238
  74f186:	0f 28 05 70 51 1d 01 	movaps xmm0,XMMWORD PTR ds:0x11d5170
  74f18d:	0f 29 40 40          	movaps XMMWORD PTR [eax+0x40],xmm0
  74f191:	c3                   	ret
