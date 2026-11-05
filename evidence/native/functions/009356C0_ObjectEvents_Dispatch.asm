# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009356c0, 0x00935701); analyst name ObjectEvents_Dispatch.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009356c0 <.text+0x5346c0>:
  9356c0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  9356c4:	53                   	push   ebx
  9356c5:	56                   	push   esi
  9356c6:	8b 34 85 a8 d2 1d 01 	mov    esi,DWORD PTR [eax*4+0x11dd2a8]
  9356cd:	85 f6                	test   esi,esi
  9356cf:	57                   	push   edi
  9356d0:	74 23                	je     0x9356f5
  9356d2:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  9356d6:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  9356da:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  9356e0:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  9356e3:	57                   	push   edi
  9356e4:	53                   	push   ebx
  9356e5:	ff d1                	call   ecx
  9356e7:	83 c4 08             	add    esp,0x8
  9356ea:	84 c0                	test   al,al
  9356ec:	74 0d                	je     0x9356fb
  9356ee:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
  9356f1:	85 f6                	test   esi,esi
  9356f3:	75 eb                	jne    0x9356e0
  9356f5:	5f                   	pop    edi
  9356f6:	5e                   	pop    esi
  9356f7:	b0 01                	mov    al,0x1
  9356f9:	5b                   	pop    ebx
  9356fa:	c3                   	ret
  9356fb:	5f                   	pop    edi
  9356fc:	5e                   	pop    esi
  9356fd:	32 c0                	xor    al,al
  9356ff:	5b                   	pop    ebx
  935700:	c3                   	ret
