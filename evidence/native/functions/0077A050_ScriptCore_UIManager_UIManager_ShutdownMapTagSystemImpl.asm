# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a050 (ScriptCore.UIManager::UIManager_ShutdownMapTagSystemImpl)
Paired Ghidra pseudocode: 0077A050_ScriptCore_UIManager_UIManager_ShutdownMapTagSystemImpl.c
Window: [0x0077a050, 0x0077a070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a050: e8 0b ff 06 00 85 c0 74 07 8b c8 e8 60 fd 06 00
0077a060: 6a 00 e8 09 ff 06 00 59 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a050 <.text+0x379050>:
  77a050:	e8 0b ff 06 00                                  	call   0x7e9f60
  77a055:	85 c0                                           	test   eax,eax
  77a057:	74 07                                           	je     0x77a060
  77a059:	8b c8                                           	mov    ecx,eax
  77a05b:	e8 60 fd 06 00                                  	call   0x7e9dc0
  77a060:	6a 00                                           	push   0x0
  77a062:	e8 09 ff 06 00                                  	call   0x7e9f70
  77a067:	59                                              	pop    ecx
  77a068:	c3                                              	ret
  77a069:	cc                                              	int3
  77a06a:	cc                                              	int3
  77a06b:	cc                                              	int3
  77a06c:	cc                                              	int3
  77a06d:	cc                                              	int3
  77a06e:	cc                                              	int3
  77a06f:	cc                                              	int3
