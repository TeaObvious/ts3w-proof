# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00693380 <.text+0x292380>:
  693380:	e8 3b 0c f0 ff       	call   0x593fc0
  693385:	85 c0                	test   eax,eax
  693387:	74 0f                	je     0x693398
  693389:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  69338d:	51                   	push   ecx
  69338e:	8b c8                	mov    ecx,eax
  693390:	e8 cb 15 f0 ff       	call   0x594960
  693395:	b0 01                	mov    al,0x1
  693397:	c3                   	ret
  693398:	32 c0                	xor    al,al
  69339a:	c3                   	ret
