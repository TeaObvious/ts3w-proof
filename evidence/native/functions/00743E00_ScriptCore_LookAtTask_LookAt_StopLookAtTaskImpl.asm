# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743e00 (ScriptCore.LookAtTask::LookAt_StopLookAtTaskImpl)
Paired Ghidra pseudocode: 00743E00_ScriptCore_LookAtTask_LookAt_StopLookAtTaskImpl.c
Window: [0x00743e00, 0x00743e60) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743e00: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00743e10: 46 75 44 e8 78 55 02 00 8b 10 8b c8 8b 82 cc 00
00743e20: 00 00 56 ff d0 8b f0 85 f6 74 2c 8b 4c 24 0c 83
00743e30: 46 04 01 51 8b ce e8 25 d3 e3 ff 8b 46 04 83 c0
00743e40: ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b
00743e50: 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743e00 <.text+0x342e00>:
  743e00:	56                                              	push   esi
  743e01:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  743e05:	8b c6                                           	mov    eax,esi
  743e07:	25 00 00 00 ff                                  	and    eax,0xff000000
  743e0c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  743e11:	75 44                                           	jne    0x743e57
  743e13:	e8 78 55 02 00                                  	call   0x769390
  743e18:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743e1a:	8b c8                                           	mov    ecx,eax
  743e1c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  743e22:	56                                              	push   esi
  743e23:	ff d0                                           	call   eax
  743e25:	8b f0                                           	mov    esi,eax
  743e27:	85 f6                                           	test   esi,esi
  743e29:	74 2c                                           	je     0x743e57
  743e2b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  743e2f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  743e33:	51                                              	push   ecx
  743e34:	8b ce                                           	mov    ecx,esi
  743e36:	e8 25 d3 e3 ff                                  	call   0x581160
  743e3b:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743e3e:	83 c0 ff                                        	add    eax,0xffffffff
  743e41:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743e44:	75 11                                           	jne    0x743e57
  743e46:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743e4d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  743e4f:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743e51:	6a 01                                           	push   0x1
  743e53:	8b ce                                           	mov    ecx,esi
  743e55:	ff d0                                           	call   eax
  743e57:	5e                                              	pop    esi
  743e58:	c3                                              	ret
  743e59:	cc                                              	int3
  743e5a:	cc                                              	int3
  743e5b:	cc                                              	int3
  743e5c:	cc                                              	int3
  743e5d:	cc                                              	int3
  743e5e:	cc                                              	int3
  743e5f:	cc                                              	int3
