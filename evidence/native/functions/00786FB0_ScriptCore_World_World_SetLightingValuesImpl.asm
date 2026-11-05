# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786fb0 (ScriptCore.World::World_SetLightingValuesImpl)
Paired Ghidra pseudocode: 00786FB0_ScriptCore_World_World_SetLightingValuesImpl.c
Window: [0x00786fb0, 0x00786fd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786fb0: 8b 44 24 04 85 c0 b9 d0 18 1d 01 75 05 e9 fe d8
00786fc0: f3 ff 50 e8 08 d9 f3 ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786fb0 <.text+0x385fb0>:
  786fb0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  786fb4:	85 c0                                           	test   eax,eax
  786fb6:	b9 d0 18 1d 01                                  	mov    ecx,0x11d18d0
  786fbb:	75 05                                           	jne    0x786fc2
  786fbd:	e9 fe d8 f3 ff                                  	jmp    0x6c48c0
  786fc2:	50                                              	push   eax
  786fc3:	e8 08 d9 f3 ff                                  	call   0x6c48d0
  786fc8:	c3                                              	ret
  786fc9:	cc                                              	int3
  786fca:	cc                                              	int3
  786fcb:	cc                                              	int3
  786fcc:	cc                                              	int3
  786fcd:	cc                                              	int3
  786fce:	cc                                              	int3
  786fcf:	cc                                              	int3
