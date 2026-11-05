# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d93e0 <.text+0x3d83e0>:
  7d93e0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  7d93e4:	56                   	push   esi
  7d93e5:	8b f1                	mov    esi,ecx
  7d93e7:	33 c9                	xor    ecx,ecx
  7d93e9:	50                   	push   eax
  7d93ea:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  7d93ed:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  7d93f1:	89 0e                	mov    DWORD PTR [esi],ecx
  7d93f3:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  7d93f6:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  7d93f9:	88 4e 15             	mov    BYTE PTR [esi+0x15],cl
  7d93fc:	50                   	push   eax
  7d93fd:	8b ce                	mov    ecx,esi
  7d93ff:	c6 46 14 01          	mov    BYTE PTR [esi+0x14],0x1
  7d9403:	e8 08 f0 ff ff       	call   0x7d8410
  7d9408:	8b c6                	mov    eax,esi
  7d940a:	5e                   	pop    esi
  7d940b:	c2 08 00             	ret    0x8
