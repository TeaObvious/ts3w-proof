# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007691a0 (ScriptCore.SACS::SACS_DestroyClipInfoHandleImpl)
Paired Ghidra pseudocode: 007691A0_ScriptCore_SACS_SACS_DestroyClipInfoHandleImpl.c
Window: [0x007691a0, 0x007691d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007691d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007691a0: 56 8b 74 24 08 85 f6 74 18 8b 06 85 c0 74 09 50
007691b0: e8 2b b3 d7 ff 83 c4 04 56 e8 22 b3 d7 ff 83 c4
007691c0: 04 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007691a0 <.text+0x3681a0>:
  7691a0:	56                                              	push   esi
  7691a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7691a5:	85 f6                                           	test   esi,esi
  7691a7:	74 18                                           	je     0x7691c1
  7691a9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7691ab:	85 c0                                           	test   eax,eax
  7691ad:	74 09                                           	je     0x7691b8
  7691af:	50                                              	push   eax
  7691b0:	e8 2b b3 d7 ff                                  	call   0x4e44e0
  7691b5:	83 c4 04                                        	add    esp,0x4
  7691b8:	56                                              	push   esi
  7691b9:	e8 22 b3 d7 ff                                  	call   0x4e44e0
  7691be:	83 c4 04                                        	add    esp,0x4
  7691c1:	5e                                              	pop    esi
  7691c2:	c3                                              	ret
  7691c3:	cc                                              	int3
  7691c4:	cc                                              	int3
  7691c5:	cc                                              	int3
  7691c6:	cc                                              	int3
  7691c7:	cc                                              	int3
  7691c8:	cc                                              	int3
  7691c9:	cc                                              	int3
  7691ca:	cc                                              	int3
  7691cb:	cc                                              	int3
  7691cc:	cc                                              	int3
  7691cd:	cc                                              	int3
  7691ce:	cc                                              	int3
  7691cf:	cc                                              	int3
