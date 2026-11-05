# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x00516460 (UiEffectKind6_InitializeInterfaces)
Paired actual Ghidra pseudocode: 00516460_UiEffectKind6_InitializeInterfaces.c
Envelope [0x00516460,0x005164a3); 67 pristine bytes.
Owned: 67 original bytes / 16 actual saved Listing instructions; no body gaps.
Saved body: [[00516460, 005164a2]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00516460 <original>:
  00516460:	8b c1                                          	MOV EAX,ECX
  00516462:	c7 40 04 fc b1 fb 00                           	MOV dword ptr [EAX + 0x4],0xfbb1fc
  00516469:	33 c9                                          	XOR ECX,ECX
  0051646b:	89 48 08                                       	MOV dword ptr [EAX + 0x8],ECX
  0051646e:	88 48 0c                                       	MOV byte ptr [EAX + 0xc],CL
  00516471:	c7 40 10 10 bc fb 00                           	MOV dword ptr [EAX + 0x10],0xfbbc10
  00516478:	c7 00 20 bd fb 00                              	MOV dword ptr [EAX],0xfbbd20
  0051647e:	c7 40 04 08 bd fb 00                           	MOV dword ptr [EAX + 0x4],0xfbbd08
  00516485:	c7 40 10 40 bc fb 00                           	MOV dword ptr [EAX + 0x10],0xfbbc40
  0051648c:	89 48 14                                       	MOV dword ptr [EAX + 0x14],ECX
  0051648f:	c7 40 18 01 00 00 00                           	MOV dword ptr [EAX + 0x18],0x1
  00516496:	88 48 1c                                       	MOV byte ptr [EAX + 0x1c],CL
  00516499:	88 48 1d                                       	MOV byte ptr [EAX + 0x1d],CL
  0051649c:	89 48 20                                       	MOV dword ptr [EAX + 0x20],ECX
  0051649f:	89 48 24                                       	MOV dword ptr [EAX + 0x24],ECX
  005164a2:	c3                                             	RET
