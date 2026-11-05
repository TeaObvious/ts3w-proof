# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007859e0 (ScriptCore.World::World_DropLeavesFromTreesImpl)
Paired Ghidra pseudocode: 007859E0_ScriptCore_World_World_DropLeavesFromTreesImpl.c
Window: [0x007859e0, 0x00785a10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007859e0: 8b 0d c4 db 1e 01 85 c9 74 24 8b 44 24 08 8b 54
007859f0: 24 04 6a 00 50 52 e8 15 ce 4d 00 85 c0 74 0f d9
00785a00: 44 24 0c 51 8b c8 d9 1c 24 e8 b2 a1 33 00 c3 cc

LINEAR DISASSEMBLY
007859e0 <.text+0x3849e0>:
  7859e0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7859e6:	85 c9                                           	test   ecx,ecx
  7859e8:	74 24                                           	je     0x785a0e
  7859ea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7859ee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7859f2:	6a 00                                           	push   0x0
  7859f4:	50                                              	push   eax
  7859f5:	52                                              	push   edx
  7859f6:	e8 15 ce 4d 00                                  	call   0xc62810
  7859fb:	85 c0                                           	test   eax,eax
  7859fd:	74 0f                                           	je     0x785a0e
  7859ff:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  785a03:	51                                              	push   ecx
  785a04:	8b c8                                           	mov    ecx,eax
  785a06:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  785a09:	e8 b2 a1 33 00                                  	call   0xabfbc0
  785a0e:	c3                                              	ret
  785a0f:	cc                                              	int3
