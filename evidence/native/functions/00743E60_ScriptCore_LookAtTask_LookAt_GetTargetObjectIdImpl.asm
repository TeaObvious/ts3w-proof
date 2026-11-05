# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743e60 (ScriptCore.LookAtTask::LookAt_GetTargetObjectIdImpl)
Paired Ghidra pseudocode: 00743E60_ScriptCore_LookAtTask_LookAt_GetTargetObjectIdImpl.c
Window: [0x00743e60, 0x00743ef0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743e60: 53 56 8b 74 24 0c 8b c6 25 00 00 00 ff 3d 00 00
00743e70: 00 46 57 74 08 33 f6 33 ff 33 c0 eb 3b e8 0e 55
00743e80: 02 00 8b 10 8b c8 8b 82 cc 00 00 00 56 ff d0 8b
00743e90: f0 85 f6 74 17 83 46 04 01 8b ce e8 00 5c ff ff
00743ea0: 8b 10 8b c8 8b 02 ff d0 85 c0 75 06 33 ff 33 c0
00743eb0: eb 06 8b 78 08 8b 40 0c 85 f6 8b d8 74 1c 8b 46
00743ec0: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00743ed0: 8b 16 8b 02 6a 01 8b ce ff d0 8b c7 5f 5e 8b d3
00743ee0: 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743e60 <.text+0x342e60>:
  743e60:	53                                              	push   ebx
  743e61:	56                                              	push   esi
  743e62:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  743e66:	8b c6                                           	mov    eax,esi
  743e68:	25 00 00 00 ff                                  	and    eax,0xff000000
  743e6d:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  743e72:	57                                              	push   edi
  743e73:	74 08                                           	je     0x743e7d
  743e75:	33 f6                                           	xor    esi,esi
  743e77:	33 ff                                           	xor    edi,edi
  743e79:	33 c0                                           	xor    eax,eax
  743e7b:	eb 3b                                           	jmp    0x743eb8
  743e7d:	e8 0e 55 02 00                                  	call   0x769390
  743e82:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743e84:	8b c8                                           	mov    ecx,eax
  743e86:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  743e8c:	56                                              	push   esi
  743e8d:	ff d0                                           	call   eax
  743e8f:	8b f0                                           	mov    esi,eax
  743e91:	85 f6                                           	test   esi,esi
  743e93:	74 17                                           	je     0x743eac
  743e95:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  743e99:	8b ce                                           	mov    ecx,esi
  743e9b:	e8 00 5c ff ff                                  	call   0x739aa0
  743ea0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743ea2:	8b c8                                           	mov    ecx,eax
  743ea4:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743ea6:	ff d0                                           	call   eax
  743ea8:	85 c0                                           	test   eax,eax
  743eaa:	75 06                                           	jne    0x743eb2
  743eac:	33 ff                                           	xor    edi,edi
  743eae:	33 c0                                           	xor    eax,eax
  743eb0:	eb 06                                           	jmp    0x743eb8
  743eb2:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  743eb5:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  743eb8:	85 f6                                           	test   esi,esi
  743eba:	8b d8                                           	mov    ebx,eax
  743ebc:	74 1c                                           	je     0x743eda
  743ebe:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743ec1:	83 c0 ff                                        	add    eax,0xffffffff
  743ec4:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743ec7:	75 11                                           	jne    0x743eda
  743ec9:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743ed0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  743ed2:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743ed4:	6a 01                                           	push   0x1
  743ed6:	8b ce                                           	mov    ecx,esi
  743ed8:	ff d0                                           	call   eax
  743eda:	8b c7                                           	mov    eax,edi
  743edc:	5f                                              	pop    edi
  743edd:	5e                                              	pop    esi
  743ede:	8b d3                                           	mov    edx,ebx
  743ee0:	5b                                              	pop    ebx
  743ee1:	c3                                              	ret
  743ee2:	cc                                              	int3
  743ee3:	cc                                              	int3
  743ee4:	cc                                              	int3
  743ee5:	cc                                              	int3
  743ee6:	cc                                              	int3
  743ee7:	cc                                              	int3
  743ee8:	cc                                              	int3
  743ee9:	cc                                              	int3
  743eea:	cc                                              	int3
  743eeb:	cc                                              	int3
  743eec:	cc                                              	int3
  743eed:	cc                                              	int3
  743eee:	cc                                              	int3
  743eef:	cc                                              	int3
