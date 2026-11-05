# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745d60 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_LogTelemetryEvent)
Paired Ghidra pseudocode: 00745D60_ScriptCore_OnlineFeatures_OnlineFeaturesHost_LogTelemetryEvent.c
Window: [0x00745d60, 0x00745d90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745d60: e8 2b 36 02 00 85 c0 74 21 8b 4c 24 0c 8b 10 8b
00745d70: 52 58 51 8b c8 ff d2 50 8d 44 24 0c 50 8d 4c 24
00745d80: 0c 51 e8 f9 cc 14 00 83 c4 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00745d60 <.text+0x344d60>:
  745d60:	e8 2b 36 02 00                                  	call   0x769390
  745d65:	85 c0                                           	test   eax,eax
  745d67:	74 21                                           	je     0x745d8a
  745d69:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  745d6d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  745d6f:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  745d72:	51                                              	push   ecx
  745d73:	8b c8                                           	mov    ecx,eax
  745d75:	ff d2                                           	call   edx
  745d77:	50                                              	push   eax
  745d78:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  745d7c:	50                                              	push   eax
  745d7d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  745d81:	51                                              	push   ecx
  745d82:	e8 f9 cc 14 00                                  	call   0x892a80
  745d87:	83 c4 0c                                        	add    esp,0xc
  745d8a:	c3                                              	ret
  745d8b:	cc                                              	int3
  745d8c:	cc                                              	int3
  745d8d:	cc                                              	int3
  745d8e:	cc                                              	int3
  745d8f:	cc                                              	int3
