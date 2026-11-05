# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788500 (ScriptCore.World::World_MarkLotWorthDirty)
Paired Ghidra pseudocode: 00788500_ScriptCore_World_World_MarkLotWorthDirty.c
Window: [0x00788500, 0x00788530) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788500: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00788510: 24 04 6a 00 50 52 e8 f5 a2 4d 00 85 c0 74 07 8b
00788520: c8 e9 6a 85 32 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788500 <.text+0x387500>:
  788500:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788506:	85 c9                                           	test   ecx,ecx
  788508:	74 1c                                           	je     0x788526
  78850a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78850e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788512:	6a 00                                           	push   0x0
  788514:	50                                              	push   eax
  788515:	52                                              	push   edx
  788516:	e8 f5 a2 4d 00                                  	call   0xc62810
  78851b:	85 c0                                           	test   eax,eax
  78851d:	74 07                                           	je     0x788526
  78851f:	8b c8                                           	mov    ecx,eax
  788521:	e9 6a 85 32 00                                  	jmp    0xab0a90
  788526:	c3                                              	ret
  788527:	cc                                              	int3
  788528:	cc                                              	int3
  788529:	cc                                              	int3
  78852a:	cc                                              	int3
  78852b:	cc                                              	int3
  78852c:	cc                                              	int3
  78852d:	cc                                              	int3
  78852e:	cc                                              	int3
  78852f:	cc                                              	int3
