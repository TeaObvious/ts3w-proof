# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787e10 (ScriptCore.World::World_ObjectDesigner_GetCurrentObjectImpl)
Paired Ghidra pseudocode: 00787E10_ScriptCore_World_World_ObjectDesigner_GetCurrentObjectImpl.c
Window: [0x00787e10, 0x00787e20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787e10: e8 8b 84 3a 00 8b c8 8b 41 70 8b 51 74 c3 cc cc

LINEAR DISASSEMBLY
00787e10 <.text+0x386e10>:
  787e10:	e8 8b 84 3a 00                                  	call   0xb302a0
  787e15:	8b c8                                           	mov    ecx,eax
  787e17:	8b 41 70                                        	mov    eax,DWORD PTR [ecx+0x70]
  787e1a:	8b 51 74                                        	mov    edx,DWORD PTR [ecx+0x74]
  787e1d:	c3                                              	ret
  787e1e:	cc                                              	int3
  787e1f:	cc                                              	int3
