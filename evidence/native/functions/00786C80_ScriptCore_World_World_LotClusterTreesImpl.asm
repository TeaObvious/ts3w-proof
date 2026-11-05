# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786c80 (ScriptCore.World::World_LotClusterTreesImpl)
Paired Ghidra pseudocode: 00786C80_ScriptCore_World_World_LotClusterTreesImpl.c
Window: [0x00786c80, 0x00786cc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786c80: 8b 0d c4 db 1e 01 85 c9 74 31 8b 44 24 08 8b 54
00786c90: 24 04 6a 00 50 52 e8 75 bb 4d 00 8b c8 85 c9 74
00786ca0: 1a 80 7c 24 0c 00 6a 00 74 0c 6a 00 6a 01 6a 01
00786cb0: e8 1b 70 4e 00 c3 e8 f5 ad 4e 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
00786c80 <.text+0x385c80>:
  786c80:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786c86:	85 c9                                           	test   ecx,ecx
  786c88:	74 31                                           	je     0x786cbb
  786c8a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786c8e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786c92:	6a 00                                           	push   0x0
  786c94:	50                                              	push   eax
  786c95:	52                                              	push   edx
  786c96:	e8 75 bb 4d 00                                  	call   0xc62810
  786c9b:	8b c8                                           	mov    ecx,eax
  786c9d:	85 c9                                           	test   ecx,ecx
  786c9f:	74 1a                                           	je     0x786cbb
  786ca1:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  786ca6:	6a 00                                           	push   0x0
  786ca8:	74 0c                                           	je     0x786cb6
  786caa:	6a 00                                           	push   0x0
  786cac:	6a 01                                           	push   0x1
  786cae:	6a 01                                           	push   0x1
  786cb0:	e8 1b 70 4e 00                                  	call   0xc6dcd0
  786cb5:	c3                                              	ret
  786cb6:	e8 f5 ad 4e 00                                  	call   0xc71ab0
  786cbb:	c3                                              	ret
  786cbc:	cc                                              	int3
  786cbd:	cc                                              	int3
  786cbe:	cc                                              	int3
  786cbf:	cc                                              	int3
