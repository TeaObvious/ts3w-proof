# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785190 (ScriptCore.World::World_AddObjectToObjectManagerImpl)
Paired Ghidra pseudocode: 00785190_ScriptCore_World_World_AddObjectToObjectManagerImpl.c
Window: [0x00785190, 0x007851b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007851b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785190: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 3b 01 00 83
007851a0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785190 <.text+0x384190>:
  785190:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  785194:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  785198:	50                                              	push   eax
  785199:	51                                              	push   ecx
  78519a:	e8 51 3b 01 00                                  	call   0x798cf0
  78519f:	83 c4 08                                        	add    esp,0x8
  7851a2:	c3                                              	ret
  7851a3:	cc                                              	int3
  7851a4:	cc                                              	int3
  7851a5:	cc                                              	int3
  7851a6:	cc                                              	int3
  7851a7:	cc                                              	int3
  7851a8:	cc                                              	int3
  7851a9:	cc                                              	int3
  7851aa:	cc                                              	int3
  7851ab:	cc                                              	int3
  7851ac:	cc                                              	int3
  7851ad:	cc                                              	int3
  7851ae:	cc                                              	int3
  7851af:	cc                                              	int3
