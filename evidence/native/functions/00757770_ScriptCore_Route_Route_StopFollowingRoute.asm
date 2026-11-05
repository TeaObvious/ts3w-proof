# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00757770 (ScriptCore.Route::Route_StopFollowingRoute)
Paired Ghidra pseudocode: 00757770_ScriptCore_Route_Route_StopFollowingRoute.c
Window: [0x00757770, 0x007577c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007577c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00757770: 8b 0d c4 50 1d 01 85 c9 56 74 36 8b 44 24 08 50
00757780: e8 2b 3d ff ff 8b f0 85 f6 74 26 8b 16 8b 42 10
00757790: 53 8b ce ff d0 8b 4c 24 10 51 8b ce e8 5f bc ff
007577a0: ff 8b 16 8a d8 8b 42 14 8b ce ff d0 8a c3 5b 5e
007577b0: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00757770 <.text+0x356770>:
  757770:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  757776:	85 c9                                           	test   ecx,ecx
  757778:	56                                              	push   esi
  757779:	74 36                                           	je     0x7577b1
  75777b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  75777f:	50                                              	push   eax
  757780:	e8 2b 3d ff ff                                  	call   0x74b4b0
  757785:	8b f0                                           	mov    esi,eax
  757787:	85 f6                                           	test   esi,esi
  757789:	74 26                                           	je     0x7577b1
  75778b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75778d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  757790:	53                                              	push   ebx
  757791:	8b ce                                           	mov    ecx,esi
  757793:	ff d0                                           	call   eax
  757795:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  757799:	51                                              	push   ecx
  75779a:	8b ce                                           	mov    ecx,esi
  75779c:	e8 5f bc ff ff                                  	call   0x753400
  7577a1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7577a3:	8a d8                                           	mov    bl,al
  7577a5:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7577a8:	8b ce                                           	mov    ecx,esi
  7577aa:	ff d0                                           	call   eax
  7577ac:	8a c3                                           	mov    al,bl
  7577ae:	5b                                              	pop    ebx
  7577af:	5e                                              	pop    esi
  7577b0:	c3                                              	ret
  7577b1:	32 c0                                           	xor    al,al
  7577b3:	5e                                              	pop    esi
  7577b4:	c3                                              	ret
  7577b5:	cc                                              	int3
  7577b6:	cc                                              	int3
  7577b7:	cc                                              	int3
  7577b8:	cc                                              	int3
  7577b9:	cc                                              	int3
  7577ba:	cc                                              	int3
  7577bb:	cc                                              	int3
  7577bc:	cc                                              	int3
  7577bd:	cc                                              	int3
  7577be:	cc                                              	int3
  7577bf:	cc                                              	int3
