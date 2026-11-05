# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785a10 (ScriptCore.World::World_DecayLeavesImpl)
Paired Ghidra pseudocode: 00785A10_ScriptCore_World_World_DecayLeavesImpl.c
Window: [0x00785a10, 0x00785a40) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785a10: 8b 0d c4 db 1e 01 85 c9 74 24 8b 44 24 08 8b 54
00785a20: 24 04 6a 00 50 52 e8 e5 cd 4d 00 85 c0 74 0f d9
00785a30: 44 24 0c 51 8b c8 d9 1c 24 e8 72 0a 33 00 c3 cc

LINEAR DISASSEMBLY
00785a10 <.text+0x384a10>:
  785a10:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785a16:	85 c9                                           	test   ecx,ecx
  785a18:	74 24                                           	je     0x785a3e
  785a1a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  785a1e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785a22:	6a 00                                           	push   0x0
  785a24:	50                                              	push   eax
  785a25:	52                                              	push   edx
  785a26:	e8 e5 cd 4d 00                                  	call   0xc62810
  785a2b:	85 c0                                           	test   eax,eax
  785a2d:	74 0f                                           	je     0x785a3e
  785a2f:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  785a33:	51                                              	push   ecx
  785a34:	8b c8                                           	mov    ecx,eax
  785a36:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  785a39:	e8 72 0a 33 00                                  	call   0xab64b0
  785a3e:	c3                                              	ret
  785a3f:	cc                                              	int3
