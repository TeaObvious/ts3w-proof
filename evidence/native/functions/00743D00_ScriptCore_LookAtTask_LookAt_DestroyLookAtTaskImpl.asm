# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743d00 (ScriptCore.LookAtTask::LookAt_DestroyLookAtTaskImpl)
Paired Ghidra pseudocode: 00743D00_ScriptCore_LookAtTask_LookAt_DestroyLookAtTaskImpl.c
Window: [0x00743d00, 0x00743da0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743d00: 56 57 8b 7c 24 0c 8b c7 25 00 00 00 ff 3d 00 00
00743d10: 00 46 74 04 33 f6 eb 41 e8 73 56 02 00 8b 10 8b
00743d20: c8 8b 82 cc 00 00 00 57 ff d0 8b f0 85 f6 74 29
00743d30: 83 46 04 01 6a 00 8b ce e8 f3 c7 e3 ff 8b 46 04
00743d40: 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b
00743d50: 16 8b 02 6a 01 8b ce ff d0 e8 32 56 02 00 85 c0
00743d60: 74 0d 8b 10 8b c8 8b 82 d8 00 00 00 57 ff d0 85
00743d70: f6 74 1c 8b 46 04 83 c0 ff 89 46 04 75 11 c7 46
00743d80: 04 01 00 00 00 8b 16 8b 02 6a 01 8b ce ff d0 5f
00743d90: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743d00 <.text+0x342d00>:
  743d00:	56                                              	push   esi
  743d01:	57                                              	push   edi
  743d02:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  743d06:	8b c7                                           	mov    eax,edi
  743d08:	25 00 00 00 ff                                  	and    eax,0xff000000
  743d0d:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  743d12:	74 04                                           	je     0x743d18
  743d14:	33 f6                                           	xor    esi,esi
  743d16:	eb 41                                           	jmp    0x743d59
  743d18:	e8 73 56 02 00                                  	call   0x769390
  743d1d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743d1f:	8b c8                                           	mov    ecx,eax
  743d21:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  743d27:	57                                              	push   edi
  743d28:	ff d0                                           	call   eax
  743d2a:	8b f0                                           	mov    esi,eax
  743d2c:	85 f6                                           	test   esi,esi
  743d2e:	74 29                                           	je     0x743d59
  743d30:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  743d34:	6a 00                                           	push   0x0
  743d36:	8b ce                                           	mov    ecx,esi
  743d38:	e8 f3 c7 e3 ff                                  	call   0x580530
  743d3d:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743d40:	83 c0 ff                                        	add    eax,0xffffffff
  743d43:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743d46:	75 11                                           	jne    0x743d59
  743d48:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743d4f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  743d51:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743d53:	6a 01                                           	push   0x1
  743d55:	8b ce                                           	mov    ecx,esi
  743d57:	ff d0                                           	call   eax
  743d59:	e8 32 56 02 00                                  	call   0x769390
  743d5e:	85 c0                                           	test   eax,eax
  743d60:	74 0d                                           	je     0x743d6f
  743d62:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743d64:	8b c8                                           	mov    ecx,eax
  743d66:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  743d6c:	57                                              	push   edi
  743d6d:	ff d0                                           	call   eax
  743d6f:	85 f6                                           	test   esi,esi
  743d71:	74 1c                                           	je     0x743d8f
  743d73:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743d76:	83 c0 ff                                        	add    eax,0xffffffff
  743d79:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743d7c:	75 11                                           	jne    0x743d8f
  743d7e:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743d85:	8b 16                                           	mov    edx,DWORD PTR [esi]
  743d87:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743d89:	6a 01                                           	push   0x1
  743d8b:	8b ce                                           	mov    ecx,esi
  743d8d:	ff d0                                           	call   eax
  743d8f:	5f                                              	pop    edi
  743d90:	5e                                              	pop    esi
  743d91:	c3                                              	ret
  743d92:	cc                                              	int3
  743d93:	cc                                              	int3
  743d94:	cc                                              	int3
  743d95:	cc                                              	int3
  743d96:	cc                                              	int3
  743d97:	cc                                              	int3
  743d98:	cc                                              	int3
  743d99:	cc                                              	int3
  743d9a:	cc                                              	int3
  743d9b:	cc                                              	int3
  743d9c:	cc                                              	int3
  743d9d:	cc                                              	int3
  743d9e:	cc                                              	int3
  743d9f:	cc                                              	int3
