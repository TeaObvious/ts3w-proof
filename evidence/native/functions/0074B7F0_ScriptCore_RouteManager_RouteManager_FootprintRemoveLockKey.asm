# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b7f0 (ScriptCore.RouteManager::RouteManager_FootprintRemoveLockKey)
Paired Ghidra pseudocode: 0074B7F0_ScriptCore_RouteManager_RouteManager_FootprintRemoveLockKey.c
Window: [0x0074b7f0, 0x0074b830) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b7f0: e8 fb d4 0d 00 85 c0 74 2d 8b 4c 24 08 8b 54 24
0074b800: 04 6a 00 51 52 8b c8 e8 d4 f5 0d 00 85 c0 74 16
0074b810: 8b 4c 24 0c 8b 54 24 14 51 8b 4c 24 14 52 51 8b
0074b820: c8 e8 6a ac 1f 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b7f0 <.text+0x34a7f0>:
  74b7f0:	e8 fb d4 0d 00                                  	call   0x828cf0
  74b7f5:	85 c0                                           	test   eax,eax
  74b7f7:	74 2d                                           	je     0x74b826
  74b7f9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74b7fd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74b801:	6a 00                                           	push   0x0
  74b803:	51                                              	push   ecx
  74b804:	52                                              	push   edx
  74b805:	8b c8                                           	mov    ecx,eax
  74b807:	e8 d4 f5 0d 00                                  	call   0x82ade0
  74b80c:	85 c0                                           	test   eax,eax
  74b80e:	74 16                                           	je     0x74b826
  74b810:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74b814:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  74b818:	51                                              	push   ecx
  74b819:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  74b81d:	52                                              	push   edx
  74b81e:	51                                              	push   ecx
  74b81f:	8b c8                                           	mov    ecx,eax
  74b821:	e8 6a ac 1f 00                                  	call   0x946490
  74b826:	c3                                              	ret
  74b827:	cc                                              	int3
  74b828:	cc                                              	int3
  74b829:	cc                                              	int3
  74b82a:	cc                                              	int3
  74b82b:	cc                                              	int3
  74b82c:	cc                                              	int3
  74b82d:	cc                                              	int3
  74b82e:	cc                                              	int3
  74b82f:	cc                                              	int3
