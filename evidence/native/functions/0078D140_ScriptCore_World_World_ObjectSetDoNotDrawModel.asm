# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d140 (ScriptCore.World::World_ObjectSetDoNotDrawModel)
Paired Ghidra pseudocode: 0078D140_ScriptCore_World_World_ObjectSetDoNotDrawModel.c
Window: [0x0078d140, 0x0078d180) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d140: e8 2b a4 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
0078d150: 04 51 52 8b c8 e8 26 ae 1a 00 85 c0 74 1e 8b 0d
0078d160: a8 a2 1e 01 51 8b c8 e8 f4 70 1a 00 85 c0 74 0c
0078d170: 8b 54 24 0c 52 8b c8 e8 54 10 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
0078d140 <.text+0x38c140>:
  78d140:	e8 2b a4 1a 00                                  	call   0x937570
  78d145:	85 c0                                           	test   eax,eax
  78d147:	74 33                                           	je     0x78d17c
  78d149:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d14d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d151:	51                                              	push   ecx
  78d152:	52                                              	push   edx
  78d153:	8b c8                                           	mov    ecx,eax
  78d155:	e8 26 ae 1a 00                                  	call   0x937f80
  78d15a:	85 c0                                           	test   eax,eax
  78d15c:	74 1e                                           	je     0x78d17c
  78d15e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d164:	51                                              	push   ecx
  78d165:	8b c8                                           	mov    ecx,eax
  78d167:	e8 f4 70 1a 00                                  	call   0x934260
  78d16c:	85 c0                                           	test   eax,eax
  78d16e:	74 0c                                           	je     0x78d17c
  78d170:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d174:	52                                              	push   edx
  78d175:	8b c8                                           	mov    ecx,eax
  78d177:	e8 54 10 1d 00                                  	call   0x95e1d0
  78d17c:	c3                                              	ret
  78d17d:	cc                                              	int3
  78d17e:	cc                                              	int3
  78d17f:	cc                                              	int3
