# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ad70 (ScriptCore.World::World_SetMoonCycleImpl)
Paired Ghidra pseudocode: 0078AD70_ScriptCore_World_World_SetMoonCycleImpl.c
Window: [0x0078ad70, 0x0078ad90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ad90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ad70: a1 c4 db 1e 01 85 c0 74 11 8b 48 64 85 c9 74 0a
0078ad80: 8b 44 24 04 50 e8 66 47 48 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078ad70 <.text+0x389d70>:
  78ad70:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  78ad75:	85 c0                                           	test   eax,eax
  78ad77:	74 11                                           	je     0x78ad8a
  78ad79:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
  78ad7c:	85 c9                                           	test   ecx,ecx
  78ad7e:	74 0a                                           	je     0x78ad8a
  78ad80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78ad84:	50                                              	push   eax
  78ad85:	e8 66 47 48 00                                  	call   0xc0f4f0
  78ad8a:	c3                                              	ret
  78ad8b:	cc                                              	int3
  78ad8c:	cc                                              	int3
  78ad8d:	cc                                              	int3
  78ad8e:	cc                                              	int3
  78ad8f:	cc                                              	int3
