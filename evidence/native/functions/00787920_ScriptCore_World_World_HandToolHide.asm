# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787920 (ScriptCore.World::World_HandToolHide)
Paired Ghidra pseudocode: 00787920_ScriptCore_World_World_HandToolHide.c
Window: [0x00787920, 0x00787940) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787920: e8 7b 1a fe ff 8b 10 6a 00 6a 00 8b c8 8b 42 18
00787930: 68 c3 10 69 04 ff d0 b0 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787920 <.text+0x386920>:
  787920:	e8 7b 1a fe ff                                  	call   0x7693a0
  787925:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787927:	6a 00                                           	push   0x0
  787929:	6a 00                                           	push   0x0
  78792b:	8b c8                                           	mov    ecx,eax
  78792d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  787930:	68 c3 10 69 04                                  	push   0x46910c3
  787935:	ff d0                                           	call   eax
  787937:	b0 01                                           	mov    al,0x1
  787939:	c3                                              	ret
  78793a:	cc                                              	int3
  78793b:	cc                                              	int3
  78793c:	cc                                              	int3
  78793d:	cc                                              	int3
  78793e:	cc                                              	int3
  78793f:	cc                                              	int3
