# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dcb0 (ScriptCore.RouteManager::RouteManager_SetShouldHandleObstructionsEncountered)
Paired Ghidra pseudocode: 0074DCB0_ScriptCore_RouteManager_RouteManager_SetShouldHandleObstructionsEncountered.c
Window: [0x0074dcb0, 0x0074dd00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dd00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dcb0: e8 bb 98 1e 00 85 c0 74 3b 8b 4c 24 08 8b 54 24
0074dcc0: 04 51 52 8b c8 e8 b6 a2 1e 00 85 c0 74 26 8b 0d
0074dcd0: 38 a1 1e 01 51 8b c8 e8 84 65 1e 00 85 c0 74 14
0074dce0: 8b 80 0c 01 00 00 85 c0 74 0a 8a 54 24 0c 88 90
0074dcf0: bc 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074dcb0 <.text+0x34ccb0>:
  74dcb0:	e8 bb 98 1e 00                                  	call   0x937570
  74dcb5:	85 c0                                           	test   eax,eax
  74dcb7:	74 3b                                           	je     0x74dcf4
  74dcb9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74dcbd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74dcc1:	51                                              	push   ecx
  74dcc2:	52                                              	push   edx
  74dcc3:	8b c8                                           	mov    ecx,eax
  74dcc5:	e8 b6 a2 1e 00                                  	call   0x937f80
  74dcca:	85 c0                                           	test   eax,eax
  74dccc:	74 26                                           	je     0x74dcf4
  74dcce:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74dcd4:	51                                              	push   ecx
  74dcd5:	8b c8                                           	mov    ecx,eax
  74dcd7:	e8 84 65 1e 00                                  	call   0x934260
  74dcdc:	85 c0                                           	test   eax,eax
  74dcde:	74 14                                           	je     0x74dcf4
  74dce0:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
  74dce6:	85 c0                                           	test   eax,eax
  74dce8:	74 0a                                           	je     0x74dcf4
  74dcea:	8a 54 24 0c                                     	mov    dl,BYTE PTR [esp+0xc]
  74dcee:	88 90 bc 00 00 00                               	mov    BYTE PTR [eax+0xbc],dl
  74dcf4:	c3                                              	ret
  74dcf5:	cc                                              	int3
  74dcf6:	cc                                              	int3
  74dcf7:	cc                                              	int3
  74dcf8:	cc                                              	int3
  74dcf9:	cc                                              	int3
  74dcfa:	cc                                              	int3
  74dcfb:	cc                                              	int3
  74dcfc:	cc                                              	int3
  74dcfd:	cc                                              	int3
  74dcfe:	cc                                              	int3
  74dcff:	cc                                              	int3
