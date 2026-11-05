# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00adfbf0,0x00adfc18); analyst name FogOfExploration_ExchangeFadeMilliseconds.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00adfbf0 <.text+0x6debf0>:
  adfbf0:	51                   	push   ecx
  adfbf1:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  adfbf7:	f3 0f 59 05 b0 9c 06 01 	mulss  xmm0,DWORD PTR ds:0x1069cb0
  adfbff:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  adfc04:	d9 04 24             	fld    DWORD PTR [esp]
  adfc07:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
  adfc0b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  adfc0f:	b9 28 c6 1e 01       	mov    ecx,0x11ec628
  adfc14:	87 01                	xchg   DWORD PTR [ecx],eax
  adfc16:	59                   	pop    ecx
  adfc17:	c3                   	ret
