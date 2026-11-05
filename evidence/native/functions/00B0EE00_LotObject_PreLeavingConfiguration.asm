# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00b0ee00, 0x00b0ee4e); analyst name LotObject_PreLeavingConfiguration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0ee00 <.text+0x70de00>:
  b0ee00:	56                   	push   esi
  b0ee01:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  b0ee05:	85 f6                	test   esi,esi
  b0ee07:	74 43                	je     0xb0ee4c
  b0ee09:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  b0ee0f:	8d 46 18             	lea    eax,[esi+0x18]
  b0ee12:	50                   	push   eax
  b0ee13:	e8 98 fd 17 00       	call   0xc8ebb0
  b0ee18:	85 c0                	test   eax,eax
  b0ee1a:	74 30                	je     0xb0ee4c
  b0ee1c:	8b 88 d4 00 00 00    	mov    ecx,DWORD PTR [eax+0xd4]
  b0ee22:	3b 88 d8 00 00 00    	cmp    ecx,DWORD PTR [eax+0xd8]
  b0ee28:	74 0b                	je     0xb0ee35
  b0ee2a:	56                   	push   esi
  b0ee2b:	e8 f0 d2 ff ff       	call   0xb0c120
  b0ee30:	83 c4 04             	add    esp,0x4
  b0ee33:	5e                   	pop    esi
  b0ee34:	c3                   	ret
  b0ee35:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
  b0ee3b:	c1 ea 19             	shr    edx,0x19
  b0ee3e:	f6 c2 01             	test   dl,0x1
  b0ee41:	74 09                	je     0xb0ee4c
  b0ee43:	56                   	push   esi
  b0ee44:	e8 d7 2b ff ff       	call   0xb01a20
  b0ee49:	83 c4 04             	add    esp,0x4
  b0ee4c:	5e                   	pop    esi
  b0ee4d:	c3                   	ret
