# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x007510c0,0x00751100); analyst name Route_ClearForbiddenPortalList.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007510c0 <.text+0x3500c0>:
  7510c0:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  7510c6:	85 c9                	test   ecx,ecx
  7510c8:	74 35                	je     0x7510ff
  7510ca:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7510ce:	56                   	push   esi
  7510cf:	50                   	push   eax
  7510d0:	e8 db a3 ff ff       	call   0x74b4b0
  7510d5:	8b f0                	mov    esi,eax
  7510d7:	85 f6                	test   esi,esi
  7510d9:	74 23                	je     0x7510fe
  7510db:	8b 16                	mov    edx,DWORD PTR [esi]
  7510dd:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  7510e0:	8b ce                	mov    ecx,esi
  7510e2:	ff d0                	call   eax
  7510e4:	8d 8e 58 01 00 00    	lea    ecx,[esi+0x158]
  7510ea:	e8 51 b4 0c 00       	call   0x81c540
  7510ef:	8b 08                	mov    ecx,DWORD PTR [eax]
  7510f1:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  7510f4:	8b 16                	mov    edx,DWORD PTR [esi]
  7510f6:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  7510f9:	8b ce                	mov    ecx,esi
  7510fb:	5e                   	pop    esi
  7510fc:	ff e0                	jmp    eax
  7510fe:	5e                   	pop    esi
  7510ff:	c3                   	ret
