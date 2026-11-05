# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786990 (ScriptCore.World::World_LotSetForceDoorVisibilityCheckImpl)
Paired Ghidra pseudocode: 00786990_ScriptCore_World_World_LotSetForceDoorVisibilityCheckImpl.c
Window: [0x00786990, 0x007869c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007869c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786990: 8b 0d c4 db 1e 01 85 c9 74 21 8b 44 24 08 8b 54
007869a0: 24 04 6a 00 50 52 e8 65 be 4d 00 85 c0 74 0c 8b
007869b0: 4c 24 0c 51 8b c8 e8 f5 c7 32 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
00786990 <.text+0x385990>:
  786990:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786996:	85 c9                                           	test   ecx,ecx
  786998:	74 21                                           	je     0x7869bb
  78699a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78699e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7869a2:	6a 00                                           	push   0x0
  7869a4:	50                                              	push   eax
  7869a5:	52                                              	push   edx
  7869a6:	e8 65 be 4d 00                                  	call   0xc62810
  7869ab:	85 c0                                           	test   eax,eax
  7869ad:	74 0c                                           	je     0x7869bb
  7869af:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7869b3:	51                                              	push   ecx
  7869b4:	8b c8                                           	mov    ecx,eax
  7869b6:	e8 f5 c7 32 00                                  	call   0xab31b0
  7869bb:	c3                                              	ret
  7869bc:	cc                                              	int3
  7869bd:	cc                                              	int3
  7869be:	cc                                              	int3
  7869bf:	cc                                              	int3
