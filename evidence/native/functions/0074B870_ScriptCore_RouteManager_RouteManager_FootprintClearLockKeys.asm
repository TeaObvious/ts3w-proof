# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b870 (ScriptCore.RouteManager::RouteManager_FootprintClearLockKeys)
Paired Ghidra pseudocode: 0074B870_ScriptCore_RouteManager_RouteManager_FootprintClearLockKeys.c
Window: [0x0074b870, 0x0074b8a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b870: e8 7b d4 0d 00 85 c0 74 1e 8b 4c 24 08 8b 54 24
0074b880: 04 6a 00 51 52 8b c8 e8 54 f5 0d 00 85 c0 74 07
0074b890: 8b c8 e9 49 a8 1f 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b870 <.text+0x34a870>:
  74b870:	e8 7b d4 0d 00                                  	call   0x828cf0
  74b875:	85 c0                                           	test   eax,eax
  74b877:	74 1e                                           	je     0x74b897
  74b879:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74b87d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74b881:	6a 00                                           	push   0x0
  74b883:	51                                              	push   ecx
  74b884:	52                                              	push   edx
  74b885:	8b c8                                           	mov    ecx,eax
  74b887:	e8 54 f5 0d 00                                  	call   0x82ade0
  74b88c:	85 c0                                           	test   eax,eax
  74b88e:	74 07                                           	je     0x74b897
  74b890:	8b c8                                           	mov    ecx,eax
  74b892:	e9 49 a8 1f 00                                  	jmp    0x9460e0
  74b897:	c3                                              	ret
  74b898:	cc                                              	int3
  74b899:	cc                                              	int3
  74b89a:	cc                                              	int3
  74b89b:	cc                                              	int3
  74b89c:	cc                                              	int3
  74b89d:	cc                                              	int3
  74b89e:	cc                                              	int3
  74b89f:	cc                                              	int3
