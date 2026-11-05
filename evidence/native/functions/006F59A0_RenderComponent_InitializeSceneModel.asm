# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006f59a0 <.text+0x2f49a0>:
  6f59a0:	55                   	push   ebp
  6f59a1:	8b ec                	mov    ebp,esp
  6f59a3:	83 e4 f0             	and    esp,0xfffffff0
  6f59a6:	83 ec 1c             	sub    esp,0x1c
  6f59a9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  6f59ac:	56                   	push   esi
  6f59ad:	8b f1                	mov    esi,ecx
  6f59af:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  6f59b2:	50                   	push   eax
  6f59b3:	51                   	push   ecx
  6f59b4:	8b ce                	mov    ecx,esi
  6f59b6:	e8 25 7b 00 00       	call   0x6fd4e0
  6f59bb:	8d 8e 10 02 00 00    	lea    ecx,[esi+0x210]
  6f59c1:	c7 06 40 a8 ff 00    	mov    DWORD PTR [esi],0xffa840
  6f59c7:	e8 e4 78 fe ff       	call   0x6dd2b0
  6f59cc:	f3 0f 10 05 24 12 06 	movss  xmm0,DWORD PTR ds:0x1061224
  6f59d3:	01 
  6f59d4:	33 c0                	xor    eax,eax
  6f59d6:	89 86 88 02 00 00    	mov    DWORD PTR [esi+0x288],eax
  6f59dc:	89 86 8c 02 00 00    	mov    DWORD PTR [esi+0x28c],eax
  6f59e2:	89 86 90 02 00 00    	mov    DWORD PTR [esi+0x290],eax
  6f59e8:	c7 86 94 02 00 00 1c 	mov    DWORD PTR [esi+0x294],0xffa81c
  6f59ef:	a8 ff 00 
  6f59f2:	80 a6 9e 02 00 00 f8 	and    BYTE PTR [esi+0x29e],0xf8
  6f59f9:	81 4e 44 08 00 00 01 	or     DWORD PTR [esi+0x44],0x1000008
  6f5a00:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6f5a06:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6f5a0c:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6f5a12:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6f5a18:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6f5a1d:	0f 29 46 50          	movaps XMMWORD PTR [esi+0x50],xmm0
  6f5a21:	f3 0f 10 05 b4 35 fb 	movss  xmm0,DWORD PTR ds:0xfb35b4
  6f5a28:	00 
  6f5a29:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6f5a2f:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6f5a35:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6f5a3b:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6f5a41:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6f5a46:	89 86 98 02 00 00    	mov    DWORD PTR [esi+0x298],eax
  6f5a4c:	89 86 a0 02 00 00    	mov    DWORD PTR [esi+0x2a0],eax
  6f5a52:	89 86 a4 02 00 00    	mov    DWORD PTR [esi+0x2a4],eax
  6f5a58:	89 86 a8 02 00 00    	mov    DWORD PTR [esi+0x2a8],eax
  6f5a5e:	89 86 ac 02 00 00    	mov    DWORD PTR [esi+0x2ac],eax
  6f5a64:	89 86 b4 02 00 00    	mov    DWORD PTR [esi+0x2b4],eax
  6f5a6a:	89 86 b8 02 00 00    	mov    DWORD PTR [esi+0x2b8],eax
  6f5a70:	c6 86 9c 02 00 00 10 	mov    BYTE PTR [esi+0x29c],0x10
  6f5a77:	c6 86 9d 02 00 00 02 	mov    BYTE PTR [esi+0x29d],0x2
  6f5a7e:	66 c7 86 b0 02 00 00 	mov    WORD PTR [esi+0x2b0],0x64
  6f5a85:	64 00 
  6f5a87:	0f 29 46 60          	movaps XMMWORD PTR [esi+0x60],xmm0
  6f5a8b:	89 b6 68 02 00 00    	mov    DWORD PTR [esi+0x268],esi
  6f5a91:	8b c6                	mov    eax,esi
  6f5a93:	5e                   	pop    esi
  6f5a94:	8b e5                	mov    esp,ebp
  6f5a96:	5d                   	pop    ebp
  6f5a97:	c2 08 00             	ret    0x8
