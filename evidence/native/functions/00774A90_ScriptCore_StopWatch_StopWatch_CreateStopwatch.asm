# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774a90 (ScriptCore.StopWatch::StopWatch_CreateStopwatch)
Paired Ghidra pseudocode: 00774A90_ScriptCore_StopWatch_StopWatch_CreateStopwatch.c
Window: [0x00774a90, 0x00774b00) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774a90: 57 8b 7c 24 08 83 ff 07 7e 04 33 c0 5f c3 56 e8
00774aa0: ec 48 ff ff 6a 00 6a 00 6a 00 6a 00 68 f8 d4 00
00774ab0: 01 6a 18 8b f0 e8 46 fa d6 ff 83 c4 18 85 c0 74
00774ac0: 1c 6a 00 57 8b c8 e8 e5 ee d7 ff 8b 16 6a 10 50
00774ad0: 8b 82 c8 00 00 00 8b ce ff d0 5e 5f c3 8b 16 33
00774ae0: c0 6a 10 50 8b 82 c8 00 00 00 8b ce ff d0 5e 5f
00774af0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774a90 <.text+0x373a90>:
  774a90:	57                                              	push   edi
  774a91:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  774a95:	83 ff 07                                        	cmp    edi,0x7
  774a98:	7e 04                                           	jle    0x774a9e
  774a9a:	33 c0                                           	xor    eax,eax
  774a9c:	5f                                              	pop    edi
  774a9d:	c3                                              	ret
  774a9e:	56                                              	push   esi
  774a9f:	e8 ec 48 ff ff                                  	call   0x769390
  774aa4:	6a 00                                           	push   0x0
  774aa6:	6a 00                                           	push   0x0
  774aa8:	6a 00                                           	push   0x0
  774aaa:	6a 00                                           	push   0x0
  774aac:	68 f8 d4 00 01                                  	push   0x100d4f8
  774ab1:	6a 18                                           	push   0x18
  774ab3:	8b f0                                           	mov    esi,eax
  774ab5:	e8 46 fa d6 ff                                  	call   0x4e4500
  774aba:	83 c4 18                                        	add    esp,0x18
  774abd:	85 c0                                           	test   eax,eax
  774abf:	74 1c                                           	je     0x774add
  774ac1:	6a 00                                           	push   0x0
  774ac3:	57                                              	push   edi
  774ac4:	8b c8                                           	mov    ecx,eax
  774ac6:	e8 e5 ee d7 ff                                  	call   0x4f39b0
  774acb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  774acd:	6a 10                                           	push   0x10
  774acf:	50                                              	push   eax
  774ad0:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  774ad6:	8b ce                                           	mov    ecx,esi
  774ad8:	ff d0                                           	call   eax
  774ada:	5e                                              	pop    esi
  774adb:	5f                                              	pop    edi
  774adc:	c3                                              	ret
  774add:	8b 16                                           	mov    edx,DWORD PTR [esi]
  774adf:	33 c0                                           	xor    eax,eax
  774ae1:	6a 10                                           	push   0x10
  774ae3:	50                                              	push   eax
  774ae4:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  774aea:	8b ce                                           	mov    ecx,esi
  774aec:	ff d0                                           	call   eax
  774aee:	5e                                              	pop    esi
  774aef:	5f                                              	pop    edi
  774af0:	c3                                              	ret
  774af1:	cc                                              	int3
  774af2:	cc                                              	int3
  774af3:	cc                                              	int3
  774af4:	cc                                              	int3
  774af5:	cc                                              	int3
  774af6:	cc                                              	int3
  774af7:	cc                                              	int3
  774af8:	cc                                              	int3
  774af9:	cc                                              	int3
  774afa:	cc                                              	int3
  774afb:	cc                                              	int3
  774afc:	cc                                              	int3
  774afd:	cc                                              	int3
  774afe:	cc                                              	int3
  774aff:	cc                                              	int3
