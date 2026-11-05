# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00599270, 0x005992f2).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00599270 <.text+0x198270>:
  599270:	83 ec 1c             	sub    esp,0x1c
  599273:	56                   	push   esi
  599274:	8b 35 d0 eb 1c 01    	mov    esi,DWORD PTR ds:0x11cebd0
  59927a:	e8 91 56 07 00       	call   0x60e910
  59927f:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  599283:	51                   	push   ecx
  599284:	8d 54 24 0c          	lea    edx,[esp+0xc]
  599288:	52                   	push   edx
  599289:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  59928d:	51                   	push   ecx
  59928e:	8b c8                	mov    ecx,eax
  599290:	e8 6b 5a 07 00       	call   0x60ed00
  599295:	8b 16                	mov    edx,DWORD PTR [esi]
  599297:	8b 52 40             	mov    edx,DWORD PTR [edx+0x40]
  59929a:	8d 44 24 10          	lea    eax,[esp+0x10]
  59929e:	50                   	push   eax
  59929f:	8b ce                	mov    ecx,esi
  5992a1:	ff d2                	call   edx
  5992a3:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  5992a7:	0f af 44 24 2c       	imul   eax,DWORD PTR [esp+0x2c]
  5992ac:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  5992b0:	2b 4c 24 10          	sub    ecx,DWORD PTR [esp+0x10]
  5992b4:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  5992b8:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  5992bc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  5992c0:	0f af 44 24 30       	imul   eax,DWORD PTR [esp+0x30]
  5992c5:	f3 0f 2a c9          	cvtsi2ss xmm1,ecx
  5992c9:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  5992cd:	2b 4c 24 14          	sub    ecx,DWORD PTR [esp+0x14]
  5992d1:	f3 0f 5e c1          	divss  xmm0,xmm1
  5992d5:	f3 0f 11 02          	movss  DWORD PTR [edx],xmm0
  5992d9:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  5992dd:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  5992e1:	f3 0f 2a c9          	cvtsi2ss xmm1,ecx
  5992e5:	f3 0f 5e c1          	divss  xmm0,xmm1
  5992e9:	f3 0f 11 02          	movss  DWORD PTR [edx],xmm0
  5992ed:	5e                   	pop    esi
  5992ee:	83 c4 1c             	add    esp,0x1c
  5992f1:	c3                   	ret
