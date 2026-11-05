# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995330 (ScriptCore.DownloadContent::DownloadContent_DeleteHouseholdContentsImpl)
Paired Ghidra pseudocode: 00995330_ScriptCore_DownloadContent_DownloadContent_DeleteHouseholdContentsImpl.c
Window: [0x00995330, 0x009953a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x009953a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995330: 83 ec 18 56 8b 35 f8 c4 1e 01 85 f6 74 2a 57 8b
00995340: 3d a4 a6 1e 01 8d 4c 24 08 e8 b2 25 e4 ff 8d 44
00995350: 24 08 50 8b cf e8 86 c3 00 00 84 c0 5f 8d 4c 24
00995360: 04 75 0c e8 28 26 e4 ff 32 c0 5e 83 c4 18 c3 8b
00995370: 54 24 24 8b 44 24 20 51 52 50 8b ce e8 9f f5 13
00995380: 00 8d 4c 24 04 e8 06 26 e4 ff b0 01 5e 83 c4 18
00995390: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995330 <.text+0x594330>:
  995330:	83 ec 18                                        	sub    esp,0x18
  995333:	56                                              	push   esi
  995334:	8b 35 f8 c4 1e 01                               	mov    esi,DWORD PTR ds:0x11ec4f8
  99533a:	85 f6                                           	test   esi,esi
  99533c:	74 2a                                           	je     0x995368
  99533e:	57                                              	push   edi
  99533f:	8b 3d a4 a6 1e 01                               	mov    edi,DWORD PTR ds:0x11ea6a4
  995345:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  995349:	e8 b2 25 e4 ff                                  	call   0x7d7900
  99534e:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  995352:	50                                              	push   eax
  995353:	8b cf                                           	mov    ecx,edi
  995355:	e8 86 c3 00 00                                  	call   0x9a16e0
  99535a:	84 c0                                           	test   al,al
  99535c:	5f                                              	pop    edi
  99535d:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  995361:	75 0c                                           	jne    0x99536f
  995363:	e8 28 26 e4 ff                                  	call   0x7d7990
  995368:	32 c0                                           	xor    al,al
  99536a:	5e                                              	pop    esi
  99536b:	83 c4 18                                        	add    esp,0x18
  99536e:	c3                                              	ret
  99536f:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  995373:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  995377:	51                                              	push   ecx
  995378:	52                                              	push   edx
  995379:	50                                              	push   eax
  99537a:	8b ce                                           	mov    ecx,esi
  99537c:	e8 9f f5 13 00                                  	call   0xad4920
  995381:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  995385:	e8 06 26 e4 ff                                  	call   0x7d7990
  99538a:	b0 01                                           	mov    al,0x1
  99538c:	5e                                              	pop    esi
  99538d:	83 c4 18                                        	add    esp,0x18
  995390:	c3                                              	ret
  995391:	cc                                              	int3
  995392:	cc                                              	int3
  995393:	cc                                              	int3
  995394:	cc                                              	int3
  995395:	cc                                              	int3
  995396:	cc                                              	int3
  995397:	cc                                              	int3
  995398:	cc                                              	int3
  995399:	cc                                              	int3
  99539a:	cc                                              	int3
  99539b:	cc                                              	int3
  99539c:	cc                                              	int3
  99539d:	cc                                              	int3
  99539e:	cc                                              	int3
  99539f:	cc                                              	int3
