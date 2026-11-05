# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785210 (ScriptCore.World::World_RemoveObjectFromObjectManagerImpl)
Paired Ghidra pseudocode: 00785210_ScriptCore_World_World_RemoveObjectFromObjectManagerImpl.c
Window: [0x00785210, 0x00785230) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785210: 8b 44 24 08 8b 4c 24 04 50 51 e8 91 3e 01 00 83
00785220: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785210 <.text+0x384210>:
  785210:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  785214:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  785218:	50                                              	push   eax
  785219:	51                                              	push   ecx
  78521a:	e8 91 3e 01 00                                  	call   0x7990b0
  78521f:	83 c4 08                                        	add    esp,0x8
  785222:	c3                                              	ret
  785223:	cc                                              	int3
  785224:	cc                                              	int3
  785225:	cc                                              	int3
  785226:	cc                                              	int3
  785227:	cc                                              	int3
  785228:	cc                                              	int3
  785229:	cc                                              	int3
  78522a:	cc                                              	int3
  78522b:	cc                                              	int3
  78522c:	cc                                              	int3
  78522d:	cc                                              	int3
  78522e:	cc                                              	int3
  78522f:	cc                                              	int3
