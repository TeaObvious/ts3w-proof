# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00f7f656 <.text+0xb7e656>:
  f7f656:	55                   	push   ebp
  f7f657:	8b ec                	mov    ebp,esp
  f7f659:	83 ec 20             	sub    esp,0x20
  f7f65c:	83 e4 f0             	and    esp,0xfffffff0
  f7f65f:	d9 c0                	fld    st(0)
  f7f661:	d9 54 24 18          	fst    DWORD PTR [esp+0x18]
  f7f665:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
  f7f669:	df 6c 24 10          	fild   QWORD PTR [esp+0x10]
  f7f66d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  f7f671:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  f7f675:	85 c0                	test   eax,eax
  f7f677:	74 3c                	je     0xf7f6b5
  f7f679:	de e9                	fsubp  st(1),st
  f7f67b:	85 d2                	test   edx,edx
  f7f67d:	79 1e                	jns    0xf7f69d
  f7f67f:	d9 1c 24             	fstp   DWORD PTR [esp]
  f7f682:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
  f7f685:	81 f1 00 00 00 80    	xor    ecx,0x80000000
  f7f68b:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
  f7f691:	83 d0 00             	adc    eax,0x0
  f7f694:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  f7f698:	83 d2 00             	adc    edx,0x0
  f7f69b:	eb 2c                	jmp    0xf7f6c9
  f7f69d:	d9 1c 24             	fstp   DWORD PTR [esp]
  f7f6a0:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
  f7f6a3:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
  f7f6a9:	83 d8 00             	sbb    eax,0x0
  f7f6ac:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  f7f6b0:	83 da 00             	sbb    edx,0x0
  f7f6b3:	eb 14                	jmp    0xf7f6c9
  f7f6b5:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  f7f6b9:	f7 c2 ff ff ff 7f    	test   edx,0x7fffffff
  f7f6bf:	75 b8                	jne    0xf7f679
  f7f6c1:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  f7f6c5:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  f7f6c9:	c9                   	leave
  f7f6ca:	c3                   	ret
