# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec0fc0 (ScriptCore.GameUtils::GameUtils_GetConfigValue)
Paired Ghidra pseudocode: 00EC0FC0_ScriptCore_GameUtils_GameUtils_GetConfigValue.c
Window: [0x00ec0fc0, 0x00ec1000) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec0fc0: e8 cb 83 8a ff 85 c0 74 30 8b 4c 24 04 8b 10 8b
00ec0fd0: 52 58 51 8b c8 ff d2 85 c0 74 1e 8b 15 b0 0a 15
00ec0fe0: 01 56 8b 74 24 0c 8b 0e 51 50 52 e8 10 9f 6c ff
00ec0ff0: 83 c4 0c 89 06 b0 01 5e c3 32 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
00ec0fc0 <.text+0xabffc0>:
  ec0fc0:	e8 cb 83 8a ff                                  	call   0x769390
  ec0fc5:	85 c0                                           	test   eax,eax
  ec0fc7:	74 30                                           	je     0xec0ff9
  ec0fc9:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  ec0fcd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec0fcf:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec0fd2:	51                                              	push   ecx
  ec0fd3:	8b c8                                           	mov    ecx,eax
  ec0fd5:	ff d2                                           	call   edx
  ec0fd7:	85 c0                                           	test   eax,eax
  ec0fd9:	74 1e                                           	je     0xec0ff9
  ec0fdb:	8b 15 b0 0a 15 01                               	mov    edx,DWORD PTR ds:0x1150ab0
  ec0fe1:	56                                              	push   esi
  ec0fe2:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  ec0fe6:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  ec0fe8:	51                                              	push   ecx
  ec0fe9:	50                                              	push   eax
  ec0fea:	52                                              	push   edx
  ec0feb:	e8 10 9f 6c ff                                  	call   0x58af00
  ec0ff0:	83 c4 0c                                        	add    esp,0xc
  ec0ff3:	89 06                                           	mov    DWORD PTR [esi],eax
  ec0ff5:	b0 01                                           	mov    al,0x1
  ec0ff7:	5e                                              	pop    esi
  ec0ff8:	c3                                              	ret
  ec0ff9:	32 c0                                           	xor    al,al
  ec0ffb:	c3                                              	ret
  ec0ffc:	cc                                              	int3
  ec0ffd:	cc                                              	int3
  ec0ffe:	cc                                              	int3
  ec0fff:	cc                                              	int3
