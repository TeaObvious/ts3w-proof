# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b830 (ScriptCore.RouteManager::RouteManager_FootprintHasLockKey)
Paired Ghidra pseudocode: 0074B830_ScriptCore_RouteManager_RouteManager_FootprintHasLockKey.c
Window: [0x0074b830, 0x0074b870) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b830: e8 bb d4 0d 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
0074b840: 04 6a 00 51 52 8b c8 e8 94 f5 0d 00 85 c0 74 17
0074b850: 8b 4c 24 0c 8b 54 24 14 51 8b 4c 24 14 52 51 8b
0074b860: c8 e8 5a aa 1f 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b830 <.text+0x34a830>:
  74b830:	e8 bb d4 0d 00                                  	call   0x828cf0
  74b835:	85 c0                                           	test   eax,eax
  74b837:	74 2e                                           	je     0x74b867
  74b839:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74b83d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74b841:	6a 00                                           	push   0x0
  74b843:	51                                              	push   ecx
  74b844:	52                                              	push   edx
  74b845:	8b c8                                           	mov    ecx,eax
  74b847:	e8 94 f5 0d 00                                  	call   0x82ade0
  74b84c:	85 c0                                           	test   eax,eax
  74b84e:	74 17                                           	je     0x74b867
  74b850:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74b854:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  74b858:	51                                              	push   ecx
  74b859:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  74b85d:	52                                              	push   edx
  74b85e:	51                                              	push   ecx
  74b85f:	8b c8                                           	mov    ecx,eax
  74b861:	e8 5a aa 1f 00                                  	call   0x9462c0
  74b866:	c3                                              	ret
  74b867:	32 c0                                           	xor    al,al
  74b869:	c3                                              	ret
  74b86a:	cc                                              	int3
  74b86b:	cc                                              	int3
  74b86c:	cc                                              	int3
  74b86d:	cc                                              	int3
  74b86e:	cc                                              	int3
  74b86f:	cc                                              	int3
