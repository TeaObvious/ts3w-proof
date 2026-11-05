# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d100 (ScriptCore.World::World_ObjectPropagateFade)
Paired Ghidra pseudocode: 0078D100_ScriptCore_World_World_ObjectPropagateFade.c
Window: [0x0078d100, 0x0078d140) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d100: e8 6b a4 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
0078d110: 04 51 52 8b c8 e8 66 ae 1a 00 85 c0 74 1e 8b 0d
0078d120: a8 a2 1e 01 51 8b c8 e8 34 71 1a 00 85 c0 74 0c
0078d130: 8b 54 24 0c 52 8b c8 e8 04 0d 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
0078d100 <.text+0x38c100>:
  78d100:	e8 6b a4 1a 00                                  	call   0x937570
  78d105:	85 c0                                           	test   eax,eax
  78d107:	74 33                                           	je     0x78d13c
  78d109:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d10d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d111:	51                                              	push   ecx
  78d112:	52                                              	push   edx
  78d113:	8b c8                                           	mov    ecx,eax
  78d115:	e8 66 ae 1a 00                                  	call   0x937f80
  78d11a:	85 c0                                           	test   eax,eax
  78d11c:	74 1e                                           	je     0x78d13c
  78d11e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d124:	51                                              	push   ecx
  78d125:	8b c8                                           	mov    ecx,eax
  78d127:	e8 34 71 1a 00                                  	call   0x934260
  78d12c:	85 c0                                           	test   eax,eax
  78d12e:	74 0c                                           	je     0x78d13c
  78d130:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d134:	52                                              	push   edx
  78d135:	8b c8                                           	mov    ecx,eax
  78d137:	e8 04 0d 1d 00                                  	call   0x95de40
  78d13c:	c3                                              	ret
  78d13d:	cc                                              	int3
  78d13e:	cc                                              	int3
  78d13f:	cc                                              	int3
