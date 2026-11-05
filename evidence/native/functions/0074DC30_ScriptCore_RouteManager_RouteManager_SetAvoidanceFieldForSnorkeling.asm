# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dc30 (ScriptCore.RouteManager::RouteManager_SetAvoidanceFieldForSnorkeling)
Paired Ghidra pseudocode: 0074DC30_ScriptCore_RouteManager_RouteManager_SetAvoidanceFieldForSnorkeling.c
Window: [0x0074dc30, 0x0074dc70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dc70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dc30: e8 3b 99 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
0074dc40: 04 51 52 8b c8 e8 36 a3 1e 00 85 c0 74 19 8b 0d
0074dc50: 38 a1 1e 01 51 8b c8 e8 04 66 1e 00 85 c0 74 07
0074dc60: 8b c8 e9 c9 49 20 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074dc30 <.text+0x34cc30>:
  74dc30:	e8 3b 99 1e 00                                  	call   0x937570
  74dc35:	85 c0                                           	test   eax,eax
  74dc37:	74 2e                                           	je     0x74dc67
  74dc39:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74dc3d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74dc41:	51                                              	push   ecx
  74dc42:	52                                              	push   edx
  74dc43:	8b c8                                           	mov    ecx,eax
  74dc45:	e8 36 a3 1e 00                                  	call   0x937f80
  74dc4a:	85 c0                                           	test   eax,eax
  74dc4c:	74 19                                           	je     0x74dc67
  74dc4e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74dc54:	51                                              	push   ecx
  74dc55:	8b c8                                           	mov    ecx,eax
  74dc57:	e8 04 66 1e 00                                  	call   0x934260
  74dc5c:	85 c0                                           	test   eax,eax
  74dc5e:	74 07                                           	je     0x74dc67
  74dc60:	8b c8                                           	mov    ecx,eax
  74dc62:	e9 c9 49 20 00                                  	jmp    0x952630
  74dc67:	c3                                              	ret
  74dc68:	cc                                              	int3
  74dc69:	cc                                              	int3
  74dc6a:	cc                                              	int3
  74dc6b:	cc                                              	int3
  74dc6c:	cc                                              	int3
  74dc6d:	cc                                              	int3
  74dc6e:	cc                                              	int3
  74dc6f:	cc                                              	int3
