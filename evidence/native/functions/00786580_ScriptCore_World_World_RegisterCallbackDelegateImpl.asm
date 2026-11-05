# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786580 (ScriptCore.World::World_RegisterCallbackDelegateImpl)
Paired Ghidra pseudocode: 00786580_ScriptCore_World_World_RegisterCallbackDelegateImpl.c
Window: [0x00786580, 0x007865a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007865a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786580: 8b 44 24 04 83 f8 4b 77 0e 8b 4c 24 08 8d 04 c0
00786590: 89 0c 85 78 7a 1d 01 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786580 <.text+0x385580>:
  786580:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  786584:	83 f8 4b                                        	cmp    eax,0x4b
  786587:	77 0e                                           	ja     0x786597
  786589:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78658d:	8d 04 c0                                        	lea    eax,[eax+eax*8]
  786590:	89 0c 85 78 7a 1d 01                            	mov    DWORD PTR [eax*4+0x11d7a78],ecx
  786597:	c3                                              	ret
  786598:	cc                                              	int3
  786599:	cc                                              	int3
  78659a:	cc                                              	int3
  78659b:	cc                                              	int3
  78659c:	cc                                              	int3
  78659d:	cc                                              	int3
  78659e:	cc                                              	int3
  78659f:	cc                                              	int3
