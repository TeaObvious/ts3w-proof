# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aa4f0 (ScriptCore.CASUtils::CASUtils_SetModelInGameObjectImpl)
Paired Ghidra pseudocode: 005AA4F0_ScriptCore_CASUtils_CASUtils_SetModelInGameObjectImpl.c
Window: [0x005aa4f0, 0x005aa5a0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aa5a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aa4f0: 55 8b ec 83 e4 f0 83 ec 5c 56 8b 75 08 85 f6 0f
005aa500: 84 89 00 00 00 e8 86 ee 1b 00 8b 10 8b c8 8b 82
005aa510: cc 00 00 00 56 ff d0 8b 4d 0c 8b 55 10 8b f0 85
005aa520: f6 c7 44 24 10 e7 64 50 53 89 4c 24 18 89 54 24
005aa530: 1c c7 44 24 14 68 68 15 01 c7 44 24 20 00 00 00
005aa540: 00 c7 44 24 24 00 00 00 00 74 23 8b 06 8b 10 8b
005aa550: ce ff d2 8b 4c 24 24 85 c9 89 74 24 20 74 0f c7
005aa560: 44 24 24 00 00 00 00 8b 01 8b 50 04 ff d2 8d 44
005aa570: 24 10 50 e8 08 8e 0e 00 8b 4c 24 18 83 c4 04 85
005aa580: c9 74 0b 8b 11 8b 12 8d 44 24 20 50 ff d2 5e 8b
005aa590: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aa4f0 <.text+0x1a94f0>:
  5aa4f0:	55                                              	push   ebp
  5aa4f1:	8b ec                                           	mov    ebp,esp
  5aa4f3:	83 e4 f0                                        	and    esp,0xfffffff0
  5aa4f6:	83 ec 5c                                        	sub    esp,0x5c
  5aa4f9:	56                                              	push   esi
  5aa4fa:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  5aa4fd:	85 f6                                           	test   esi,esi
  5aa4ff:	0f 84 89 00 00 00                               	je     0x5aa58e
  5aa505:	e8 86 ee 1b 00                                  	call   0x769390
  5aa50a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa50c:	8b c8                                           	mov    ecx,eax
  5aa50e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aa514:	56                                              	push   esi
  5aa515:	ff d0                                           	call   eax
  5aa517:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  5aa51a:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  5aa51d:	8b f0                                           	mov    esi,eax
  5aa51f:	85 f6                                           	test   esi,esi
  5aa521:	c7 44 24 10 e7 64 50 53                         	mov    DWORD PTR [esp+0x10],0x535064e7
  5aa529:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5aa52d:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  5aa531:	c7 44 24 14 68 68 15 01                         	mov    DWORD PTR [esp+0x14],0x1156868
  5aa539:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  5aa541:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  5aa549:	74 23                                           	je     0x5aa56e
  5aa54b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5aa54d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa54f:	8b ce                                           	mov    ecx,esi
  5aa551:	ff d2                                           	call   edx
  5aa553:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5aa557:	85 c9                                           	test   ecx,ecx
  5aa559:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  5aa55d:	74 0f                                           	je     0x5aa56e
  5aa55f:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  5aa567:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5aa569:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aa56c:	ff d2                                           	call   edx
  5aa56e:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5aa572:	50                                              	push   eax
  5aa573:	e8 08 8e 0e 00                                  	call   0x693380
  5aa578:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5aa57c:	83 c4 04                                        	add    esp,0x4
  5aa57f:	85 c9                                           	test   ecx,ecx
  5aa581:	74 0b                                           	je     0x5aa58e
  5aa583:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5aa585:	8b 12                                           	mov    edx,DWORD PTR [edx]
  5aa587:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  5aa58b:	50                                              	push   eax
  5aa58c:	ff d2                                           	call   edx
  5aa58e:	5e                                              	pop    esi
  5aa58f:	8b e5                                           	mov    esp,ebp
  5aa591:	5d                                              	pop    ebp
  5aa592:	c3                                              	ret
  5aa593:	cc                                              	int3
  5aa594:	cc                                              	int3
  5aa595:	cc                                              	int3
  5aa596:	cc                                              	int3
  5aa597:	cc                                              	int3
  5aa598:	cc                                              	int3
  5aa599:	cc                                              	int3
  5aa59a:	cc                                              	int3
  5aa59b:	cc                                              	int3
  5aa59c:	cc                                              	int3
  5aa59d:	cc                                              	int3
  5aa59e:	cc                                              	int3
  5aa59f:	cc                                              	int3
