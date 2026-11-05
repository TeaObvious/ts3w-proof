# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055eeb0 (Simulator_LoadXmlAsDocument)
Paired Ghidra pseudocode: 1055EEB0_Simulator_LoadXmlAsDocument.c
Window: [0x1055eeb0, 0x1055ef50) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055ef50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055eeb0: 51 8b 4c 24 14 8b 54 24 10 56 57 8d 44 24 08 50
1055eec0: 8b 44 24 18 51 8b 4c 24 18 52 50 51 c7 44 24 1c
1055eed0: 00 00 00 00 e8 27 f8 ff ff 83 c4 14 84 c0 74 57
1055eee0: e8 3b c2 ff ff 8b 4c 24 08 8b 11 8b f8 8b 42 18
1055eef0: ff d0 8b f0 85 f6 74 3f 8b 16 8b 42 04 8b ce ff
1055ef00: d0 8b 17 8b 82 b8 00 00 00 56 8b cf ff d0 8b 16
1055ef10: 8b f8 8b 42 18 8b ce ff d0 8b 16 8b 42 08 8b ce
1055ef20: ff d0 8b 4c 24 08 85 c9 74 07 8b 11 8b 42 08 ff
1055ef30: d0 8b c7 5f 5e 59 c3 8b 4c 24 08 85 c9 74 07 8b
1055ef40: 11 8b 42 08 ff d0 5f 33 c0 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
1055eeb0 <.text+0x55deb0>:
1055eeb0:	51                                              	push   ecx
1055eeb1:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055eeb5:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1055eeb9:	56                                              	push   esi
1055eeba:	57                                              	push   edi
1055eebb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1055eebf:	50                                              	push   eax
1055eec0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1055eec4:	51                                              	push   ecx
1055eec5:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055eec9:	52                                              	push   edx
1055eeca:	50                                              	push   eax
1055eecb:	51                                              	push   ecx
1055eecc:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
1055eed4:	e8 27 f8 ff ff                                  	call   0x1055e700
1055eed9:	83 c4 14                                        	add    esp,0x14
1055eedc:	84 c0                                           	test   al,al
1055eede:	74 57                                           	je     0x1055ef37
1055eee0:	e8 3b c2 ff ff                                  	call   0x1055b120
1055eee5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055eee9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055eeeb:	8b f8                                           	mov    edi,eax
1055eeed:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1055eef0:	ff d0                                           	call   eax
1055eef2:	8b f0                                           	mov    esi,eax
1055eef4:	85 f6                                           	test   esi,esi
1055eef6:	74 3f                                           	je     0x1055ef37
1055eef8:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055eefa:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1055eefd:	8b ce                                           	mov    ecx,esi
1055eeff:	ff d0                                           	call   eax
1055ef01:	8b 17                                           	mov    edx,DWORD PTR [edi]
1055ef03:	8b 82 b8 00 00 00                               	mov    eax,DWORD PTR [edx+0xb8]
1055ef09:	56                                              	push   esi
1055ef0a:	8b cf                                           	mov    ecx,edi
1055ef0c:	ff d0                                           	call   eax
1055ef0e:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055ef10:	8b f8                                           	mov    edi,eax
1055ef12:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1055ef15:	8b ce                                           	mov    ecx,esi
1055ef17:	ff d0                                           	call   eax
1055ef19:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055ef1b:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1055ef1e:	8b ce                                           	mov    ecx,esi
1055ef20:	ff d0                                           	call   eax
1055ef22:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ef26:	85 c9                                           	test   ecx,ecx
1055ef28:	74 07                                           	je     0x1055ef31
1055ef2a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055ef2c:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1055ef2f:	ff d0                                           	call   eax
1055ef31:	8b c7                                           	mov    eax,edi
1055ef33:	5f                                              	pop    edi
1055ef34:	5e                                              	pop    esi
1055ef35:	59                                              	pop    ecx
1055ef36:	c3                                              	ret
1055ef37:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ef3b:	85 c9                                           	test   ecx,ecx
1055ef3d:	74 07                                           	je     0x1055ef46
1055ef3f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055ef41:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1055ef44:	ff d0                                           	call   eax
1055ef46:	5f                                              	pop    edi
1055ef47:	33 c0                                           	xor    eax,eax
1055ef49:	5e                                              	pop    esi
1055ef4a:	59                                              	pop    ecx
1055ef4b:	c3                                              	ret
1055ef4c:	cc                                              	int3
1055ef4d:	cc                                              	int3
1055ef4e:	cc                                              	int3
1055ef4f:	cc                                              	int3
