# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec4c80 (ScriptCore.GameUtils::GameUtils_CreateWorldFileSearchImpl)
Paired Ghidra pseudocode: 00EC4C80_ScriptCore_GameUtils_GameUtils_CreateWorldFileSearchImpl.c
Window: [0x00ec4c80, 0x00ec4ce0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec4ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec4c80: 56 e8 0a 47 8a ff 6a 00 6a 00 6a 00 6a 00 68 d4
00ec4c90: 39 0f 01 6a 34 8b f0 e8 64 f8 61 ff 83 c4 18 85
00ec4ca0: c0 74 1d 8b 4c 24 08 51 8b c8 e8 91 ed ff ff 8b
00ec4cb0: 16 6a 40 50 8b 82 c8 00 00 00 8b ce ff d0 5e c3
00ec4cc0: 8b 16 33 c0 6a 40 50 8b 82 c8 00 00 00 8b ce ff
00ec4cd0: d0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec4c80 <.text+0xac3c80>:
  ec4c80:	56                                              	push   esi
  ec4c81:	e8 0a 47 8a ff                                  	call   0x769390
  ec4c86:	6a 00                                           	push   0x0
  ec4c88:	6a 00                                           	push   0x0
  ec4c8a:	6a 00                                           	push   0x0
  ec4c8c:	6a 00                                           	push   0x0
  ec4c8e:	68 d4 39 0f 01                                  	push   0x10f39d4
  ec4c93:	6a 34                                           	push   0x34
  ec4c95:	8b f0                                           	mov    esi,eax
  ec4c97:	e8 64 f8 61 ff                                  	call   0x4e4500
  ec4c9c:	83 c4 18                                        	add    esp,0x18
  ec4c9f:	85 c0                                           	test   eax,eax
  ec4ca1:	74 1d                                           	je     0xec4cc0
  ec4ca3:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec4ca7:	51                                              	push   ecx
  ec4ca8:	8b c8                                           	mov    ecx,eax
  ec4caa:	e8 91 ed ff ff                                  	call   0xec3a40
  ec4caf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec4cb1:	6a 40                                           	push   0x40
  ec4cb3:	50                                              	push   eax
  ec4cb4:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  ec4cba:	8b ce                                           	mov    ecx,esi
  ec4cbc:	ff d0                                           	call   eax
  ec4cbe:	5e                                              	pop    esi
  ec4cbf:	c3                                              	ret
  ec4cc0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec4cc2:	33 c0                                           	xor    eax,eax
  ec4cc4:	6a 40                                           	push   0x40
  ec4cc6:	50                                              	push   eax
  ec4cc7:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  ec4ccd:	8b ce                                           	mov    ecx,esi
  ec4ccf:	ff d0                                           	call   eax
  ec4cd1:	5e                                              	pop    esi
  ec4cd2:	c3                                              	ret
  ec4cd3:	cc                                              	int3
  ec4cd4:	cc                                              	int3
  ec4cd5:	cc                                              	int3
  ec4cd6:	cc                                              	int3
  ec4cd7:	cc                                              	int3
  ec4cd8:	cc                                              	int3
  ec4cd9:	cc                                              	int3
  ec4cda:	cc                                              	int3
  ec4cdb:	cc                                              	int3
  ec4cdc:	cc                                              	int3
  ec4cdd:	cc                                              	int3
  ec4cde:	cc                                              	int3
  ec4cdf:	cc                                              	int3
