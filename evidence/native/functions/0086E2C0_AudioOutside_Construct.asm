# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0086e2c0 <.text+0x46d2c0>:
  86e2c0:	0f 57 c0                                        	xorps  xmm0,xmm0
  86e2c3:	8b c1                                           	mov    eax,ecx
  86e2c5:	c7 40 04 8c 2b fa 00                            	mov    DWORD PTR [eax+0x4],0xfa2b8c
  86e2cc:	c7 40 08 a4 bb 02 01                            	mov    DWORD PTR [eax+0x8],0x102bba4
  86e2d3:	33 c9                                           	xor    ecx,ecx
  86e2d5:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  86e2d8:	ba 01 00 00 00                                  	mov    edx,0x1
  86e2dd:	f3 0f 11 40 14                                  	movss  DWORD PTR [eax+0x14],xmm0
  86e2e2:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  86e2ea:	88 50 10                                        	mov    BYTE PTR [eax+0x10],dl
  86e2ed:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
  86e2f0:	89 48 1c                                        	mov    DWORD PTR [eax+0x1c],ecx
  86e2f3:	c7 00 c8 ad 02 01                               	mov    DWORD PTR [eax],0x102adc8
  86e2f9:	c7 40 04 20 a9 02 01                            	mov    DWORD PTR [eax+0x4],0x102a920
  86e300:	c7 40 08 d0 aa 02 01                            	mov    DWORD PTR [eax+0x8],0x102aad0
  86e307:	89 48 20                                        	mov    DWORD PTR [eax+0x20],ecx
  86e30a:	f3 0f 11 40 2c                                  	movss  DWORD PTR [eax+0x2c],xmm0
  86e30f:	f3 0f 10 05 ec 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998ec
  86e317:	89 48 24                                        	mov    DWORD PTR [eax+0x24],ecx
  86e31a:	89 50 28                                        	mov    DWORD PTR [eax+0x28],edx
  86e31d:	f3 0f 11 40 30                                  	movss  DWORD PTR [eax+0x30],xmm0
  86e322:	c3                                              	ret
