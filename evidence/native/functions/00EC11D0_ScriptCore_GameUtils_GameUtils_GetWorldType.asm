# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec11d0 (ScriptCore.GameUtils::GameUtils_GetWorldType)
Paired Ghidra pseudocode: 00EC11D0_ScriptCore_GameUtils_GameUtils_GetWorldType.c
Window: [0x00ec11d0, 0x00ec11f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec11f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec11d0: a1 c4 db 1e 01 85 c0 74 0b 8d 88 70 02 00 00 e9
00ec11e0: ac 19 6e ff 83 c8 ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec11d0 <.text+0xac01d0>:
  ec11d0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  ec11d5:	85 c0                                           	test   eax,eax
  ec11d7:	74 0b                                           	je     0xec11e4
  ec11d9:	8d 88 70 02 00 00                               	lea    ecx,[eax+0x270]
  ec11df:	e9 ac 19 6e ff                                  	jmp    0x5a2b90
  ec11e4:	83 c8 ff                                        	or     eax,0xffffffff
  ec11e7:	c3                                              	ret
  ec11e8:	cc                                              	int3
  ec11e9:	cc                                              	int3
  ec11ea:	cc                                              	int3
  ec11eb:	cc                                              	int3
  ec11ec:	cc                                              	int3
  ec11ed:	cc                                              	int3
  ec11ee:	cc                                              	int3
  ec11ef:	cc                                              	int3
