# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00adc8c0, 0x00adc91a); analyst name Lot_WorldPositionToLocalXZLevel.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00adc8c0 <.text+0x6db8c0>:
  adc8c0:	55                   	push   ebp
  adc8c1:	8b ec                	mov    ebp,esp
  adc8c3:	83 e4 f0             	and    esp,0xfffffff0
  adc8c6:	83 ec 1c             	sub    esp,0x1c
  adc8c9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  adc8cc:	56                   	push   esi
  adc8cd:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  adc8d0:	8d 44 24 10          	lea    eax,[esp+0x10]
  adc8d4:	50                   	push   eax
  adc8d5:	51                   	push   ecx
  adc8d6:	8b ce                	mov    ecx,esi
  adc8d8:	e8 c3 a8 fd ff       	call   0xab71a0
  adc8dd:	6a 01                	push   0x1
  adc8df:	8d 54 24 14          	lea    edx,[esp+0x14]
  adc8e3:	52                   	push   edx
  adc8e4:	8b ce                	mov    ecx,esi
  adc8e6:	e8 d5 94 fd ff       	call   0xab5dc0
  adc8eb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  adc8f0:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  adc8f3:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc8f8:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  adc8fe:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc903:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  adc909:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  adc90c:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  adc910:	f3 0f 11 41 04       	movss  DWORD PTR [ecx+0x4],xmm0
  adc915:	5e                   	pop    esi
  adc916:	8b e5                	mov    esp,ebp
  adc918:	5d                   	pop    ebp
  adc919:	c3                   	ret
