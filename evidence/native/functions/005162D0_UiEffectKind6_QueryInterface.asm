# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x005162d0 (UiEffectKind6_QueryInterface)
Paired actual Ghidra pseudocode: 005162D0_UiEffectKind6_QueryInterface.c
Envelope [0x005162d0,0x005162f3); 35 pristine bytes.
Owned: 35 original bytes / 11 actual saved Listing instructions; no body gaps.
Saved body: [[005162d0, 005162f2]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
005162d0 <original>:
  005162d0:	8b 44 24 04                                    	MOV EAX,dword ptr [ESP + 0x4]
  005162d4:	3d 2f 9c 23 08                                 	CMP EAX,0x8239c2f
  005162d9:	74 09                                          	JZ 0x005162e4
  005162db:	89 44 24 04                                    	MOV dword ptr [ESP + 0x4],EAX
  005162df:	e9 9c e8 fe ff                                 	JMP 0x00504b80
  005162e4:	85 c9                                          	TEST ECX,ECX
  005162e6:	74 06                                          	JZ 0x005162ee
  005162e8:	8d 41 10                                       	LEA EAX,[ECX + 0x10]
  005162eb:	c2 04 00                                       	RET 0x4
  005162ee:	33 c0                                          	XOR EAX,EAX
  005162f0:	c2 04 00                                       	RET 0x4
