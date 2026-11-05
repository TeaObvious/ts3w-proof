# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788600 (ScriptCore.World::World_ExportInfoImpl)
Paired Ghidra pseudocode: 00788600_ScriptCore_World_World_ExportInfoImpl.c
Window: [0x00788600, 0x00788610) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788600: 8b 0d c4 db 1e 01 85 c9 74 05 e9 b1 ba d2 ff c3

LINEAR DISASSEMBLY
00788600 <.text+0x387600>:
  788600:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788606:	85 c9                                           	test   ecx,ecx
  788608:	74 05                                           	je     0x78860f
  78860a:	e9 b1 ba d2 ff                                  	jmp    0x4b40c0
  78860f:	c3                                              	ret
