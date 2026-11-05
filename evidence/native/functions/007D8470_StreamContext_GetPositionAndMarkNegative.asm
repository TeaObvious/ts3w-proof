# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d8470 <.text+0x3d7470>:
  7d8470:	56                   	push   esi
  7d8471:	8b f1                	mov    esi,ecx
  7d8473:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7d8476:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d8478:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  7d847b:	6a 00                	push   0x0
  7d847d:	ff d2                	call   edx
  7d847f:	85 c0                	test   eax,eax
  7d8481:	7d 04                	jge    0x7d8487
  7d8483:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  7d8487:	5e                   	pop    esi
  7d8488:	c3                   	ret
