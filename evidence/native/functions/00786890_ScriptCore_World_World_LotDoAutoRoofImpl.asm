# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786890 (ScriptCore.World::World_LotDoAutoRoofImpl)
Paired Ghidra pseudocode: 00786890_ScriptCore_World_World_LotDoAutoRoofImpl.c
Window: [0x00786890, 0x007868d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007868d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786890: 8b 0d c4 db 1e 01 85 c9 74 26 8b 44 24 08 8b 54
007868a0: 24 04 6a 00 50 52 e8 65 bf 4d 00 85 c0 74 11 8b
007868b0: 80 ac 02 00 00 85 c0 74 07 8b c8 e9 00 d8 d2 ff
007868c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786890 <.text+0x385890>:
  786890:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786896:	85 c9                                           	test   ecx,ecx
  786898:	74 26                                           	je     0x7868c0
  78689a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78689e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7868a2:	6a 00                                           	push   0x0
  7868a4:	50                                              	push   eax
  7868a5:	52                                              	push   edx
  7868a6:	e8 65 bf 4d 00                                  	call   0xc62810
  7868ab:	85 c0                                           	test   eax,eax
  7868ad:	74 11                                           	je     0x7868c0
  7868af:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  7868b5:	85 c0                                           	test   eax,eax
  7868b7:	74 07                                           	je     0x7868c0
  7868b9:	8b c8                                           	mov    ecx,eax
  7868bb:	e9 00 d8 d2 ff                                  	jmp    0x4b40c0
  7868c0:	c3                                              	ret
  7868c1:	cc                                              	int3
  7868c2:	cc                                              	int3
  7868c3:	cc                                              	int3
  7868c4:	cc                                              	int3
  7868c5:	cc                                              	int3
  7868c6:	cc                                              	int3
  7868c7:	cc                                              	int3
  7868c8:	cc                                              	int3
  7868c9:	cc                                              	int3
  7868ca:	cc                                              	int3
  7868cb:	cc                                              	int3
  7868cc:	cc                                              	int3
  7868cd:	cc                                              	int3
  7868ce:	cc                                              	int3
  7868cf:	cc                                              	int3
