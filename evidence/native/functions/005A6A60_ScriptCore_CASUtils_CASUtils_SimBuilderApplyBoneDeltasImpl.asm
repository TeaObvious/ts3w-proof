# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6a60 (ScriptCore.CASUtils::CASUtils_SimBuilderApplyBoneDeltasImpl)
Paired Ghidra pseudocode: 005A6A60_ScriptCore_CASUtils_CASUtils_SimBuilderApplyBoneDeltasImpl.c
Window: [0x005a6a60, 0x005a6aa0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6a60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6a70: 35 75 1e e8 18 29 1c 00 8b 10 8b c8 8b 82 cc 00
005a6a80: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 ff ae 03
005a6a90: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6a60 <.text+0x1a5a60>:
  5a6a60:	56                                              	push   esi
  5a6a61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6a65:	8b c6                                           	mov    eax,esi
  5a6a67:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6a6c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6a71:	75 1e                                           	jne    0x5a6a91
  5a6a73:	e8 18 29 1c 00                                  	call   0x769390
  5a6a78:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6a7a:	8b c8                                           	mov    ecx,eax
  5a6a7c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6a82:	56                                              	push   esi
  5a6a83:	ff d0                                           	call   eax
  5a6a85:	85 c0                                           	test   eax,eax
  5a6a87:	74 08                                           	je     0x5a6a91
  5a6a89:	8b c8                                           	mov    ecx,eax
  5a6a8b:	5e                                              	pop    esi
  5a6a8c:	e9 ff ae 03 00                                  	jmp    0x5e1990
  5a6a91:	5e                                              	pop    esi
  5a6a92:	c3                                              	ret
  5a6a93:	cc                                              	int3
  5a6a94:	cc                                              	int3
  5a6a95:	cc                                              	int3
  5a6a96:	cc                                              	int3
  5a6a97:	cc                                              	int3
  5a6a98:	cc                                              	int3
  5a6a99:	cc                                              	int3
  5a6a9a:	cc                                              	int3
  5a6a9b:	cc                                              	int3
  5a6a9c:	cc                                              	int3
  5a6a9d:	cc                                              	int3
  5a6a9e:	cc                                              	int3
  5a6a9f:	cc                                              	int3
