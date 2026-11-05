# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788410 (ScriptCore.World::World_GetHighestPointOnLot)
Paired Ghidra pseudocode: 00788410_ScriptCore_World_World_GetHighestPointOnLot.c
Window: [0x00788410, 0x00788440) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788410: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00788420: 24 04 6a 00 50 52 e8 e5 a3 4d 00 85 c0 74 07 8b
00788430: c8 e9 1a 16 33 00 d9 ee c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788410 <.text+0x387410>:
  788410:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788416:	85 c9                                           	test   ecx,ecx
  788418:	74 1c                                           	je     0x788436
  78841a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78841e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788422:	6a 00                                           	push   0x0
  788424:	50                                              	push   eax
  788425:	52                                              	push   edx
  788426:	e8 e5 a3 4d 00                                  	call   0xc62810
  78842b:	85 c0                                           	test   eax,eax
  78842d:	74 07                                           	je     0x788436
  78842f:	8b c8                                           	mov    ecx,eax
  788431:	e9 1a 16 33 00                                  	jmp    0xab9a50
  788436:	d9 ee                                           	fldz
  788438:	c3                                              	ret
  788439:	cc                                              	int3
  78843a:	cc                                              	int3
  78843b:	cc                                              	int3
  78843c:	cc                                              	int3
  78843d:	cc                                              	int3
  78843e:	cc                                              	int3
  78843f:	cc                                              	int3
