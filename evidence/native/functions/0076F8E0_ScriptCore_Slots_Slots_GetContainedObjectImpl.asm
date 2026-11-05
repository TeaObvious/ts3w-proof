# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076f8e0 (ScriptCore.Slots::Slots_GetContainedObjectImpl)
Paired Ghidra pseudocode: 0076F8E0_ScriptCore_Slots_Slots_GetContainedObjectImpl.c
Window: [0x0076f8e0, 0x0076f990) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076f990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076f8e0: 51 56 57 e8 88 7c 1c 00 8b 4c 24 14 8b 54 24 10
0076f8f0: 51 52 8b c8 e8 87 86 1c 00 8b f0 85 f6 89 74 24
0076f900: 08 74 1e 8d 46 04 b9 01 00 00 00 f0 0f c1 08 8b
0076f910: 15 14 a1 1e 01 52 8b ce e8 43 49 1c 00 8b f8 eb
0076f920: 02 33 ff e8 68 9a ff ff 85 ff 74 2e 8b 44 24 18
0076f930: 50 8b cf e8 a8 09 1e 00 85 c0 74 1e 8b 40 1c 85
0076f940: c0 74 17 8b 70 08 8b 78 0c 8d 4c 24 08 e8 8e 69
0076f950: fd ff 8b d7 5f 8b c6 5e 59 c3 85 f6 74 20 8d 46
0076f960: 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00
0076f970: 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0 5f 33
0076f980: c0 33 d2 5e 59 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076f8e0 <.text+0x36e8e0>:
  76f8e0:	51                                              	push   ecx
  76f8e1:	56                                              	push   esi
  76f8e2:	57                                              	push   edi
  76f8e3:	e8 88 7c 1c 00                                  	call   0x937570
  76f8e8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76f8ec:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  76f8f0:	51                                              	push   ecx
  76f8f1:	52                                              	push   edx
  76f8f2:	8b c8                                           	mov    ecx,eax
  76f8f4:	e8 87 86 1c 00                                  	call   0x937f80
  76f8f9:	8b f0                                           	mov    esi,eax
  76f8fb:	85 f6                                           	test   esi,esi
  76f8fd:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
  76f901:	74 1e                                           	je     0x76f921
  76f903:	8d 46 04                                        	lea    eax,[esi+0x4]
  76f906:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f90b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f90f:	8b 15 14 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea114
  76f915:	52                                              	push   edx
  76f916:	8b ce                                           	mov    ecx,esi
  76f918:	e8 43 49 1c 00                                  	call   0x934260
  76f91d:	8b f8                                           	mov    edi,eax
  76f91f:	eb 02                                           	jmp    0x76f923
  76f921:	33 ff                                           	xor    edi,edi
  76f923:	e8 68 9a ff ff                                  	call   0x769390
  76f928:	85 ff                                           	test   edi,edi
  76f92a:	74 2e                                           	je     0x76f95a
  76f92c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  76f930:	50                                              	push   eax
  76f931:	8b cf                                           	mov    ecx,edi
  76f933:	e8 a8 09 1e 00                                  	call   0x9502e0
  76f938:	85 c0                                           	test   eax,eax
  76f93a:	74 1e                                           	je     0x76f95a
  76f93c:	8b 40 1c                                        	mov    eax,DWORD PTR [eax+0x1c]
  76f93f:	85 c0                                           	test   eax,eax
  76f941:	74 17                                           	je     0x76f95a
  76f943:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  76f946:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
  76f949:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  76f94d:	e8 8e 69 fd ff                                  	call   0x7462e0
  76f952:	8b d7                                           	mov    edx,edi
  76f954:	5f                                              	pop    edi
  76f955:	8b c6                                           	mov    eax,esi
  76f957:	5e                                              	pop    esi
  76f958:	59                                              	pop    ecx
  76f959:	c3                                              	ret
  76f95a:	85 f6                                           	test   esi,esi
  76f95c:	74 20                                           	je     0x76f97e
  76f95e:	8d 46 04                                        	lea    eax,[esi+0x4]
  76f961:	8b c8                                           	mov    ecx,eax
  76f963:	83 ca ff                                        	or     edx,0xffffffff
  76f966:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76f96a:	4a                                              	dec    edx
  76f96b:	75 11                                           	jne    0x76f97e
  76f96d:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f972:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76f974:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76f976:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76f978:	6a 01                                           	push   0x1
  76f97a:	8b ce                                           	mov    ecx,esi
  76f97c:	ff d0                                           	call   eax
  76f97e:	5f                                              	pop    edi
  76f97f:	33 c0                                           	xor    eax,eax
  76f981:	33 d2                                           	xor    edx,edx
  76f983:	5e                                              	pop    esi
  76f984:	59                                              	pop    ecx
  76f985:	c3                                              	ret
  76f986:	cc                                              	int3
  76f987:	cc                                              	int3
  76f988:	cc                                              	int3
  76f989:	cc                                              	int3
  76f98a:	cc                                              	int3
  76f98b:	cc                                              	int3
  76f98c:	cc                                              	int3
  76f98d:	cc                                              	int3
  76f98e:	cc                                              	int3
  76f98f:	cc                                              	int3
