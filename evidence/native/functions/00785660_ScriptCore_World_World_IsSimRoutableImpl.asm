# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785660 (ScriptCore.World::World_IsSimRoutableImpl)
Paired Ghidra pseudocode: 00785660_ScriptCore_World_World_IsSimRoutableImpl.c
Window: [0x00785660, 0x00785690) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785660: 8b 0d c4 db 1e 01 85 c9 74 18 d9 44 24 08 83 ec
00785670: 08 d9 5c 24 04 d9 44 24 0c d9 1c 24 e8 6f 62 4e
00785680: 00 c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785660 <.text+0x384660>:
  785660:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785666:	85 c9                                           	test   ecx,ecx
  785668:	74 18                                           	je     0x785682
  78566a:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  78566e:	83 ec 08                                        	sub    esp,0x8
  785671:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  785675:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  785679:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78567c:	e8 6f 62 4e 00                                  	call   0xc6b8f0
  785681:	c3                                              	ret
  785682:	32 c0                                           	xor    al,al
  785684:	c3                                              	ret
  785685:	cc                                              	int3
  785686:	cc                                              	int3
  785687:	cc                                              	int3
  785688:	cc                                              	int3
  785689:	cc                                              	int3
  78568a:	cc                                              	int3
  78568b:	cc                                              	int3
  78568c:	cc                                              	int3
  78568d:	cc                                              	int3
  78568e:	cc                                              	int3
  78568f:	cc                                              	int3
