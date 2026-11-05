# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788660 (ScriptCore.World::World_SetWallCutoutStateForObjectImpl)
Paired Ghidra pseudocode: 00788660_ScriptCore_World_World_SetWallCutoutStateForObjectImpl.c
Window: [0x00788660, 0x007886a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007886a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788660: e8 0b ef 1a 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00788670: c8 e8 0a f9 1a 00 85 c0 74 17 80 7c 24 0c 00 50
00788680: 74 09 e8 d9 35 38 00 83 c4 04 c3 e8 90 3a 38 00
00788690: 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788660 <.text+0x387660>:
  788660:	e8 0b ef 1a 00                                  	call   0x937570
  788665:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  788669:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78866d:	51                                              	push   ecx
  78866e:	52                                              	push   edx
  78866f:	8b c8                                           	mov    ecx,eax
  788671:	e8 0a f9 1a 00                                  	call   0x937f80
  788676:	85 c0                                           	test   eax,eax
  788678:	74 17                                           	je     0x788691
  78867a:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  78867f:	50                                              	push   eax
  788680:	74 09                                           	je     0x78868b
  788682:	e8 d9 35 38 00                                  	call   0xb0bc60
  788687:	83 c4 04                                        	add    esp,0x4
  78868a:	c3                                              	ret
  78868b:	e8 90 3a 38 00                                  	call   0xb0c120
  788690:	59                                              	pop    ecx
  788691:	c3                                              	ret
  788692:	cc                                              	int3
  788693:	cc                                              	int3
  788694:	cc                                              	int3
  788695:	cc                                              	int3
  788696:	cc                                              	int3
  788697:	cc                                              	int3
  788698:	cc                                              	int3
  788699:	cc                                              	int3
  78869a:	cc                                              	int3
  78869b:	cc                                              	int3
  78869c:	cc                                              	int3
  78869d:	cc                                              	int3
  78869e:	cc                                              	int3
  78869f:	cc                                              	int3
