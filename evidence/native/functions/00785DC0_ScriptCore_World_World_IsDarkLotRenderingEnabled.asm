# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785dc0 (ScriptCore.World::World_IsDarkLotRenderingEnabled)
Paired Ghidra pseudocode: 00785DC0_ScriptCore_World_World_IsDarkLotRenderingEnabled.c
Window: [0x00785dc0, 0x00785de0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785dc0: 8b 44 24 08 8b 54 24 04 8b 0d c4 db 1e 01 50 52
00785dd0: e8 3b ce 4d 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785dc0 <.text+0x384dc0>:
  785dc0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  785dc4:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785dc8:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785dce:	50                                              	push   eax
  785dcf:	52                                              	push   edx
  785dd0:	e8 3b ce 4d 00                                  	call   0xc62c10
  785dd5:	c3                                              	ret
  785dd6:	cc                                              	int3
  785dd7:	cc                                              	int3
  785dd8:	cc                                              	int3
  785dd9:	cc                                              	int3
  785dda:	cc                                              	int3
  785ddb:	cc                                              	int3
  785ddc:	cc                                              	int3
  785ddd:	cc                                              	int3
  785dde:	cc                                              	int3
  785ddf:	cc                                              	int3
