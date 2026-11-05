# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b09680 <.text+0x708680>:
  b09680:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  b09684:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  b09688:	2b d0                	sub    edx,eax
  b0968a:	c1 fa 02             	sar    edx,0x2
  b0968d:	85 d2                	test   edx,edx
  b0968f:	7e 2d                	jle    0xb096be
  b09691:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  b09695:	56                   	push   esi
  b09696:	8b 31                	mov    esi,DWORD PTR [ecx]
  b09698:	57                   	push   edi
  b09699:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b096a0:	8b ca                	mov    ecx,edx
  b096a2:	d1 f9                	sar    ecx,1
  b096a4:	39 34 88             	cmp    DWORD PTR [eax+ecx*4],esi
  b096a7:	73 0d                	jae    0xb096b6
  b096a9:	83 cf ff             	or     edi,0xffffffff
  b096ac:	2b f9                	sub    edi,ecx
  b096ae:	8d 44 88 04          	lea    eax,[eax+ecx*4+0x4]
  b096b2:	03 d7                	add    edx,edi
  b096b4:	eb 02                	jmp    0xb096b8
  b096b6:	8b d1                	mov    edx,ecx
  b096b8:	85 d2                	test   edx,edx
  b096ba:	7f e4                	jg     0xb096a0
  b096bc:	5f                   	pop    edi
  b096bd:	5e                   	pop    esi
  b096be:	c3                   	ret
