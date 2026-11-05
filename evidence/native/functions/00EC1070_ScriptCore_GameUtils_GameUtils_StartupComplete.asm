# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1070 (ScriptCore.GameUtils::GameUtils_StartupComplete)
Paired Ghidra pseudocode: 00EC1070_ScriptCore_GameUtils_GameUtils_StartupComplete.c
Window: [0x00ec1070, 0x00ec1090) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1070: e8 7b b4 58 ff 85 c0 74 14 8b 10 6a 00 6a 00 6a
00ec1080: 00 8b c8 8b 42 1c 68 ae e3 94 d5 ff d0 c3 cc cc

LINEAR DISASSEMBLY
00ec1070 <.text+0xac0070>:
  ec1070:	e8 7b b4 58 ff                                  	call   0x44c4f0
  ec1075:	85 c0                                           	test   eax,eax
  ec1077:	74 14                                           	je     0xec108d
  ec1079:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec107b:	6a 00                                           	push   0x0
  ec107d:	6a 00                                           	push   0x0
  ec107f:	6a 00                                           	push   0x0
  ec1081:	8b c8                                           	mov    ecx,eax
  ec1083:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec1086:	68 ae e3 94 d5                                  	push   0xd594e3ae
  ec108b:	ff d0                                           	call   eax
  ec108d:	c3                                              	ret
  ec108e:	cc                                              	int3
  ec108f:	cc                                              	int3
