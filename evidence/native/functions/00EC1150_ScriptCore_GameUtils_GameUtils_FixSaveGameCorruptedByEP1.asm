# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1150 (ScriptCore.GameUtils::GameUtils_FixSaveGameCorruptedByEP1)
Paired Ghidra pseudocode: 00EC1150_ScriptCore_GameUtils_GameUtils_FixSaveGameCorruptedByEP1.c
Window: [0x00ec1150, 0x00ec1180) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1150: 56 e8 3a 82 8a ff 8b 4c 24 08 8b 10 8b 52 58 51
00ec1160: 8b c8 ff d2 8b f0 e8 55 88 be ff 85 c0 74 0a 56
00ec1170: 8b c8 e8 99 c2 be ff 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
00ec1150 <.text+0xac0150>:
  ec1150:	56                                              	push   esi
  ec1151:	e8 3a 82 8a ff                                  	call   0x769390
  ec1156:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec115a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec115c:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec115f:	51                                              	push   ecx
  ec1160:	8b c8                                           	mov    ecx,eax
  ec1162:	ff d2                                           	call   edx
  ec1164:	8b f0                                           	mov    esi,eax
  ec1166:	e8 55 88 be ff                                  	call   0xaa99c0
  ec116b:	85 c0                                           	test   eax,eax
  ec116d:	74 0a                                           	je     0xec1179
  ec116f:	56                                              	push   esi
  ec1170:	8b c8                                           	mov    ecx,eax
  ec1172:	e8 99 c2 be ff                                  	call   0xaad410
  ec1177:	5e                                              	pop    esi
  ec1178:	c3                                              	ret
  ec1179:	32 c0                                           	xor    al,al
  ec117b:	5e                                              	pop    esi
  ec117c:	c3                                              	ret
  ec117d:	cc                                              	int3
  ec117e:	cc                                              	int3
  ec117f:	cc                                              	int3
