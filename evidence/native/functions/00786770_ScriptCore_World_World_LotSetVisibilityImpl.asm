# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786770 (ScriptCore.World::World_LotSetVisibilityImpl)
Paired Ghidra pseudocode: 00786770_ScriptCore_World_World_LotSetVisibilityImpl.c
Window: [0x00786770, 0x007867b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007867b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786770: 8b 0d c4 db 1e 01 85 c9 74 26 8b 44 24 08 8b 54
00786780: 24 04 6a 00 50 52 e8 85 c0 4d 00 85 c0 74 11 8b
00786790: 4c 24 10 8b 54 24 0c 51 52 8b c8 e8 c0 f2 32 00
007867a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786770 <.text+0x385770>:
  786770:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786776:	85 c9                                           	test   ecx,ecx
  786778:	74 26                                           	je     0x7867a0
  78677a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78677e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786782:	6a 00                                           	push   0x0
  786784:	50                                              	push   eax
  786785:	52                                              	push   edx
  786786:	e8 85 c0 4d 00                                  	call   0xc62810
  78678b:	85 c0                                           	test   eax,eax
  78678d:	74 11                                           	je     0x7867a0
  78678f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  786793:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  786797:	51                                              	push   ecx
  786798:	52                                              	push   edx
  786799:	8b c8                                           	mov    ecx,eax
  78679b:	e8 c0 f2 32 00                                  	call   0xab5a60
  7867a0:	c3                                              	ret
  7867a1:	cc                                              	int3
  7867a2:	cc                                              	int3
  7867a3:	cc                                              	int3
  7867a4:	cc                                              	int3
  7867a5:	cc                                              	int3
  7867a6:	cc                                              	int3
  7867a7:	cc                                              	int3
  7867a8:	cc                                              	int3
  7867a9:	cc                                              	int3
  7867aa:	cc                                              	int3
  7867ab:	cc                                              	int3
  7867ac:	cc                                              	int3
  7867ad:	cc                                              	int3
  7867ae:	cc                                              	int3
  7867af:	cc                                              	int3
