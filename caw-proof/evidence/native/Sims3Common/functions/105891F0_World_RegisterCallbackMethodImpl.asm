# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105891f0 (World_RegisterCallbackMethodImpl)
Paired Ghidra pseudocode: 105891F0_World_RegisterCallbackMethodImpl.c
Window: [0x105891f0, 0x10589230) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105891f0: 57 8b 7c 24 08 83 ff 4b 77 30 56 e8 20 1f fd ff
10589200: 8b 4c 24 14 8b f0 8b 06 8b 50 58 51 8b ce ff d2
10589210: 8b 4c 24 10 50 8b 06 8b 50 58 51 8b ce ff d2 50
10589220: 57 e8 8a ff ff ff 83 c4 0c 5e 5f c3 cc cc cc cc

LINEAR DISASSEMBLY
105891f0 <.text+0x5881f0>:
105891f0:	57                                              	push   edi
105891f1:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
105891f5:	83 ff 4b                                        	cmp    edi,0x4b
105891f8:	77 30                                           	ja     0x1058922a
105891fa:	56                                              	push   esi
105891fb:	e8 20 1f fd ff                                  	call   0x1055b120
10589200:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10589204:	8b f0                                           	mov    esi,eax
10589206:	8b 06                                           	mov    eax,DWORD PTR [esi]
10589208:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1058920b:	51                                              	push   ecx
1058920c:	8b ce                                           	mov    ecx,esi
1058920e:	ff d2                                           	call   edx
10589210:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10589214:	50                                              	push   eax
10589215:	8b 06                                           	mov    eax,DWORD PTR [esi]
10589217:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1058921a:	51                                              	push   ecx
1058921b:	8b ce                                           	mov    ecx,esi
1058921d:	ff d2                                           	call   edx
1058921f:	50                                              	push   eax
10589220:	57                                              	push   edi
10589221:	e8 8a ff ff ff                                  	call   0x105891b0
10589226:	83 c4 0c                                        	add    esp,0xc
10589229:	5e                                              	pop    esi
1058922a:	5f                                              	pop    edi
1058922b:	c3                                              	ret
1058922c:	cc                                              	int3
1058922d:	cc                                              	int3
1058922e:	cc                                              	int3
1058922f:	cc                                              	int3
