# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073ab20 (ScriptCore.Animation::Animation_StopRandomClipController)
Paired Ghidra pseudocode: 0073AB20_ScriptCore_Animation_Animation_StopRandomClipController.c
Window: [0x0073ab20, 0x0073abb0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073abb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073ab20: 51 56 e8 49 ca 1f 00 8b 4c 24 10 8b 54 24 0c 51
0073ab30: 52 8b c8 e8 48 d4 1f 00 8b f0 85 f6 74 6e 57 8d
0073ab40: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 84
0073ab50: d4 1d 01 52 8b ce e8 05 97 1f 00 85 c0 74 2f 8b
0073ab60: 4c 24 1c 8b 54 24 18 51 52 8b c8 e8 50 1e 20 00
0073ab70: 85 c0 74 1a 8d 48 08 8b 01 8b 50 04 68 61 2d c1
0073ab80: 06 ff d2 85 c0 74 07 8b c8 e8 02 26 e3 ff 8b c7
0073ab90: 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87
0073aba0: 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 59 c3 cc

LINEAR DISASSEMBLY
0073ab20 <.text+0x339b20>:
  73ab20:	51                                              	push   ecx
  73ab21:	56                                              	push   esi
  73ab22:	e8 49 ca 1f 00                                  	call   0x937570
  73ab27:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73ab2b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  73ab2f:	51                                              	push   ecx
  73ab30:	52                                              	push   edx
  73ab31:	8b c8                                           	mov    ecx,eax
  73ab33:	e8 48 d4 1f 00                                  	call   0x937f80
  73ab38:	8b f0                                           	mov    esi,eax
  73ab3a:	85 f6                                           	test   esi,esi
  73ab3c:	74 6e                                           	je     0x73abac
  73ab3e:	57                                              	push   edi
  73ab3f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  73ab42:	8b c7                                           	mov    eax,edi
  73ab44:	b9 01 00 00 00                                  	mov    ecx,0x1
  73ab49:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73ab4d:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73ab53:	52                                              	push   edx
  73ab54:	8b ce                                           	mov    ecx,esi
  73ab56:	e8 05 97 1f 00                                  	call   0x934260
  73ab5b:	85 c0                                           	test   eax,eax
  73ab5d:	74 2f                                           	je     0x73ab8e
  73ab5f:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  73ab63:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  73ab67:	51                                              	push   ecx
  73ab68:	52                                              	push   edx
  73ab69:	8b c8                                           	mov    ecx,eax
  73ab6b:	e8 50 1e 20 00                                  	call   0x93c9c0
  73ab70:	85 c0                                           	test   eax,eax
  73ab72:	74 1a                                           	je     0x73ab8e
  73ab74:	8d 48 08                                        	lea    ecx,[eax+0x8]
  73ab77:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73ab79:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  73ab7c:	68 61 2d c1 06                                  	push   0x6c12d61
  73ab81:	ff d2                                           	call   edx
  73ab83:	85 c0                                           	test   eax,eax
  73ab85:	74 07                                           	je     0x73ab8e
  73ab87:	8b c8                                           	mov    ecx,eax
  73ab89:	e8 02 26 e3 ff                                  	call   0x56d190
  73ab8e:	8b c7                                           	mov    eax,edi
  73ab90:	83 c9 ff                                        	or     ecx,0xffffffff
  73ab93:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73ab97:	49                                              	dec    ecx
  73ab98:	75 11                                           	jne    0x73abab
  73ab9a:	ba 01 00 00 00                                  	mov    edx,0x1
  73ab9f:	87 17                                           	xchg   DWORD PTR [edi],edx
  73aba1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73aba3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73aba5:	6a 01                                           	push   0x1
  73aba7:	8b ce                                           	mov    ecx,esi
  73aba9:	ff d2                                           	call   edx
  73abab:	5f                                              	pop    edi
  73abac:	5e                                              	pop    esi
  73abad:	59                                              	pop    ecx
  73abae:	c3                                              	ret
  73abaf:	cc                                              	int3
