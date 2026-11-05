# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE window.
Annotated entry: 0x00742c90 (ScriptCore.LoadSaveManager::LoadSaveManager_ResetSaveLocation_Impl)
Paired actual Ghidra pseudocode: 00742C90_ScriptCore_LoadSaveManager_LoadSaveManager_ResetSaveLocation_Impl.c
Stored Ghidra body: one address byte at 0x00742c90; ZERO actual Listing instructions.
Bounded PE window [0x00742c90,0x00742cb0); 32 original bytes.
The following GNU objdump decoding is bounded PE evidence, not existing Listing code.
A window can include padding or other code; it is not a complete stored function body.
No instruction, body, type, prototype or flow repair was performed.

ORIGINAL BYTES (16 per line)
00742c90: e8 2b 6d 36 00 85 c0 74 07 8b c8 e9 40 ae 36 00
00742ca0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

BOUNDED PRISTINE PE LINEAR DECODING
00742c90 <original>:
  00742c90:	e8 2b 6d 36 00                                 	call   0xaa99c0
  00742c95:	85 c0                                          	test   eax,eax
  00742c97:	74 07                                          	je     0x742ca0
  00742c99:	8b c8                                          	mov    ecx,eax
  00742c9b:	e9 40 ae 36 00                                 	jmp    0xaadae0
  00742ca0:	c3                                             	ret
  00742ca1:	cc                                             	int3
  00742ca2:	cc                                             	int3
  00742ca3:	cc                                             	int3
  00742ca4:	cc                                             	int3
  00742ca5:	cc                                             	int3
  00742ca6:	cc                                             	int3
  00742ca7:	cc                                             	int3
  00742ca8:	cc                                             	int3
  00742ca9:	cc                                             	int3
  00742caa:	cc                                             	int3
  00742cab:	cc                                             	int3
  00742cac:	cc                                             	int3
  00742cad:	cc                                             	int3
  00742cae:	cc                                             	int3
  00742caf:	cc                                             	int3
