# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007444a0 (ScriptCore.LookAtTask::LookAt_SetHoldJointLimitsImpl)
Paired Ghidra pseudocode: 007444A0_ScriptCore_LookAtTask_LookAt_SetHoldJointLimitsImpl.c
Window: [0x007444a0, 0x00744500) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007444a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
007444b0: 46 75 44 e8 d8 4e 02 00 8b 10 8b c8 8b 82 cc 00
007444c0: 00 00 56 ff d0 8b f0 85 f6 74 2c 8b 4c 24 0c 83
007444d0: 46 04 01 51 8b ce e8 55 bf e3 ff 8b 46 04 83 c0
007444e0: ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b
007444f0: 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007444a0 <.text+0x3434a0>:
  7444a0:	56                                              	push   esi
  7444a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7444a5:	8b c6                                           	mov    eax,esi
  7444a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  7444ac:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  7444b1:	75 44                                           	jne    0x7444f7
  7444b3:	e8 d8 4e 02 00                                  	call   0x769390
  7444b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7444ba:	8b c8                                           	mov    ecx,eax
  7444bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7444c2:	56                                              	push   esi
  7444c3:	ff d0                                           	call   eax
  7444c5:	8b f0                                           	mov    esi,eax
  7444c7:	85 f6                                           	test   esi,esi
  7444c9:	74 2c                                           	je     0x7444f7
  7444cb:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7444cf:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  7444d3:	51                                              	push   ecx
  7444d4:	8b ce                                           	mov    ecx,esi
  7444d6:	e8 55 bf e3 ff                                  	call   0x580430
  7444db:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7444de:	83 c0 ff                                        	add    eax,0xffffffff
  7444e1:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7444e4:	75 11                                           	jne    0x7444f7
  7444e6:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7444ed:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7444ef:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7444f1:	6a 01                                           	push   0x1
  7444f3:	8b ce                                           	mov    ecx,esi
  7444f5:	ff d0                                           	call   eax
  7444f7:	5e                                              	pop    esi
  7444f8:	c3                                              	ret
  7444f9:	cc                                              	int3
  7444fa:	cc                                              	int3
  7444fb:	cc                                              	int3
  7444fc:	cc                                              	int3
  7444fd:	cc                                              	int3
  7444fe:	cc                                              	int3
  7444ff:	cc                                              	int3
