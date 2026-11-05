# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE window.
Annotated entry: 0x00742be0 (ScriptCore.LoadSaveManager::LoadSaveManager_CreateNativeWriter)
Paired actual Ghidra pseudocode: 00742BE0_ScriptCore_LoadSaveManager_LoadSaveManager_CreateNativeWriter.c
Stored Ghidra body: one address byte at 0x00742be0; ZERO actual Listing instructions.
Bounded PE window [0x00742be0,0x00742c30); 80 original bytes.
The following GNU objdump decoding is bounded PE evidence, not existing Listing code.
A window can include padding or other code; it is not a complete stored function body.
No instruction, body, type, prototype or flow repair was performed.

ORIGINAL BYTES (16 per line)
00742be0: 56 6a 00 6a 00 6a 00 6a 00 68 e4 23 00 01 68 9c
00742bf0: 00 00 00 e8 08 19 da ff 83 c4 18 85 c0 74 0d 8b
00742c00: c8 e8 9a 16 09 00 8b f0 85 f6 75 04 33 c0 5e c3
00742c10: 8b ce e8 39 1b 09 00 e8 74 67 02 00 8b 10 6a 44
00742c20: 8b c8 8b 82 c8 00 00 00 56 ff d0 5e c3 cc cc cc

BOUNDED PRISTINE PE LINEAR DECODING
00742be0 <original>:
  00742be0:	56                                             	push   esi
  00742be1:	6a 00                                          	push   0x0
  00742be3:	6a 00                                          	push   0x0
  00742be5:	6a 00                                          	push   0x0
  00742be7:	6a 00                                          	push   0x0
  00742be9:	68 e4 23 00 01                                 	push   0x10023e4
  00742bee:	68 9c 00 00 00                                 	push   0x9c
  00742bf3:	e8 08 19 da ff                                 	call   0x4e4500
  00742bf8:	83 c4 18                                       	add    esp,0x18
  00742bfb:	85 c0                                          	test   eax,eax
  00742bfd:	74 0d                                          	je     0x742c0c
  00742bff:	8b c8                                          	mov    ecx,eax
  00742c01:	e8 9a 16 09 00                                 	call   0x7d42a0
  00742c06:	8b f0                                          	mov    esi,eax
  00742c08:	85 f6                                          	test   esi,esi
  00742c0a:	75 04                                          	jne    0x742c10
  00742c0c:	33 c0                                          	xor    eax,eax
  00742c0e:	5e                                             	pop    esi
  00742c0f:	c3                                             	ret
  00742c10:	8b ce                                          	mov    ecx,esi
  00742c12:	e8 39 1b 09 00                                 	call   0x7d4750
  00742c17:	e8 74 67 02 00                                 	call   0x769390
  00742c1c:	8b 10                                          	mov    edx,DWORD PTR [eax]
  00742c1e:	6a 44                                          	push   0x44
  00742c20:	8b c8                                          	mov    ecx,eax
  00742c22:	8b 82 c8 00 00 00                              	mov    eax,DWORD PTR [edx+0xc8]
  00742c28:	56                                             	push   esi
  00742c29:	ff d0                                          	call   eax
  00742c2b:	5e                                             	pop    esi
  00742c2c:	c3                                             	ret
  00742c2d:	cc                                             	int3
  00742c2e:	cc                                             	int3
  00742c2f:	cc                                             	int3
