# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786410 (ScriptCore.World::World_DesignModeSwap_IsMaterialBuiltImpl)
Paired Ghidra pseudocode: 00786410_ScriptCore_World_World_DesignModeSwap_IsMaterialBuiltImpl.c
Window: [0x00786410, 0x00786450) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786410: e8 7b 2f fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
00786420: ff 81 fa 00 00 00 45 74 03 b0 01 c3 8b 10 51 8b
00786430: c8 8b 82 cc 00 00 00 ff d0 85 c0 74 ec 8b c8 e9
00786440: 9c 7e 2d 00 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786410 <.text+0x385410>:
  786410:	e8 7b 2f fe ff                                  	call   0x769390
  786415:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  786419:	8b d1                                           	mov    edx,ecx
  78641b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  786421:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  786427:	74 03                                           	je     0x78642c
  786429:	b0 01                                           	mov    al,0x1
  78642b:	c3                                              	ret
  78642c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78642e:	51                                              	push   ecx
  78642f:	8b c8                                           	mov    ecx,eax
  786431:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  786437:	ff d0                                           	call   eax
  786439:	85 c0                                           	test   eax,eax
  78643b:	74 ec                                           	je     0x786429
  78643d:	8b c8                                           	mov    ecx,eax
  78643f:	e9 9c 7e 2d 00                                  	jmp    0xa5e2e0
  786444:	cc                                              	int3
  786445:	cc                                              	int3
  786446:	cc                                              	int3
  786447:	cc                                              	int3
  786448:	cc                                              	int3
  786449:	cc                                              	int3
  78644a:	cc                                              	int3
  78644b:	cc                                              	int3
  78644c:	cc                                              	int3
  78644d:	cc                                              	int3
  78644e:	cc                                              	int3
  78644f:	cc                                              	int3
