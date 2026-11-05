# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dd50 (ScriptCore.RouteManager::RouteManager_ForcePlayWeatherEffectForTerrainType)
Paired Ghidra pseudocode: 0074DD50_ScriptCore_RouteManager_RouteManager_ForcePlayWeatherEffectForTerrainType.c
Window: [0x0074dd50, 0x0074dd90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dd90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dd50: e8 1b 98 1e 00 85 c0 74 33 8b 4c 24 08 8b 54 24
0074dd60: 04 51 52 8b c8 e8 16 a2 1e 00 85 c0 74 1e 8b 0d
0074dd70: 38 a1 1e 01 51 8b c8 e8 e4 64 1e 00 85 c0 74 0c
0074dd80: 66 8b 54 24 0c 66 89 90 fc 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
0074dd50 <.text+0x34cd50>:
  74dd50:	e8 1b 98 1e 00                                  	call   0x937570
  74dd55:	85 c0                                           	test   eax,eax
  74dd57:	74 33                                           	je     0x74dd8c
  74dd59:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74dd5d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74dd61:	51                                              	push   ecx
  74dd62:	52                                              	push   edx
  74dd63:	8b c8                                           	mov    ecx,eax
  74dd65:	e8 16 a2 1e 00                                  	call   0x937f80
  74dd6a:	85 c0                                           	test   eax,eax
  74dd6c:	74 1e                                           	je     0x74dd8c
  74dd6e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74dd74:	51                                              	push   ecx
  74dd75:	8b c8                                           	mov    ecx,eax
  74dd77:	e8 e4 64 1e 00                                  	call   0x934260
  74dd7c:	85 c0                                           	test   eax,eax
  74dd7e:	74 0c                                           	je     0x74dd8c
  74dd80:	66 8b 54 24 0c                                  	mov    dx,WORD PTR [esp+0xc]
  74dd85:	66 89 90 fc 00 00 00                            	mov    WORD PTR [eax+0xfc],dx
  74dd8c:	c3                                              	ret
  74dd8d:	cc                                              	int3
  74dd8e:	cc                                              	int3
  74dd8f:	cc                                              	int3
