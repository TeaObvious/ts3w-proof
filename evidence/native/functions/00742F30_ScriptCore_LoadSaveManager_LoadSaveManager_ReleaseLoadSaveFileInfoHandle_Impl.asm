# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE window.
Annotated entry: 0x00742f30 (ScriptCore.LoadSaveManager::LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl)
Paired actual Ghidra pseudocode: 00742F30_ScriptCore_LoadSaveManager_LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl.c
Stored Ghidra body: one address byte at 0x00742f30; ZERO actual Listing instructions.
Bounded PE window [0x00742f30,0x00742f70); 64 original bytes.
The following GNU objdump decoding is bounded PE evidence, not existing Listing code.
A window can include padding or other code; it is not a complete stored function body.
No instruction, body, type, prototype or flow repair was performed.

ORIGINAL BYTES (16 per line)
00742f30: e8 5b 64 02 00 85 c0 75 03 32 c0 c3 8b 4c 24 04
00742f40: 8b 10 8b 92 d8 00 00 00 51 8b c8 ff d2 85 c0 74
00742f50: 1c 8b 48 04 83 c1 ff 89 48 04 75 11 c7 40 04 01
00742f60: 00 00 00 8b 10 8b c8 8b 02 6a 01 ff d0 b0 01 c3

BOUNDED PRISTINE PE LINEAR DECODING
00742f30 <original>:
  00742f30:	e8 5b 64 02 00                                 	call   0x769390
  00742f35:	85 c0                                          	test   eax,eax
  00742f37:	75 03                                          	jne    0x742f3c
  00742f39:	32 c0                                          	xor    al,al
  00742f3b:	c3                                             	ret
  00742f3c:	8b 4c 24 04                                    	mov    ecx,DWORD PTR [esp+0x4]
  00742f40:	8b 10                                          	mov    edx,DWORD PTR [eax]
  00742f42:	8b 92 d8 00 00 00                              	mov    edx,DWORD PTR [edx+0xd8]
  00742f48:	51                                             	push   ecx
  00742f49:	8b c8                                          	mov    ecx,eax
  00742f4b:	ff d2                                          	call   edx
  00742f4d:	85 c0                                          	test   eax,eax
  00742f4f:	74 1c                                          	je     0x742f6d
  00742f51:	8b 48 04                                       	mov    ecx,DWORD PTR [eax+0x4]
  00742f54:	83 c1 ff                                       	add    ecx,0xffffffff
  00742f57:	89 48 04                                       	mov    DWORD PTR [eax+0x4],ecx
  00742f5a:	75 11                                          	jne    0x742f6d
  00742f5c:	c7 40 04 01 00 00 00                           	mov    DWORD PTR [eax+0x4],0x1
  00742f63:	8b 10                                          	mov    edx,DWORD PTR [eax]
  00742f65:	8b c8                                          	mov    ecx,eax
  00742f67:	8b 02                                          	mov    eax,DWORD PTR [edx]
  00742f69:	6a 01                                          	push   0x1
  00742f6b:	ff d0                                          	call   eax
  00742f6d:	b0 01                                          	mov    al,0x1
  00742f6f:	c3                                             	ret
