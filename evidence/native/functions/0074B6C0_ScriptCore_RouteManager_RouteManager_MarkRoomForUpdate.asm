# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b6c0 (ScriptCore.RouteManager::RouteManager_MarkRoomForUpdate)
Paired Ghidra pseudocode: 0074B6C0_ScriptCore_RouteManager_RouteManager_MarkRoomForUpdate.c
Window: [0x0074b6c0, 0x0074b6f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b6c0: e8 2b d6 0d 00 85 c0 74 21 8b c8 e8 f0 de 0d 00
0074b6d0: 85 c0 74 16 8b 4c 24 0c 8b 54 24 08 51 8b 4c 24
0074b6e0: 08 52 51 8b c8 e8 36 a7 ee ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0074b6c0 <.text+0x34a6c0>:
  74b6c0:	e8 2b d6 0d 00                                  	call   0x828cf0
  74b6c5:	85 c0                                           	test   eax,eax
  74b6c7:	74 21                                           	je     0x74b6ea
  74b6c9:	8b c8                                           	mov    ecx,eax
  74b6cb:	e8 f0 de 0d 00                                  	call   0x8295c0
  74b6d0:	85 c0                                           	test   eax,eax
  74b6d2:	74 16                                           	je     0x74b6ea
  74b6d4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74b6d8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  74b6dc:	51                                              	push   ecx
  74b6dd:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74b6e1:	52                                              	push   edx
  74b6e2:	51                                              	push   ecx
  74b6e3:	8b c8                                           	mov    ecx,eax
  74b6e5:	e8 36 a7 ee ff                                  	call   0x635e20
  74b6ea:	c3                                              	ret
  74b6eb:	cc                                              	int3
  74b6ec:	cc                                              	int3
  74b6ed:	cc                                              	int3
  74b6ee:	cc                                              	int3
  74b6ef:	cc                                              	int3
