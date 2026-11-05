# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00759240 (ScriptCore.RouteManager::RouteManager_IsSlotUnobstructed)
Paired Ghidra pseudocode: 00759240_ScriptCore_RouteManager_RouteManager_IsSlotUnobstructed.c
Window: [0x00759240, 0x007592c0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x007592c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00759240: 8b 44 24 34 8b 4c 24 2c 8b 54 24 28 83 ec 10 50
00759250: 8b 44 24 38 51 52 8b 54 24 3c 50 8b 44 24 3c 81
00759260: ec 80 00 00 00 8b cc 52 8b 94 24 bc 00 00 00 50
00759270: 8b 84 24 bc 00 00 00 52 50 e8 32 35 0c 00 8b 8c
00759280: 24 b0 00 00 00 8b 94 24 ac 00 00 00 8b 84 24 a8
00759290: 00 00 00 51 8b 8c 24 a8 00 00 00 52 50 51 8d 94
007592a0: 24 a0 00 00 00 52 e8 55 f2 ff ff 8b 84 24 a4 00
007592b0: 00 00 81 c4 b4 00 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00759240 <.text+0x358240>:
  759240:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  759244:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  759248:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  75924c:	83 ec 10                                        	sub    esp,0x10
  75924f:	50                                              	push   eax
  759250:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  759254:	51                                              	push   ecx
  759255:	52                                              	push   edx
  759256:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  75925a:	50                                              	push   eax
  75925b:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  75925f:	81 ec 80 00 00 00                               	sub    esp,0x80
  759265:	8b cc                                           	mov    ecx,esp
  759267:	52                                              	push   edx
  759268:	8b 94 24 bc 00 00 00                            	mov    edx,DWORD PTR [esp+0xbc]
  75926f:	50                                              	push   eax
  759270:	8b 84 24 bc 00 00 00                            	mov    eax,DWORD PTR [esp+0xbc]
  759277:	52                                              	push   edx
  759278:	50                                              	push   eax
  759279:	e8 32 35 0c 00                                  	call   0x81c7b0
  75927e:	8b 8c 24 b0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb0]
  759285:	8b 94 24 ac 00 00 00                            	mov    edx,DWORD PTR [esp+0xac]
  75928c:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
  759293:	51                                              	push   ecx
  759294:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
  75929b:	52                                              	push   edx
  75929c:	50                                              	push   eax
  75929d:	51                                              	push   ecx
  75929e:	8d 94 24 a0 00 00 00                            	lea    edx,[esp+0xa0]
  7592a5:	52                                              	push   edx
  7592a6:	e8 55 f2 ff ff                                  	call   0x758500
  7592ab:	8b 84 24 a4 00 00 00                            	mov    eax,DWORD PTR [esp+0xa4]
  7592b2:	81 c4 b4 00 00 00                               	add    esp,0xb4
  7592b8:	c3                                              	ret
  7592b9:	cc                                              	int3
  7592ba:	cc                                              	int3
  7592bb:	cc                                              	int3
  7592bc:	cc                                              	int3
  7592bd:	cc                                              	int3
  7592be:	cc                                              	int3
  7592bf:	cc                                              	int3
