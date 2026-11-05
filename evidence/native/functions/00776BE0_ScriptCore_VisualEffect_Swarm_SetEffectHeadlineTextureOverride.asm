# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776be0 (ScriptCore.VisualEffect::Swarm_SetEffectHeadlineTextureOverride)
Paired Ghidra pseudocode: 00776BE0_ScriptCore_VisualEffect_Swarm_SetEffectHeadlineTextureOverride.c
Window: [0x00776be0, 0x00776c00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776be0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
00776bf0: 8c ff ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00776be0 <.text+0x375be0>:
  776be0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  776be4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  776be8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  776bec:	50                                              	push   eax
  776bed:	51                                              	push   ecx
  776bee:	52                                              	push   edx
  776bef:	e8 8c ff ff ff                                  	call   0x776b80
  776bf4:	83 c4 0c                                        	add    esp,0xc
  776bf7:	c3                                              	ret
  776bf8:	cc                                              	int3
  776bf9:	cc                                              	int3
  776bfa:	cc                                              	int3
  776bfb:	cc                                              	int3
  776bfc:	cc                                              	int3
  776bfd:	cc                                              	int3
  776bfe:	cc                                              	int3
  776bff:	cc                                              	int3
