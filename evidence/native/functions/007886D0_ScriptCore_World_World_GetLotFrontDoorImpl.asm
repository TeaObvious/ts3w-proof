# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007886d0 (ScriptCore.World::World_GetLotFrontDoorImpl)
Paired Ghidra pseudocode: 007886D0_ScriptCore_World_World_GetLotFrontDoorImpl.c
Window: [0x007886d0, 0x00788710) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007886d0: e8 1b 06 0a 00 85 c0 74 0b 8b c8 e8 e0 0e 0a 00
007886e0: 8b c8 eb 02 33 c9 33 c0 33 d2 85 c9 74 15 8b 44
007886f0: 24 0c 52 8b 54 24 0c 50 8b 44 24 0c 52 50 e8 1d
00788700: 99 ea ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007886d0 <.text+0x3876d0>:
  7886d0:	e8 1b 06 0a 00                                  	call   0x828cf0
  7886d5:	85 c0                                           	test   eax,eax
  7886d7:	74 0b                                           	je     0x7886e4
  7886d9:	8b c8                                           	mov    ecx,eax
  7886db:	e8 e0 0e 0a 00                                  	call   0x8295c0
  7886e0:	8b c8                                           	mov    ecx,eax
  7886e2:	eb 02                                           	jmp    0x7886e6
  7886e4:	33 c9                                           	xor    ecx,ecx
  7886e6:	33 c0                                           	xor    eax,eax
  7886e8:	33 d2                                           	xor    edx,edx
  7886ea:	85 c9                                           	test   ecx,ecx
  7886ec:	74 15                                           	je     0x788703
  7886ee:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7886f2:	52                                              	push   edx
  7886f3:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7886f7:	50                                              	push   eax
  7886f8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7886fc:	52                                              	push   edx
  7886fd:	50                                              	push   eax
  7886fe:	e8 1d 99 ea ff                                  	call   0x632020
  788703:	c3                                              	ret
  788704:	cc                                              	int3
  788705:	cc                                              	int3
  788706:	cc                                              	int3
  788707:	cc                                              	int3
  788708:	cc                                              	int3
  788709:	cc                                              	int3
  78870a:	cc                                              	int3
  78870b:	cc                                              	int3
  78870c:	cc                                              	int3
  78870d:	cc                                              	int3
  78870e:	cc                                              	int3
  78870f:	cc                                              	int3
