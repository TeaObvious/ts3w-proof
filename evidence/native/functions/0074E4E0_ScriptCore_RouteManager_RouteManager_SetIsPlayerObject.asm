# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e4e0 (ScriptCore.RouteManager::RouteManager_SetIsPlayerObject)
Paired Ghidra pseudocode: 0074E4E0_ScriptCore_RouteManager_RouteManager_SetIsPlayerObject.c
Window: [0x0074e4e0, 0x0074e520) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e4e0: e8 8b 90 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
0074e4f0: 04 51 52 8b c8 e8 86 9a 1e 00 85 c0 74 19 8b 0d
0074e500: 38 a1 1e 01 51 8b c8 e8 54 5d 1e 00 85 c0 74 07
0074e510: 8a 54 24 0c 88 50 38 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e4e0 <.text+0x34d4e0>:
  74e4e0:	e8 8b 90 1e 00                                  	call   0x937570
  74e4e5:	85 c0                                           	test   eax,eax
  74e4e7:	74 2e                                           	je     0x74e517
  74e4e9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74e4ed:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74e4f1:	51                                              	push   ecx
  74e4f2:	52                                              	push   edx
  74e4f3:	8b c8                                           	mov    ecx,eax
  74e4f5:	e8 86 9a 1e 00                                  	call   0x937f80
  74e4fa:	85 c0                                           	test   eax,eax
  74e4fc:	74 19                                           	je     0x74e517
  74e4fe:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74e504:	51                                              	push   ecx
  74e505:	8b c8                                           	mov    ecx,eax
  74e507:	e8 54 5d 1e 00                                  	call   0x934260
  74e50c:	85 c0                                           	test   eax,eax
  74e50e:	74 07                                           	je     0x74e517
  74e510:	8a 54 24 0c                                     	mov    dl,BYTE PTR [esp+0xc]
  74e514:	88 50 38                                        	mov    BYTE PTR [eax+0x38],dl
  74e517:	c3                                              	ret
  74e518:	cc                                              	int3
  74e519:	cc                                              	int3
  74e51a:	cc                                              	int3
  74e51b:	cc                                              	int3
  74e51c:	cc                                              	int3
  74e51d:	cc                                              	int3
  74e51e:	cc                                              	int3
  74e51f:	cc                                              	int3
