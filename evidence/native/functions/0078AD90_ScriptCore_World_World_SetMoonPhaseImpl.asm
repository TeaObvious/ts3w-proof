# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ad90 (ScriptCore.World::World_SetMoonPhaseImpl)
Paired Ghidra pseudocode: 0078AD90_ScriptCore_World_World_SetMoonPhaseImpl.c
Window: [0x0078ad90, 0x0078adb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078adb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ad90: a1 c4 db 1e 01 85 c0 74 11 8b 48 64 85 c9 74 0a
0078ada0: 8b 44 24 04 50 e8 86 47 48 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078ad90 <.text+0x389d90>:
  78ad90:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  78ad95:	85 c0                                           	test   eax,eax
  78ad97:	74 11                                           	je     0x78adaa
  78ad99:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
  78ad9c:	85 c9                                           	test   ecx,ecx
  78ad9e:	74 0a                                           	je     0x78adaa
  78ada0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78ada4:	50                                              	push   eax
  78ada5:	e8 86 47 48 00                                  	call   0xc0f530
  78adaa:	c3                                              	ret
  78adab:	cc                                              	int3
  78adac:	cc                                              	int3
  78adad:	cc                                              	int3
  78adae:	cc                                              	int3
  78adaf:	cc                                              	int3
