# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e560 (ScriptCore.RouteManager::RouteManager_SetCarAcceleration)
Paired Ghidra pseudocode: 0074E560_ScriptCore_RouteManager_RouteManager_SetCarAcceleration.c
Window: [0x0074e560, 0x0074e5a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e5a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e560: e8 0b 90 1e 00 85 c0 74 36 8b 4c 24 08 8b 54 24
0074e570: 04 51 52 8b c8 e8 06 9a 1e 00 85 c0 74 21 8b 0d
0074e580: 38 a1 1e 01 51 8b c8 e8 d4 5c 1e 00 85 c0 74 0f
0074e590: d9 44 24 0c 51 8b c8 d9 1c 24 e8 11 63 20 00 c3

LINEAR DISASSEMBLY
0074e560 <.text+0x34d560>:
  74e560:	e8 0b 90 1e 00                                  	call   0x937570
  74e565:	85 c0                                           	test   eax,eax
  74e567:	74 36                                           	je     0x74e59f
  74e569:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74e56d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74e571:	51                                              	push   ecx
  74e572:	52                                              	push   edx
  74e573:	8b c8                                           	mov    ecx,eax
  74e575:	e8 06 9a 1e 00                                  	call   0x937f80
  74e57a:	85 c0                                           	test   eax,eax
  74e57c:	74 21                                           	je     0x74e59f
  74e57e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74e584:	51                                              	push   ecx
  74e585:	8b c8                                           	mov    ecx,eax
  74e587:	e8 d4 5c 1e 00                                  	call   0x934260
  74e58c:	85 c0                                           	test   eax,eax
  74e58e:	74 0f                                           	je     0x74e59f
  74e590:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74e594:	51                                              	push   ecx
  74e595:	8b c8                                           	mov    ecx,eax
  74e597:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74e59a:	e8 11 63 20 00                                  	call   0x9548b0
  74e59f:	c3                                              	ret
