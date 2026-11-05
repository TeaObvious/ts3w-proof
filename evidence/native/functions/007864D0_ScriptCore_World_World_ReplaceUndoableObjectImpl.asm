# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007864d0 (ScriptCore.World::World_ReplaceUndoableObjectImpl)
Paired Ghidra pseudocode: 007864D0_ScriptCore_World_World_ReplaceUndoableObjectImpl.c
Window: [0x007864d0, 0x00786500) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007864d0: e8 2b 90 56 00 85 c0 74 20 8b 48 28 85 c9 74 19
007864e0: 8b 44 24 10 8b 54 24 0c 50 8b 44 24 0c 52 8b 54
007864f0: 24 0c 50 52 e8 07 31 5b 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007864d0 <.text+0x3854d0>:
  7864d0:	e8 2b 90 56 00                                  	call   0xcef500
  7864d5:	85 c0                                           	test   eax,eax
  7864d7:	74 20                                           	je     0x7864f9
  7864d9:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  7864dc:	85 c9                                           	test   ecx,ecx
  7864de:	74 19                                           	je     0x7864f9
  7864e0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7864e4:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7864e8:	50                                              	push   eax
  7864e9:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7864ed:	52                                              	push   edx
  7864ee:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7864f2:	50                                              	push   eax
  7864f3:	52                                              	push   edx
  7864f4:	e8 07 31 5b 00                                  	call   0xd39600
  7864f9:	c3                                              	ret
  7864fa:	cc                                              	int3
  7864fb:	cc                                              	int3
  7864fc:	cc                                              	int3
  7864fd:	cc                                              	int3
  7864fe:	cc                                              	int3
  7864ff:	cc                                              	int3
