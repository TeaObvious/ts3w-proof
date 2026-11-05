# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00617fc0 <.text+0x216fc0>:
  617fc0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  617fc4:	8b d1                	mov    edx,ecx
  617fc6:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  617fc9:	f7 d8                	neg    eax
  617fcb:	d3 f8                	sar    eax,cl
  617fcd:	0f af 42 14          	imul   eax,DWORD PTR [edx+0x14]
  617fd1:	f7 d8                	neg    eax
  617fd3:	c2 04 00             	ret    0x4
