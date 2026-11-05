# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec10b0 (ScriptCore.GameUtils::GameUtils_SetGameTimeSpeedLevel)
Paired Ghidra pseudocode: 00EC10B0_ScriptCore_GameUtils_GameUtils_SetGameTimeSpeedLevel.c
Window: [0x00ec10b0, 0x00ec10c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec10c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec10b0: 8b 44 24 04 50 b9 48 ed 1c 01 e8 e1 3d 6d ff c3

LINEAR DISASSEMBLY
00ec10b0 <.text+0xac00b0>:
  ec10b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  ec10b4:	50                                              	push   eax
  ec10b5:	b9 48 ed 1c 01                                  	mov    ecx,0x11ced48
  ec10ba:	e8 e1 3d 6d ff                                  	call   0x594ea0
  ec10bf:	c3                                              	ret
