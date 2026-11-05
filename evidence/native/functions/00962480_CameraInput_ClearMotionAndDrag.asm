# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00962480, 0x009624f1).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00962480 <.text+0x561480>:
  962480:	0f 57 c9             	xorps  xmm1,xmm1
  962483:	0f 57 c0             	xorps  xmm0,xmm0
  962486:	8d 81 90 00 00 00    	lea    eax,[ecx+0x90]
  96248c:	ba 04 00 00 00       	mov    edx,0x4
  962491:	0f 29 40 e0          	movaps XMMWORD PTR [eax-0x20],xmm0
  962495:	0f 29 40 f0          	movaps XMMWORD PTR [eax-0x10],xmm0
  962499:	f3 0f 11 08          	movss  DWORD PTR [eax],xmm1
  96249d:	0f 29 40 b0          	movaps XMMWORD PTR [eax-0x50],xmm0
  9624a1:	0f 29 40 c0          	movaps XMMWORD PTR [eax-0x40],xmm0
  9624a5:	f3 0f 11 48 d0       	movss  DWORD PTR [eax-0x30],xmm1
  9624aa:	0f 29 40 40          	movaps XMMWORD PTR [eax+0x40],xmm0
  9624ae:	0f 29 40 50          	movaps XMMWORD PTR [eax+0x50],xmm0
  9624b2:	f3 0f 11 48 60       	movss  DWORD PTR [eax+0x60],xmm1
  9624b7:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  9624bb:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  9624bf:	f3 0f 11 48 30       	movss  DWORD PTR [eax+0x30],xmm1
  9624c4:	05 00 01 00 00       	add    eax,0x100
  9624c9:	83 ea 01             	sub    edx,0x1
  9624cc:	75 c3                	jne    0x962491
  9624ce:	0f 29 81 00 05 00 00 	movaps XMMWORD PTR [ecx+0x500],xmm0
  9624d5:	0f 29 81 f0 04 00 00 	movaps XMMWORD PTR [ecx+0x4f0],xmm0
  9624dc:	0f 29 81 10 05 00 00 	movaps XMMWORD PTR [ecx+0x510],xmm0
  9624e3:	0f 29 81 20 05 00 00 	movaps XMMWORD PTR [ecx+0x520],xmm0
  9624ea:	88 91 e0 04 00 00    	mov    BYTE PTR [ecx+0x4e0],dl
  9624f0:	c3                   	ret
