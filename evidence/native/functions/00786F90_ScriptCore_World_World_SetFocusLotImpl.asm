# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786f90 (ScriptCore.World::World_SetFocusLotImpl)
Paired Ghidra pseudocode: 00786F90_ScriptCore_World_World_SetFocusLotImpl.c
Window: [0x00786f90, 0x00786fb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786f90: 8b 0d c4 db 1e 01 85 c9 74 0f 8b 44 24 08 8b 54
00786fa0: 24 04 50 52 e8 27 9a 4d 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786f90 <.text+0x385f90>:
  786f90:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786f96:	85 c9                                           	test   ecx,ecx
  786f98:	74 0f                                           	je     0x786fa9
  786f9a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786f9e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786fa2:	50                                              	push   eax
  786fa3:	52                                              	push   edx
  786fa4:	e8 27 9a 4d 00                                  	call   0xc609d0
  786fa9:	c3                                              	ret
  786faa:	cc                                              	int3
  786fab:	cc                                              	int3
  786fac:	cc                                              	int3
  786fad:	cc                                              	int3
  786fae:	cc                                              	int3
  786faf:	cc                                              	int3
