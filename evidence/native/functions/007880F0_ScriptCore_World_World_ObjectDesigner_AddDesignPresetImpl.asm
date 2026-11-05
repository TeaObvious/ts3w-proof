# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007880f0 (ScriptCore.World::World_ObjectDesigner_AddDesignPresetImpl)
Paired Ghidra pseudocode: 007880F0_ScriptCore_World_World_ObjectDesigner_AddDesignPresetImpl.c
Window: [0x007880f0, 0x00788120) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007880f0: 56 e8 aa 81 3a 00 8b f0 e8 93 12 fe ff 8b 4c 24
00788100: 0c 8b 10 8b 52 58 51 8b 4c 24 0c 6a 04 51 8b c8
00788110: ff d2 50 8b ce e8 26 01 3b 00 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
007880f0 <.text+0x3870f0>:
  7880f0:	56                                              	push   esi
  7880f1:	e8 aa 81 3a 00                                  	call   0xb302a0
  7880f6:	8b f0                                           	mov    esi,eax
  7880f8:	e8 93 12 fe ff                                  	call   0x769390
  7880fd:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  788101:	8b 10                                           	mov    edx,DWORD PTR [eax]
  788103:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  788106:	51                                              	push   ecx
  788107:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78810b:	6a 04                                           	push   0x4
  78810d:	51                                              	push   ecx
  78810e:	8b c8                                           	mov    ecx,eax
  788110:	ff d2                                           	call   edx
  788112:	50                                              	push   eax
  788113:	8b ce                                           	mov    ecx,esi
  788115:	e8 26 01 3b 00                                  	call   0xb38240
  78811a:	5e                                              	pop    esi
  78811b:	c3                                              	ret
  78811c:	cc                                              	int3
  78811d:	cc                                              	int3
  78811e:	cc                                              	int3
  78811f:	cc                                              	int3
