# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743f60 (ScriptCore.LookAtTask::LookAt_GetTargetSlotNameHashImpl)
Paired Ghidra pseudocode: 00743F60_ScriptCore_LookAtTask_LookAt_GetTargetSlotNameHashImpl.c
Window: [0x00743f60, 0x00743fd0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743f60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00743f70: 46 75 50 e8 18 54 02 00 8b 10 8b c8 8b 82 cc 00
00743f80: 00 00 56 ff d0 8b f0 85 f6 74 38 83 46 04 01 57
00743f90: 8b ce e8 09 5b ff ff 8b 10 8b c8 8b 42 04 ff d0
00743fa0: 8b f8 8b 46 04 83 c0 ff 89 46 04 75 11 c7 46 04
00743fb0: 01 00 00 00 8b 16 8b 02 6a 01 8b ce ff d0 8b c7
00743fc0: 5f 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743f60 <.text+0x342f60>:
  743f60:	56                                              	push   esi
  743f61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  743f65:	8b c6                                           	mov    eax,esi
  743f67:	25 00 00 00 ff                                  	and    eax,0xff000000
  743f6c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  743f71:	75 50                                           	jne    0x743fc3
  743f73:	e8 18 54 02 00                                  	call   0x769390
  743f78:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743f7a:	8b c8                                           	mov    ecx,eax
  743f7c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  743f82:	56                                              	push   esi
  743f83:	ff d0                                           	call   eax
  743f85:	8b f0                                           	mov    esi,eax
  743f87:	85 f6                                           	test   esi,esi
  743f89:	74 38                                           	je     0x743fc3
  743f8b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  743f8f:	57                                              	push   edi
  743f90:	8b ce                                           	mov    ecx,esi
  743f92:	e8 09 5b ff ff                                  	call   0x739aa0
  743f97:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743f99:	8b c8                                           	mov    ecx,eax
  743f9b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  743f9e:	ff d0                                           	call   eax
  743fa0:	8b f8                                           	mov    edi,eax
  743fa2:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743fa5:	83 c0 ff                                        	add    eax,0xffffffff
  743fa8:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743fab:	75 11                                           	jne    0x743fbe
  743fad:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743fb4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  743fb6:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743fb8:	6a 01                                           	push   0x1
  743fba:	8b ce                                           	mov    ecx,esi
  743fbc:	ff d0                                           	call   eax
  743fbe:	8b c7                                           	mov    eax,edi
  743fc0:	5f                                              	pop    edi
  743fc1:	5e                                              	pop    esi
  743fc2:	c3                                              	ret
  743fc3:	33 c0                                           	xor    eax,eax
  743fc5:	5e                                              	pop    esi
  743fc6:	c3                                              	ret
  743fc7:	cc                                              	int3
  743fc8:	cc                                              	int3
  743fc9:	cc                                              	int3
  743fca:	cc                                              	int3
  743fcb:	cc                                              	int3
  743fcc:	cc                                              	int3
  743fcd:	cc                                              	int3
  743fce:	cc                                              	int3
  743fcf:	cc                                              	int3
