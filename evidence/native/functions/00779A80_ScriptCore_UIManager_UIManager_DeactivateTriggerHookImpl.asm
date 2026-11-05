# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779a80 (ScriptCore.UIManager::UIManager_DeactivateTriggerHookImpl)
Paired Ghidra pseudocode: 00779A80_ScriptCore_UIManager_UIManager_DeactivateTriggerHookImpl.c
Window: [0x00779a80, 0x00779aa0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779a80: e8 bb 66 07 00 85 c0 74 0d 8b 4c 24 04 51 8b c8
00779a90: e8 2b 74 07 00 c3 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779a80 <.text+0x378a80>:
  779a80:	e8 bb 66 07 00                                  	call   0x7f0140
  779a85:	85 c0                                           	test   eax,eax
  779a87:	74 0d                                           	je     0x779a96
  779a89:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  779a8d:	51                                              	push   ecx
  779a8e:	8b c8                                           	mov    ecx,eax
  779a90:	e8 2b 74 07 00                                  	call   0x7f0ec0
  779a95:	c3                                              	ret
  779a96:	32 c0                                           	xor    al,al
  779a98:	c3                                              	ret
  779a99:	cc                                              	int3
  779a9a:	cc                                              	int3
  779a9b:	cc                                              	int3
  779a9c:	cc                                              	int3
  779a9d:	cc                                              	int3
  779a9e:	cc                                              	int3
  779a9f:	cc                                              	int3
