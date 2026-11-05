# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785690 (ScriptCore.World::World_IsCameraRoutableImpl)
Paired Ghidra pseudocode: 00785690_ScriptCore_World_World_IsCameraRoutableImpl.c
Window: [0x00785690, 0x007856c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007856c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785690: 8b 0d c4 db 1e 01 85 c9 74 18 d9 44 24 08 83 ec
007856a0: 08 d9 5c 24 04 d9 44 24 0c d9 1c 24 e8 4f 63 4e
007856b0: 00 c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785690 <.text+0x384690>:
  785690:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785696:	85 c9                                           	test   ecx,ecx
  785698:	74 18                                           	je     0x7856b2
  78569a:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  78569e:	83 ec 08                                        	sub    esp,0x8
  7856a1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7856a5:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  7856a9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7856ac:	e8 4f 63 4e 00                                  	call   0xc6ba00
  7856b1:	c3                                              	ret
  7856b2:	32 c0                                           	xor    al,al
  7856b4:	c3                                              	ret
  7856b5:	cc                                              	int3
  7856b6:	cc                                              	int3
  7856b7:	cc                                              	int3
  7856b8:	cc                                              	int3
  7856b9:	cc                                              	int3
  7856ba:	cc                                              	int3
  7856bb:	cc                                              	int3
  7856bc:	cc                                              	int3
  7856bd:	cc                                              	int3
  7856be:	cc                                              	int3
  7856bf:	cc                                              	int3
