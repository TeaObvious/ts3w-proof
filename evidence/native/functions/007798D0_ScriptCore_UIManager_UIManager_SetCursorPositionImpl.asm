# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007798d0 (ScriptCore.UIManager::UIManager_SetCursorPositionImpl)
Paired Ghidra pseudocode: 007798D0_ScriptCore_UIManager_UIManager_SetCursorPositionImpl.c
Window: [0x007798d0, 0x007798f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007798f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007798d0: e8 bb 16 d9 ff 8b 4c 24 04 8b 10 8b 52 4c 51 8b
007798e0: c8 ff d2 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007798d0 <.text+0x3788d0>:
  7798d0:	e8 bb 16 d9 ff                                  	call   0x50af90
  7798d5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7798d9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7798db:	8b 52 4c                                        	mov    edx,DWORD PTR [edx+0x4c]
  7798de:	51                                              	push   ecx
  7798df:	8b c8                                           	mov    ecx,eax
  7798e1:	ff d2                                           	call   edx
  7798e3:	c3                                              	ret
  7798e4:	cc                                              	int3
  7798e5:	cc                                              	int3
  7798e6:	cc                                              	int3
  7798e7:	cc                                              	int3
  7798e8:	cc                                              	int3
  7798e9:	cc                                              	int3
  7798ea:	cc                                              	int3
  7798eb:	cc                                              	int3
  7798ec:	cc                                              	int3
  7798ed:	cc                                              	int3
  7798ee:	cc                                              	int3
  7798ef:	cc                                              	int3
