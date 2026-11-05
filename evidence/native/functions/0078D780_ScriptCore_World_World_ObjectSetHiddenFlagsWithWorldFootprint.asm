# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d780 (ScriptCore.World::World_ObjectSetHiddenFlagsWithWorldFootprint)
Paired Ghidra pseudocode: 0078D780_ScriptCore_World_World_ObjectSetHiddenFlagsWithWorldFootprint.c
Window: [0x0078d780, 0x0078d7a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d780: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 6a 01 50 51
0078d790: 52 e8 6a ff ff ff 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078d780 <.text+0x38c780>:
  78d780:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78d784:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d788:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d78c:	6a 01                                           	push   0x1
  78d78e:	50                                              	push   eax
  78d78f:	51                                              	push   ecx
  78d790:	52                                              	push   edx
  78d791:	e8 6a ff ff ff                                  	call   0x78d700
  78d796:	83 c4 10                                        	add    esp,0x10
  78d799:	c3                                              	ret
  78d79a:	cc                                              	int3
  78d79b:	cc                                              	int3
  78d79c:	cc                                              	int3
  78d79d:	cc                                              	int3
  78d79e:	cc                                              	int3
  78d79f:	cc                                              	int3
