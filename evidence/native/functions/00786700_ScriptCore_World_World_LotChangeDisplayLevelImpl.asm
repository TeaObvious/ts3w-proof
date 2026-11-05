# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786700 (ScriptCore.World::World_LotChangeDisplayLevelImpl)
Paired Ghidra pseudocode: 00786700_ScriptCore_World_World_LotChangeDisplayLevelImpl.c
Window: [0x00786700, 0x00786730) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786700: 8b 0d c4 db 1e 01 85 c9 74 21 8b 44 24 08 8b 54
00786710: 24 04 6a 00 50 52 e8 f5 c0 4d 00 85 c0 74 0c 8b
00786720: 4c 24 0c 51 8b c8 e8 e5 ad 33 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
00786700 <.text+0x385700>:
  786700:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786706:	85 c9                                           	test   ecx,ecx
  786708:	74 21                                           	je     0x78672b
  78670a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78670e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786712:	6a 00                                           	push   0x0
  786714:	50                                              	push   eax
  786715:	52                                              	push   edx
  786716:	e8 f5 c0 4d 00                                  	call   0xc62810
  78671b:	85 c0                                           	test   eax,eax
  78671d:	74 0c                                           	je     0x78672b
  78671f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  786723:	51                                              	push   ecx
  786724:	8b c8                                           	mov    ecx,eax
  786726:	e8 e5 ad 33 00                                  	call   0xac1510
  78672b:	c3                                              	ret
  78672c:	cc                                              	int3
  78672d:	cc                                              	int3
  78672e:	cc                                              	int3
  78672f:	cc                                              	int3
