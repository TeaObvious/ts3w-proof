# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788c80 (ScriptCore.World::World_GetHouseboatParentImpl)
Paired Ghidra pseudocode: 00788C80_ScriptCore_World_World_GetHouseboatParentImpl.c
Window: [0x00788c80, 0x00788cb0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788c80: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00788c90: 24 04 6a 00 50 52 e8 75 9b 4d 00 85 c0 74 07 8b
00788ca0: c8 e9 6a 77 32 00 33 c0 33 d2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00788c80 <.text+0x387c80>:
  788c80:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788c86:	85 c9                                           	test   ecx,ecx
  788c88:	74 1c                                           	je     0x788ca6
  788c8a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  788c8e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788c92:	6a 00                                           	push   0x0
  788c94:	50                                              	push   eax
  788c95:	52                                              	push   edx
  788c96:	e8 75 9b 4d 00                                  	call   0xc62810
  788c9b:	85 c0                                           	test   eax,eax
  788c9d:	74 07                                           	je     0x788ca6
  788c9f:	8b c8                                           	mov    ecx,eax
  788ca1:	e9 6a 77 32 00                                  	jmp    0xab0410
  788ca6:	33 c0                                           	xor    eax,eax
  788ca8:	33 d2                                           	xor    edx,edx
  788caa:	c3                                              	ret
  788cab:	cc                                              	int3
  788cac:	cc                                              	int3
  788cad:	cc                                              	int3
  788cae:	cc                                              	int3
  788caf:	cc                                              	int3
