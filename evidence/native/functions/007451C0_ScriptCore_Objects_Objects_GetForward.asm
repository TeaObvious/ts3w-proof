# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007451c0 (ScriptCore.Objects::Objects_GetForward)
Paired Ghidra pseudocode: 007451C0_ScriptCore_Objects_Objects_GetForward.c
Window: [0x007451c0, 0x00745240) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007451c0: 55 8b ec 83 e4 f0 83 ec 4c 56 e8 a1 23 1f 00 8b
007451d0: 4d 10 8b 55 0c 51 52 8b c8 e8 a2 2d 1f 00 85 c0
007451e0: 74 36 8b 0d 58 a1 1e 01 51 8b c8 e8 70 f0 1e 00
007451f0: 85 c0 74 24 8d 54 24 10 52 8b c8 e8 90 28 21 00
00745200: 8b 75 08 8d 44 24 30 50 56 e8 42 6f 02 00 83 c4
00745210: 08 8b c6 5e 8b e5 5d c3 d9 e8 8b 75 08 83 ec 0c
00745220: d9 5c 24 08 d9 ee 8b ce d9 54 24 04 d9 1c 24 e8
00745230: 3c 6d 02 00 8b c6 5e 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007451c0 <.text+0x3441c0>:
  7451c0:	55                                              	push   ebp
  7451c1:	8b ec                                           	mov    ebp,esp
  7451c3:	83 e4 f0                                        	and    esp,0xfffffff0
  7451c6:	83 ec 4c                                        	sub    esp,0x4c
  7451c9:	56                                              	push   esi
  7451ca:	e8 a1 23 1f 00                                  	call   0x937570
  7451cf:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  7451d2:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  7451d5:	51                                              	push   ecx
  7451d6:	52                                              	push   edx
  7451d7:	8b c8                                           	mov    ecx,eax
  7451d9:	e8 a2 2d 1f 00                                  	call   0x937f80
  7451de:	85 c0                                           	test   eax,eax
  7451e0:	74 36                                           	je     0x745218
  7451e2:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  7451e8:	51                                              	push   ecx
  7451e9:	8b c8                                           	mov    ecx,eax
  7451eb:	e8 70 f0 1e 00                                  	call   0x934260
  7451f0:	85 c0                                           	test   eax,eax
  7451f2:	74 24                                           	je     0x745218
  7451f4:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  7451f8:	52                                              	push   edx
  7451f9:	8b c8                                           	mov    ecx,eax
  7451fb:	e8 90 28 21 00                                  	call   0x957a90
  745200:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  745203:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  745207:	50                                              	push   eax
  745208:	56                                              	push   esi
  745209:	e8 42 6f 02 00                                  	call   0x76c150
  74520e:	83 c4 08                                        	add    esp,0x8
  745211:	8b c6                                           	mov    eax,esi
  745213:	5e                                              	pop    esi
  745214:	8b e5                                           	mov    esp,ebp
  745216:	5d                                              	pop    ebp
  745217:	c3                                              	ret
  745218:	d9 e8                                           	fld1
  74521a:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  74521d:	83 ec 0c                                        	sub    esp,0xc
  745220:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  745224:	d9 ee                                           	fldz
  745226:	8b ce                                           	mov    ecx,esi
  745228:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  74522c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74522f:	e8 3c 6d 02 00                                  	call   0x76bf70
  745234:	8b c6                                           	mov    eax,esi
  745236:	5e                                              	pop    esi
  745237:	8b e5                                           	mov    esp,ebp
  745239:	5d                                              	pop    ebp
  74523a:	c3                                              	ret
  74523b:	cc                                              	int3
  74523c:	cc                                              	int3
  74523d:	cc                                              	int3
  74523e:	cc                                              	int3
  74523f:	cc                                              	int3
