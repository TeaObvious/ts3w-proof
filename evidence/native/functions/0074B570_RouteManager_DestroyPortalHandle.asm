# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074b570,0x0074b598); analyst name RouteManager_DestroyPortalHandle.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b570 <.text+0x34a570>:
  74b570:	e8 1b de 01 00       	call   0x769390
  74b575:	85 c0                	test   eax,eax
  74b577:	74 1e                	je     0x74b597
  74b579:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  74b57d:	8b 10                	mov    edx,DWORD PTR [eax]
  74b57f:	8b 92 d8 00 00 00    	mov    edx,DWORD PTR [edx+0xd8]
  74b585:	51                   	push   ecx
  74b586:	8b c8                	mov    ecx,eax
  74b588:	ff d2                	call   edx
  74b58a:	85 c0                	test   eax,eax
  74b58c:	74 09                	je     0x74b597
  74b58e:	8b 10                	mov    edx,DWORD PTR [eax]
  74b590:	8b c8                	mov    ecx,eax
  74b592:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  74b595:	ff e0                	jmp    eax
  74b597:	c3                   	ret
