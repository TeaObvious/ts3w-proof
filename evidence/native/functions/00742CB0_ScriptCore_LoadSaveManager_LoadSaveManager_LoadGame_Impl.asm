# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE window.
Annotated entry: 0x00742cb0 (ScriptCore.LoadSaveManager::LoadSaveManager_LoadGame_Impl)
Paired actual Ghidra pseudocode: 00742CB0_ScriptCore_LoadSaveManager_LoadSaveManager_LoadGame_Impl.c
Stored Ghidra body: one address byte at 0x00742cb0; ZERO actual Listing instructions.
Bounded PE window [0x00742cb0,0x00742d00); 80 original bytes.
The following GNU objdump decoding is bounded PE evidence, not existing Listing code.
A window can include padding or other code; it is not a complete stored function body.
No instruction, body, type, prototype or flow repair was performed.

ORIGINAL BYTES (16 per line)
00742cb0: 56 e8 da 66 02 00 8b f0 85 f6 75 04 32 c0 5e c3
00742cc0: 57 e8 fa 6c 36 00 8b f8 85 ff 74 15 8b 4c 24 0c
00742cd0: 8b 06 8b 90 cc 00 00 00 51 8b ce ff d2 85 c0 75
00742ce0: 05 5f 32 c0 5e c3 50 8b cf e8 52 ce 36 00 5f 5e
00742cf0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

BOUNDED PRISTINE PE LINEAR DECODING
00742cb0 <original>:
  00742cb0:	56                                             	push   esi
  00742cb1:	e8 da 66 02 00                                 	call   0x769390
  00742cb6:	8b f0                                          	mov    esi,eax
  00742cb8:	85 f6                                          	test   esi,esi
  00742cba:	75 04                                          	jne    0x742cc0
  00742cbc:	32 c0                                          	xor    al,al
  00742cbe:	5e                                             	pop    esi
  00742cbf:	c3                                             	ret
  00742cc0:	57                                             	push   edi
  00742cc1:	e8 fa 6c 36 00                                 	call   0xaa99c0
  00742cc6:	8b f8                                          	mov    edi,eax
  00742cc8:	85 ff                                          	test   edi,edi
  00742cca:	74 15                                          	je     0x742ce1
  00742ccc:	8b 4c 24 0c                                    	mov    ecx,DWORD PTR [esp+0xc]
  00742cd0:	8b 06                                          	mov    eax,DWORD PTR [esi]
  00742cd2:	8b 90 cc 00 00 00                              	mov    edx,DWORD PTR [eax+0xcc]
  00742cd8:	51                                             	push   ecx
  00742cd9:	8b ce                                          	mov    ecx,esi
  00742cdb:	ff d2                                          	call   edx
  00742cdd:	85 c0                                          	test   eax,eax
  00742cdf:	75 05                                          	jne    0x742ce6
  00742ce1:	5f                                             	pop    edi
  00742ce2:	32 c0                                          	xor    al,al
  00742ce4:	5e                                             	pop    esi
  00742ce5:	c3                                             	ret
  00742ce6:	50                                             	push   eax
  00742ce7:	8b cf                                          	mov    ecx,edi
  00742ce9:	e8 52 ce 36 00                                 	call   0xaafb40
  00742cee:	5f                                             	pop    edi
  00742cef:	5e                                             	pop    esi
  00742cf0:	c3                                             	ret
  00742cf1:	cc                                             	int3
  00742cf2:	cc                                             	int3
  00742cf3:	cc                                             	int3
  00742cf4:	cc                                             	int3
  00742cf5:	cc                                             	int3
  00742cf6:	cc                                             	int3
  00742cf7:	cc                                             	int3
  00742cf8:	cc                                             	int3
  00742cf9:	cc                                             	int3
  00742cfa:	cc                                             	int3
  00742cfb:	cc                                             	int3
  00742cfc:	cc                                             	int3
  00742cfd:	cc                                             	int3
  00742cfe:	cc                                             	int3
  00742cff:	cc                                             	int3
