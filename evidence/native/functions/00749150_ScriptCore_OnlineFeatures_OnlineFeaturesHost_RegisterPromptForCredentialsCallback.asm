# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749150 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_RegisterPromptForCredentialsCallback)
Paired Ghidra pseudocode: 00749150_ScriptCore_OnlineFeatures_OnlineFeaturesHost_RegisterPromptForCredentialsCallback.c
Window: [0x00749150, 0x00749190) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749150: 8b 44 24 04 a3 f0 4f 1d 01 c7 44 24 04 30 91 74
00749160: 00 e9 fa 92 12 00 cc cc cc cc cc cc cc cc cc cc
00749170: 8b 44 24 04 50 e8 a6 f4 ff ff 83 c4 04 0f b6 c0
00749180: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00749150 <.text+0x348150>:
  749150:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  749154:	a3 f0 4f 1d 01                                  	mov    ds:0x11d4ff0,eax
  749159:	c7 44 24 04 30 91 74 00                         	mov    DWORD PTR [esp+0x4],0x749130
  749161:	e9 fa 92 12 00                                  	jmp    0x872460
  749166:	cc                                              	int3
  749167:	cc                                              	int3
  749168:	cc                                              	int3
  749169:	cc                                              	int3
  74916a:	cc                                              	int3
  74916b:	cc                                              	int3
  74916c:	cc                                              	int3
  74916d:	cc                                              	int3
  74916e:	cc                                              	int3
  74916f:	cc                                              	int3
  749170:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  749174:	50                                              	push   eax
  749175:	e8 a6 f4 ff ff                                  	call   0x748620
  74917a:	83 c4 04                                        	add    esp,0x4
  74917d:	0f b6 c0                                        	movzx  eax,al
  749180:	c3                                              	ret
  749181:	cc                                              	int3
  749182:	cc                                              	int3
  749183:	cc                                              	int3
  749184:	cc                                              	int3
  749185:	cc                                              	int3
  749186:	cc                                              	int3
  749187:	cc                                              	int3
  749188:	cc                                              	int3
  749189:	cc                                              	int3
  74918a:	cc                                              	int3
  74918b:	cc                                              	int3
  74918c:	cc                                              	int3
  74918d:	cc                                              	int3
  74918e:	cc                                              	int3
  74918f:	cc                                              	int3
