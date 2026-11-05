# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d330 (ScriptCore.Route::Route_SetRouteMetaType)
Paired Ghidra pseudocode: 0074D330_ScriptCore_Route_Route_SetRouteMetaType.c
Window: [0x0074d330, 0x0074d370) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d330: 8b 0d c4 50 1d 01 85 c9 74 2f 8b 44 24 04 56 50
0074d340: e8 6b e1 ff ff 8b f0 85 f6 74 1d 8b 16 8b 42 10
0074d350: 8b ce ff d0 8b 4c 24 0c 89 8e f0 01 00 00 8b 16
0074d360: 8b 42 14 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d330 <.text+0x34c330>:
  74d330:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d336:	85 c9                                           	test   ecx,ecx
  74d338:	74 2f                                           	je     0x74d369
  74d33a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  74d33e:	56                                              	push   esi
  74d33f:	50                                              	push   eax
  74d340:	e8 6b e1 ff ff                                  	call   0x74b4b0
  74d345:	8b f0                                           	mov    esi,eax
  74d347:	85 f6                                           	test   esi,esi
  74d349:	74 1d                                           	je     0x74d368
  74d34b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d34d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d350:	8b ce                                           	mov    ecx,esi
  74d352:	ff d0                                           	call   eax
  74d354:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74d358:	89 8e f0 01 00 00                               	mov    DWORD PTR [esi+0x1f0],ecx
  74d35e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d360:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d363:	8b ce                                           	mov    ecx,esi
  74d365:	5e                                              	pop    esi
  74d366:	ff e0                                           	jmp    eax
  74d368:	5e                                              	pop    esi
  74d369:	c3                                              	ret
  74d36a:	cc                                              	int3
  74d36b:	cc                                              	int3
  74d36c:	cc                                              	int3
  74d36d:	cc                                              	int3
  74d36e:	cc                                              	int3
  74d36f:	cc                                              	int3
