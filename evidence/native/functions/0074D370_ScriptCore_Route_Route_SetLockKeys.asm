# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d370 (ScriptCore.Route::Route_SetLockKeys)
Paired Ghidra pseudocode: 0074D370_ScriptCore_Route_Route_SetLockKeys.c
Window: [0x0074d370, 0x0074d3f0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d3f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d370: 8b 0d c4 50 1d 01 83 ec 08 85 c9 74 6a 8b 44 24
0074d380: 0c 56 50 e8 28 e1 ff ff 8b f0 85 f6 74 58 8b 16
0074d390: 8b 42 10 8b ce ff d0 c7 44 24 08 00 00 00 00 c7
0074d3a0: 44 24 04 00 00 00 00 e8 e4 bf 01 00 8b 10 8b 52
0074d3b0: 68 8d 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 1c 51
0074d3c0: 8b c8 ff d2 8b 44 24 04 8b 4c 24 08 50 51 8d 8e
0074d3d0: 58 01 00 00 e8 d7 f9 0c 00 8b 16 8b 42 14 8b ce
0074d3e0: 5e 83 c4 08 ff e0 5e 83 c4 08 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0074d370 <.text+0x34c370>:
  74d370:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d376:	83 ec 08                                        	sub    esp,0x8
  74d379:	85 c9                                           	test   ecx,ecx
  74d37b:	74 6a                                           	je     0x74d3e7
  74d37d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  74d381:	56                                              	push   esi
  74d382:	50                                              	push   eax
  74d383:	e8 28 e1 ff ff                                  	call   0x74b4b0
  74d388:	8b f0                                           	mov    esi,eax
  74d38a:	85 f6                                           	test   esi,esi
  74d38c:	74 58                                           	je     0x74d3e6
  74d38e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d390:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d393:	8b ce                                           	mov    ecx,esi
  74d395:	ff d0                                           	call   eax
  74d397:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  74d39f:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  74d3a7:	e8 e4 bf 01 00                                  	call   0x769390
  74d3ac:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74d3ae:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  74d3b1:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  74d3b5:	51                                              	push   ecx
  74d3b6:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  74d3ba:	51                                              	push   ecx
  74d3bb:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  74d3bf:	51                                              	push   ecx
  74d3c0:	8b c8                                           	mov    ecx,eax
  74d3c2:	ff d2                                           	call   edx
  74d3c4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  74d3c8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74d3cc:	50                                              	push   eax
  74d3cd:	51                                              	push   ecx
  74d3ce:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
  74d3d4:	e8 d7 f9 0c 00                                  	call   0x81cdb0
  74d3d9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d3db:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d3de:	8b ce                                           	mov    ecx,esi
  74d3e0:	5e                                              	pop    esi
  74d3e1:	83 c4 08                                        	add    esp,0x8
  74d3e4:	ff e0                                           	jmp    eax
  74d3e6:	5e                                              	pop    esi
  74d3e7:	83 c4 08                                        	add    esp,0x8
  74d3ea:	c3                                              	ret
  74d3eb:	cc                                              	int3
  74d3ec:	cc                                              	int3
  74d3ed:	cc                                              	int3
  74d3ee:	cc                                              	int3
  74d3ef:	cc                                              	int3
