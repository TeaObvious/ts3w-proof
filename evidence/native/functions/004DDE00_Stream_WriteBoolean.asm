# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dde00 <.text+0xdce00>:
  4dde00:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
  4dde05:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  4dde09:	8b 11                	mov    edx,DWORD PTR [ecx]
  4dde0b:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  4dde0e:	0f 95 c0             	setne  al
  4dde11:	88 44 24 08          	mov    BYTE PTR [esp+0x8],al
  4dde15:	6a 01                	push   0x1
  4dde17:	8d 44 24 0c          	lea    eax,[esp+0xc]
  4dde1b:	50                   	push   eax
  4dde1c:	ff d2                	call   edx
  4dde1e:	2c 01                	sub    al,0x1
  4dde20:	f6 d8                	neg    al
  4dde22:	1b c0                	sbb    eax,eax
  4dde24:	83 c0 01             	add    eax,0x1
  4dde27:	c3                   	ret
