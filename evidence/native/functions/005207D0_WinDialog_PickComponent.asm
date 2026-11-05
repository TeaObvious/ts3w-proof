# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x005207d0 WinDialog_PickComponent
# Complete Ghidra body [005207d0, 005208d1] inclusive; 65 instructions, 258 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 005207D0_WinDialog_PickComponent.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005207d0 <.text+0x11f7d0>:
  5207d0:	8b 81 58 02 00 00                               	mov    eax,DWORD PTR [ecx+0x258]
  5207d6:	a8 20                                           	test   al,0x20
  5207d8:	f3 0f 10 6c 24 08                               	movss  xmm5,DWORD PTR [esp+0x8]
  5207de:	f3 0f 10 64 24 04                               	movss  xmm4,DWORD PTR [esp+0x4]
  5207e4:	0f 84 a5 00 00 00                               	je     0x52088f
  5207ea:	f3 0f 10 91 24 03 00 00                         	movss  xmm2,DWORD PTR [ecx+0x324]
  5207f2:	0f 2f d4                                        	comiss xmm2,xmm4
  5207f5:	f3 0f 10 41 48                                  	movss  xmm0,DWORD PTR [ecx+0x48]
  5207fa:	f3 0f 10 49 4c                                  	movss  xmm1,DWORD PTR [ecx+0x4c]
  5207ff:	f3 0f 5c 41 40                                  	subss  xmm0,DWORD PTR [ecx+0x40]
  520804:	f3 0f 5c 49 44                                  	subss  xmm1,DWORD PTR [ecx+0x44]
  520809:	f3 0f 10 99 28 03 00 00                         	movss  xmm3,DWORD PTR [ecx+0x328]
  520811:	f3 0f 5c 81 2c 03 00 00                         	subss  xmm0,DWORD PTR [ecx+0x32c]
  520819:	f3 0f 5c 89 30 03 00 00                         	subss  xmm1,DWORD PTR [ecx+0x330]
  520821:	76 25                                           	jbe    0x520848
  520823:	0f 28 c5                                        	movaps xmm0,xmm5
  520826:	0f 2f d8                                        	comiss xmm3,xmm0
  520829:	76 08                                           	jbe    0x520833
  52082b:	b8 06 00 00 00                                  	mov    eax,0x6
  520830:	c2 08 00                                        	ret    0x8
  520833:	0f 2f c1                                        	comiss xmm0,xmm1
  520836:	72 08                                           	jb     0x520840
  520838:	b8 08 00 00 00                                  	mov    eax,0x8
  52083d:	c2 08 00                                        	ret    0x8
  520840:	b8 02 00 00 00                                  	mov    eax,0x2
  520845:	c2 08 00                                        	ret    0x8
  520848:	0f 2f e0                                        	comiss xmm4,xmm0
  52084b:	72 28                                           	jb     0x520875
  52084d:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  520853:	0f 2f d8                                        	comiss xmm3,xmm0
  520856:	76 08                                           	jbe    0x520860
  520858:	b8 07 00 00 00                                  	mov    eax,0x7
  52085d:	c2 08 00                                        	ret    0x8
  520860:	0f 2f c1                                        	comiss xmm0,xmm1
  520863:	72 08                                           	jb     0x52086d
  520865:	b8 09 00 00 00                                  	mov    eax,0x9
  52086a:	c2 08 00                                        	ret    0x8
  52086d:	b8 03 00 00 00                                  	mov    eax,0x3
  520872:	c2 08 00                                        	ret    0x8
  520875:	0f 2f dd                                        	comiss xmm3,xmm5
  520878:	76 08                                           	jbe    0x520882
  52087a:	b8 04 00 00 00                                  	mov    eax,0x4
  52087f:	c2 08 00                                        	ret    0x8
  520882:	0f 2f e9                                        	comiss xmm5,xmm1
  520885:	72 08                                           	jb     0x52088f
  520887:	b8 05 00 00 00                                  	mov    eax,0x5
  52088c:	c2 08 00                                        	ret    0x8
  52088f:	a8 08                                           	test   al,0x8
  520891:	74 3a                                           	je     0x5208cd
  520893:	0f 2f a1 84 02 00 00                            	comiss xmm4,DWORD PTR [ecx+0x284]
  52089a:	72 2b                                           	jb     0x5208c7
  52089c:	0f 2f a9 88 02 00 00                            	comiss xmm5,DWORD PTR [ecx+0x288]
  5208a3:	72 22                                           	jb     0x5208c7
  5208a5:	f3 0f 10 81 8c 02 00 00                         	movss  xmm0,DWORD PTR [ecx+0x28c]
  5208ad:	0f 2f c4                                        	comiss xmm0,xmm4
  5208b0:	76 15                                           	jbe    0x5208c7
  5208b2:	f3 0f 10 81 90 02 00 00                         	movss  xmm0,DWORD PTR [ecx+0x290]
  5208ba:	0f 2f c5                                        	comiss xmm0,xmm5
  5208bd:	76 08                                           	jbe    0x5208c7
  5208bf:	b8 01 00 00 00                                  	mov    eax,0x1
  5208c4:	c2 08 00                                        	ret    0x8
  5208c7:	83 c8 ff                                        	or     eax,0xffffffff
  5208ca:	c2 08 00                                        	ret    0x8
  5208cd:	33 c0                                           	xor    eax,eax
  5208cf:	c2 08 00                                        	ret    0x8
