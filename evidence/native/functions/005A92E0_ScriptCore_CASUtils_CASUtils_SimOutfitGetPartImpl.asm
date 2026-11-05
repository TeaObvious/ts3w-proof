# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a92e0 (ScriptCore.CASUtils::CASUtils_SimOutfitGetPartImpl)
Paired Ghidra pseudocode: 005A92E0_ScriptCore_CASUtils_CASUtils_SimOutfitGetPartImpl.c
Window: [0x005a92e0, 0x005a93a0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a93a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a92e0: 56 57 8b 7c 24 0c 6a 48 6a 00 57 e8 a8 5f 9d 00
005a92f0: 8b 74 24 1c 8b c6 25 00 00 00 ff 83 c4 0c 3d 00
005a9300: 00 00 35 0f 85 8f 00 00 00 e8 82 00 1c 00 8b 10
005a9310: 8b c8 8b 82 cc 00 00 00 56 ff d0 8b c8 85 c9 74
005a9320: 77 8b 91 9c 00 00 00 2b 91 98 00 00 00 b8 4f ec
005a9330: c4 4e f7 ea c1 fa 05 8b c2 c1 e8 1f 03 c2 8b 54
005a9340: 24 14 3b c2 7e 52 b8 01 00 00 00 84 05 18 f4 1c
005a9350: 01 75 1d 09 05 18 f4 1c 01 83 c8 ff a3 08 f4 1c
005a9360: 01 a3 0c f4 1c 01 a3 10 f4 1c 01 a3 14 f4 1c 01
005a9370: 52 e8 0a c7 03 00 8b f0 85 f6 74 1c 68 08 f4 1c
005a9380: 01 56 e8 19 a4 ef ff 83 c4 08 84 c0 75 0a 57 56
005a9390: e8 fb ea ff ff 83 c4 08 8b c7 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
005a92e0 <.text+0x1a82e0>:
  5a92e0:	56                                              	push   esi
  5a92e1:	57                                              	push   edi
  5a92e2:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  5a92e6:	6a 48                                           	push   0x48
  5a92e8:	6a 00                                           	push   0x0
  5a92ea:	57                                              	push   edi
  5a92eb:	e8 a8 5f 9d 00                                  	call   0xf7f298
  5a92f0:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  5a92f4:	8b c6                                           	mov    eax,esi
  5a92f6:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a92fb:	83 c4 0c                                        	add    esp,0xc
  5a92fe:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a9303:	0f 85 8f 00 00 00                               	jne    0x5a9398
  5a9309:	e8 82 00 1c 00                                  	call   0x769390
  5a930e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9310:	8b c8                                           	mov    ecx,eax
  5a9312:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a9318:	56                                              	push   esi
  5a9319:	ff d0                                           	call   eax
  5a931b:	8b c8                                           	mov    ecx,eax
  5a931d:	85 c9                                           	test   ecx,ecx
  5a931f:	74 77                                           	je     0x5a9398
  5a9321:	8b 91 9c 00 00 00                               	mov    edx,DWORD PTR [ecx+0x9c]
  5a9327:	2b 91 98 00 00 00                               	sub    edx,DWORD PTR [ecx+0x98]
  5a932d:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  5a9332:	f7 ea                                           	imul   edx
  5a9334:	c1 fa 05                                        	sar    edx,0x5
  5a9337:	8b c2                                           	mov    eax,edx
  5a9339:	c1 e8 1f                                        	shr    eax,0x1f
  5a933c:	03 c2                                           	add    eax,edx
  5a933e:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a9342:	3b c2                                           	cmp    eax,edx
  5a9344:	7e 52                                           	jle    0x5a9398
  5a9346:	b8 01 00 00 00                                  	mov    eax,0x1
  5a934b:	84 05 18 f4 1c 01                               	test   BYTE PTR ds:0x11cf418,al
  5a9351:	75 1d                                           	jne    0x5a9370
  5a9353:	09 05 18 f4 1c 01                               	or     DWORD PTR ds:0x11cf418,eax
  5a9359:	83 c8 ff                                        	or     eax,0xffffffff
  5a935c:	a3 08 f4 1c 01                                  	mov    ds:0x11cf408,eax
  5a9361:	a3 0c f4 1c 01                                  	mov    ds:0x11cf40c,eax
  5a9366:	a3 10 f4 1c 01                                  	mov    ds:0x11cf410,eax
  5a936b:	a3 14 f4 1c 01                                  	mov    ds:0x11cf414,eax
  5a9370:	52                                              	push   edx
  5a9371:	e8 0a c7 03 00                                  	call   0x5e5a80
  5a9376:	8b f0                                           	mov    esi,eax
  5a9378:	85 f6                                           	test   esi,esi
  5a937a:	74 1c                                           	je     0x5a9398
  5a937c:	68 08 f4 1c 01                                  	push   0x11cf408
  5a9381:	56                                              	push   esi
  5a9382:	e8 19 a4 ef ff                                  	call   0x4a37a0
  5a9387:	83 c4 08                                        	add    esp,0x8
  5a938a:	84 c0                                           	test   al,al
  5a938c:	75 0a                                           	jne    0x5a9398
  5a938e:	57                                              	push   edi
  5a938f:	56                                              	push   esi
  5a9390:	e8 fb ea ff ff                                  	call   0x5a7e90
  5a9395:	83 c4 08                                        	add    esp,0x8
  5a9398:	8b c7                                           	mov    eax,edi
  5a939a:	5f                                              	pop    edi
  5a939b:	5e                                              	pop    esi
  5a939c:	c3                                              	ret
  5a939d:	cc                                              	int3
  5a939e:	cc                                              	int3
  5a939f:	cc                                              	int3
