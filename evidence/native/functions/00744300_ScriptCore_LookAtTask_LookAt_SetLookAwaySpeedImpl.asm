# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744300 (ScriptCore.LookAtTask::LookAt_SetLookAwaySpeedImpl)
Paired Ghidra pseudocode: 00744300_ScriptCore_LookAtTask_LookAt_SetLookAwaySpeedImpl.c
Window: [0x00744300, 0x00744360) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744300: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744310: 46 75 47 e8 78 50 02 00 8b 10 8b c8 8b 82 cc 00
00744320: 00 00 56 ff d0 8b f0 85 f6 74 2f d9 44 24 0c 83
00744330: 46 04 01 51 8b ce d9 1c 24 e8 a2 c0 e3 ff 8b 46
00744340: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00744350: 8b 16 8b 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00744300 <.text+0x343300>:
  744300:	56                                              	push   esi
  744301:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744305:	8b c6                                           	mov    eax,esi
  744307:	25 00 00 00 ff                                  	and    eax,0xff000000
  74430c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744311:	75 47                                           	jne    0x74435a
  744313:	e8 78 50 02 00                                  	call   0x769390
  744318:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74431a:	8b c8                                           	mov    ecx,eax
  74431c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744322:	56                                              	push   esi
  744323:	ff d0                                           	call   eax
  744325:	8b f0                                           	mov    esi,eax
  744327:	85 f6                                           	test   esi,esi
  744329:	74 2f                                           	je     0x74435a
  74432b:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74432f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744333:	51                                              	push   ecx
  744334:	8b ce                                           	mov    ecx,esi
  744336:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744339:	e8 a2 c0 e3 ff                                  	call   0x5803e0
  74433e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744341:	83 c0 ff                                        	add    eax,0xffffffff
  744344:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744347:	75 11                                           	jne    0x74435a
  744349:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744350:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744352:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744354:	6a 01                                           	push   0x1
  744356:	8b ce                                           	mov    ecx,esi
  744358:	ff d0                                           	call   eax
  74435a:	5e                                              	pop    esi
  74435b:	c3                                              	ret
  74435c:	cc                                              	int3
  74435d:	cc                                              	int3
  74435e:	cc                                              	int3
  74435f:	cc                                              	int3
