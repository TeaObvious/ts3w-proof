# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078add0 (ScriptCore.World::World_ForceMoonPhaseImpl)
Paired Ghidra pseudocode: 0078ADD0_ScriptCore_World_World_ForceMoonPhaseImpl.c
Window: [0x0078add0, 0x0078adf0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078adf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078add0: a1 c4 db 1e 01 85 c0 74 11 8b 48 64 85 c9 74 0a
0078ade0: 8b 44 24 04 50 e8 76 47 48 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078add0 <.text+0x389dd0>:
  78add0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  78add5:	85 c0                                           	test   eax,eax
  78add7:	74 11                                           	je     0x78adea
  78add9:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
  78addc:	85 c9                                           	test   ecx,ecx
  78adde:	74 0a                                           	je     0x78adea
  78ade0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78ade4:	50                                              	push   eax
  78ade5:	e8 76 47 48 00                                  	call   0xc0f560
  78adea:	c3                                              	ret
  78adeb:	cc                                              	int3
  78adec:	cc                                              	int3
  78aded:	cc                                              	int3
  78adee:	cc                                              	int3
  78adef:	cc                                              	int3
