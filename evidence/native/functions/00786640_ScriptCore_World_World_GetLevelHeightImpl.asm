# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786640 (ScriptCore.World::World_GetLevelHeightImpl)
Paired Ghidra pseudocode: 00786640_ScriptCore_World_World_GetLevelHeightImpl.c
Window: [0x00786640, 0x00786680) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786640: 8b 0d c4 db 1e 01 85 c9 74 29 8b 44 24 0c d9 44
00786650: 24 08 6a 00 6a 00 6a 00 6a 00 6a 00 6a 01 50 83
00786660: ec 08 d9 5c 24 04 d9 44 24 28 d9 1c 24 e8 1e 3a
00786670: 4e 00 c3 d9 ee c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786640 <.text+0x385640>:
  786640:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786646:	85 c9                                           	test   ecx,ecx
  786648:	74 29                                           	je     0x786673
  78664a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78664e:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  786652:	6a 00                                           	push   0x0
  786654:	6a 00                                           	push   0x0
  786656:	6a 00                                           	push   0x0
  786658:	6a 00                                           	push   0x0
  78665a:	6a 00                                           	push   0x0
  78665c:	6a 01                                           	push   0x1
  78665e:	50                                              	push   eax
  78665f:	83 ec 08                                        	sub    esp,0x8
  786662:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  786666:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78666a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78666d:	e8 1e 3a 4e 00                                  	call   0xc6a090
  786672:	c3                                              	ret
  786673:	d9 ee                                           	fldz
  786675:	c3                                              	ret
  786676:	cc                                              	int3
  786677:	cc                                              	int3
  786678:	cc                                              	int3
  786679:	cc                                              	int3
  78667a:	cc                                              	int3
  78667b:	cc                                              	int3
  78667c:	cc                                              	int3
  78667d:	cc                                              	int3
  78667e:	cc                                              	int3
  78667f:	cc                                              	int3
