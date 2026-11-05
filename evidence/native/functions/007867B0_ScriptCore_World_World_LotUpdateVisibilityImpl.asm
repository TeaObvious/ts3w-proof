# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007867b0 (ScriptCore.World::World_LotUpdateVisibilityImpl)
Paired Ghidra pseudocode: 007867B0_ScriptCore_World_World_LotUpdateVisibilityImpl.c
Window: [0x007867b0, 0x007867e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007867e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007867b0: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
007867c0: 24 04 6a 00 50 52 e8 45 c0 4d 00 85 c0 74 07 8b
007867d0: c8 e9 1a f3 32 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007867b0 <.text+0x3857b0>:
  7867b0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7867b6:	85 c9                                           	test   ecx,ecx
  7867b8:	74 1c                                           	je     0x7867d6
  7867ba:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7867be:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7867c2:	6a 00                                           	push   0x0
  7867c4:	50                                              	push   eax
  7867c5:	52                                              	push   edx
  7867c6:	e8 45 c0 4d 00                                  	call   0xc62810
  7867cb:	85 c0                                           	test   eax,eax
  7867cd:	74 07                                           	je     0x7867d6
  7867cf:	8b c8                                           	mov    ecx,eax
  7867d1:	e9 1a f3 32 00                                  	jmp    0xab5af0
  7867d6:	c3                                              	ret
  7867d7:	cc                                              	int3
  7867d8:	cc                                              	int3
  7867d9:	cc                                              	int3
  7867da:	cc                                              	int3
  7867db:	cc                                              	int3
  7867dc:	cc                                              	int3
  7867dd:	cc                                              	int3
  7867de:	cc                                              	int3
  7867df:	cc                                              	int3
