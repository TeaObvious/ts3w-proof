# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e520 (ScriptCore.RouteManager::RouteManager_SetFadePriority)
Paired Ghidra pseudocode: 0074E520_ScriptCore_RouteManager_RouteManager_SetFadePriority.c
Window: [0x0074e520, 0x0074e560) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e520: e8 4b 90 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
0074e530: 04 51 52 8b c8 e8 46 9a 1e 00 85 c0 74 19 8b 0d
0074e540: 38 a1 1e 01 51 8b c8 e8 14 5d 1e 00 85 c0 74 07
0074e550: 8b 54 24 0c 89 50 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e520 <.text+0x34d520>:
  74e520:	e8 4b 90 1e 00                                  	call   0x937570
  74e525:	85 c0                                           	test   eax,eax
  74e527:	74 2e                                           	je     0x74e557
  74e529:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74e52d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74e531:	51                                              	push   ecx
  74e532:	52                                              	push   edx
  74e533:	8b c8                                           	mov    ecx,eax
  74e535:	e8 46 9a 1e 00                                  	call   0x937f80
  74e53a:	85 c0                                           	test   eax,eax
  74e53c:	74 19                                           	je     0x74e557
  74e53e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74e544:	51                                              	push   ecx
  74e545:	8b c8                                           	mov    ecx,eax
  74e547:	e8 14 5d 1e 00                                  	call   0x934260
  74e54c:	85 c0                                           	test   eax,eax
  74e54e:	74 07                                           	je     0x74e557
  74e550:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  74e554:	89 50 34                                        	mov    DWORD PTR [eax+0x34],edx
  74e557:	c3                                              	ret
  74e558:	cc                                              	int3
  74e559:	cc                                              	int3
  74e55a:	cc                                              	int3
  74e55b:	cc                                              	int3
  74e55c:	cc                                              	int3
  74e55d:	cc                                              	int3
  74e55e:	cc                                              	int3
  74e55f:	cc                                              	int3
