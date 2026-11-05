# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786820 (ScriptCore.World::World_LotRoofVisibleImpl)
Paired Ghidra pseudocode: 00786820_ScriptCore_World_World_LotRoofVisibleImpl.c
Window: [0x00786820, 0x00786860) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786820: 8b 0d c4 db 1e 01 85 c9 74 26 8b 44 24 08 8b 54
00786830: 24 04 6a 00 50 52 e8 d5 bf 4d 00 85 c0 74 11 8b
00786840: 80 ac 02 00 00 85 c0 74 07 8b c8 e9 80 dc 40 00
00786850: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786820 <.text+0x385820>:
  786820:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786826:	85 c9                                           	test   ecx,ecx
  786828:	74 26                                           	je     0x786850
  78682a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78682e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786832:	6a 00                                           	push   0x0
  786834:	50                                              	push   eax
  786835:	52                                              	push   edx
  786836:	e8 d5 bf 4d 00                                  	call   0xc62810
  78683b:	85 c0                                           	test   eax,eax
  78683d:	74 11                                           	je     0x786850
  78683f:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  786845:	85 c0                                           	test   eax,eax
  786847:	74 07                                           	je     0x786850
  786849:	8b c8                                           	mov    ecx,eax
  78684b:	e9 80 dc 40 00                                  	jmp    0xb944d0
  786850:	32 c0                                           	xor    al,al
  786852:	c3                                              	ret
  786853:	cc                                              	int3
  786854:	cc                                              	int3
  786855:	cc                                              	int3
  786856:	cc                                              	int3
  786857:	cc                                              	int3
  786858:	cc                                              	int3
  786859:	cc                                              	int3
  78685a:	cc                                              	int3
  78685b:	cc                                              	int3
  78685c:	cc                                              	int3
  78685d:	cc                                              	int3
  78685e:	cc                                              	int3
  78685f:	cc                                              	int3
