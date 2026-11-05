# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863d20 (ScriptCore.Audio::Audio_PlayObjectPutSoundImpl)
Paired Ghidra pseudocode: 00863D20_ScriptCore_Audio_Audio_PlayObjectPutSoundImpl.c
Window: [0x00863d20, 0x00863d50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863d20: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 68 80 8f 02
00863d30: 01 50 8b 44 24 0c 51 52 50 e8 f2 fb ff ff 83 c4
00863d40: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00863d20 <.text+0x462d20>:
  863d20:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  863d24:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  863d28:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  863d2c:	68 80 8f 02 01                                  	push   0x1028f80
  863d31:	50                                              	push   eax
  863d32:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  863d36:	51                                              	push   ecx
  863d37:	52                                              	push   edx
  863d38:	50                                              	push   eax
  863d39:	e8 f2 fb ff ff                                  	call   0x863930
  863d3e:	83 c4 14                                        	add    esp,0x14
  863d41:	c3                                              	ret
  863d42:	cc                                              	int3
  863d43:	cc                                              	int3
  863d44:	cc                                              	int3
  863d45:	cc                                              	int3
  863d46:	cc                                              	int3
  863d47:	cc                                              	int3
  863d48:	cc                                              	int3
  863d49:	cc                                              	int3
  863d4a:	cc                                              	int3
  863d4b:	cc                                              	int3
  863d4c:	cc                                              	int3
  863d4d:	cc                                              	int3
  863d4e:	cc                                              	int3
  863d4f:	cc                                              	int3
