# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE window.
Annotated entry: 0x00742d00 (ScriptCore.LoadSaveManager::LoadSaveManager_GetCurrentGameGuid_Impl)
Paired actual Ghidra pseudocode: 00742D00_ScriptCore_LoadSaveManager_LoadSaveManager_GetCurrentGameGuid_Impl.c
Stored Ghidra body: one address byte at 0x00742d00; ZERO actual Listing instructions.
Bounded PE window [0x00742d00,0x00742d30); 48 original bytes.
The following GNU objdump decoding is bounded PE evidence, not existing Listing code.
A window can include padding or other code; it is not a complete stored function body.
No instruction, body, type, prototype or flow repair was performed.

ORIGINAL BYTES (16 per line)
00742d00: 56 57 33 f6 33 ff e8 85 66 02 00 85 c0 74 14 e8
00742d10: ac 6c 36 00 85 c0 74 0b 8b 48 58 8b 50 5c 5f 8b
00742d20: c1 5e c3 8b d7 5f 8b c6 5e c3 cc cc cc cc cc cc

BOUNDED PRISTINE PE LINEAR DECODING
00742d00 <original>:
  00742d00:	56                                             	push   esi
  00742d01:	57                                             	push   edi
  00742d02:	33 f6                                          	xor    esi,esi
  00742d04:	33 ff                                          	xor    edi,edi
  00742d06:	e8 85 66 02 00                                 	call   0x769390
  00742d0b:	85 c0                                          	test   eax,eax
  00742d0d:	74 14                                          	je     0x742d23
  00742d0f:	e8 ac 6c 36 00                                 	call   0xaa99c0
  00742d14:	85 c0                                          	test   eax,eax
  00742d16:	74 0b                                          	je     0x742d23
  00742d18:	8b 48 58                                       	mov    ecx,DWORD PTR [eax+0x58]
  00742d1b:	8b 50 5c                                       	mov    edx,DWORD PTR [eax+0x5c]
  00742d1e:	5f                                             	pop    edi
  00742d1f:	8b c1                                          	mov    eax,ecx
  00742d21:	5e                                             	pop    esi
  00742d22:	c3                                             	ret
  00742d23:	8b d7                                          	mov    edx,edi
  00742d25:	5f                                             	pop    edi
  00742d26:	8b c6                                          	mov    eax,esi
  00742d28:	5e                                             	pop    esi
  00742d29:	c3                                             	ret
  00742d2a:	cc                                             	int3
  00742d2b:	cc                                             	int3
  00742d2c:	cc                                             	int3
  00742d2d:	cc                                             	int3
  00742d2e:	cc                                             	int3
  00742d2f:	cc                                             	int3
