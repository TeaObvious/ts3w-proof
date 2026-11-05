# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995310 (ScriptCore.DownloadContent::DownloadContent_GetContentSourceImpl)
Paired Ghidra pseudocode: 00995310_ScriptCore_DownloadContent_DownloadContent_GetContentSourceImpl.c
Window: [0x00995310, 0x00995330) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995310: 83 ec 10 8d 04 24 50 8d 4c 24 18 e8 c0 6d dd ff
00995320: 50 e8 ea e9 ff ff 83 c4 14 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995310 <.text+0x594310>:
  995310:	83 ec 10                                        	sub    esp,0x10
  995313:	8d 04 24                                        	lea    eax,[esp]
  995316:	50                                              	push   eax
  995317:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  99531b:	e8 c0 6d dd ff                                  	call   0x76c0e0
  995320:	50                                              	push   eax
  995321:	e8 ea e9 ff ff                                  	call   0x993d10
  995326:	83 c4 14                                        	add    esp,0x14
  995329:	c3                                              	ret
  99532a:	cc                                              	int3
  99532b:	cc                                              	int3
  99532c:	cc                                              	int3
  99532d:	cc                                              	int3
  99532e:	cc                                              	int3
  99532f:	cc                                              	int3
