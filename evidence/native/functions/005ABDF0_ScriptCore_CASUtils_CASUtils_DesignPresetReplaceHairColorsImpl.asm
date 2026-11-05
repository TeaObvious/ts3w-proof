# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005abdf0 (ScriptCore.CASUtils::CASUtils_DesignPresetReplaceHairColorsImpl)
Paired Ghidra pseudocode: 005ABDF0_ScriptCore_CASUtils_CASUtils_DesignPresetReplaceHairColorsImpl.c
Window: [0x005abdf0, 0x005ac050) (608 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ac050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005abdf0: 81 ec dc 00 00 00 55 57 e8 93 d5 1b 00 8b 8c 24
005abe00: e8 00 00 00 8b f8 8b 07 8b 50 58 51 8b cf ff d2
005abe10: 8b e8 85 ed 75 0b 5f 33 c0 5d 81 c4 dc 00 00 00
005abe20: c3 8b 07 8d 4c 24 38 51 8b 8c 24 f0 00 00 00 8d
005abe30: 54 24 10 52 8b 50 6c 51 8b cf ff d2 83 7c 24 38
005abe40: 04 7c d3 53 56 8d 8c 24 8c 00 00 00 e8 6f 3c 01
005abe50: 00 55 8d 8c 24 90 00 00 00 e8 02 42 01 00 c6 44
005abe60: 24 13 00 b3 01 33 f6 80 7c 24 13 00 75 36 8b 96
005abe70: d4 61 15 01 8d 44 24 2c 50 8d 8c 24 8c 00 00 00
005abe80: 51 52 8d 8c 24 98 00 00 00 e8 e2 35 01 00 84 c0
005abe90: 74 3f 8b 44 24 2c 8b 4c 24 14 3b 04 0e 74 32 c6
005abea0: 44 24 13 01 84 db 74 27 8b 54 24 14 8b 04 16 8b
005abeb0: 8e d4 61 15 01 6a 00 50 6a 02 51 8d 8c 24 9c 00
005abec0: 00 00 e8 c9 33 01 00 84 c0 74 04 b3 01 eb 02 32
005abed0: db 83 c6 04 83 fe 10 7c 8e 80 7c 24 13 00 0f 85
005abee0: 99 00 00 00 33 db 55 8d 4c 24 20 89 5c 24 20 89
005abef0: 5c 24 24 89 5c 24 28 c7 44 24 2c 0c f9 fd 00 e8
005abf00: 8c f6 e5 ff 6a 01 6a 10 8d 54 24 24 52 6a 09 6a
005abf10: 13 8d 4c 24 5c c7 44 24 5c 6c 88 00 01 66 c7 44
005abf20: 24 66 13 00 66 c7 44 24 64 0b 00 e8 90 9a f4 ff
005abf30: 8b 07 8b 40 50 8d 4c 24 44 51 8d 54 24 4c 52 8b
005abf40: cf ff d0 f6 44 24 50 04 8b 74 24 44 c7 44 24 48
005abf50: f4 a6 fb 00 74 0a 53 8d 4c 24 4c e8 00 98 f4 ff
005abf60: 8b 4c 24 24 8b 44 24 1c 2b c8 83 e1 fe 83 f9 02
005abf70: 0f 8e b7 00 00 00 3b c3 e9 a5 00 00 00 b8 54 8e
005abf80: 1c 01 8d 54 24 30 52 8d 8c 24 90 00 00 00 c7 44
005abf90: 24 40 0c f9 fd 00 89 44 24 34 89 44 24 38 c7 44
005abfa0: 24 3c 56 8e 1c 01 e8 75 3d 01 00 6a 01 6a 10 8d
005abfb0: 44 24 38 50 6a 09 6a 13 8d 4c 24 7c c7 44 24 7c
005abfc0: 6c 88 00 01 66 c7 84 24 86 00 00 00 13 00 66 c7
005abfd0: 84 24 84 00 00 00 0b 00 e8 e3 99 f4 ff 8b 17 8b
005abfe0: 52 50 8d 44 24 18 50 8d 4c 24 6c 51 8b cf ff d2
005abff0: f6 44 24 70 04 8b 74 24 18 c7 44 24 68 f4 a6 fb
005ac000: 00 74 0b 6a 00 8d 4c 24 6c e8 52 97 f4 ff 8b 4c
005ac010: 24 38 8b 44 24 30 2b c8 83 e1 fe 83 f9 02 7e 0d
005ac020: 85 c0 74 09 50 e8 b6 84 f3 ff 83 c4 04 8d 8c 24
005ac030: 8c 00 00 00 e8 a7 3c 01 00 8b c6 5e 5b 5f 5d 81
005ac040: c4 dc 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005abdf0 <.text+0x1aadf0>:
  5abdf0:	81 ec dc 00 00 00                               	sub    esp,0xdc
  5abdf6:	55                                              	push   ebp
  5abdf7:	57                                              	push   edi
  5abdf8:	e8 93 d5 1b 00                                  	call   0x769390
  5abdfd:	8b 8c 24 e8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xe8]
  5abe04:	8b f8                                           	mov    edi,eax
  5abe06:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5abe08:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5abe0b:	51                                              	push   ecx
  5abe0c:	8b cf                                           	mov    ecx,edi
  5abe0e:	ff d2                                           	call   edx
  5abe10:	8b e8                                           	mov    ebp,eax
  5abe12:	85 ed                                           	test   ebp,ebp
  5abe14:	75 0b                                           	jne    0x5abe21
  5abe16:	5f                                              	pop    edi
  5abe17:	33 c0                                           	xor    eax,eax
  5abe19:	5d                                              	pop    ebp
  5abe1a:	81 c4 dc 00 00 00                               	add    esp,0xdc
  5abe20:	c3                                              	ret
  5abe21:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5abe23:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5abe27:	51                                              	push   ecx
  5abe28:	8b 8c 24 f0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xf0]
  5abe2f:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5abe33:	52                                              	push   edx
  5abe34:	8b 50 6c                                        	mov    edx,DWORD PTR [eax+0x6c]
  5abe37:	51                                              	push   ecx
  5abe38:	8b cf                                           	mov    ecx,edi
  5abe3a:	ff d2                                           	call   edx
  5abe3c:	83 7c 24 38 04                                  	cmp    DWORD PTR [esp+0x38],0x4
  5abe41:	7c d3                                           	jl     0x5abe16
  5abe43:	53                                              	push   ebx
  5abe44:	56                                              	push   esi
  5abe45:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  5abe4c:	e8 6f 3c 01 00                                  	call   0x5bfac0
  5abe51:	55                                              	push   ebp
  5abe52:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  5abe59:	e8 02 42 01 00                                  	call   0x5c0060
  5abe5e:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
  5abe63:	b3 01                                           	mov    bl,0x1
  5abe65:	33 f6                                           	xor    esi,esi
  5abe67:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  5abe6c:	75 36                                           	jne    0x5abea4
  5abe6e:	8b 96 d4 61 15 01                               	mov    edx,DWORD PTR [esi+0x11561d4]
  5abe74:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  5abe78:	50                                              	push   eax
  5abe79:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  5abe80:	51                                              	push   ecx
  5abe81:	52                                              	push   edx
  5abe82:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
  5abe89:	e8 e2 35 01 00                                  	call   0x5bf470
  5abe8e:	84 c0                                           	test   al,al
  5abe90:	74 3f                                           	je     0x5abed1
  5abe92:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5abe96:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5abe9a:	3b 04 0e                                        	cmp    eax,DWORD PTR [esi+ecx*1]
  5abe9d:	74 32                                           	je     0x5abed1
  5abe9f:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
  5abea4:	84 db                                           	test   bl,bl
  5abea6:	74 27                                           	je     0x5abecf
  5abea8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5abeac:	8b 04 16                                        	mov    eax,DWORD PTR [esi+edx*1]
  5abeaf:	8b 8e d4 61 15 01                               	mov    ecx,DWORD PTR [esi+0x11561d4]
  5abeb5:	6a 00                                           	push   0x0
  5abeb7:	50                                              	push   eax
  5abeb8:	6a 02                                           	push   0x2
  5abeba:	51                                              	push   ecx
  5abebb:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
  5abec2:	e8 c9 33 01 00                                  	call   0x5bf290
  5abec7:	84 c0                                           	test   al,al
  5abec9:	74 04                                           	je     0x5abecf
  5abecb:	b3 01                                           	mov    bl,0x1
  5abecd:	eb 02                                           	jmp    0x5abed1
  5abecf:	32 db                                           	xor    bl,bl
  5abed1:	83 c6 04                                        	add    esi,0x4
  5abed4:	83 fe 10                                        	cmp    esi,0x10
  5abed7:	7c 8e                                           	jl     0x5abe67
  5abed9:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  5abede:	0f 85 99 00 00 00                               	jne    0x5abf7d
  5abee4:	33 db                                           	xor    ebx,ebx
  5abee6:	55                                              	push   ebp
  5abee7:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5abeeb:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  5abeef:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  5abef3:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  5abef7:	c7 44 24 2c 0c f9 fd 00                         	mov    DWORD PTR [esp+0x2c],0xfdf90c
  5abeff:	e8 8c f6 e5 ff                                  	call   0x40b590
  5abf04:	6a 01                                           	push   0x1
  5abf06:	6a 10                                           	push   0x10
  5abf08:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  5abf0c:	52                                              	push   edx
  5abf0d:	6a 09                                           	push   0x9
  5abf0f:	6a 13                                           	push   0x13
  5abf11:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  5abf15:	c7 44 24 5c 6c 88 00 01                         	mov    DWORD PTR [esp+0x5c],0x100886c
  5abf1d:	66 c7 44 24 66 13 00                            	mov    WORD PTR [esp+0x66],0x13
  5abf24:	66 c7 44 24 64 0b 00                            	mov    WORD PTR [esp+0x64],0xb
  5abf2b:	e8 90 9a f4 ff                                  	call   0x4f59c0
  5abf30:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5abf32:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  5abf35:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5abf39:	51                                              	push   ecx
  5abf3a:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
  5abf3e:	52                                              	push   edx
  5abf3f:	8b cf                                           	mov    ecx,edi
  5abf41:	ff d0                                           	call   eax
  5abf43:	f6 44 24 50 04                                  	test   BYTE PTR [esp+0x50],0x4
  5abf48:	8b 74 24 44                                     	mov    esi,DWORD PTR [esp+0x44]
  5abf4c:	c7 44 24 48 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x48],0xfba6f4
  5abf54:	74 0a                                           	je     0x5abf60
  5abf56:	53                                              	push   ebx
  5abf57:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  5abf5b:	e8 00 98 f4 ff                                  	call   0x4f5760
  5abf60:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5abf64:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  5abf68:	2b c8                                           	sub    ecx,eax
  5abf6a:	83 e1 fe                                        	and    ecx,0xfffffffe
  5abf6d:	83 f9 02                                        	cmp    ecx,0x2
  5abf70:	0f 8e b7 00 00 00                               	jle    0x5ac02d
  5abf76:	3b c3                                           	cmp    eax,ebx
  5abf78:	e9 a5 00 00 00                                  	jmp    0x5ac022
  5abf7d:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5abf82:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  5abf86:	52                                              	push   edx
  5abf87:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  5abf8e:	c7 44 24 40 0c f9 fd 00                         	mov    DWORD PTR [esp+0x40],0xfdf90c
  5abf96:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  5abf9a:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  5abf9e:	c7 44 24 3c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x3c],0x11c8e56
  5abfa6:	e8 75 3d 01 00                                  	call   0x5bfd20
  5abfab:	6a 01                                           	push   0x1
  5abfad:	6a 10                                           	push   0x10
  5abfaf:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  5abfb3:	50                                              	push   eax
  5abfb4:	6a 09                                           	push   0x9
  5abfb6:	6a 13                                           	push   0x13
  5abfb8:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
  5abfbc:	c7 44 24 7c 6c 88 00 01                         	mov    DWORD PTR [esp+0x7c],0x100886c
  5abfc4:	66 c7 84 24 86 00 00 00 13 00                   	mov    WORD PTR [esp+0x86],0x13
  5abfce:	66 c7 84 24 84 00 00 00 0b 00                   	mov    WORD PTR [esp+0x84],0xb
  5abfd8:	e8 e3 99 f4 ff                                  	call   0x4f59c0
  5abfdd:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5abfdf:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5abfe2:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5abfe6:	50                                              	push   eax
  5abfe7:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  5abfeb:	51                                              	push   ecx
  5abfec:	8b cf                                           	mov    ecx,edi
  5abfee:	ff d2                                           	call   edx
  5abff0:	f6 44 24 70 04                                  	test   BYTE PTR [esp+0x70],0x4
  5abff5:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5abff9:	c7 44 24 68 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x68],0xfba6f4
  5ac001:	74 0b                                           	je     0x5ac00e
  5ac003:	6a 00                                           	push   0x0
  5ac005:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  5ac009:	e8 52 97 f4 ff                                  	call   0x4f5760
  5ac00e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  5ac012:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  5ac016:	2b c8                                           	sub    ecx,eax
  5ac018:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ac01b:	83 f9 02                                        	cmp    ecx,0x2
  5ac01e:	7e 0d                                           	jle    0x5ac02d
  5ac020:	85 c0                                           	test   eax,eax
  5ac022:	74 09                                           	je     0x5ac02d
  5ac024:	50                                              	push   eax
  5ac025:	e8 b6 84 f3 ff                                  	call   0x4e44e0
  5ac02a:	83 c4 04                                        	add    esp,0x4
  5ac02d:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  5ac034:	e8 a7 3c 01 00                                  	call   0x5bfce0
  5ac039:	8b c6                                           	mov    eax,esi
  5ac03b:	5e                                              	pop    esi
  5ac03c:	5b                                              	pop    ebx
  5ac03d:	5f                                              	pop    edi
  5ac03e:	5d                                              	pop    ebp
  5ac03f:	81 c4 dc 00 00 00                               	add    esp,0xdc
  5ac045:	c3                                              	ret
  5ac046:	cc                                              	int3
  5ac047:	cc                                              	int3
  5ac048:	cc                                              	int3
  5ac049:	cc                                              	int3
  5ac04a:	cc                                              	int3
  5ac04b:	cc                                              	int3
  5ac04c:	cc                                              	int3
  5ac04d:	cc                                              	int3
  5ac04e:	cc                                              	int3
  5ac04f:	cc                                              	int3
