# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776a20 (ScriptCore.VisualEffect::Swarm_SetNeverHide)
Paired Ghidra pseudocode: 00776A20_ScriptCore_VisualEffect_Swarm_SetNeverHide.c
Window: [0x00776a20, 0x00776a60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776a20: e8 4b 0b 1c 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00776a30: c8 e8 4a 15 1c 00 85 c0 74 1e 8b 0d 90 9e 1e 01
00776a40: 51 8b c8 e8 18 d8 1b 00 85 c0 74 0c 8b 54 24 0c
00776a50: 52 8b c8 e8 d8 cc 1c 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00776a20 <.text+0x375a20>:
  776a20:	e8 4b 0b 1c 00                                  	call   0x937570
  776a25:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  776a29:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  776a2d:	51                                              	push   ecx
  776a2e:	52                                              	push   edx
  776a2f:	8b c8                                           	mov    ecx,eax
  776a31:	e8 4a 15 1c 00                                  	call   0x937f80
  776a36:	85 c0                                           	test   eax,eax
  776a38:	74 1e                                           	je     0x776a58
  776a3a:	8b 0d 90 9e 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9e90
  776a40:	51                                              	push   ecx
  776a41:	8b c8                                           	mov    ecx,eax
  776a43:	e8 18 d8 1b 00                                  	call   0x934260
  776a48:	85 c0                                           	test   eax,eax
  776a4a:	74 0c                                           	je     0x776a58
  776a4c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  776a50:	52                                              	push   edx
  776a51:	8b c8                                           	mov    ecx,eax
  776a53:	e8 d8 cc 1c 00                                  	call   0x943730
  776a58:	c3                                              	ret
  776a59:	cc                                              	int3
  776a5a:	cc                                              	int3
  776a5b:	cc                                              	int3
  776a5c:	cc                                              	int3
  776a5d:	cc                                              	int3
  776a5e:	cc                                              	int3
  776a5f:	cc                                              	int3
