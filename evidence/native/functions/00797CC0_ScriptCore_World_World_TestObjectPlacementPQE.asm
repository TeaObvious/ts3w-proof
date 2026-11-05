# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797cc0 (ScriptCore.World::World_TestObjectPlacementPQE)
Paired Ghidra pseudocode: 00797CC0_ScriptCore_World_World_TestObjectPlacementPQE.c
Window: [0x00797cc0, 0x00797d00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797cc0: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 8b 44 24
00797cd0: 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 8b 44 24 1c
00797ce0: 51 8b 4c 24 1c 52 8b 54 24 1c 6a 00 50 51 52 e8
00797cf0: 0c f5 ff ff 83 c4 28 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00797cc0 <.text+0x396cc0>:
  797cc0:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  797cc4:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  797cc8:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  797ccc:	50                                              	push   eax
  797ccd:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  797cd1:	51                                              	push   ecx
  797cd2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  797cd6:	52                                              	push   edx
  797cd7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  797cdb:	50                                              	push   eax
  797cdc:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  797ce0:	51                                              	push   ecx
  797ce1:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  797ce5:	52                                              	push   edx
  797ce6:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  797cea:	6a 00                                           	push   0x0
  797cec:	50                                              	push   eax
  797ced:	51                                              	push   ecx
  797cee:	52                                              	push   edx
  797cef:	e8 0c f5 ff ff                                  	call   0x797200
  797cf4:	83 c4 28                                        	add    esp,0x28
  797cf7:	c3                                              	ret
  797cf8:	cc                                              	int3
  797cf9:	cc                                              	int3
  797cfa:	cc                                              	int3
  797cfb:	cc                                              	int3
  797cfc:	cc                                              	int3
  797cfd:	cc                                              	int3
  797cfe:	cc                                              	int3
  797cff:	cc                                              	int3
