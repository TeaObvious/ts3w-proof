# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863d50 (ScriptCore.Audio::Audio_PlayObjectGetSoundImpl)
Paired Ghidra pseudocode: 00863D50_ScriptCore_Audio_Audio_PlayObjectGetSoundImpl.c
Window: [0x00863d50, 0x00863d80) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863d50: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 68 88 8f 02
00863d60: 01 50 8b 44 24 0c 51 52 50 e8 c2 fb ff ff 83 c4
00863d70: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00863d50 <.text+0x462d50>:
  863d50:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  863d54:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  863d58:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  863d5c:	68 88 8f 02 01                                  	push   0x1028f88
  863d61:	50                                              	push   eax
  863d62:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  863d66:	51                                              	push   ecx
  863d67:	52                                              	push   edx
  863d68:	50                                              	push   eax
  863d69:	e8 c2 fb ff ff                                  	call   0x863930
  863d6e:	83 c4 14                                        	add    esp,0x14
  863d71:	c3                                              	ret
  863d72:	cc                                              	int3
  863d73:	cc                                              	int3
  863d74:	cc                                              	int3
  863d75:	cc                                              	int3
  863d76:	cc                                              	int3
  863d77:	cc                                              	int3
  863d78:	cc                                              	int3
  863d79:	cc                                              	int3
  863d7a:	cc                                              	int3
  863d7b:	cc                                              	int3
  863d7c:	cc                                              	int3
  863d7d:	cc                                              	int3
  863d7e:	cc                                              	int3
  863d7f:	cc                                              	int3
