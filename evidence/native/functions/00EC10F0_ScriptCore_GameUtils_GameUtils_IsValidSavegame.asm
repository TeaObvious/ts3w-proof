# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec10f0 (ScriptCore.GameUtils::GameUtils_IsValidSavegame)
Paired Ghidra pseudocode: 00EC10F0_ScriptCore_GameUtils_GameUtils_IsValidSavegame.c
Window: [0x00ec10f0, 0x00ec1120) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec10f0: 56 e8 9a 82 8a ff 8b 4c 24 08 8b 10 8b 52 58 51
00ec1100: 8b c8 ff d2 8b f0 e8 b5 88 be ff 85 c0 74 0a 56
00ec1110: 8b c8 e8 89 c1 be ff 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
00ec10f0 <.text+0xac00f0>:
  ec10f0:	56                                              	push   esi
  ec10f1:	e8 9a 82 8a ff                                  	call   0x769390
  ec10f6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec10fa:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec10fc:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec10ff:	51                                              	push   ecx
  ec1100:	8b c8                                           	mov    ecx,eax
  ec1102:	ff d2                                           	call   edx
  ec1104:	8b f0                                           	mov    esi,eax
  ec1106:	e8 b5 88 be ff                                  	call   0xaa99c0
  ec110b:	85 c0                                           	test   eax,eax
  ec110d:	74 0a                                           	je     0xec1119
  ec110f:	56                                              	push   esi
  ec1110:	8b c8                                           	mov    ecx,eax
  ec1112:	e8 89 c1 be ff                                  	call   0xaad2a0
  ec1117:	5e                                              	pop    esi
  ec1118:	c3                                              	ret
  ec1119:	32 c0                                           	xor    al,al
  ec111b:	5e                                              	pop    esi
  ec111c:	c3                                              	ret
  ec111d:	cc                                              	int3
  ec111e:	cc                                              	int3
  ec111f:	cc                                              	int3
