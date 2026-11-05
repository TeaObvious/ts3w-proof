# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1120 (ScriptCore.GameUtils::GameUtils_IsSaveGameCorruptedByEP1)
Paired Ghidra pseudocode: 00EC1120_ScriptCore_GameUtils_GameUtils_IsSaveGameCorruptedByEP1.c
Window: [0x00ec1120, 0x00ec1150) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1120: 56 e8 6a 82 8a ff 8b 4c 24 08 8b 10 8b 52 58 51
00ec1130: 8b c8 ff d2 8b f0 e8 85 88 be ff 85 c0 74 0a 56
00ec1140: 8b c8 e8 89 8b be ff 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
00ec1120 <.text+0xac0120>:
  ec1120:	56                                              	push   esi
  ec1121:	e8 6a 82 8a ff                                  	call   0x769390
  ec1126:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec112a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec112c:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec112f:	51                                              	push   ecx
  ec1130:	8b c8                                           	mov    ecx,eax
  ec1132:	ff d2                                           	call   edx
  ec1134:	8b f0                                           	mov    esi,eax
  ec1136:	e8 85 88 be ff                                  	call   0xaa99c0
  ec113b:	85 c0                                           	test   eax,eax
  ec113d:	74 0a                                           	je     0xec1149
  ec113f:	56                                              	push   esi
  ec1140:	8b c8                                           	mov    ecx,eax
  ec1142:	e8 89 8b be ff                                  	call   0xaa9cd0
  ec1147:	5e                                              	pop    esi
  ec1148:	c3                                              	ret
  ec1149:	32 c0                                           	xor    al,al
  ec114b:	5e                                              	pop    esi
  ec114c:	c3                                              	ret
  ec114d:	cc                                              	int3
  ec114e:	cc                                              	int3
  ec114f:	cc                                              	int3
