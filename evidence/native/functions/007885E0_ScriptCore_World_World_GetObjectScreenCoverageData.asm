# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007885e0 (ScriptCore.World::World_GetObjectScreenCoverageData)
Paired Ghidra pseudocode: 007885E0_ScriptCore_World_World_GetObjectScreenCoverageData.c
Window: [0x007885e0, 0x00788600) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007885e0: 51 8d 04 24 50 e8 e6 6c e1 ff 8b c8 e8 cf 62 e1
007885f0: ff 8b 04 24 59 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007885e0 <.text+0x3875e0>:
  7885e0:	51                                              	push   ecx
  7885e1:	8d 04 24                                        	lea    eax,[esp]
  7885e4:	50                                              	push   eax
  7885e5:	e8 e6 6c e1 ff                                  	call   0x59f2d0
  7885ea:	8b c8                                           	mov    ecx,eax
  7885ec:	e8 cf 62 e1 ff                                  	call   0x59e8c0
  7885f1:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
  7885f4:	59                                              	pop    ecx
  7885f5:	c3                                              	ret
  7885f6:	cc                                              	int3
  7885f7:	cc                                              	int3
  7885f8:	cc                                              	int3
  7885f9:	cc                                              	int3
  7885fa:	cc                                              	int3
  7885fb:	cc                                              	int3
  7885fc:	cc                                              	int3
  7885fd:	cc                                              	int3
  7885fe:	cc                                              	int3
  7885ff:	cc                                              	int3
