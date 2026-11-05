# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078adf0 (ScriptCore.World::World_GetMoonCycleImpl)
Paired Ghidra pseudocode: 0078ADF0_ScriptCore_World_World_GetMoonCycleImpl.c
Window: [0x0078adf0, 0x0078ae10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ae10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078adf0: a1 c4 db 1e 01 85 c0 74 0c 8b 48 64 85 c9 74 05
0078ae00: e9 0b 47 48 00 66 0d ff ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078adf0 <.text+0x389df0>:
  78adf0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  78adf5:	85 c0                                           	test   eax,eax
  78adf7:	74 0c                                           	je     0x78ae05
  78adf9:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
  78adfc:	85 c9                                           	test   ecx,ecx
  78adfe:	74 05                                           	je     0x78ae05
  78ae00:	e9 0b 47 48 00                                  	jmp    0xc0f510
  78ae05:	66 0d ff ff                                     	or     ax,0xffff
  78ae09:	c3                                              	ret
  78ae0a:	cc                                              	int3
  78ae0b:	cc                                              	int3
  78ae0c:	cc                                              	int3
  78ae0d:	cc                                              	int3
  78ae0e:	cc                                              	int3
  78ae0f:	cc                                              	int3
