# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779950 (ScriptCore.UIManager::UIManager_SetOverrideCursorImpl)
Paired Ghidra pseudocode: 00779950_ScriptCore_UIManager_UIManager_SetOverrideCursorImpl.c
Window: [0x00779950, 0x00779970) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779950: e8 cb bf d8 ff 85 c0 74 0c 8b 4c 24 04 51 8b c8
00779960: e8 7b c0 d8 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779950 <.text+0x378950>:
  779950:	e8 cb bf d8 ff                                  	call   0x505920
  779955:	85 c0                                           	test   eax,eax
  779957:	74 0c                                           	je     0x779965
  779959:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77995d:	51                                              	push   ecx
  77995e:	8b c8                                           	mov    ecx,eax
  779960:	e8 7b c0 d8 ff                                  	call   0x5059e0
  779965:	c3                                              	ret
  779966:	cc                                              	int3
  779967:	cc                                              	int3
  779968:	cc                                              	int3
  779969:	cc                                              	int3
  77996a:	cc                                              	int3
  77996b:	cc                                              	int3
  77996c:	cc                                              	int3
  77996d:	cc                                              	int3
  77996e:	cc                                              	int3
  77996f:	cc                                              	int3
