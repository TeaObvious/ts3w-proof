# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec11b0 (ScriptCore.GameUtils::GameUtils_GetWorldName)
Paired Ghidra pseudocode: 00EC11B0_ScriptCore_GameUtils_GameUtils_GetWorldName.c
Window: [0x00ec11b0, 0x00ec11d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec11d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec11b0: a1 c4 db 1e 01 85 c0 74 0b 8d 88 70 02 00 00 e9
00ec11c0: 3c 18 6e ff 83 c8 ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec11b0 <.text+0xac01b0>:
  ec11b0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  ec11b5:	85 c0                                           	test   eax,eax
  ec11b7:	74 0b                                           	je     0xec11c4
  ec11b9:	8d 88 70 02 00 00                               	lea    ecx,[eax+0x270]
  ec11bf:	e9 3c 18 6e ff                                  	jmp    0x5a2a00
  ec11c4:	83 c8 ff                                        	or     eax,0xffffffff
  ec11c7:	c3                                              	ret
  ec11c8:	cc                                              	int3
  ec11c9:	cc                                              	int3
  ec11ca:	cc                                              	int3
  ec11cb:	cc                                              	int3
  ec11cc:	cc                                              	int3
  ec11cd:	cc                                              	int3
  ec11ce:	cc                                              	int3
  ec11cf:	cc                                              	int3
