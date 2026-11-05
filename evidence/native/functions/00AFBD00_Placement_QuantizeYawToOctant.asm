# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00afbd00 <.text+0x6fad00>:
  afbd00:	51                   	push   ecx
  afbd01:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  afbd07:	f3 0f 5e 05 d4 45 18 	divss  xmm0,DWORD PTR ds:0x11845d4
  afbd0e:	01 
  afbd0f:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  afbd14:	d9 04 24             	fld    DWORD PTR [esp]
  afbd17:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
  afbd1b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  afbd1f:	25 07 00 00 80       	and    eax,0x80000007
  afbd24:	79 05                	jns    0xafbd2b
  afbd26:	48                   	dec    eax
  afbd27:	83 c8 f8             	or     eax,0xfffffff8
  afbd2a:	40                   	inc    eax
  afbd2b:	83 e0 07             	and    eax,0x7
  afbd2e:	59                   	pop    ecx
  afbd2f:	c3                   	ret
