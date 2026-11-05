# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787960 (ScriptCore.World::World_ObjectDesigner_SetObjectImpl)
Paired Ghidra pseudocode: 00787960_ScriptCore_World_World_ObjectDesigner_SetObjectImpl.c
Window: [0x00787960, 0x00787980) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787960: e8 3b 89 3a 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00787970: c8 e8 7a 05 3b 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787960 <.text+0x386960>:
  787960:	e8 3b 89 3a 00                                  	call   0xb302a0
  787965:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  787969:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78796d:	51                                              	push   ecx
  78796e:	52                                              	push   edx
  78796f:	8b c8                                           	mov    ecx,eax
  787971:	e8 7a 05 3b 00                                  	call   0xb37ef0
  787976:	c3                                              	ret
  787977:	cc                                              	int3
  787978:	cc                                              	int3
  787979:	cc                                              	int3
  78797a:	cc                                              	int3
  78797b:	cc                                              	int3
  78797c:	cc                                              	int3
  78797d:	cc                                              	int3
  78797e:	cc                                              	int3
  78797f:	cc                                              	int3
