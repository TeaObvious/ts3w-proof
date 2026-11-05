# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dc70 (ScriptCore.RouteManager::RouteManager_ResetAvoidanceFieldForSnorkeling)
Paired Ghidra pseudocode: 0074DC70_ScriptCore_RouteManager_RouteManager_ResetAvoidanceFieldForSnorkeling.c
Window: [0x0074dc70, 0x0074dcb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dcb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dc70: e8 fb 98 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
0074dc80: 04 51 52 8b c8 e8 f6 a2 1e 00 85 c0 74 19 8b 0d
0074dc90: 38 a1 1e 01 51 8b c8 e8 c4 65 1e 00 85 c0 74 07
0074dca0: 8b c8 e9 d9 4a 20 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074dc70 <.text+0x34cc70>:
  74dc70:	e8 fb 98 1e 00                                  	call   0x937570
  74dc75:	85 c0                                           	test   eax,eax
  74dc77:	74 2e                                           	je     0x74dca7
  74dc79:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74dc7d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74dc81:	51                                              	push   ecx
  74dc82:	52                                              	push   edx
  74dc83:	8b c8                                           	mov    ecx,eax
  74dc85:	e8 f6 a2 1e 00                                  	call   0x937f80
  74dc8a:	85 c0                                           	test   eax,eax
  74dc8c:	74 19                                           	je     0x74dca7
  74dc8e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74dc94:	51                                              	push   ecx
  74dc95:	8b c8                                           	mov    ecx,eax
  74dc97:	e8 c4 65 1e 00                                  	call   0x934260
  74dc9c:	85 c0                                           	test   eax,eax
  74dc9e:	74 07                                           	je     0x74dca7
  74dca0:	8b c8                                           	mov    ecx,eax
  74dca2:	e9 d9 4a 20 00                                  	jmp    0x952780
  74dca7:	c3                                              	ret
  74dca8:	cc                                              	int3
  74dca9:	cc                                              	int3
  74dcaa:	cc                                              	int3
  74dcab:	cc                                              	int3
  74dcac:	cc                                              	int3
  74dcad:	cc                                              	int3
  74dcae:	cc                                              	int3
  74dcaf:	cc                                              	int3
