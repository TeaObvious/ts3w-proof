# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00758fd0 (ScriptCore.Route::Route_SetLoopStart)
Paired Ghidra pseudocode: 00758FD0_ScriptCore_Route_Route_SetLoopStart.c
Window: [0x00758fd0, 0x00759020) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00759020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00758fd0: 8b 0d c4 50 1d 01 85 c9 74 3e 8b 44 24 04 56 50
00758fe0: e8 cb 24 ff ff 8b f0 85 f6 74 2c 8b 16 8b 42 10
00758ff0: 8b ce ff d0 8b 44 24 0c 3b 86 f0 00 00 00 74 0d
00759000: 8b ce 89 86 f0 00 00 00 e8 73 e3 ff ff 8b 16 8b
00759010: 42 14 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00758fd0 <.text+0x357fd0>:
  758fd0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  758fd6:	85 c9                                           	test   ecx,ecx
  758fd8:	74 3e                                           	je     0x759018
  758fda:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  758fde:	56                                              	push   esi
  758fdf:	50                                              	push   eax
  758fe0:	e8 cb 24 ff ff                                  	call   0x74b4b0
  758fe5:	8b f0                                           	mov    esi,eax
  758fe7:	85 f6                                           	test   esi,esi
  758fe9:	74 2c                                           	je     0x759017
  758feb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  758fed:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  758ff0:	8b ce                                           	mov    ecx,esi
  758ff2:	ff d0                                           	call   eax
  758ff4:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  758ff8:	3b 86 f0 00 00 00                               	cmp    eax,DWORD PTR [esi+0xf0]
  758ffe:	74 0d                                           	je     0x75900d
  759000:	8b ce                                           	mov    ecx,esi
  759002:	89 86 f0 00 00 00                               	mov    DWORD PTR [esi+0xf0],eax
  759008:	e8 73 e3 ff ff                                  	call   0x757380
  75900d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75900f:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  759012:	8b ce                                           	mov    ecx,esi
  759014:	5e                                              	pop    esi
  759015:	ff e0                                           	jmp    eax
  759017:	5e                                              	pop    esi
  759018:	c3                                              	ret
  759019:	cc                                              	int3
  75901a:	cc                                              	int3
  75901b:	cc                                              	int3
  75901c:	cc                                              	int3
  75901d:	cc                                              	int3
  75901e:	cc                                              	int3
  75901f:	cc                                              	int3
