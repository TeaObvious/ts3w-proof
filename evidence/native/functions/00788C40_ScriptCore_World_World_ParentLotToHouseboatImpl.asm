# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788c40 (ScriptCore.World::World_ParentLotToHouseboatImpl)
Paired Ghidra pseudocode: 00788C40_ScriptCore_World_World_ParentLotToHouseboatImpl.c
Window: [0x00788c40, 0x00788c80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788c40: 8b 0d c4 db 1e 01 85 c9 74 26 8b 44 24 08 8b 54
00788c50: 24 04 6a 00 50 52 e8 b5 9b 4d 00 85 c0 74 11 8b
00788c60: 4c 24 10 8b 54 24 0c 51 52 8b c8 e8 d0 f8 32 00
00788c70: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788c40 <.text+0x387c40>:
  788c40:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788c46:	85 c9                                           	test   ecx,ecx
  788c48:	74 26                                           	je     0x788c70
  788c4a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  788c4e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788c52:	6a 00                                           	push   0x0
  788c54:	50                                              	push   eax
  788c55:	52                                              	push   edx
  788c56:	e8 b5 9b 4d 00                                  	call   0xc62810
  788c5b:	85 c0                                           	test   eax,eax
  788c5d:	74 11                                           	je     0x788c70
  788c5f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  788c63:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  788c67:	51                                              	push   ecx
  788c68:	52                                              	push   edx
  788c69:	8b c8                                           	mov    ecx,eax
  788c6b:	e8 d0 f8 32 00                                  	call   0xab8540
  788c70:	c3                                              	ret
  788c71:	cc                                              	int3
  788c72:	cc                                              	int3
  788c73:	cc                                              	int3
  788c74:	cc                                              	int3
  788c75:	cc                                              	int3
  788c76:	cc                                              	int3
  788c77:	cc                                              	int3
  788c78:	cc                                              	int3
  788c79:	cc                                              	int3
  788c7a:	cc                                              	int3
  788c7b:	cc                                              	int3
  788c7c:	cc                                              	int3
  788c7d:	cc                                              	int3
  788c7e:	cc                                              	int3
  788c7f:	cc                                              	int3
