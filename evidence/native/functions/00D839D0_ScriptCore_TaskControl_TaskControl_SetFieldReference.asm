# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d839d0 (ScriptCore.TaskControl::TaskControl_SetFieldReference)
Paired Ghidra pseudocode: 00D839D0_ScriptCore_TaskControl_TaskControl_SetFieldReference.c
Window: [0x00d839d0, 0x00d83a80) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d83a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d839d0: 83 ec 0c e8 b8 59 9e ff 85 c0 74 05 83 c0 f8 eb
00d839e0: 02 33 c0 8d 48 08 8b 01 8b 90 18 01 00 00 56 57
00d839f0: ff d2 8b 74 24 18 3b f0 8b 7c 24 1c 75 04 3b fa
00d83a00: 74 6f 8b 4c 24 24 8b 01 53 8b 5c 24 24 39 03 7e
00d83a10: 5f 8b 49 04 8d 54 24 1c 52 8d 54 24 14 52 51 50
00d83a20: 57 56 e8 89 fd ff ff 83 c4 18 84 c0 74 42 8b 4b
00d83a30: 04 8d 54 24 14 52 8b 13 8d 44 24 10 50 51 52 57
00d83a40: 56 e8 6a fd ff ff 83 c4 18 84 c0 74 23 8b 4c 24
00d83a50: 0c b8 00 00 00 40 85 41 04 74 15 8b 54 24 10 85
00d83a60: 42 04 8b 44 24 1c 74 02 8b 00 8b 4c 24 14 89 01
00d83a70: 5b 5f 5e 83 c4 0c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d839d0 <.text+0x9829d0>:
  d839d0:	83 ec 0c                                        	sub    esp,0xc
  d839d3:	e8 b8 59 9e ff                                  	call   0x769390
  d839d8:	85 c0                                           	test   eax,eax
  d839da:	74 05                                           	je     0xd839e1
  d839dc:	83 c0 f8                                        	add    eax,0xfffffff8
  d839df:	eb 02                                           	jmp    0xd839e3
  d839e1:	33 c0                                           	xor    eax,eax
  d839e3:	8d 48 08                                        	lea    ecx,[eax+0x8]
  d839e6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d839e8:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  d839ee:	56                                              	push   esi
  d839ef:	57                                              	push   edi
  d839f0:	ff d2                                           	call   edx
  d839f2:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  d839f6:	3b f0                                           	cmp    esi,eax
  d839f8:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  d839fc:	75 04                                           	jne    0xd83a02
  d839fe:	3b fa                                           	cmp    edi,edx
  d83a00:	74 6f                                           	je     0xd83a71
  d83a02:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d83a06:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d83a08:	53                                              	push   ebx
  d83a09:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
  d83a0d:	39 03                                           	cmp    DWORD PTR [ebx],eax
  d83a0f:	7e 5f                                           	jle    0xd83a70
  d83a11:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
  d83a14:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  d83a18:	52                                              	push   edx
  d83a19:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  d83a1d:	52                                              	push   edx
  d83a1e:	51                                              	push   ecx
  d83a1f:	50                                              	push   eax
  d83a20:	57                                              	push   edi
  d83a21:	56                                              	push   esi
  d83a22:	e8 89 fd ff ff                                  	call   0xd837b0
  d83a27:	83 c4 18                                        	add    esp,0x18
  d83a2a:	84 c0                                           	test   al,al
  d83a2c:	74 42                                           	je     0xd83a70
  d83a2e:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  d83a31:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  d83a35:	52                                              	push   edx
  d83a36:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  d83a38:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  d83a3c:	50                                              	push   eax
  d83a3d:	51                                              	push   ecx
  d83a3e:	52                                              	push   edx
  d83a3f:	57                                              	push   edi
  d83a40:	56                                              	push   esi
  d83a41:	e8 6a fd ff ff                                  	call   0xd837b0
  d83a46:	83 c4 18                                        	add    esp,0x18
  d83a49:	84 c0                                           	test   al,al
  d83a4b:	74 23                                           	je     0xd83a70
  d83a4d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  d83a51:	b8 00 00 00 40                                  	mov    eax,0x40000000
  d83a56:	85 41 04                                        	test   DWORD PTR [ecx+0x4],eax
  d83a59:	74 15                                           	je     0xd83a70
  d83a5b:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d83a5f:	85 42 04                                        	test   DWORD PTR [edx+0x4],eax
  d83a62:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  d83a66:	74 02                                           	je     0xd83a6a
  d83a68:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d83a6a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d83a6e:	89 01                                           	mov    DWORD PTR [ecx],eax
  d83a70:	5b                                              	pop    ebx
  d83a71:	5f                                              	pop    edi
  d83a72:	5e                                              	pop    esi
  d83a73:	83 c4 0c                                        	add    esp,0xc
  d83a76:	c3                                              	ret
  d83a77:	cc                                              	int3
  d83a78:	cc                                              	int3
  d83a79:	cc                                              	int3
  d83a7a:	cc                                              	int3
  d83a7b:	cc                                              	int3
  d83a7c:	cc                                              	int3
  d83a7d:	cc                                              	int3
  d83a7e:	cc                                              	int3
  d83a7f:	cc                                              	int3
