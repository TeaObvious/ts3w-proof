# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ae30 (ScriptCore.World::World_GetNumDaysUntilFullMoonImpl)
Paired Ghidra pseudocode: 0078AE30_ScriptCore_World_World_GetNumDaysUntilFullMoonImpl.c
Window: [0x0078ae30, 0x0078ae50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ae50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ae30: a1 c4 db 1e 01 85 c0 74 0c 8b 48 64 85 c9 74 05
0078ae40: e9 bb 4e 48 00 83 c8 ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078ae30 <.text+0x389e30>:
  78ae30:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  78ae35:	85 c0                                           	test   eax,eax
  78ae37:	74 0c                                           	je     0x78ae45
  78ae39:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
  78ae3c:	85 c9                                           	test   ecx,ecx
  78ae3e:	74 05                                           	je     0x78ae45
  78ae40:	e9 bb 4e 48 00                                  	jmp    0xc0fd00
  78ae45:	83 c8 ff                                        	or     eax,0xffffffff
  78ae48:	c3                                              	ret
  78ae49:	cc                                              	int3
  78ae4a:	cc                                              	int3
  78ae4b:	cc                                              	int3
  78ae4c:	cc                                              	int3
  78ae4d:	cc                                              	int3
  78ae4e:	cc                                              	int3
  78ae4f:	cc                                              	int3
