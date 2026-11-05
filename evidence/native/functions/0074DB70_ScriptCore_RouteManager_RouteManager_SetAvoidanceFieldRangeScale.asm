# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074db70 (ScriptCore.RouteManager::RouteManager_SetAvoidanceFieldRangeScale)
Paired Ghidra pseudocode: 0074DB70_ScriptCore_RouteManager_RouteManager_SetAvoidanceFieldRangeScale.c
Window: [0x0074db70, 0x0074dbc0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dbc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074db70: e8 fb 99 1e 00 85 c0 74 3f 8b 4c 24 08 8b 54 24
0074db80: 04 51 52 8b c8 e8 f6 a3 1e 00 85 c0 74 2a 8b 0d
0074db90: 38 a1 1e 01 51 8b c8 e8 c4 66 1e 00 85 c0 74 18
0074dba0: 8b 80 0c 01 00 00 85 c0 74 0e f3 0f 10 44 24 0c
0074dbb0: f3 0f 11 80 ac 00 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074db70 <.text+0x34cb70>:
  74db70:	e8 fb 99 1e 00                                  	call   0x937570
  74db75:	85 c0                                           	test   eax,eax
  74db77:	74 3f                                           	je     0x74dbb8
  74db79:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74db7d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74db81:	51                                              	push   ecx
  74db82:	52                                              	push   edx
  74db83:	8b c8                                           	mov    ecx,eax
  74db85:	e8 f6 a3 1e 00                                  	call   0x937f80
  74db8a:	85 c0                                           	test   eax,eax
  74db8c:	74 2a                                           	je     0x74dbb8
  74db8e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74db94:	51                                              	push   ecx
  74db95:	8b c8                                           	mov    ecx,eax
  74db97:	e8 c4 66 1e 00                                  	call   0x934260
  74db9c:	85 c0                                           	test   eax,eax
  74db9e:	74 18                                           	je     0x74dbb8
  74dba0:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
  74dba6:	85 c0                                           	test   eax,eax
  74dba8:	74 0e                                           	je     0x74dbb8
  74dbaa:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  74dbb0:	f3 0f 11 80 ac 00 00 00                         	movss  DWORD PTR [eax+0xac],xmm0
  74dbb8:	c3                                              	ret
  74dbb9:	cc                                              	int3
  74dbba:	cc                                              	int3
  74dbbb:	cc                                              	int3
  74dbbc:	cc                                              	int3
  74dbbd:	cc                                              	int3
  74dbbe:	cc                                              	int3
  74dbbf:	cc                                              	int3
