# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00b0edb0, 0x00b0edfe); analyst name LotObject_PostReachingConfiguration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0edb0 <.text+0x70ddb0>:
  b0edb0:	56                   	push   esi
  b0edb1:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  b0edb5:	85 f6                	test   esi,esi
  b0edb7:	74 43                	je     0xb0edfc
  b0edb9:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  b0edbf:	8d 46 18             	lea    eax,[esi+0x18]
  b0edc2:	50                   	push   eax
  b0edc3:	e8 e8 fd 17 00       	call   0xc8ebb0
  b0edc8:	85 c0                	test   eax,eax
  b0edca:	74 30                	je     0xb0edfc
  b0edcc:	8b 88 d4 00 00 00    	mov    ecx,DWORD PTR [eax+0xd4]
  b0edd2:	3b 88 d8 00 00 00    	cmp    ecx,DWORD PTR [eax+0xd8]
  b0edd8:	74 0b                	je     0xb0ede5
  b0edda:	56                   	push   esi
  b0eddb:	e8 80 ce ff ff       	call   0xb0bc60
  b0ede0:	83 c4 04             	add    esp,0x4
  b0ede3:	5e                   	pop    esi
  b0ede4:	c3                   	ret
  b0ede5:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
  b0edeb:	c1 ea 19             	shr    edx,0x19
  b0edee:	f6 c2 01             	test   dl,0x1
  b0edf1:	74 09                	je     0xb0edfc
  b0edf3:	56                   	push   esi
  b0edf4:	e8 87 93 ff ff       	call   0xb08180
  b0edf9:	83 c4 04             	add    esp,0x4
  b0edfc:	5e                   	pop    esi
  b0edfd:	c3                   	ret
