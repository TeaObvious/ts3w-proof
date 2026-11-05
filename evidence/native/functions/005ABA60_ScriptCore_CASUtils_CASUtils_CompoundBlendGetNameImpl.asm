# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aba60 (ScriptCore.CASUtils::CASUtils_CompoundBlendGetNameImpl)
Paired Ghidra pseudocode: 005ABA60_ScriptCore_CASUtils_CASUtils_CompoundBlendGetNameImpl.c
Window: [0x005aba60, 0x005abb40) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x005abb40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aba60: 83 ec 30 57 8b 7c 24 38 8b c7 25 00 00 00 ff 3d
005aba70: 00 00 00 35 74 07 33 c0 5f 83 c4 30 c3 56 e8 0d
005aba80: d9 1b 00 8b f0 8b 16 8b 82 cc 00 00 00 57 8b ce
005aba90: ff d0 85 c0 74 3a 83 c0 28 50 8d 4c 24 0c e8 4d
005abaa0: d3 e5 ff 8b 4c 24 0c 8b 44 24 08 2b c8 f7 c1 fe
005abab0: ff ff ff 75 23 8b 54 24 10 2b d0 83 e2 fe 83 fa
005abac0: 02 7e 0d 85 c0 74 09 50 e8 13 8a f3 ff 83 c4 04
005abad0: 5e 33 c0 5f 83 c4 30 c3 8d 44 24 08 50 8d 4c 24
005abae0: 1c e8 ba f7 ff ff 8b 16 8b 52 50 8d 44 24 3c 50
005abaf0: 8d 4c 24 1c 51 8b ce ff d2 f6 44 24 20 04 8b 74
005abb00: 24 3c c7 44 24 18 f4 a6 fb 00 74 0b 6a 00 8d 4c
005abb10: 24 1c e8 49 9c f4 ff 8b 4c 24 10 8b 44 24 08 2b
005abb20: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ad
005abb30: 89 f3 ff 83 c4 04 8b c6 5e 5f 83 c4 30 c3 cc cc

LINEAR DISASSEMBLY
005aba60 <.text+0x1aaa60>:
  5aba60:	83 ec 30                                        	sub    esp,0x30
  5aba63:	57                                              	push   edi
  5aba64:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
  5aba68:	8b c7                                           	mov    eax,edi
  5aba6a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aba6f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5aba74:	74 07                                           	je     0x5aba7d
  5aba76:	33 c0                                           	xor    eax,eax
  5aba78:	5f                                              	pop    edi
  5aba79:	83 c4 30                                        	add    esp,0x30
  5aba7c:	c3                                              	ret
  5aba7d:	56                                              	push   esi
  5aba7e:	e8 0d d9 1b 00                                  	call   0x769390
  5aba83:	8b f0                                           	mov    esi,eax
  5aba85:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5aba87:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aba8d:	57                                              	push   edi
  5aba8e:	8b ce                                           	mov    ecx,esi
  5aba90:	ff d0                                           	call   eax
  5aba92:	85 c0                                           	test   eax,eax
  5aba94:	74 3a                                           	je     0x5abad0
  5aba96:	83 c0 28                                        	add    eax,0x28
  5aba99:	50                                              	push   eax
  5aba9a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5aba9e:	e8 4d d3 e5 ff                                  	call   0x408df0
  5abaa3:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5abaa7:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5abaab:	2b c8                                           	sub    ecx,eax
  5abaad:	f7 c1 fe ff ff ff                               	test   ecx,0xfffffffe
  5abab3:	75 23                                           	jne    0x5abad8
  5abab5:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5abab9:	2b d0                                           	sub    edx,eax
  5ababb:	83 e2 fe                                        	and    edx,0xfffffffe
  5ababe:	83 fa 02                                        	cmp    edx,0x2
  5abac1:	7e 0d                                           	jle    0x5abad0
  5abac3:	85 c0                                           	test   eax,eax
  5abac5:	74 09                                           	je     0x5abad0
  5abac7:	50                                              	push   eax
  5abac8:	e8 13 8a f3 ff                                  	call   0x4e44e0
  5abacd:	83 c4 04                                        	add    esp,0x4
  5abad0:	5e                                              	pop    esi
  5abad1:	33 c0                                           	xor    eax,eax
  5abad3:	5f                                              	pop    edi
  5abad4:	83 c4 30                                        	add    esp,0x30
  5abad7:	c3                                              	ret
  5abad8:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  5abadc:	50                                              	push   eax
  5abadd:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5abae1:	e8 ba f7 ff ff                                  	call   0x5ab2a0
  5abae6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5abae8:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5abaeb:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  5abaef:	50                                              	push   eax
  5abaf0:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5abaf4:	51                                              	push   ecx
  5abaf5:	8b ce                                           	mov    ecx,esi
  5abaf7:	ff d2                                           	call   edx
  5abaf9:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  5abafe:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
  5abb02:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  5abb0a:	74 0b                                           	je     0x5abb17
  5abb0c:	6a 00                                           	push   0x0
  5abb0e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5abb12:	e8 49 9c f4 ff                                  	call   0x4f5760
  5abb17:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5abb1b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5abb1f:	2b c8                                           	sub    ecx,eax
  5abb21:	83 e1 fe                                        	and    ecx,0xfffffffe
  5abb24:	83 f9 02                                        	cmp    ecx,0x2
  5abb27:	7e 0d                                           	jle    0x5abb36
  5abb29:	85 c0                                           	test   eax,eax
  5abb2b:	74 09                                           	je     0x5abb36
  5abb2d:	50                                              	push   eax
  5abb2e:	e8 ad 89 f3 ff                                  	call   0x4e44e0
  5abb33:	83 c4 04                                        	add    esp,0x4
  5abb36:	8b c6                                           	mov    eax,esi
  5abb38:	5e                                              	pop    esi
  5abb39:	5f                                              	pop    edi
  5abb3a:	83 c4 30                                        	add    esp,0x30
  5abb3d:	c3                                              	ret
  5abb3e:	cc                                              	int3
  5abb3f:	cc                                              	int3
