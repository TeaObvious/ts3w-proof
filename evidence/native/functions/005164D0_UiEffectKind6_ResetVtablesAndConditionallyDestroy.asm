# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x005164d0 (UiEffectKind6_ResetVtablesAndConditionallyDestroy)
Paired actual Ghidra pseudocode: 005164D0_UiEffectKind6_ResetVtablesAndConditionallyDestroy.c
Envelope [0x005164d0,0x00516504); 52 pristine bytes.
Owned: 52 original bytes / 16 actual saved Listing instructions; no body gaps.
Saved body: [[005164d0, 00516503]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
005164d0 <original>:
  005164d0:	f6 44 24 04 01                                 	TEST byte ptr [ESP + 0x4],0x1
  005164d5:	56                                             	PUSH ESI
  005164d6:	8b f1                                          	MOV ESI,ECX
  005164d8:	b8 80 2b fa 00                                 	MOV EAX,0xfa2b80
  005164dd:	c7 46 10 40 bc fb 00                           	MOV dword ptr [ESI + 0x10],0xfbbc40
  005164e4:	89 46 10                                       	MOV dword ptr [ESI + 0x10],EAX
  005164e7:	c7 46 04 94 c9 fb 00                           	MOV dword ptr [ESI + 0x4],0xfbc994
  005164ee:	89 46 04                                       	MOV dword ptr [ESI + 0x4],EAX
  005164f1:	89 06                                          	MOV dword ptr [ESI],EAX
  005164f3:	74 09                                          	JZ 0x005164fe
  005164f5:	56                                             	PUSH ESI
  005164f6:	e8 85 eb fe ff                                 	CALL 0x00505080
  005164fb:	83 c4 04                                       	ADD ESP,0x4
  005164fe:	8b c6                                          	MOV EAX,ESI
  00516500:	5e                                             	POP ESI
  00516501:	c2 04 00                                       	RET 0x4
