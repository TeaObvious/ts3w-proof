# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785d90 (ScriptCore.World::World_SetDarkLotRendering)
Paired Ghidra pseudocode: 00785D90_ScriptCore_World_World_SetDarkLotRendering.c
Window: [0x00785d90, 0x00785dc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785d90: 8b 0d c4 db 1e 01 85 c9 74 1f 8b 44 24 08 8b 54
00785da0: 24 04 6a 00 50 52 e8 65 ca 4d 00 85 c0 74 0a 8a
00785db0: 4c 24 0c 88 88 30 04 00 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785d90 <.text+0x384d90>:
  785d90:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785d96:	85 c9                                           	test   ecx,ecx
  785d98:	74 1f                                           	je     0x785db9
  785d9a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  785d9e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785da2:	6a 00                                           	push   0x0
  785da4:	50                                              	push   eax
  785da5:	52                                              	push   edx
  785da6:	e8 65 ca 4d 00                                  	call   0xc62810
  785dab:	85 c0                                           	test   eax,eax
  785dad:	74 0a                                           	je     0x785db9
  785daf:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
  785db3:	88 88 30 04 00 00                               	mov    BYTE PTR [eax+0x430],cl
  785db9:	c3                                              	ret
  785dba:	cc                                              	int3
  785dbb:	cc                                              	int3
  785dbc:	cc                                              	int3
  785dbd:	cc                                              	int3
  785dbe:	cc                                              	int3
  785dbf:	cc                                              	int3
