# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744640 (ScriptCore.LookAtTask::LookAt_SetRightTiltnessImpl)
Paired Ghidra pseudocode: 00744640_ScriptCore_LookAtTask_LookAt_SetRightTiltnessImpl.c
Window: [0x00744640, 0x007446a0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x007446a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744640: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744650: 46 75 47 e8 38 4d 02 00 8b 10 8b c8 8b 82 cc 00
00744660: 00 00 56 ff d0 8b f0 85 f6 74 2f d9 44 24 0c 83
00744670: 46 04 01 51 8b ce d9 1c 24 e8 e2 bd e3 ff 8b 46
00744680: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00744690: 8b 16 8b 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00744640 <.text+0x343640>:
  744640:	56                                              	push   esi
  744641:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744645:	8b c6                                           	mov    eax,esi
  744647:	25 00 00 00 ff                                  	and    eax,0xff000000
  74464c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744651:	75 47                                           	jne    0x74469a
  744653:	e8 38 4d 02 00                                  	call   0x769390
  744658:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74465a:	8b c8                                           	mov    ecx,eax
  74465c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744662:	56                                              	push   esi
  744663:	ff d0                                           	call   eax
  744665:	8b f0                                           	mov    esi,eax
  744667:	85 f6                                           	test   esi,esi
  744669:	74 2f                                           	je     0x74469a
  74466b:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74466f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744673:	51                                              	push   ecx
  744674:	8b ce                                           	mov    ecx,esi
  744676:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744679:	e8 e2 bd e3 ff                                  	call   0x580460
  74467e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744681:	83 c0 ff                                        	add    eax,0xffffffff
  744684:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744687:	75 11                                           	jne    0x74469a
  744689:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744690:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744692:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744694:	6a 01                                           	push   0x1
  744696:	8b ce                                           	mov    ecx,esi
  744698:	ff d0                                           	call   eax
  74469a:	5e                                              	pop    esi
  74469b:	c3                                              	ret
  74469c:	cc                                              	int3
  74469d:	cc                                              	int3
  74469e:	cc                                              	int3
  74469f:	cc                                              	int3
