# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787e20 (ScriptCore.World::World_ObjectDesigner_GetOriginalObjectImpl)
Paired Ghidra pseudocode: 00787E20_ScriptCore_World_World_ObjectDesigner_GetOriginalObjectImpl.c
Window: [0x00787e20, 0x00787e30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787e30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787e20: e8 7b 84 3a 00 8b c8 8b 41 68 8b 51 6c c3 cc cc

LINEAR DISASSEMBLY
00787e20 <.text+0x386e20>:
  787e20:	e8 7b 84 3a 00                                  	call   0xb302a0
  787e25:	8b c8                                           	mov    ecx,eax
  787e27:	8b 41 68                                        	mov    eax,DWORD PTR [ecx+0x68]
  787e2a:	8b 51 6c                                        	mov    edx,DWORD PTR [ecx+0x6c]
  787e2d:	c3                                              	ret
  787e2e:	cc                                              	int3
  787e2f:	cc                                              	int3
