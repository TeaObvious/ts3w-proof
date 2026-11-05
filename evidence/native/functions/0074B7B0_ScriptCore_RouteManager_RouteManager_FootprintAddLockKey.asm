# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b7b0 (ScriptCore.RouteManager::RouteManager_FootprintAddLockKey)
Paired Ghidra pseudocode: 0074B7B0_ScriptCore_RouteManager_RouteManager_FootprintAddLockKey.c
Window: [0x0074b7b0, 0x0074b7f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b7f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b7b0: e8 3b d5 0d 00 85 c0 74 2d 8b 4c 24 08 8b 54 24
0074b7c0: 04 6a 01 51 52 8b c8 e8 14 f6 0d 00 85 c0 74 16
0074b7d0: 8b 4c 24 0c 8b 54 24 14 51 8b 4c 24 14 52 51 8b
0074b7e0: c8 e8 2a b3 1f 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b7b0 <.text+0x34a7b0>:
  74b7b0:	e8 3b d5 0d 00                                  	call   0x828cf0
  74b7b5:	85 c0                                           	test   eax,eax
  74b7b7:	74 2d                                           	je     0x74b7e6
  74b7b9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74b7bd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74b7c1:	6a 01                                           	push   0x1
  74b7c3:	51                                              	push   ecx
  74b7c4:	52                                              	push   edx
  74b7c5:	8b c8                                           	mov    ecx,eax
  74b7c7:	e8 14 f6 0d 00                                  	call   0x82ade0
  74b7cc:	85 c0                                           	test   eax,eax
  74b7ce:	74 16                                           	je     0x74b7e6
  74b7d0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74b7d4:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  74b7d8:	51                                              	push   ecx
  74b7d9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  74b7dd:	52                                              	push   edx
  74b7de:	51                                              	push   ecx
  74b7df:	8b c8                                           	mov    ecx,eax
  74b7e1:	e8 2a b3 1f 00                                  	call   0x946b10
  74b7e6:	c3                                              	ret
  74b7e7:	cc                                              	int3
  74b7e8:	cc                                              	int3
  74b7e9:	cc                                              	int3
  74b7ea:	cc                                              	int3
  74b7eb:	cc                                              	int3
  74b7ec:	cc                                              	int3
  74b7ed:	cc                                              	int3
  74b7ee:	cc                                              	int3
  74b7ef:	cc                                              	int3
