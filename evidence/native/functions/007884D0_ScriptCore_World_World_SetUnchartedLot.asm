# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007884d0 (ScriptCore.World::World_SetUnchartedLot)
Paired Ghidra pseudocode: 007884D0_ScriptCore_World_World_SetUnchartedLot.c
Window: [0x007884d0, 0x00788500) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007884d0: 8b 0d c4 db 1e 01 85 c9 74 24 8b 44 24 08 8b 54
007884e0: 24 04 6a 00 50 52 e8 25 a3 4d 00 85 c0 74 0f d9
007884f0: 44 24 0c 51 8b c8 d9 1c 24 e8 32 7e 32 00 c3 cc

LINEAR DISASSEMBLY
007884d0 <.text+0x3874d0>:
  7884d0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7884d6:	85 c9                                           	test   ecx,ecx
  7884d8:	74 24                                           	je     0x7884fe
  7884da:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7884de:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7884e2:	6a 00                                           	push   0x0
  7884e4:	50                                              	push   eax
  7884e5:	52                                              	push   edx
  7884e6:	e8 25 a3 4d 00                                  	call   0xc62810
  7884eb:	85 c0                                           	test   eax,eax
  7884ed:	74 0f                                           	je     0x7884fe
  7884ef:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  7884f3:	51                                              	push   ecx
  7884f4:	8b c8                                           	mov    ecx,eax
  7884f6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7884f9:	e8 32 7e 32 00                                  	call   0xab0330
  7884fe:	c3                                              	ret
  7884ff:	cc                                              	int3
