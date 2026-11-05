# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0076c050, 0x0076c08e); analyst name RouteVector_ExpandXYZWithXLane.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0076c050 <.text+0x36b050>:
  76c050:	55                   	push   ebp
  76c051:	8b ec                	mov    ebp,esp
  76c053:	83 e4 f0             	and    esp,0xfffffff0
  76c056:	83 ec 10             	sub    esp,0x10
  76c059:	f3 0f 10 49 08       	movss  xmm1,DWORD PTR [ecx+0x8]
  76c05e:	f3 0f 10 01          	movss  xmm0,DWORD PTR [ecx]
  76c062:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  76c065:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  76c06b:	f3 0f 10 49 04       	movss  xmm1,DWORD PTR [ecx+0x4]
  76c070:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  76c076:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  76c07c:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  76c081:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  76c085:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  76c088:	8b e5                	mov    esp,ebp
  76c08a:	5d                   	pop    ebp
  76c08b:	c2 04 00             	ret    0x4
