# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a920 (ScriptCore.World::World_SetObjectSnowImpl)
Paired Ghidra pseudocode: 0078A920_ScriptCore_World_World_SetObjectSnowImpl.c
Window: [0x0078a920, 0x0078a960) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a920: e8 4b cc 1a 00 85 c0 74 35 8b 4c 24 08 8b 54 24
0078a930: 04 51 52 8b c8 e8 46 d6 1a 00 85 c0 74 20 8b 0d
0078a940: a8 a2 1e 01 51 8b c8 e8 14 99 1a 00 85 c0 74 0e
0078a950: 8b 54 24 0c 6a 02 52 8b c8 e8 b2 4e 1d 00 c3 cc

LINEAR DISASSEMBLY
0078a920 <.text+0x389920>:
  78a920:	e8 4b cc 1a 00                                  	call   0x937570
  78a925:	85 c0                                           	test   eax,eax
  78a927:	74 35                                           	je     0x78a95e
  78a929:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78a92d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78a931:	51                                              	push   ecx
  78a932:	52                                              	push   edx
  78a933:	8b c8                                           	mov    ecx,eax
  78a935:	e8 46 d6 1a 00                                  	call   0x937f80
  78a93a:	85 c0                                           	test   eax,eax
  78a93c:	74 20                                           	je     0x78a95e
  78a93e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78a944:	51                                              	push   ecx
  78a945:	8b c8                                           	mov    ecx,eax
  78a947:	e8 14 99 1a 00                                  	call   0x934260
  78a94c:	85 c0                                           	test   eax,eax
  78a94e:	74 0e                                           	je     0x78a95e
  78a950:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78a954:	6a 02                                           	push   0x2
  78a956:	52                                              	push   edx
  78a957:	8b c8                                           	mov    ecx,eax
  78a959:	e8 b2 4e 1d 00                                  	call   0x95f810
  78a95e:	c3                                              	ret
  78a95f:	cc                                              	int3
