# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740bc0 (ScriptCore.DebugDraw::DebugDraw_RemoveTimedDebugDraw)
Paired Ghidra pseudocode: 00740BC0_ScriptCore_DebugDraw_DebugDraw_RemoveTimedDebugDraw.c
Window: [0x00740bc0, 0x00740be0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740bc0: 8b 44 24 08 8b 4c 24 04 50 51 e8 61 ff ff ff 83
00740bd0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740bc0 <.text+0x33fbc0>:
  740bc0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  740bc4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  740bc8:	50                                              	push   eax
  740bc9:	51                                              	push   ecx
  740bca:	e8 61 ff ff ff                                  	call   0x740b30
  740bcf:	83 c4 08                                        	add    esp,0x8
  740bd2:	c3                                              	ret
  740bd3:	cc                                              	int3
  740bd4:	cc                                              	int3
  740bd5:	cc                                              	int3
  740bd6:	cc                                              	int3
  740bd7:	cc                                              	int3
  740bd8:	cc                                              	int3
  740bd9:	cc                                              	int3
  740bda:	cc                                              	int3
  740bdb:	cc                                              	int3
  740bdc:	cc                                              	int3
  740bdd:	cc                                              	int3
  740bde:	cc                                              	int3
  740bdf:	cc                                              	int3
