# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007798f0 (ScriptCore.UIManager::UIManager_FreezeMouseImpl)
Paired Ghidra pseudocode: 007798F0_ScriptCore_UIManager_UIManager_FreezeMouseImpl.c
Window: [0x007798f0, 0x00779900) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007798f0: 8b 44 24 04 6a 00 50 e8 54 00 e2 ff 83 c4 08 c3

LINEAR DISASSEMBLY
007798f0 <.text+0x3788f0>:
  7798f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7798f4:	6a 00                                           	push   0x0
  7798f6:	50                                              	push   eax
  7798f7:	e8 54 00 e2 ff                                  	call   0x599950
  7798fc:	83 c4 08                                        	add    esp,0x8
  7798ff:	c3                                              	ret
