# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x007758f0; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007758f0 (ScriptCore.StreamHost::StreamHost_CreateFromBuffer)
Paired Ghidra pseudocode: 007758F0_ScriptCore_StreamHost_StreamHost_CreateFromBuffer.c
Window: [0x007758f0, 0x007759d0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x007759d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007758f0: 51 56 8b 74 24 0c 85 f6 74 7a e8 91 3a ff ff 8b
00775900: 10 8b 52 70 8d 4c 24 0c 51 8d 4c 24 08 51 56 8b
00775910: c8 ff d2 6a 00 6a 00 6a 00 6a 00 68 8c d7 00 01
00775920: 6a 2c e8 d9 eb d6 ff 83 c4 18 85 c0 74 46 6a 00
00775930: 6a 00 6a 00 8b c8 e8 25 9b d6 ff 8b f0 85 f6 74
00775940: 33 8b 06 8b 50 04 8b ce ff d2 d9 e8 51 d9 1c 24
00775950: 6a 01 8b ce e8 e7 94 d6 ff 8b 4c 24 0c 8b 06 8b
00775960: 50 20 51 8b ce ff d2 84 c0 75 0e 8b 06 8b 50 08
00775970: 8b ce ff d2 33 c0 5e 59 c3 8b 46 04 85 c0 74 05
00775980: 8b 40 08 eb 02 33 c0 8b 4c 24 0c 8b 54 24 04 57
00775990: 51 52 50 e8 ee 98 80 00 d9 ee 83 c4 08 d9 1c 24
007759a0: 6a 01 8b ce e8 97 94 d6 ff 56 e8 11 f5 ff ff 8b
007759b0: f8 8b 06 8b 50 08 83 c4 04 8b ce ff d2 8b c7 5f
007759c0: 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007758f0 <.text+0x3748f0>:
  7758f0:	51                                              	push   ecx
  7758f1:	56                                              	push   esi
  7758f2:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  7758f6:	85 f6                                           	test   esi,esi
  7758f8:	74 7a                                           	je     0x775974
  7758fa:	e8 91 3a ff ff                                  	call   0x769390
  7758ff:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775901:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  775904:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  775908:	51                                              	push   ecx
  775909:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  77590d:	51                                              	push   ecx
  77590e:	56                                              	push   esi
  77590f:	8b c8                                           	mov    ecx,eax
  775911:	ff d2                                           	call   edx
  775913:	6a 00                                           	push   0x0
  775915:	6a 00                                           	push   0x0
  775917:	6a 00                                           	push   0x0
  775919:	6a 00                                           	push   0x0
  77591b:	68 8c d7 00 01                                  	push   0x100d78c
  775920:	6a 2c                                           	push   0x2c
  775922:	e8 d9 eb d6 ff                                  	call   0x4e4500
  775927:	83 c4 18                                        	add    esp,0x18
  77592a:	85 c0                                           	test   eax,eax
  77592c:	74 46                                           	je     0x775974
  77592e:	6a 00                                           	push   0x0
  775930:	6a 00                                           	push   0x0
  775932:	6a 00                                           	push   0x0
  775934:	8b c8                                           	mov    ecx,eax
  775936:	e8 25 9b d6 ff                                  	call   0x4df460
  77593b:	8b f0                                           	mov    esi,eax
  77593d:	85 f6                                           	test   esi,esi
  77593f:	74 33                                           	je     0x775974
  775941:	8b 06                                           	mov    eax,DWORD PTR [esi]
  775943:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  775946:	8b ce                                           	mov    ecx,esi
  775948:	ff d2                                           	call   edx
  77594a:	d9 e8                                           	fld1
  77594c:	51                                              	push   ecx
  77594d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  775950:	6a 01                                           	push   0x1
  775952:	8b ce                                           	mov    ecx,esi
  775954:	e8 e7 94 d6 ff                                  	call   0x4dee40
  775959:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77595d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77595f:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  775962:	51                                              	push   ecx
  775963:	8b ce                                           	mov    ecx,esi
  775965:	ff d2                                           	call   edx
  775967:	84 c0                                           	test   al,al
  775969:	75 0e                                           	jne    0x775979
  77596b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77596d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  775970:	8b ce                                           	mov    ecx,esi
  775972:	ff d2                                           	call   edx
  775974:	33 c0                                           	xor    eax,eax
  775976:	5e                                              	pop    esi
  775977:	59                                              	pop    ecx
  775978:	c3                                              	ret
  775979:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  77597c:	85 c0                                           	test   eax,eax
  77597e:	74 05                                           	je     0x775985
  775980:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  775983:	eb 02                                           	jmp    0x775987
  775985:	33 c0                                           	xor    eax,eax
  775987:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77598b:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  77598f:	57                                              	push   edi
  775990:	51                                              	push   ecx
  775991:	52                                              	push   edx
  775992:	50                                              	push   eax
  775993:	e8 ee 98 80 00                                  	call   0xf7f286
  775998:	d9 ee                                           	fldz
  77599a:	83 c4 08                                        	add    esp,0x8
  77599d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7759a0:	6a 01                                           	push   0x1
  7759a2:	8b ce                                           	mov    ecx,esi
  7759a4:	e8 97 94 d6 ff                                  	call   0x4dee40
  7759a9:	56                                              	push   esi
  7759aa:	e8 11 f5 ff ff                                  	call   0x774ec0
  7759af:	8b f8                                           	mov    edi,eax
  7759b1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7759b3:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7759b6:	83 c4 04                                        	add    esp,0x4
  7759b9:	8b ce                                           	mov    ecx,esi
  7759bb:	ff d2                                           	call   edx
  7759bd:	8b c7                                           	mov    eax,edi
  7759bf:	5f                                              	pop    edi
  7759c0:	5e                                              	pop    esi
  7759c1:	59                                              	pop    ecx
  7759c2:	c3                                              	ret
  7759c3:	cc                                              	int3
  7759c4:	cc                                              	int3
  7759c5:	cc                                              	int3
  7759c6:	cc                                              	int3
  7759c7:	cc                                              	int3
  7759c8:	cc                                              	int3
  7759c9:	cc                                              	int3
  7759ca:	cc                                              	int3
  7759cb:	cc                                              	int3
  7759cc:	cc                                              	int3
  7759cd:	cc                                              	int3
  7759ce:	cc                                              	int3
  7759cf:	cc                                              	int3
