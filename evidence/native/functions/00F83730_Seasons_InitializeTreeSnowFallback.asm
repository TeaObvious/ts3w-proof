# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00f83730, 0x00f83777).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_InitializeTreeSnowFallback (analyst-assigned)
Entry: 0x00f83730
Ghidra body envelope: 0x00f83730..0x00f83776 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00f83730 <.text+0xb82730>:
  f83730:	55                   	push   ebp
  f83731:	8b ec                	mov    ebp,esp
  f83733:	83 e4 f0             	and    esp,0xfffffff0
  f83736:	83 ec 10             	sub    esp,0x10
  f83739:	f3 0f 10 0d 7c 3f fb 	movss  xmm1,DWORD PTR ds:0xfb3f7c
  f83740:	00
  f83741:	f3 0f 10 05 fc 43 ff 	movss  xmm0,DWORD PTR ds:0xff43fc
  f83748:	00
  f83749:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  f8374f:	f3 0f 10 0d 7c 48 04 	movss  xmm1,DWORD PTR ds:0x104487c
  f83756:	01
  f83757:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  f8375d:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  f83763:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  f83768:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  f8376c:	0f 29 05 20 31 1d 01 	movaps XMMWORD PTR ds:0x11d3120,xmm0
  f83773:	8b e5                	mov    esp,ebp
  f83775:	5d                   	pop    ebp
  f83776:	c3                   	ret
