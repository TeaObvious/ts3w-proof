# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dd00 (ScriptCore.RouteManager::RouteManager_SetAvoidanceFieldUseAdvancedAvoidance)
Paired Ghidra pseudocode: 0074DD00_ScriptCore_RouteManager_RouteManager_SetAvoidanceFieldUseAdvancedAvoidance.c
Window: [0x0074dd00, 0x0074dd50) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dd50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dd00: e8 6b 98 1e 00 85 c0 74 3b 8b 4c 24 08 8b 54 24
0074dd10: 04 51 52 8b c8 e8 66 a2 1e 00 85 c0 74 26 8b 0d
0074dd20: 38 a1 1e 01 51 8b c8 e8 34 65 1e 00 85 c0 74 14
0074dd30: 8b 80 0c 01 00 00 85 c0 74 0a 8a 54 24 0c 88 90
0074dd40: b4 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074dd00 <.text+0x34cd00>:
  74dd00:	e8 6b 98 1e 00                                  	call   0x937570
  74dd05:	85 c0                                           	test   eax,eax
  74dd07:	74 3b                                           	je     0x74dd44
  74dd09:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74dd0d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74dd11:	51                                              	push   ecx
  74dd12:	52                                              	push   edx
  74dd13:	8b c8                                           	mov    ecx,eax
  74dd15:	e8 66 a2 1e 00                                  	call   0x937f80
  74dd1a:	85 c0                                           	test   eax,eax
  74dd1c:	74 26                                           	je     0x74dd44
  74dd1e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74dd24:	51                                              	push   ecx
  74dd25:	8b c8                                           	mov    ecx,eax
  74dd27:	e8 34 65 1e 00                                  	call   0x934260
  74dd2c:	85 c0                                           	test   eax,eax
  74dd2e:	74 14                                           	je     0x74dd44
  74dd30:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
  74dd36:	85 c0                                           	test   eax,eax
  74dd38:	74 0a                                           	je     0x74dd44
  74dd3a:	8a 54 24 0c                                     	mov    dl,BYTE PTR [esp+0xc]
  74dd3e:	88 90 b4 00 00 00                               	mov    BYTE PTR [eax+0xb4],dl
  74dd44:	c3                                              	ret
  74dd45:	cc                                              	int3
  74dd46:	cc                                              	int3
  74dd47:	cc                                              	int3
  74dd48:	cc                                              	int3
  74dd49:	cc                                              	int3
  74dd4a:	cc                                              	int3
  74dd4b:	cc                                              	int3
  74dd4c:	cc                                              	int3
  74dd4d:	cc                                              	int3
  74dd4e:	cc                                              	int3
  74dd4f:	cc                                              	int3
