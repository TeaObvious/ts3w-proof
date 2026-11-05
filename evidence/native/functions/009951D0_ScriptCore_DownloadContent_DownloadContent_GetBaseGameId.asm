# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009951d0 (ScriptCore.DownloadContent::DownloadContent_GetBaseGameId)
Paired Ghidra pseudocode: 009951D0_ScriptCore_DownloadContent_DownloadContent_GetBaseGameId.c
Window: [0x009951d0, 0x00995210) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009951d0: 8d 44 24 f0 83 ec 10 50 e8 23 43 00 00 83 c4 04
009951e0: 6a 00 8d 4c 24 04 e8 55 b8 b6 ff 8b 4c 24 14 89
009951f0: 01 89 51 04 6a 01 8d 4c 24 04 e8 41 b8 b6 ff 8b
00995200: 4c 24 18 89 01 89 51 04 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
009951d0 <.text+0x5941d0>:
  9951d0:	8d 44 24 f0                                     	lea    eax,[esp-0x10]
  9951d4:	83 ec 10                                        	sub    esp,0x10
  9951d7:	50                                              	push   eax
  9951d8:	e8 23 43 00 00                                  	call   0x999500
  9951dd:	83 c4 04                                        	add    esp,0x4
  9951e0:	6a 00                                           	push   0x0
  9951e2:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  9951e6:	e8 55 b8 b6 ff                                  	call   0x500a40
  9951eb:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  9951ef:	89 01                                           	mov    DWORD PTR [ecx],eax
  9951f1:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  9951f4:	6a 01                                           	push   0x1
  9951f6:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  9951fa:	e8 41 b8 b6 ff                                  	call   0x500a40
  9951ff:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  995203:	89 01                                           	mov    DWORD PTR [ecx],eax
  995205:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  995208:	83 c4 10                                        	add    esp,0x10
  99520b:	c3                                              	ret
  99520c:	cc                                              	int3
  99520d:	cc                                              	int3
  99520e:	cc                                              	int3
  99520f:	cc                                              	int3
