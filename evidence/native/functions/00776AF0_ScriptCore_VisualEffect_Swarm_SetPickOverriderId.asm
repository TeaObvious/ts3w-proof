# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776af0 (ScriptCore.VisualEffect::Swarm_SetPickOverriderId)
Paired Ghidra pseudocode: 00776AF0_ScriptCore_VisualEffect_Swarm_SetPickOverriderId.c
Window: [0x00776af0, 0x00776b40) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776af0: e8 7b 0a 1c 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00776b00: c8 e8 7a 14 1c 00 85 c0 74 26 8b 0d 90 9e 1e 01
00776b10: 51 8b c8 e8 48 d7 1b 00 85 c0 74 14 8b 54 24 10
00776b20: 8b 4c 24 0c 52 51 8b c8 e8 63 cc 1c 00 b0 01 c3
00776b30: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00776af0 <.text+0x375af0>:
  776af0:	e8 7b 0a 1c 00                                  	call   0x937570
  776af5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  776af9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  776afd:	51                                              	push   ecx
  776afe:	52                                              	push   edx
  776aff:	8b c8                                           	mov    ecx,eax
  776b01:	e8 7a 14 1c 00                                  	call   0x937f80
  776b06:	85 c0                                           	test   eax,eax
  776b08:	74 26                                           	je     0x776b30
  776b0a:	8b 0d 90 9e 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9e90
  776b10:	51                                              	push   ecx
  776b11:	8b c8                                           	mov    ecx,eax
  776b13:	e8 48 d7 1b 00                                  	call   0x934260
  776b18:	85 c0                                           	test   eax,eax
  776b1a:	74 14                                           	je     0x776b30
  776b1c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  776b20:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  776b24:	52                                              	push   edx
  776b25:	51                                              	push   ecx
  776b26:	8b c8                                           	mov    ecx,eax
  776b28:	e8 63 cc 1c 00                                  	call   0x943790
  776b2d:	b0 01                                           	mov    al,0x1
  776b2f:	c3                                              	ret
  776b30:	32 c0                                           	xor    al,al
  776b32:	c3                                              	ret
  776b33:	cc                                              	int3
  776b34:	cc                                              	int3
  776b35:	cc                                              	int3
  776b36:	cc                                              	int3
  776b37:	cc                                              	int3
  776b38:	cc                                              	int3
  776b39:	cc                                              	int3
  776b3a:	cc                                              	int3
  776b3b:	cc                                              	int3
  776b3c:	cc                                              	int3
  776b3d:	cc                                              	int3
  776b3e:	cc                                              	int3
  776b3f:	cc                                              	int3
