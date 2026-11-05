# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE window.
Annotated entry: 0x00742ef0 (ScriptCore.LoadSaveManager::LoadSaveManager_GetCurrentSaveGameInfo_Impl)
Paired actual Ghidra pseudocode: 00742EF0_ScriptCore_LoadSaveManager_LoadSaveManager_GetCurrentSaveGameInfo_Impl.c
Stored Ghidra body: one address byte at 0x00742ef0; ZERO actual Listing instructions.
Bounded PE window [0x00742ef0,0x00742f30); 64 original bytes.
The following GNU objdump decoding is bounded PE evidence, not existing Listing code.
A window can include padding or other code; it is not a complete stored function body.
No instruction, body, type, prototype or flow repair was performed.

ORIGINAL BYTES (16 per line)
00742ef0: 56 e8 9a 64 02 00 8b f0 85 f6 75 04 33 c0 5e c3
00742f00: e8 bb 6a 36 00 85 c0 74 f3 8b c8 e8 60 f0 de ff
00742f10: 85 c0 74 e8 83 40 04 01 8b 16 6a 40 50 8b 82 c8
00742f20: 00 00 00 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

BOUNDED PRISTINE PE LINEAR DECODING
00742ef0 <original>:
  00742ef0:	56                                             	push   esi
  00742ef1:	e8 9a 64 02 00                                 	call   0x769390
  00742ef6:	8b f0                                          	mov    esi,eax
  00742ef8:	85 f6                                          	test   esi,esi
  00742efa:	75 04                                          	jne    0x742f00
  00742efc:	33 c0                                          	xor    eax,eax
  00742efe:	5e                                             	pop    esi
  00742eff:	c3                                             	ret
  00742f00:	e8 bb 6a 36 00                                 	call   0xaa99c0
  00742f05:	85 c0                                          	test   eax,eax
  00742f07:	74 f3                                          	je     0x742efc
  00742f09:	8b c8                                          	mov    ecx,eax
  00742f0b:	e8 60 f0 de ff                                 	call   0x531f70
  00742f10:	85 c0                                          	test   eax,eax
  00742f12:	74 e8                                          	je     0x742efc
  00742f14:	83 40 04 01                                    	add    DWORD PTR [eax+0x4],0x1
  00742f18:	8b 16                                          	mov    edx,DWORD PTR [esi]
  00742f1a:	6a 40                                          	push   0x40
  00742f1c:	50                                             	push   eax
  00742f1d:	8b 82 c8 00 00 00                              	mov    eax,DWORD PTR [edx+0xc8]
  00742f23:	8b ce                                          	mov    ecx,esi
  00742f25:	ff d0                                          	call   eax
  00742f27:	5e                                             	pop    esi
  00742f28:	c3                                             	ret
  00742f29:	cc                                             	int3
  00742f2a:	cc                                             	int3
  00742f2b:	cc                                             	int3
  00742f2c:	cc                                             	int3
  00742f2d:	cc                                             	int3
  00742f2e:	cc                                             	int3
  00742f2f:	cc                                             	int3
