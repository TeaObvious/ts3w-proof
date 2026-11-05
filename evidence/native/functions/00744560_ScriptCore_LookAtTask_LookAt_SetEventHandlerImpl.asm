# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744560 (ScriptCore.LookAtTask::LookAt_SetEventHandlerImpl)
Paired Ghidra pseudocode: 00744560_ScriptCore_LookAtTask_LookAt_SetEventHandlerImpl.c
Window: [0x00744560, 0x007445c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x007445c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744560: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744570: 46 75 44 e8 18 4e 02 00 8b 10 8b c8 8b 82 cc 00
00744580: 00 00 56 ff d0 8b f0 85 f6 74 2c 8b 4c 24 0c 83
00744590: 46 04 01 51 8b ce e8 85 bf e3 ff 8b 46 04 83 c0
007445a0: ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b
007445b0: 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744560 <.text+0x343560>:
  744560:	56                                              	push   esi
  744561:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744565:	8b c6                                           	mov    eax,esi
  744567:	25 00 00 00 ff                                  	and    eax,0xff000000
  74456c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744571:	75 44                                           	jne    0x7445b7
  744573:	e8 18 4e 02 00                                  	call   0x769390
  744578:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74457a:	8b c8                                           	mov    ecx,eax
  74457c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744582:	56                                              	push   esi
  744583:	ff d0                                           	call   eax
  744585:	8b f0                                           	mov    esi,eax
  744587:	85 f6                                           	test   esi,esi
  744589:	74 2c                                           	je     0x7445b7
  74458b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74458f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744593:	51                                              	push   ecx
  744594:	8b ce                                           	mov    ecx,esi
  744596:	e8 85 bf e3 ff                                  	call   0x580520
  74459b:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  74459e:	83 c0 ff                                        	add    eax,0xffffffff
  7445a1:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7445a4:	75 11                                           	jne    0x7445b7
  7445a6:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7445ad:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7445af:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7445b1:	6a 01                                           	push   0x1
  7445b3:	8b ce                                           	mov    ecx,esi
  7445b5:	ff d0                                           	call   eax
  7445b7:	5e                                              	pop    esi
  7445b8:	c3                                              	ret
  7445b9:	cc                                              	int3
  7445ba:	cc                                              	int3
  7445bb:	cc                                              	int3
  7445bc:	cc                                              	int3
  7445bd:	cc                                              	int3
  7445be:	cc                                              	int3
  7445bf:	cc                                              	int3
