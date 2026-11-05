# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788b50 (ScriptCore.World::World_UpdateMoodStateImpl)
Paired Ghidra pseudocode: 00788B50_ScriptCore_World_World_UpdateMoodStateImpl.c
Window: [0x00788b50, 0x00788b90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788b90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788b50: 8b 44 24 18 d9 44 24 14 8b 4c 24 08 8b 54 24 04
00788b60: 50 83 ec 0c d9 5c 24 08 d9 44 24 20 d9 5c 24 04
00788b70: d9 44 24 1c d9 1c 24 51 52 b9 b4 9a 1d 01 e8 1d
00788b80: 52 06 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788b50 <.text+0x387b50>:
  788b50:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  788b54:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  788b58:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  788b5c:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788b60:	50                                              	push   eax
  788b61:	83 ec 0c                                        	sub    esp,0xc
  788b64:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  788b68:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  788b6c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  788b70:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  788b74:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  788b77:	51                                              	push   ecx
  788b78:	52                                              	push   edx
  788b79:	b9 b4 9a 1d 01                                  	mov    ecx,0x11d9ab4
  788b7e:	e8 1d 52 06 00                                  	call   0x7edda0
  788b83:	c3                                              	ret
  788b84:	cc                                              	int3
  788b85:	cc                                              	int3
  788b86:	cc                                              	int3
  788b87:	cc                                              	int3
  788b88:	cc                                              	int3
  788b89:	cc                                              	int3
  788b8a:	cc                                              	int3
  788b8b:	cc                                              	int3
  788b8c:	cc                                              	int3
  788b8d:	cc                                              	int3
  788b8e:	cc                                              	int3
  788b8f:	cc                                              	int3
