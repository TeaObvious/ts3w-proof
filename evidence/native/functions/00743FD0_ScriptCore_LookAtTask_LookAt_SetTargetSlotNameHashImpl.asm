# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743fd0 (ScriptCore.LookAtTask::LookAt_SetTargetSlotNameHashImpl)
Paired Ghidra pseudocode: 00743FD0_ScriptCore_LookAtTask_LookAt_SetTargetSlotNameHashImpl.c
Window: [0x00743fd0, 0x00744030) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743fd0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00743fe0: 46 75 44 e8 a8 53 02 00 8b 10 8b c8 8b 82 cc 00
00743ff0: 00 00 56 ff d0 8b f0 85 f6 74 2c 8b 4c 24 0c 83
00744000: 46 04 01 51 8b ce e8 95 c3 e3 ff 8b 46 04 83 c0
00744010: ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b
00744020: 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743fd0 <.text+0x342fd0>:
  743fd0:	56                                              	push   esi
  743fd1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  743fd5:	8b c6                                           	mov    eax,esi
  743fd7:	25 00 00 00 ff                                  	and    eax,0xff000000
  743fdc:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  743fe1:	75 44                                           	jne    0x744027
  743fe3:	e8 a8 53 02 00                                  	call   0x769390
  743fe8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743fea:	8b c8                                           	mov    ecx,eax
  743fec:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  743ff2:	56                                              	push   esi
  743ff3:	ff d0                                           	call   eax
  743ff5:	8b f0                                           	mov    esi,eax
  743ff7:	85 f6                                           	test   esi,esi
  743ff9:	74 2c                                           	je     0x744027
  743ffb:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  743fff:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744003:	51                                              	push   ecx
  744004:	8b ce                                           	mov    ecx,esi
  744006:	e8 95 c3 e3 ff                                  	call   0x5803a0
  74400b:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  74400e:	83 c0 ff                                        	add    eax,0xffffffff
  744011:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744014:	75 11                                           	jne    0x744027
  744016:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  74401d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74401f:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744021:	6a 01                                           	push   0x1
  744023:	8b ce                                           	mov    ecx,esi
  744025:	ff d0                                           	call   eax
  744027:	5e                                              	pop    esi
  744028:	c3                                              	ret
  744029:	cc                                              	int3
  74402a:	cc                                              	int3
  74402b:	cc                                              	int3
  74402c:	cc                                              	int3
  74402d:	cc                                              	int3
  74402e:	cc                                              	int3
  74402f:	cc                                              	int3
