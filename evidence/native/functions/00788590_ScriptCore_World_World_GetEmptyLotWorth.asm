# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788590 (ScriptCore.World::World_GetEmptyLotWorth)
Paired Ghidra pseudocode: 00788590_ScriptCore_World_World_GetEmptyLotWorth.c
Window: [0x00788590, 0x007885c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007885c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788590: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
007885a0: 24 04 6a 00 50 52 e8 65 a2 4d 00 85 c0 74 07 8b
007885b0: c8 e9 4a b8 32 00 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788590 <.text+0x387590>:
  788590:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788596:	85 c9                                           	test   ecx,ecx
  788598:	74 1c                                           	je     0x7885b6
  78859a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78859e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7885a2:	6a 00                                           	push   0x0
  7885a4:	50                                              	push   eax
  7885a5:	52                                              	push   edx
  7885a6:	e8 65 a2 4d 00                                  	call   0xc62810
  7885ab:	85 c0                                           	test   eax,eax
  7885ad:	74 07                                           	je     0x7885b6
  7885af:	8b c8                                           	mov    ecx,eax
  7885b1:	e9 4a b8 32 00                                  	jmp    0xab3e00
  7885b6:	33 c0                                           	xor    eax,eax
  7885b8:	c3                                              	ret
  7885b9:	cc                                              	int3
  7885ba:	cc                                              	int3
  7885bb:	cc                                              	int3
  7885bc:	cc                                              	int3
  7885bd:	cc                                              	int3
  7885be:	cc                                              	int3
  7885bf:	cc                                              	int3
