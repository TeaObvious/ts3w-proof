# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744500 (ScriptCore.LookAtTask::LookAt_SetBlendInFramesImpl)
Paired Ghidra pseudocode: 00744500_ScriptCore_LookAtTask_LookAt_SetBlendInFramesImpl.c
Window: [0x00744500, 0x00744560) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744500: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744510: 46 75 44 e8 78 4e 02 00 8b 10 8b c8 8b 82 cc 00
00744520: 00 00 56 ff d0 8b f0 85 f6 74 2c 8b 4c 24 0c 83
00744530: 46 04 01 51 8b ce e8 15 bf e3 ff 8b 46 04 83 c0
00744540: ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b
00744550: 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744500 <.text+0x343500>:
  744500:	56                                              	push   esi
  744501:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744505:	8b c6                                           	mov    eax,esi
  744507:	25 00 00 00 ff                                  	and    eax,0xff000000
  74450c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744511:	75 44                                           	jne    0x744557
  744513:	e8 78 4e 02 00                                  	call   0x769390
  744518:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74451a:	8b c8                                           	mov    ecx,eax
  74451c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744522:	56                                              	push   esi
  744523:	ff d0                                           	call   eax
  744525:	8b f0                                           	mov    esi,eax
  744527:	85 f6                                           	test   esi,esi
  744529:	74 2c                                           	je     0x744557
  74452b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74452f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744533:	51                                              	push   ecx
  744534:	8b ce                                           	mov    ecx,esi
  744536:	e8 15 bf e3 ff                                  	call   0x580450
  74453b:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  74453e:	83 c0 ff                                        	add    eax,0xffffffff
  744541:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744544:	75 11                                           	jne    0x744557
  744546:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  74454d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74454f:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744551:	6a 01                                           	push   0x1
  744553:	8b ce                                           	mov    ecx,esi
  744555:	ff d0                                           	call   eax
  744557:	5e                                              	pop    esi
  744558:	c3                                              	ret
  744559:	cc                                              	int3
  74455a:	cc                                              	int3
  74455b:	cc                                              	int3
  74455c:	cc                                              	int3
  74455d:	cc                                              	int3
  74455e:	cc                                              	int3
  74455f:	cc                                              	int3
