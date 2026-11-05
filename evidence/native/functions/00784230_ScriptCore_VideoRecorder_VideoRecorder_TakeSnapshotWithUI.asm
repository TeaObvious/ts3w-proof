# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784230 (ScriptCore.VideoRecorder::VideoRecorder_TakeSnapshotWithUI)
Paired Ghidra pseudocode: 00784230_ScriptCore_VideoRecorder_VideoRecorder_TakeSnapshotWithUI.c
Window: [0x00784230, 0x00784290) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784230: 83 ec 30 e8 58 bd 25 00 33 d2 3b c2 74 41 b9 01
00784240: 00 00 00 88 4c 24 0c 89 0c 24 89 54 24 04 89 54
00784250: 24 08 89 54 24 10 89 54 24 14 89 54 24 18 89 54
00784260: 24 1c 89 54 24 20 89 54 24 24 89 54 24 28 89 54
00784270: 24 2c 8b 10 8b 52 34 8d 0c 24 51 8b c8 ff d2 83
00784280: c4 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00784230 <.text+0x383230>:
  784230:	83 ec 30                                        	sub    esp,0x30
  784233:	e8 58 bd 25 00                                  	call   0x9dff90
  784238:	33 d2                                           	xor    edx,edx
  78423a:	3b c2                                           	cmp    eax,edx
  78423c:	74 41                                           	je     0x78427f
  78423e:	b9 01 00 00 00                                  	mov    ecx,0x1
  784243:	88 4c 24 0c                                     	mov    BYTE PTR [esp+0xc],cl
  784247:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  78424a:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  78424e:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  784252:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  784256:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  78425a:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  78425e:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  784262:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  784266:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  78426a:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  78426e:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  784272:	8b 10                                           	mov    edx,DWORD PTR [eax]
  784274:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  784277:	8d 0c 24                                        	lea    ecx,[esp]
  78427a:	51                                              	push   ecx
  78427b:	8b c8                                           	mov    ecx,eax
  78427d:	ff d2                                           	call   edx
  78427f:	83 c4 30                                        	add    esp,0x30
  784282:	c3                                              	ret
  784283:	cc                                              	int3
  784284:	cc                                              	int3
  784285:	cc                                              	int3
  784286:	cc                                              	int3
  784287:	cc                                              	int3
  784288:	cc                                              	int3
  784289:	cc                                              	int3
  78428a:	cc                                              	int3
  78428b:	cc                                              	int3
  78428c:	cc                                              	int3
  78428d:	cc                                              	int3
  78428e:	cc                                              	int3
  78428f:	cc                                              	int3
