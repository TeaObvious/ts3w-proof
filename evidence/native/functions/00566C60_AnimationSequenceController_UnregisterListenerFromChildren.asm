# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00566c60, 0x00566cae); analyst name AnimationSequenceController_UnregisterListenerFromChildren.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00566c60 <.text+0x165c60>:
  566c60:	53                   	push   ebx
  566c61:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  566c65:	56                   	push   esi
  566c66:	8b f1                	mov    esi,ecx
  566c68:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
  566c6b:	85 c0                	test   eax,eax
  566c6d:	57                   	push   edi
  566c6e:	74 09                	je     0x566c79
  566c70:	53                   	push   ebx
  566c71:	8d 48 0c             	lea    ecx,[eax+0xc]
  566c74:	e8 17 fd ff ff       	call   0x566990
  566c79:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  566c7c:	85 c0                	test   eax,eax
  566c7e:	74 09                	je     0x566c89
  566c80:	53                   	push   ebx
  566c81:	8d 48 0c             	lea    ecx,[eax+0xc]
  566c84:	e8 07 fd ff ff       	call   0x566990
  566c89:	8d 7e 30             	lea    edi,[esi+0x30]
  566c8c:	8b 37                	mov    esi,DWORD PTR [edi]
  566c8e:	3b f7                	cmp    esi,edi
  566c90:	74 16                	je     0x566ca8
  566c92:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  566c95:	85 c0                	test   eax,eax
  566c97:	74 09                	je     0x566ca2
  566c99:	53                   	push   ebx
  566c9a:	8d 48 0c             	lea    ecx,[eax+0xc]
  566c9d:	e8 ee fc ff ff       	call   0x566990
  566ca2:	8b 36                	mov    esi,DWORD PTR [esi]
  566ca4:	3b f7                	cmp    esi,edi
  566ca6:	75 ea                	jne    0x566c92
  566ca8:	5f                   	pop    edi
  566ca9:	5e                   	pop    esi
  566caa:	5b                   	pop    ebx
  566cab:	c2 04 00             	ret    0x4
