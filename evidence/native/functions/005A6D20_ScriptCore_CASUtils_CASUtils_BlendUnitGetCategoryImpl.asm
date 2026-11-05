# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6d20 (ScriptCore.CASUtils::CASUtils_BlendUnitGetCategoryImpl)
Paired Ghidra pseudocode: 005A6D20_ScriptCore_CASUtils_CASUtils_BlendUnitGetCategoryImpl.c
Window: [0x005a6d20, 0x005a6d60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6d20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6d30: 35 74 04 33 c0 5e c3 e8 54 26 1c 00 8b 10 8b c8
005a6d40: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 58
005a6d50: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6d20 <.text+0x1a5d20>:
  5a6d20:	56                                              	push   esi
  5a6d21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6d25:	8b c6                                           	mov    eax,esi
  5a6d27:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6d2c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6d31:	74 04                                           	je     0x5a6d37
  5a6d33:	33 c0                                           	xor    eax,eax
  5a6d35:	5e                                              	pop    esi
  5a6d36:	c3                                              	ret
  5a6d37:	e8 54 26 1c 00                                  	call   0x769390
  5a6d3c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6d3e:	8b c8                                           	mov    ecx,eax
  5a6d40:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6d46:	56                                              	push   esi
  5a6d47:	ff d0                                           	call   eax
  5a6d49:	85 c0                                           	test   eax,eax
  5a6d4b:	74 e6                                           	je     0x5a6d33
  5a6d4d:	8b 40 58                                        	mov    eax,DWORD PTR [eax+0x58]
  5a6d50:	5e                                              	pop    esi
  5a6d51:	c3                                              	ret
  5a6d52:	cc                                              	int3
  5a6d53:	cc                                              	int3
  5a6d54:	cc                                              	int3
  5a6d55:	cc                                              	int3
  5a6d56:	cc                                              	int3
  5a6d57:	cc                                              	int3
  5a6d58:	cc                                              	int3
  5a6d59:	cc                                              	int3
  5a6d5a:	cc                                              	int3
  5a6d5b:	cc                                              	int3
  5a6d5c:	cc                                              	int3
  5a6d5d:	cc                                              	int3
  5a6d5e:	cc                                              	int3
  5a6d5f:	cc                                              	int3
