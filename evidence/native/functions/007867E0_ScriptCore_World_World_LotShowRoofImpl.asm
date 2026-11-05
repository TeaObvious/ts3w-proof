# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007867e0 (ScriptCore.World::World_LotShowRoofImpl)
Paired Ghidra pseudocode: 007867E0_ScriptCore_World_World_LotShowRoofImpl.c
Window: [0x007867e0, 0x00786820) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007867e0: 8b 0d c4 db 1e 01 85 c9 74 2b 8b 44 24 08 8b 54
007867f0: 24 04 6a 00 50 52 e8 15 c0 4d 00 85 c0 74 16 8b
00786800: 80 ac 02 00 00 85 c0 74 0c 8b 4c 24 0c 51 8b c8
00786810: e8 3b e3 40 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007867e0 <.text+0x3857e0>:
  7867e0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7867e6:	85 c9                                           	test   ecx,ecx
  7867e8:	74 2b                                           	je     0x786815
  7867ea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7867ee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7867f2:	6a 00                                           	push   0x0
  7867f4:	50                                              	push   eax
  7867f5:	52                                              	push   edx
  7867f6:	e8 15 c0 4d 00                                  	call   0xc62810
  7867fb:	85 c0                                           	test   eax,eax
  7867fd:	74 16                                           	je     0x786815
  7867ff:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  786805:	85 c0                                           	test   eax,eax
  786807:	74 0c                                           	je     0x786815
  786809:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78680d:	51                                              	push   ecx
  78680e:	8b c8                                           	mov    ecx,eax
  786810:	e8 3b e3 40 00                                  	call   0xb94b50
  786815:	c3                                              	ret
  786816:	cc                                              	int3
  786817:	cc                                              	int3
  786818:	cc                                              	int3
  786819:	cc                                              	int3
  78681a:	cc                                              	int3
  78681b:	cc                                              	int3
  78681c:	cc                                              	int3
  78681d:	cc                                              	int3
  78681e:	cc                                              	int3
  78681f:	cc                                              	int3
