# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007841e0 (ScriptCore.VideoRecorder::VideoRecorder_TakeSnapshot)
Paired Ghidra pseudocode: 007841E0_ScriptCore_VideoRecorder_VideoRecorder_TakeSnapshot.c
Window: [0x007841e0, 0x00784230) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007841e0: 83 ec 30 e8 a8 bd 25 00 33 d2 3b c2 74 3d 89 54
007841f0: 24 04 89 54 24 08 89 54 24 10 89 54 24 14 89 54
00784200: 24 18 89 54 24 1c 89 54 24 20 89 54 24 24 89 54
00784210: 24 28 89 54 24 2c 89 14 24 8b 10 8b 52 34 8d 0c
00784220: 24 51 8b c8 c6 44 24 10 01 ff d2 83 c4 30 c3 cc

LINEAR DISASSEMBLY
007841e0 <.text+0x3831e0>:
  7841e0:	83 ec 30                                        	sub    esp,0x30
  7841e3:	e8 a8 bd 25 00                                  	call   0x9dff90
  7841e8:	33 d2                                           	xor    edx,edx
  7841ea:	3b c2                                           	cmp    eax,edx
  7841ec:	74 3d                                           	je     0x78422b
  7841ee:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  7841f2:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  7841f6:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  7841fa:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  7841fe:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  784202:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  784206:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  78420a:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  78420e:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  784212:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  784216:	89 14 24                                        	mov    DWORD PTR [esp],edx
  784219:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78421b:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  78421e:	8d 0c 24                                        	lea    ecx,[esp]
  784221:	51                                              	push   ecx
  784222:	8b c8                                           	mov    ecx,eax
  784224:	c6 44 24 10 01                                  	mov    BYTE PTR [esp+0x10],0x1
  784229:	ff d2                                           	call   edx
  78422b:	83 c4 30                                        	add    esp,0x30
  78422e:	c3                                              	ret
  78422f:	cc                                              	int3
