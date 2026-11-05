# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786860 (ScriptCore.World::World_LotRoofUpImpl)
Paired Ghidra pseudocode: 00786860_ScriptCore_World_World_LotRoofUpImpl.c
Window: [0x00786860, 0x00786890) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786860: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00786870: 24 04 6a 00 50 52 e8 95 bf 4d 00 85 c0 74 07 8b
00786880: c8 e9 7a aa 33 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786860 <.text+0x385860>:
  786860:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786866:	85 c9                                           	test   ecx,ecx
  786868:	74 1c                                           	je     0x786886
  78686a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78686e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786872:	6a 00                                           	push   0x0
  786874:	50                                              	push   eax
  786875:	52                                              	push   edx
  786876:	e8 95 bf 4d 00                                  	call   0xc62810
  78687b:	85 c0                                           	test   eax,eax
  78687d:	74 07                                           	je     0x786886
  78687f:	8b c8                                           	mov    ecx,eax
  786881:	e9 7a aa 33 00                                  	jmp    0xac1300
  786886:	c3                                              	ret
  786887:	cc                                              	int3
  786888:	cc                                              	int3
  786889:	cc                                              	int3
  78688a:	cc                                              	int3
  78688b:	cc                                              	int3
  78688c:	cc                                              	int3
  78688d:	cc                                              	int3
  78688e:	cc                                              	int3
  78688f:	cc                                              	int3
