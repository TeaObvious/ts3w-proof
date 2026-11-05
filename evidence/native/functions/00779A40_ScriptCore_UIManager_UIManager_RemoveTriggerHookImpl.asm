# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779a40 (ScriptCore.UIManager::UIManager_RemoveTriggerHookImpl)
Paired Ghidra pseudocode: 00779A40_ScriptCore_UIManager_UIManager_RemoveTriggerHookImpl.c
Window: [0x00779a40, 0x00779a60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779a40: e8 fb 66 07 00 85 c0 74 0d 8b 4c 24 04 51 8b c8
00779a50: e8 9b 78 07 00 c3 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779a40 <.text+0x378a40>:
  779a40:	e8 fb 66 07 00                                  	call   0x7f0140
  779a45:	85 c0                                           	test   eax,eax
  779a47:	74 0d                                           	je     0x779a56
  779a49:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  779a4d:	51                                              	push   ecx
  779a4e:	8b c8                                           	mov    ecx,eax
  779a50:	e8 9b 78 07 00                                  	call   0x7f12f0
  779a55:	c3                                              	ret
  779a56:	32 c0                                           	xor    al,al
  779a58:	c3                                              	ret
  779a59:	cc                                              	int3
  779a5a:	cc                                              	int3
  779a5b:	cc                                              	int3
  779a5c:	cc                                              	int3
  779a5d:	cc                                              	int3
  779a5e:	cc                                              	int3
  779a5f:	cc                                              	int3
