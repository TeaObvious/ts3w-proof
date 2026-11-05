# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788530 (ScriptCore.World::World_GetLotWorth)
Paired Ghidra pseudocode: 00788530_ScriptCore_World_World_GetLotWorth.c
Window: [0x00788530, 0x00788560) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788530: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00788540: 24 04 6a 00 50 52 e8 c5 a2 4d 00 85 c0 74 07 8b
00788550: c8 e9 2a 29 34 00 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788530 <.text+0x387530>:
  788530:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788536:	85 c9                                           	test   ecx,ecx
  788538:	74 1c                                           	je     0x788556
  78853a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78853e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788542:	6a 00                                           	push   0x0
  788544:	50                                              	push   eax
  788545:	52                                              	push   edx
  788546:	e8 c5 a2 4d 00                                  	call   0xc62810
  78854b:	85 c0                                           	test   eax,eax
  78854d:	74 07                                           	je     0x788556
  78854f:	8b c8                                           	mov    ecx,eax
  788551:	e9 2a 29 34 00                                  	jmp    0xacae80
  788556:	33 c0                                           	xor    eax,eax
  788558:	c3                                              	ret
  788559:	cc                                              	int3
  78855a:	cc                                              	int3
  78855b:	cc                                              	int3
  78855c:	cc                                              	int3
  78855d:	cc                                              	int3
  78855e:	cc                                              	int3
  78855f:	cc                                              	int3
