# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a210 (ScriptCore.Animation::Animation_ClipExists)
Paired Ghidra pseudocode: 0073A210_ScriptCore_Animation_Animation_ClipExists.c
Window: [0x0073a210, 0x0073a250) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a210: 83 ec 10 8b 44 24 14 8b 4c 24 18 8b 54 24 1c 89
0073a220: 04 24 89 4c 24 04 c7 44 24 08 f3 c4 20 6b 89 54
0073a230: 24 0c e8 49 5c d7 ff 8b 10 8b 52 44 8d 0c 24 51
0073a240: 8b c8 ff d2 f7 d8 1b c0 f7 d8 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
0073a210 <.text+0x339210>:
  73a210:	83 ec 10                                        	sub    esp,0x10
  73a213:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  73a217:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  73a21b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  73a21f:	89 04 24                                        	mov    DWORD PTR [esp],eax
  73a222:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  73a226:	c7 44 24 08 f3 c4 20 6b                         	mov    DWORD PTR [esp+0x8],0x6b20c4f3
  73a22e:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  73a232:	e8 49 5c d7 ff                                  	call   0x4afe80
  73a237:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73a239:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
  73a23c:	8d 0c 24                                        	lea    ecx,[esp]
  73a23f:	51                                              	push   ecx
  73a240:	8b c8                                           	mov    ecx,eax
  73a242:	ff d2                                           	call   edx
  73a244:	f7 d8                                           	neg    eax
  73a246:	1b c0                                           	sbb    eax,eax
  73a248:	f7 d8                                           	neg    eax
  73a24a:	83 c4 10                                        	add    esp,0x10
  73a24d:	c3                                              	ret
  73a24e:	cc                                              	int3
  73a24f:	cc                                              	int3
