# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743ef0 (ScriptCore.LookAtTask::LookAt_SetTargetObjectIdImpl)
Paired Ghidra pseudocode: 00743EF0_ScriptCore_LookAtTask_LookAt_SetTargetObjectIdImpl.c
Window: [0x00743ef0, 0x00743f60) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743ef0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00743f00: 46 75 5a e8 88 54 02 00 8b 10 8b c8 8b 82 cc 00
00743f10: 00 00 56 ff d0 8b f0 85 f6 74 42 83 46 04 01 e8
00743f20: 4c 36 1f 00 8b 4c 24 10 8b 54 24 0c 51 52 8b c8
00743f30: e8 4b 40 1f 00 85 c0 74 08 50 8b ce e8 2f c4 e3
00743f40: ff 8b 46 04 83 c0 ff 89 46 04 75 11 c7 46 04 01
00743f50: 00 00 00 8b 06 8b 10 6a 01 8b ce ff d2 5e c3 cc

LINEAR DISASSEMBLY
00743ef0 <.text+0x342ef0>:
  743ef0:	56                                              	push   esi
  743ef1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  743ef5:	8b c6                                           	mov    eax,esi
  743ef7:	25 00 00 00 ff                                  	and    eax,0xff000000
  743efc:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  743f01:	75 5a                                           	jne    0x743f5d
  743f03:	e8 88 54 02 00                                  	call   0x769390
  743f08:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743f0a:	8b c8                                           	mov    ecx,eax
  743f0c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  743f12:	56                                              	push   esi
  743f13:	ff d0                                           	call   eax
  743f15:	8b f0                                           	mov    esi,eax
  743f17:	85 f6                                           	test   esi,esi
  743f19:	74 42                                           	je     0x743f5d
  743f1b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  743f1f:	e8 4c 36 1f 00                                  	call   0x937570
  743f24:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  743f28:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  743f2c:	51                                              	push   ecx
  743f2d:	52                                              	push   edx
  743f2e:	8b c8                                           	mov    ecx,eax
  743f30:	e8 4b 40 1f 00                                  	call   0x937f80
  743f35:	85 c0                                           	test   eax,eax
  743f37:	74 08                                           	je     0x743f41
  743f39:	50                                              	push   eax
  743f3a:	8b ce                                           	mov    ecx,esi
  743f3c:	e8 2f c4 e3 ff                                  	call   0x580370
  743f41:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743f44:	83 c0 ff                                        	add    eax,0xffffffff
  743f47:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743f4a:	75 11                                           	jne    0x743f5d
  743f4c:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743f53:	8b 06                                           	mov    eax,DWORD PTR [esi]
  743f55:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743f57:	6a 01                                           	push   0x1
  743f59:	8b ce                                           	mov    ecx,esi
  743f5b:	ff d2                                           	call   edx
  743f5d:	5e                                              	pop    esi
  743f5e:	c3                                              	ret
  743f5f:	cc                                              	int3
