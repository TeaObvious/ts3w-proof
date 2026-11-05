# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074d5b0,0x0074d5f5); analyst name Route_SetPreferredPortal.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074d5b0 <.text+0x34c5b0>:
  74d5b0:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  74d5b6:	85 c9                	test   ecx,ecx
  74d5b8:	74 3a                	je     0x74d5f4
  74d5ba:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  74d5be:	56                   	push   esi
  74d5bf:	50                   	push   eax
  74d5c0:	e8 eb de ff ff       	call   0x74b4b0
  74d5c5:	8b f0                	mov    esi,eax
  74d5c7:	85 f6                	test   esi,esi
  74d5c9:	74 28                	je     0x74d5f3
  74d5cb:	8b 16                	mov    edx,DWORD PTR [esi]
  74d5cd:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  74d5d0:	8b ce                	mov    ecx,esi
  74d5d2:	ff d0                	call   eax
  74d5d4:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  74d5d8:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  74d5dc:	51                   	push   ecx
  74d5dd:	52                   	push   edx
  74d5de:	8d 8e 58 01 00 00    	lea    ecx,[esi+0x158]
  74d5e4:	e8 67 ef 0c 00       	call   0x81c550
  74d5e9:	8b 06                	mov    eax,DWORD PTR [esi]
  74d5eb:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  74d5ee:	8b ce                	mov    ecx,esi
  74d5f0:	5e                   	pop    esi
  74d5f1:	ff e2                	jmp    edx
  74d5f3:	5e                   	pop    esi
  74d5f4:	c3                   	ret
