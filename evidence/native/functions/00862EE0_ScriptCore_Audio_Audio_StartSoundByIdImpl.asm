# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00862ee0 (ScriptCore.Audio::Audio_StartSoundByIdImpl)
Paired Ghidra pseudocode: 00862EE0_ScriptCore_Audio_Audio_StartSoundByIdImpl.c
Window: [0x00862ee0, 0x00862f20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00862f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00862ee0: 56 e8 1a cf 04 00 8b f0 85 f6 74 2a 8b 06 8b 50
00862ef0: 44 68 65 53 47 03 8b ce ff d2 8b 4c 24 08 8b 06
00862f00: 8b 50 4c 51 68 85 53 47 03 8b ce ff d2 8b 06 8b
00862f10: 50 68 8b ce ff d2 b0 01 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00862ee0 <.text+0x461ee0>:
  862ee0:	56                                              	push   esi
  862ee1:	e8 1a cf 04 00                                  	call   0x8afe00
  862ee6:	8b f0                                           	mov    esi,eax
  862ee8:	85 f6                                           	test   esi,esi
  862eea:	74 2a                                           	je     0x862f16
  862eec:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862eee:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  862ef1:	68 65 53 47 03                                  	push   0x3475365
  862ef6:	8b ce                                           	mov    ecx,esi
  862ef8:	ff d2                                           	call   edx
  862efa:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  862efe:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862f00:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  862f03:	51                                              	push   ecx
  862f04:	68 85 53 47 03                                  	push   0x3475385
  862f09:	8b ce                                           	mov    ecx,esi
  862f0b:	ff d2                                           	call   edx
  862f0d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862f0f:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  862f12:	8b ce                                           	mov    ecx,esi
  862f14:	ff d2                                           	call   edx
  862f16:	b0 01                                           	mov    al,0x1
  862f18:	5e                                              	pop    esi
  862f19:	c3                                              	ret
  862f1a:	cc                                              	int3
  862f1b:	cc                                              	int3
  862f1c:	cc                                              	int3
  862f1d:	cc                                              	int3
  862f1e:	cc                                              	int3
  862f1f:	cc                                              	int3
