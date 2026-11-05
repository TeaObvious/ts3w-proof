# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008aee90 (AudioVoice_LoadAuthoredProperties)
Paired Ghidra pseudocode: 008AEE90_AudioVoice_LoadAuthoredProperties.c
Window: [0x008aee90, 0x008af5e0) (1872 bytes; stop exclusive)
Next defined Ghidra entry: 0x008af5e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008aee90: 83 ec 30 55 56 8b f1 8b 86 50 03 00 00 8b 8e 4c
008aeea0: 03 00 00 57 8d be 48 03 00 00 50 51 8b cf e8 4d
008aeeb0: 36 ff ff 33 ed 89 6f 0c 8b 96 a0 08 00 00 8b 86
008aeec0: 9c 08 00 00 8d be 98 08 00 00 52 50 8b cf e8 2d
008aeed0: 36 ff ff 89 6f 0c 8b 16 8b 82 ac 00 00 00 8b ce
008aeee0: ff d0 e8 19 0f 00 00 3b c5 89 44 24 1c 75 09 5f
008aeef0: 5e 32 c0 5d 83 c4 30 c3 8b 4e 38 8b 56 3c 8b 86
008aef00: f4 00 00 00 89 4e 48 8d be f4 00 00 00 8d 8e d4
008aef10: 0a 00 00 51 89 56 4c 8b 50 2c 68 b2 7d 99 51 8b
008aef20: cf ff d2 8b 07 8b 50 2c 8d 8e d8 0a 00 00 51 68
008aef30: d6 19 ec d9 8b cf ff d2 8b 07 8b 50 24 8d 8e af
008aef40: 00 00 00 51 68 a3 03 90 fd 8b cf ff d2 8b 07 8b
008aef50: 50 30 8d 8e c8 0a 00 00 51 68 39 25 f4 b1 8b cf
008aef60: ff d2 84 c0 74 0a 81 8e dc 0a 00 00 00 04 00 00
008aef70: 8b 07 8b 50 24 8d 4c 24 0e 51 68 42 ef da d1 8b
008aef80: cf ff d2 84 c0 74 11 80 7c 24 0e 00 74 0a 81 8e
008aef90: dc 0a 00 00 00 10 00 00 8b 07 8b 50 24 8d 4c 24
008aefa0: 0e 51 68 2a eb 57 62 8b cf ff d2 84 c0 74 0e 80
008aefb0: 7c 24 0e 00 74 07 c6 86 cc 0a 00 00 01 8b 07 8b
008aefc0: 50 24 8d 4c 24 0e 51 68 b9 c7 10 3c 8b cf ff d2
008aefd0: 84 c0 74 0e 80 7c 24 0e 00 74 07 c6 86 cd 0a 00
008aefe0: 00 01 8b 06 8b 90 88 00 00 00 68 47 a0 06 24 8b
008aeff0: ce ff d2 8b 06 8b 90 88 00 00 00 68 72 6b 61 0f
008af000: 8b ce ff d2 8b 06 8b 90 88 00 00 00 68 10 37 59
008af010: 03 8b ce ff d2 8b 06 8b 90 88 00 00 00 68 f8 b9
008af020: e8 29 8b ce ff d2 8b 06 8b 90 88 00 00 00 68 8e
008af030: 30 c9 8f 8b ce ff d2 8b 06 8b 90 88 00 00 00 68
008af040: 42 c2 e7 56 8b ce ff d2 8b 06 8b 90 88 00 00 00
008af050: 68 09 30 bc 71 8b ce ff d2 8b 06 8b 90 88 00 00
008af060: 00 68 96 89 ac 98 8b ce ff d2 8b 06 8b 90 88 00
008af070: 00 00 68 b9 99 ab e8 8b ce ff d2 8b 06 8b 90 88
008af080: 00 00 00 68 8e 30 c9 8f 8b ce ff d2 8b 06 8b 90
008af090: 88 00 00 00 68 7d 7f 3f 39 8b ce ff d2 8b 06 8b
008af0a0: 90 88 00 00 00 68 db 68 eb 49 8b ce ff d2 8b 06
008af0b0: 8b 90 88 00 00 00 68 17 a7 b7 6e 8b ce ff d2 8b
008af0c0: 06 8b 90 88 00 00 00 68 08 01 df 25 8b ce ff d2
008af0d0: 8b 06 8b 90 88 00 00 00 68 36 78 7a 64 8b ce ff
008af0e0: d2 8b 06 8b 90 88 00 00 00 68 5f 76 6a a2 8b ce
008af0f0: ff d2 8b 06 8b 90 88 00 00 00 68 2b 68 3d 70 8b
008af100: ce ff d2 8b 06 8b 90 88 00 00 00 68 f2 72 f8 e1
008af110: 8b ce ff d2 8b 06 8b 90 88 00 00 00 68 aa 5b 52
008af120: 15 8b ce ff d2 8b 06 8b 90 88 00 00 00 68 ec 7e
008af130: 04 fc 8b ce ff d2 8b 07 8b 50 24 8d 4c 24 0f 51
008af140: 68 d4 a4 d2 12 8b cf ff d2 84 c0 74 17 80 7c 24
008af150: 0f 00 74 09 80 8e d0 00 00 00 08 eb 07 80 a6 d0
008af160: 00 00 00 f7 8b 07 8b 50 24 53 8d 9e ad 00 00 00
008af170: 53 68 18 82 d0 6d 8b cf ff d2 8b 07 8b 50 24 8d
008af180: 8e b0 00 00 00 51 68 92 41 13 ba 8b cf ff d2 8b
008af190: 07 8b 50 2c 8d 8e 3c 03 00 00 51 68 f9 f4 f7 ba
008af1a0: 8b cf ff d2 8b 07 8b 50 38 8d 8e 40 03 00 00 51
008af1b0: 68 cc 8a f2 07 8b cf ff d2 8b 07 8b 50 2c 8d 8e
008af1c0: b4 00 00 00 51 68 d5 36 1f ed 8b cf ff d2 8b 07
008af1d0: 8b 50 2c 8d 8e f0 00 00 00 51 68 bd c2 10 66 8b
008af1e0: cf ff d2 8b 07 8b 50 30 8d 4e 74 51 68 b8 ce 42
008af1f0: c7 8b cf ff d2 80 be cd 0a 00 00 00 74 08 80 3b
008af200: 00 74 03 c6 03 00 e8 f5 0b 00 00 8b 10 8b c8 8b
008af210: 82 e4 01 00 00 ff d0 8b 17 8b 52 1c 8b d8 8d 44
008af220: 24 14 50 53 8b cf ff d2 84 c0 75 1b 8b 07 8b 50
008af230: 1c 8d 4c 24 14 51 68 1e d9 1e 70 8b cf ff d2 84
008af240: c0 0f 84 ec 00 00 00 8b 44 24 14 f6 40 08 30 0f
008af250: 84 93 00 00 00 ba 01 00 00 00 39 50 18 0f 86 85
008af260: 00 00 00 8b 8e e8 02 00 00 3b cd 8d 9e e8 02 00
008af270: 00 74 1d 89 2b 8b 41 04 83 c0 ff 3b c5 89 41 04
008af280: 75 0a 89 51 04 8b 01 52 8b 10 ff d2 8b 44 24 14
008af290: 66 8b 68 08 66 83 e5 30 74 05 8b 48 18 eb 09 33
008af2a0: c9 66 39 48 0a 0f 95 c1 66 85 ed 74 05 8b 40 10
008af2b0: eb 0e 66 83 78 0a 00 74 05 83 c0 10 eb 02 33 c0
008af2c0: 8b 54 24 20 8b 2a 53 51 8b 4e 38 50 8b 46 3c 50
008af2d0: 51 8b ca 8b 95 94 01 00 00 ff d2 8b 0b 6a 00 e8
008af2e0: bc 43 ff ff 33 ed eb 4b 8b 07 8b 50 34 8d 4c 24
008af2f0: 30 51 53 8b cf 89 6c 24 38 89 6c 24 3c 89 6c 24
008af300: 40 89 6c 24 44 ff d2 84 c0 75 13 8b 07 8b 50 34
008af310: 8d 4c 24 30 51 68 1e d9 1e 70 8b cf ff d2 8b 44
008af320: 24 30 8b 4c 24 34 8b 54 24 3c 89 46 48 89 4e 4c
008af330: 89 56 50 68 7c 31 70 0f 57 8d 8e e0 0a 00 00 e8
008af340: 6c b0 ff ff 68 8e b3 d0 09 57 8d 8e 40 0e 00 00
008af350: e8 5b b0 ff ff 68 10 27 3c 17 57 8d 8e a0 11 00
008af360: 00 e8 4a b0 ff ff 8b 07 8b 40 48 8d 4c 24 28 51
008af370: 8d 54 24 28 52 68 ac 37 fc 9b 8b cf ff d0 84 c0
008af380: 74 21 8b 4c 24 24 8b 54 24 28 81 8e dc 0a 00 00
008af390: 00 40 00 00 d1 f9 51 52 8d 8e 00 15 00 00 e8 ed
008af3a0: ab ff ff 8b 8e e8 02 00 00 3b cd 74 30 e8 de 40
008af3b0: ff ff 85 c0 74 27 8b 8e e8 02 00 00 8d 44 24 30
008af3c0: 50 e8 6a 41 ff ff 8b 08 89 4e 48 8b 50 04 89 56
008af3d0: 4c 8b 48 08 89 4e 50 8b 50 0c 89 56 54 8b 07 8b
008af3e0: 40 4c 8d 4c 24 1c 51 8d 54 24 1c 52 68 35 1a b8
008af3f0: 7c 8b cf ff d0 84 c0 74 61 39 6c 24 18 74 5b 8d
008af400: ae f0 02 00 00 8b 44 24 1c 83 6c 24 18 01 8b 18
008af410: 8b 4c 24 20 8b 11 83 c0 04 89 44 24 1c 8d 46 04
008af420: 50 8b 82 34 01 00 00 53 89 5c 24 34 ff d0 8b 45
008af430: 04 3b 45 08 73 0e 85 c0 8d 48 04 89 4d 04 74 11
008af440: 89 18 eb 0d 8d 54 24 2c 52 50 8b cd e8 9f 37 ba
008af450: ff 83 7c 24 18 00 75 ad 33 ed 8b 07 8b 50 40 68
008af460: 83 9c e0 2f 8b cf ff d2 8b f8 3b fd 5b 74 18 e8
008af470: 8c 09 00 00 8b 10 8b c8 8b 82 10 01 00 00 57 ff
008af480: d0 89 86 2c 03 00 00 8b 16 8b 82 84 00 00 00 8b
008af490: ce ff d0 5f 5e b0 01 5d 83 c4 30 c3 cc cc cc cc
008af4a0: 51 56 8b 74 24 0c 85 f6 89 4c 24 04 0f 84 1a 01
008af4b0: 00 00 8a 06 84 c0 0f 84 10 01 00 00 0f be c0 55
008af4c0: 8b 2d 9c 66 f9 00 50 ff d5 83 c4 04 85 c0 75 11
008af4d0: 0f be 4e 01 83 c6 01 51 ff d5 83 c4 04 85 c0 74
008af4e0: ef 8a 06 84 c0 0f 84 e0 00 00 00 53 57 8d 49 00
008af4f0: 0f be d0 52 8b fe ff d5 83 c4 04 85 c0 74 12 90
008af500: 0f be 47 01 83 c7 01 50 ff d5 83 c4 04 85 c0 75
008af510: ef 3b f7 bb c5 9d 1c 81 89 5c 24 18 73 24 8b ff
008af520: 8a 06 0f b6 c8 51 83 c6 01 ff 15 c0 66 f9 00 69
008af530: db 93 01 00 01 83 c4 04 33 d8 3b f7 72 e2 89 5c
008af540: 24 18 8b 4c 24 10 8b 81 f4 02 00 00 81 c1 f0 02
008af550: 00 00 3b 41 08 73 0e 85 c0 8d 50 04 89 51 04 74
008af560: 13 89 18 eb 0f 8d 54 24 18 52 50 e8 80 36 ba ff
008af570: 8b 5c 24 18 8b 7c 24 10 85 ff 74 05 83 c7 04 eb
008af580: 02 33 ff e8 78 08 00 00 8b 10 57 8b c8 8b 82 34
008af590: 01 00 00 53 ff d0 8a 06 84 c0 74 2d 8d 64 24 00
008af5a0: 0f be c8 51 ff d5 83 c4 04 85 c0 75 12 8a 46 01
008af5b0: 83 c6 01 84 c0 75 e9 5f 5b 5d 5e 59 c2 04 00 8a
008af5c0: 06 84 c0 0f 85 27 ff ff ff 5f 5b 5d 5e 59 c2 04
008af5d0: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008aee90 <.text+0x4ade90>:
  8aee90:	83 ec 30                                        	sub    esp,0x30
  8aee93:	55                                              	push   ebp
  8aee94:	56                                              	push   esi
  8aee95:	8b f1                                           	mov    esi,ecx
  8aee97:	8b 86 50 03 00 00                               	mov    eax,DWORD PTR [esi+0x350]
  8aee9d:	8b 8e 4c 03 00 00                               	mov    ecx,DWORD PTR [esi+0x34c]
  8aeea3:	57                                              	push   edi
  8aeea4:	8d be 48 03 00 00                               	lea    edi,[esi+0x348]
  8aeeaa:	50                                              	push   eax
  8aeeab:	51                                              	push   ecx
  8aeeac:	8b cf                                           	mov    ecx,edi
  8aeeae:	e8 4d 36 ff ff                                  	call   0x8a2500
  8aeeb3:	33 ed                                           	xor    ebp,ebp
  8aeeb5:	89 6f 0c                                        	mov    DWORD PTR [edi+0xc],ebp
  8aeeb8:	8b 96 a0 08 00 00                               	mov    edx,DWORD PTR [esi+0x8a0]
  8aeebe:	8b 86 9c 08 00 00                               	mov    eax,DWORD PTR [esi+0x89c]
  8aeec4:	8d be 98 08 00 00                               	lea    edi,[esi+0x898]
  8aeeca:	52                                              	push   edx
  8aeecb:	50                                              	push   eax
  8aeecc:	8b cf                                           	mov    ecx,edi
  8aeece:	e8 2d 36 ff ff                                  	call   0x8a2500
  8aeed3:	89 6f 0c                                        	mov    DWORD PTR [edi+0xc],ebp
  8aeed6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8aeed8:	8b 82 ac 00 00 00                               	mov    eax,DWORD PTR [edx+0xac]
  8aeede:	8b ce                                           	mov    ecx,esi
  8aeee0:	ff d0                                           	call   eax
  8aeee2:	e8 19 0f 00 00                                  	call   0x8afe00
  8aeee7:	3b c5                                           	cmp    eax,ebp
  8aeee9:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  8aeeed:	75 09                                           	jne    0x8aeef8
  8aeeef:	5f                                              	pop    edi
  8aeef0:	5e                                              	pop    esi
  8aeef1:	32 c0                                           	xor    al,al
  8aeef3:	5d                                              	pop    ebp
  8aeef4:	83 c4 30                                        	add    esp,0x30
  8aeef7:	c3                                              	ret
  8aeef8:	8b 4e 38                                        	mov    ecx,DWORD PTR [esi+0x38]
  8aeefb:	8b 56 3c                                        	mov    edx,DWORD PTR [esi+0x3c]
  8aeefe:	8b 86 f4 00 00 00                               	mov    eax,DWORD PTR [esi+0xf4]
  8aef04:	89 4e 48                                        	mov    DWORD PTR [esi+0x48],ecx
  8aef07:	8d be f4 00 00 00                               	lea    edi,[esi+0xf4]
  8aef0d:	8d 8e d4 0a 00 00                               	lea    ecx,[esi+0xad4]
  8aef13:	51                                              	push   ecx
  8aef14:	89 56 4c                                        	mov    DWORD PTR [esi+0x4c],edx
  8aef17:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  8aef1a:	68 b2 7d 99 51                                  	push   0x51997db2
  8aef1f:	8b cf                                           	mov    ecx,edi
  8aef21:	ff d2                                           	call   edx
  8aef23:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8aef25:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  8aef28:	8d 8e d8 0a 00 00                               	lea    ecx,[esi+0xad8]
  8aef2e:	51                                              	push   ecx
  8aef2f:	68 d6 19 ec d9                                  	push   0xd9ec19d6
  8aef34:	8b cf                                           	mov    ecx,edi
  8aef36:	ff d2                                           	call   edx
  8aef38:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8aef3a:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  8aef3d:	8d 8e af 00 00 00                               	lea    ecx,[esi+0xaf]
  8aef43:	51                                              	push   ecx
  8aef44:	68 a3 03 90 fd                                  	push   0xfd9003a3
  8aef49:	8b cf                                           	mov    ecx,edi
  8aef4b:	ff d2                                           	call   edx
  8aef4d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8aef4f:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  8aef52:	8d 8e c8 0a 00 00                               	lea    ecx,[esi+0xac8]
  8aef58:	51                                              	push   ecx
  8aef59:	68 39 25 f4 b1                                  	push   0xb1f42539
  8aef5e:	8b cf                                           	mov    ecx,edi
  8aef60:	ff d2                                           	call   edx
  8aef62:	84 c0                                           	test   al,al
  8aef64:	74 0a                                           	je     0x8aef70
  8aef66:	81 8e dc 0a 00 00 00 04 00 00                   	or     DWORD PTR [esi+0xadc],0x400
  8aef70:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8aef72:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  8aef75:	8d 4c 24 0e                                     	lea    ecx,[esp+0xe]
  8aef79:	51                                              	push   ecx
  8aef7a:	68 42 ef da d1                                  	push   0xd1daef42
  8aef7f:	8b cf                                           	mov    ecx,edi
  8aef81:	ff d2                                           	call   edx
  8aef83:	84 c0                                           	test   al,al
  8aef85:	74 11                                           	je     0x8aef98
  8aef87:	80 7c 24 0e 00                                  	cmp    BYTE PTR [esp+0xe],0x0
  8aef8c:	74 0a                                           	je     0x8aef98
  8aef8e:	81 8e dc 0a 00 00 00 10 00 00                   	or     DWORD PTR [esi+0xadc],0x1000
  8aef98:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8aef9a:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  8aef9d:	8d 4c 24 0e                                     	lea    ecx,[esp+0xe]
  8aefa1:	51                                              	push   ecx
  8aefa2:	68 2a eb 57 62                                  	push   0x6257eb2a
  8aefa7:	8b cf                                           	mov    ecx,edi
  8aefa9:	ff d2                                           	call   edx
  8aefab:	84 c0                                           	test   al,al
  8aefad:	74 0e                                           	je     0x8aefbd
  8aefaf:	80 7c 24 0e 00                                  	cmp    BYTE PTR [esp+0xe],0x0
  8aefb4:	74 07                                           	je     0x8aefbd
  8aefb6:	c6 86 cc 0a 00 00 01                            	mov    BYTE PTR [esi+0xacc],0x1
  8aefbd:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8aefbf:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  8aefc2:	8d 4c 24 0e                                     	lea    ecx,[esp+0xe]
  8aefc6:	51                                              	push   ecx
  8aefc7:	68 b9 c7 10 3c                                  	push   0x3c10c7b9
  8aefcc:	8b cf                                           	mov    ecx,edi
  8aefce:	ff d2                                           	call   edx
  8aefd0:	84 c0                                           	test   al,al
  8aefd2:	74 0e                                           	je     0x8aefe2
  8aefd4:	80 7c 24 0e 00                                  	cmp    BYTE PTR [esp+0xe],0x0
  8aefd9:	74 07                                           	je     0x8aefe2
  8aefdb:	c6 86 cd 0a 00 00 01                            	mov    BYTE PTR [esi+0xacd],0x1
  8aefe2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8aefe4:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8aefea:	68 47 a0 06 24                                  	push   0x2406a047
  8aefef:	8b ce                                           	mov    ecx,esi
  8aeff1:	ff d2                                           	call   edx
  8aeff3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8aeff5:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8aeffb:	68 72 6b 61 0f                                  	push   0xf616b72
  8af000:	8b ce                                           	mov    ecx,esi
  8af002:	ff d2                                           	call   edx
  8af004:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af006:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af00c:	68 10 37 59 03                                  	push   0x3593710
  8af011:	8b ce                                           	mov    ecx,esi
  8af013:	ff d2                                           	call   edx
  8af015:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af017:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af01d:	68 f8 b9 e8 29                                  	push   0x29e8b9f8
  8af022:	8b ce                                           	mov    ecx,esi
  8af024:	ff d2                                           	call   edx
  8af026:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af028:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af02e:	68 8e 30 c9 8f                                  	push   0x8fc9308e
  8af033:	8b ce                                           	mov    ecx,esi
  8af035:	ff d2                                           	call   edx
  8af037:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af039:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af03f:	68 42 c2 e7 56                                  	push   0x56e7c242
  8af044:	8b ce                                           	mov    ecx,esi
  8af046:	ff d2                                           	call   edx
  8af048:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af04a:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af050:	68 09 30 bc 71                                  	push   0x71bc3009
  8af055:	8b ce                                           	mov    ecx,esi
  8af057:	ff d2                                           	call   edx
  8af059:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af05b:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af061:	68 96 89 ac 98                                  	push   0x98ac8996
  8af066:	8b ce                                           	mov    ecx,esi
  8af068:	ff d2                                           	call   edx
  8af06a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af06c:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af072:	68 b9 99 ab e8                                  	push   0xe8ab99b9
  8af077:	8b ce                                           	mov    ecx,esi
  8af079:	ff d2                                           	call   edx
  8af07b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af07d:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af083:	68 8e 30 c9 8f                                  	push   0x8fc9308e
  8af088:	8b ce                                           	mov    ecx,esi
  8af08a:	ff d2                                           	call   edx
  8af08c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af08e:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af094:	68 7d 7f 3f 39                                  	push   0x393f7f7d
  8af099:	8b ce                                           	mov    ecx,esi
  8af09b:	ff d2                                           	call   edx
  8af09d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af09f:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af0a5:	68 db 68 eb 49                                  	push   0x49eb68db
  8af0aa:	8b ce                                           	mov    ecx,esi
  8af0ac:	ff d2                                           	call   edx
  8af0ae:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af0b0:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af0b6:	68 17 a7 b7 6e                                  	push   0x6eb7a717
  8af0bb:	8b ce                                           	mov    ecx,esi
  8af0bd:	ff d2                                           	call   edx
  8af0bf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af0c1:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af0c7:	68 08 01 df 25                                  	push   0x25df0108
  8af0cc:	8b ce                                           	mov    ecx,esi
  8af0ce:	ff d2                                           	call   edx
  8af0d0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af0d2:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af0d8:	68 36 78 7a 64                                  	push   0x647a7836
  8af0dd:	8b ce                                           	mov    ecx,esi
  8af0df:	ff d2                                           	call   edx
  8af0e1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af0e3:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af0e9:	68 5f 76 6a a2                                  	push   0xa26a765f
  8af0ee:	8b ce                                           	mov    ecx,esi
  8af0f0:	ff d2                                           	call   edx
  8af0f2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af0f4:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af0fa:	68 2b 68 3d 70                                  	push   0x703d682b
  8af0ff:	8b ce                                           	mov    ecx,esi
  8af101:	ff d2                                           	call   edx
  8af103:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af105:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af10b:	68 f2 72 f8 e1                                  	push   0xe1f872f2
  8af110:	8b ce                                           	mov    ecx,esi
  8af112:	ff d2                                           	call   edx
  8af114:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af116:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af11c:	68 aa 5b 52 15                                  	push   0x15525baa
  8af121:	8b ce                                           	mov    ecx,esi
  8af123:	ff d2                                           	call   edx
  8af125:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8af127:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  8af12d:	68 ec 7e 04 fc                                  	push   0xfc047eec
  8af132:	8b ce                                           	mov    ecx,esi
  8af134:	ff d2                                           	call   edx
  8af136:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af138:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  8af13b:	8d 4c 24 0f                                     	lea    ecx,[esp+0xf]
  8af13f:	51                                              	push   ecx
  8af140:	68 d4 a4 d2 12                                  	push   0x12d2a4d4
  8af145:	8b cf                                           	mov    ecx,edi
  8af147:	ff d2                                           	call   edx
  8af149:	84 c0                                           	test   al,al
  8af14b:	74 17                                           	je     0x8af164
  8af14d:	80 7c 24 0f 00                                  	cmp    BYTE PTR [esp+0xf],0x0
  8af152:	74 09                                           	je     0x8af15d
  8af154:	80 8e d0 00 00 00 08                            	or     BYTE PTR [esi+0xd0],0x8
  8af15b:	eb 07                                           	jmp    0x8af164
  8af15d:	80 a6 d0 00 00 00 f7                            	and    BYTE PTR [esi+0xd0],0xf7
  8af164:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af166:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  8af169:	53                                              	push   ebx
  8af16a:	8d 9e ad 00 00 00                               	lea    ebx,[esi+0xad]
  8af170:	53                                              	push   ebx
  8af171:	68 18 82 d0 6d                                  	push   0x6dd08218
  8af176:	8b cf                                           	mov    ecx,edi
  8af178:	ff d2                                           	call   edx
  8af17a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af17c:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  8af17f:	8d 8e b0 00 00 00                               	lea    ecx,[esi+0xb0]
  8af185:	51                                              	push   ecx
  8af186:	68 92 41 13 ba                                  	push   0xba134192
  8af18b:	8b cf                                           	mov    ecx,edi
  8af18d:	ff d2                                           	call   edx
  8af18f:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af191:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  8af194:	8d 8e 3c 03 00 00                               	lea    ecx,[esi+0x33c]
  8af19a:	51                                              	push   ecx
  8af19b:	68 f9 f4 f7 ba                                  	push   0xbaf7f4f9
  8af1a0:	8b cf                                           	mov    ecx,edi
  8af1a2:	ff d2                                           	call   edx
  8af1a4:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af1a6:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  8af1a9:	8d 8e 40 03 00 00                               	lea    ecx,[esi+0x340]
  8af1af:	51                                              	push   ecx
  8af1b0:	68 cc 8a f2 07                                  	push   0x7f28acc
  8af1b5:	8b cf                                           	mov    ecx,edi
  8af1b7:	ff d2                                           	call   edx
  8af1b9:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af1bb:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  8af1be:	8d 8e b4 00 00 00                               	lea    ecx,[esi+0xb4]
  8af1c4:	51                                              	push   ecx
  8af1c5:	68 d5 36 1f ed                                  	push   0xed1f36d5
  8af1ca:	8b cf                                           	mov    ecx,edi
  8af1cc:	ff d2                                           	call   edx
  8af1ce:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af1d0:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  8af1d3:	8d 8e f0 00 00 00                               	lea    ecx,[esi+0xf0]
  8af1d9:	51                                              	push   ecx
  8af1da:	68 bd c2 10 66                                  	push   0x6610c2bd
  8af1df:	8b cf                                           	mov    ecx,edi
  8af1e1:	ff d2                                           	call   edx
  8af1e3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af1e5:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  8af1e8:	8d 4e 74                                        	lea    ecx,[esi+0x74]
  8af1eb:	51                                              	push   ecx
  8af1ec:	68 b8 ce 42 c7                                  	push   0xc742ceb8
  8af1f1:	8b cf                                           	mov    ecx,edi
  8af1f3:	ff d2                                           	call   edx
  8af1f5:	80 be cd 0a 00 00 00                            	cmp    BYTE PTR [esi+0xacd],0x0
  8af1fc:	74 08                                           	je     0x8af206
  8af1fe:	80 3b 00                                        	cmp    BYTE PTR [ebx],0x0
  8af201:	74 03                                           	je     0x8af206
  8af203:	c6 03 00                                        	mov    BYTE PTR [ebx],0x0
  8af206:	e8 f5 0b 00 00                                  	call   0x8afe00
  8af20b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8af20d:	8b c8                                           	mov    ecx,eax
  8af20f:	8b 82 e4 01 00 00                               	mov    eax,DWORD PTR [edx+0x1e4]
  8af215:	ff d0                                           	call   eax
  8af217:	8b 17                                           	mov    edx,DWORD PTR [edi]
  8af219:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  8af21c:	8b d8                                           	mov    ebx,eax
  8af21e:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  8af222:	50                                              	push   eax
  8af223:	53                                              	push   ebx
  8af224:	8b cf                                           	mov    ecx,edi
  8af226:	ff d2                                           	call   edx
  8af228:	84 c0                                           	test   al,al
  8af22a:	75 1b                                           	jne    0x8af247
  8af22c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af22e:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  8af231:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  8af235:	51                                              	push   ecx
  8af236:	68 1e d9 1e 70                                  	push   0x701ed91e
  8af23b:	8b cf                                           	mov    ecx,edi
  8af23d:	ff d2                                           	call   edx
  8af23f:	84 c0                                           	test   al,al
  8af241:	0f 84 ec 00 00 00                               	je     0x8af333
  8af247:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  8af24b:	f6 40 08 30                                     	test   BYTE PTR [eax+0x8],0x30
  8af24f:	0f 84 93 00 00 00                               	je     0x8af2e8
  8af255:	ba 01 00 00 00                                  	mov    edx,0x1
  8af25a:	39 50 18                                        	cmp    DWORD PTR [eax+0x18],edx
  8af25d:	0f 86 85 00 00 00                               	jbe    0x8af2e8
  8af263:	8b 8e e8 02 00 00                               	mov    ecx,DWORD PTR [esi+0x2e8]
  8af269:	3b cd                                           	cmp    ecx,ebp
  8af26b:	8d 9e e8 02 00 00                               	lea    ebx,[esi+0x2e8]
  8af271:	74 1d                                           	je     0x8af290
  8af273:	89 2b                                           	mov    DWORD PTR [ebx],ebp
  8af275:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  8af278:	83 c0 ff                                        	add    eax,0xffffffff
  8af27b:	3b c5                                           	cmp    eax,ebp
  8af27d:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  8af280:	75 0a                                           	jne    0x8af28c
  8af282:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  8af285:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  8af287:	52                                              	push   edx
  8af288:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8af28a:	ff d2                                           	call   edx
  8af28c:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  8af290:	66 8b 68 08                                     	mov    bp,WORD PTR [eax+0x8]
  8af294:	66 83 e5 30                                     	and    bp,0x30
  8af298:	74 05                                           	je     0x8af29f
  8af29a:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  8af29d:	eb 09                                           	jmp    0x8af2a8
  8af29f:	33 c9                                           	xor    ecx,ecx
  8af2a1:	66 39 48 0a                                     	cmp    WORD PTR [eax+0xa],cx
  8af2a5:	0f 95 c1                                        	setne  cl
  8af2a8:	66 85 ed                                        	test   bp,bp
  8af2ab:	74 05                                           	je     0x8af2b2
  8af2ad:	8b 40 10                                        	mov    eax,DWORD PTR [eax+0x10]
  8af2b0:	eb 0e                                           	jmp    0x8af2c0
  8af2b2:	66 83 78 0a 00                                  	cmp    WORD PTR [eax+0xa],0x0
  8af2b7:	74 05                                           	je     0x8af2be
  8af2b9:	83 c0 10                                        	add    eax,0x10
  8af2bc:	eb 02                                           	jmp    0x8af2c0
  8af2be:	33 c0                                           	xor    eax,eax
  8af2c0:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  8af2c4:	8b 2a                                           	mov    ebp,DWORD PTR [edx]
  8af2c6:	53                                              	push   ebx
  8af2c7:	51                                              	push   ecx
  8af2c8:	8b 4e 38                                        	mov    ecx,DWORD PTR [esi+0x38]
  8af2cb:	50                                              	push   eax
  8af2cc:	8b 46 3c                                        	mov    eax,DWORD PTR [esi+0x3c]
  8af2cf:	50                                              	push   eax
  8af2d0:	51                                              	push   ecx
  8af2d1:	8b ca                                           	mov    ecx,edx
  8af2d3:	8b 95 94 01 00 00                               	mov    edx,DWORD PTR [ebp+0x194]
  8af2d9:	ff d2                                           	call   edx
  8af2db:	8b 0b                                           	mov    ecx,DWORD PTR [ebx]
  8af2dd:	6a 00                                           	push   0x0
  8af2df:	e8 bc 43 ff ff                                  	call   0x8a36a0
  8af2e4:	33 ed                                           	xor    ebp,ebp
  8af2e6:	eb 4b                                           	jmp    0x8af333
  8af2e8:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af2ea:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  8af2ed:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  8af2f1:	51                                              	push   ecx
  8af2f2:	53                                              	push   ebx
  8af2f3:	8b cf                                           	mov    ecx,edi
  8af2f5:	89 6c 24 38                                     	mov    DWORD PTR [esp+0x38],ebp
  8af2f9:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
  8af2fd:	89 6c 24 40                                     	mov    DWORD PTR [esp+0x40],ebp
  8af301:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
  8af305:	ff d2                                           	call   edx
  8af307:	84 c0                                           	test   al,al
  8af309:	75 13                                           	jne    0x8af31e
  8af30b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af30d:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  8af310:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  8af314:	51                                              	push   ecx
  8af315:	68 1e d9 1e 70                                  	push   0x701ed91e
  8af31a:	8b cf                                           	mov    ecx,edi
  8af31c:	ff d2                                           	call   edx
  8af31e:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  8af322:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  8af326:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  8af32a:	89 46 48                                        	mov    DWORD PTR [esi+0x48],eax
  8af32d:	89 4e 4c                                        	mov    DWORD PTR [esi+0x4c],ecx
  8af330:	89 56 50                                        	mov    DWORD PTR [esi+0x50],edx
  8af333:	68 7c 31 70 0f                                  	push   0xf70317c
  8af338:	57                                              	push   edi
  8af339:	8d 8e e0 0a 00 00                               	lea    ecx,[esi+0xae0]
  8af33f:	e8 6c b0 ff ff                                  	call   0x8aa3b0
  8af344:	68 8e b3 d0 09                                  	push   0x9d0b38e
  8af349:	57                                              	push   edi
  8af34a:	8d 8e 40 0e 00 00                               	lea    ecx,[esi+0xe40]
  8af350:	e8 5b b0 ff ff                                  	call   0x8aa3b0
  8af355:	68 10 27 3c 17                                  	push   0x173c2710
  8af35a:	57                                              	push   edi
  8af35b:	8d 8e a0 11 00 00                               	lea    ecx,[esi+0x11a0]
  8af361:	e8 4a b0 ff ff                                  	call   0x8aa3b0
  8af366:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af368:	8b 40 48                                        	mov    eax,DWORD PTR [eax+0x48]
  8af36b:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  8af36f:	51                                              	push   ecx
  8af370:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  8af374:	52                                              	push   edx
  8af375:	68 ac 37 fc 9b                                  	push   0x9bfc37ac
  8af37a:	8b cf                                           	mov    ecx,edi
  8af37c:	ff d0                                           	call   eax
  8af37e:	84 c0                                           	test   al,al
  8af380:	74 21                                           	je     0x8af3a3
  8af382:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  8af386:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  8af38a:	81 8e dc 0a 00 00 00 40 00 00                   	or     DWORD PTR [esi+0xadc],0x4000
  8af394:	d1 f9                                           	sar    ecx,1
  8af396:	51                                              	push   ecx
  8af397:	52                                              	push   edx
  8af398:	8d 8e 00 15 00 00                               	lea    ecx,[esi+0x1500]
  8af39e:	e8 ed ab ff ff                                  	call   0x8a9f90
  8af3a3:	8b 8e e8 02 00 00                               	mov    ecx,DWORD PTR [esi+0x2e8]
  8af3a9:	3b cd                                           	cmp    ecx,ebp
  8af3ab:	74 30                                           	je     0x8af3dd
  8af3ad:	e8 de 40 ff ff                                  	call   0x8a3490
  8af3b2:	85 c0                                           	test   eax,eax
  8af3b4:	74 27                                           	je     0x8af3dd
  8af3b6:	8b 8e e8 02 00 00                               	mov    ecx,DWORD PTR [esi+0x2e8]
  8af3bc:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  8af3c0:	50                                              	push   eax
  8af3c1:	e8 6a 41 ff ff                                  	call   0x8a3530
  8af3c6:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  8af3c8:	89 4e 48                                        	mov    DWORD PTR [esi+0x48],ecx
  8af3cb:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  8af3ce:	89 56 4c                                        	mov    DWORD PTR [esi+0x4c],edx
  8af3d1:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  8af3d4:	89 4e 50                                        	mov    DWORD PTR [esi+0x50],ecx
  8af3d7:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  8af3da:	89 56 54                                        	mov    DWORD PTR [esi+0x54],edx
  8af3dd:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af3df:	8b 40 4c                                        	mov    eax,DWORD PTR [eax+0x4c]
  8af3e2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  8af3e6:	51                                              	push   ecx
  8af3e7:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  8af3eb:	52                                              	push   edx
  8af3ec:	68 35 1a b8 7c                                  	push   0x7cb81a35
  8af3f1:	8b cf                                           	mov    ecx,edi
  8af3f3:	ff d0                                           	call   eax
  8af3f5:	84 c0                                           	test   al,al
  8af3f7:	74 61                                           	je     0x8af45a
  8af3f9:	39 6c 24 18                                     	cmp    DWORD PTR [esp+0x18],ebp
  8af3fd:	74 5b                                           	je     0x8af45a
  8af3ff:	8d ae f0 02 00 00                               	lea    ebp,[esi+0x2f0]
  8af405:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  8af409:	83 6c 24 18 01                                  	sub    DWORD PTR [esp+0x18],0x1
  8af40e:	8b 18                                           	mov    ebx,DWORD PTR [eax]
  8af410:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  8af414:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  8af416:	83 c0 04                                        	add    eax,0x4
  8af419:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  8af41d:	8d 46 04                                        	lea    eax,[esi+0x4]
  8af420:	50                                              	push   eax
  8af421:	8b 82 34 01 00 00                               	mov    eax,DWORD PTR [edx+0x134]
  8af427:	53                                              	push   ebx
  8af428:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  8af42c:	ff d0                                           	call   eax
  8af42e:	8b 45 04                                        	mov    eax,DWORD PTR [ebp+0x4]
  8af431:	3b 45 08                                        	cmp    eax,DWORD PTR [ebp+0x8]
  8af434:	73 0e                                           	jae    0x8af444
  8af436:	85 c0                                           	test   eax,eax
  8af438:	8d 48 04                                        	lea    ecx,[eax+0x4]
  8af43b:	89 4d 04                                        	mov    DWORD PTR [ebp+0x4],ecx
  8af43e:	74 11                                           	je     0x8af451
  8af440:	89 18                                           	mov    DWORD PTR [eax],ebx
  8af442:	eb 0d                                           	jmp    0x8af451
  8af444:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  8af448:	52                                              	push   edx
  8af449:	50                                              	push   eax
  8af44a:	8b cd                                           	mov    ecx,ebp
  8af44c:	e8 9f 37 ba ff                                  	call   0x452bf0
  8af451:	83 7c 24 18 00                                  	cmp    DWORD PTR [esp+0x18],0x0
  8af456:	75 ad                                           	jne    0x8af405
  8af458:	33 ed                                           	xor    ebp,ebp
  8af45a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  8af45c:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
  8af45f:	68 83 9c e0 2f                                  	push   0x2fe09c83
  8af464:	8b cf                                           	mov    ecx,edi
  8af466:	ff d2                                           	call   edx
  8af468:	8b f8                                           	mov    edi,eax
  8af46a:	3b fd                                           	cmp    edi,ebp
  8af46c:	5b                                              	pop    ebx
  8af46d:	74 18                                           	je     0x8af487
  8af46f:	e8 8c 09 00 00                                  	call   0x8afe00
  8af474:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8af476:	8b c8                                           	mov    ecx,eax
  8af478:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  8af47e:	57                                              	push   edi
  8af47f:	ff d0                                           	call   eax
  8af481:	89 86 2c 03 00 00                               	mov    DWORD PTR [esi+0x32c],eax
  8af487:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8af489:	8b 82 84 00 00 00                               	mov    eax,DWORD PTR [edx+0x84]
  8af48f:	8b ce                                           	mov    ecx,esi
  8af491:	ff d0                                           	call   eax
  8af493:	5f                                              	pop    edi
  8af494:	5e                                              	pop    esi
  8af495:	b0 01                                           	mov    al,0x1
  8af497:	5d                                              	pop    ebp
  8af498:	83 c4 30                                        	add    esp,0x30
  8af49b:	c3                                              	ret
  8af49c:	cc                                              	int3
  8af49d:	cc                                              	int3
  8af49e:	cc                                              	int3
  8af49f:	cc                                              	int3
  8af4a0:	51                                              	push   ecx
  8af4a1:	56                                              	push   esi
  8af4a2:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  8af4a6:	85 f6                                           	test   esi,esi
  8af4a8:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  8af4ac:	0f 84 1a 01 00 00                               	je     0x8af5cc
  8af4b2:	8a 06                                           	mov    al,BYTE PTR [esi]
  8af4b4:	84 c0                                           	test   al,al
  8af4b6:	0f 84 10 01 00 00                               	je     0x8af5cc
  8af4bc:	0f be c0                                        	movsx  eax,al
  8af4bf:	55                                              	push   ebp
  8af4c0:	8b 2d 9c 66 f9 00                               	mov    ebp,DWORD PTR ds:0xf9669c
  8af4c6:	50                                              	push   eax
  8af4c7:	ff d5                                           	call   ebp
  8af4c9:	83 c4 04                                        	add    esp,0x4
  8af4cc:	85 c0                                           	test   eax,eax
  8af4ce:	75 11                                           	jne    0x8af4e1
  8af4d0:	0f be 4e 01                                     	movsx  ecx,BYTE PTR [esi+0x1]
  8af4d4:	83 c6 01                                        	add    esi,0x1
  8af4d7:	51                                              	push   ecx
  8af4d8:	ff d5                                           	call   ebp
  8af4da:	83 c4 04                                        	add    esp,0x4
  8af4dd:	85 c0                                           	test   eax,eax
  8af4df:	74 ef                                           	je     0x8af4d0
  8af4e1:	8a 06                                           	mov    al,BYTE PTR [esi]
  8af4e3:	84 c0                                           	test   al,al
  8af4e5:	0f 84 e0 00 00 00                               	je     0x8af5cb
  8af4eb:	53                                              	push   ebx
  8af4ec:	57                                              	push   edi
  8af4ed:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  8af4f0:	0f be d0                                        	movsx  edx,al
  8af4f3:	52                                              	push   edx
  8af4f4:	8b fe                                           	mov    edi,esi
  8af4f6:	ff d5                                           	call   ebp
  8af4f8:	83 c4 04                                        	add    esp,0x4
  8af4fb:	85 c0                                           	test   eax,eax
  8af4fd:	74 12                                           	je     0x8af511
  8af4ff:	90                                              	nop
  8af500:	0f be 47 01                                     	movsx  eax,BYTE PTR [edi+0x1]
  8af504:	83 c7 01                                        	add    edi,0x1
  8af507:	50                                              	push   eax
  8af508:	ff d5                                           	call   ebp
  8af50a:	83 c4 04                                        	add    esp,0x4
  8af50d:	85 c0                                           	test   eax,eax
  8af50f:	75 ef                                           	jne    0x8af500
  8af511:	3b f7                                           	cmp    esi,edi
  8af513:	bb c5 9d 1c 81                                  	mov    ebx,0x811c9dc5
  8af518:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  8af51c:	73 24                                           	jae    0x8af542
  8af51e:	8b ff                                           	mov    edi,edi
  8af520:	8a 06                                           	mov    al,BYTE PTR [esi]
  8af522:	0f b6 c8                                        	movzx  ecx,al
  8af525:	51                                              	push   ecx
  8af526:	83 c6 01                                        	add    esi,0x1
  8af529:	ff 15 c0 66 f9 00                               	call   DWORD PTR ds:0xf966c0
  8af52f:	69 db 93 01 00 01                               	imul   ebx,ebx,0x1000193
  8af535:	83 c4 04                                        	add    esp,0x4
  8af538:	33 d8                                           	xor    ebx,eax
  8af53a:	3b f7                                           	cmp    esi,edi
  8af53c:	72 e2                                           	jb     0x8af520
  8af53e:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  8af542:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  8af546:	8b 81 f4 02 00 00                               	mov    eax,DWORD PTR [ecx+0x2f4]
  8af54c:	81 c1 f0 02 00 00                               	add    ecx,0x2f0
  8af552:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  8af555:	73 0e                                           	jae    0x8af565
  8af557:	85 c0                                           	test   eax,eax
  8af559:	8d 50 04                                        	lea    edx,[eax+0x4]
  8af55c:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  8af55f:	74 13                                           	je     0x8af574
  8af561:	89 18                                           	mov    DWORD PTR [eax],ebx
  8af563:	eb 0f                                           	jmp    0x8af574
  8af565:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  8af569:	52                                              	push   edx
  8af56a:	50                                              	push   eax
  8af56b:	e8 80 36 ba ff                                  	call   0x452bf0
  8af570:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  8af574:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  8af578:	85 ff                                           	test   edi,edi
  8af57a:	74 05                                           	je     0x8af581
  8af57c:	83 c7 04                                        	add    edi,0x4
  8af57f:	eb 02                                           	jmp    0x8af583
  8af581:	33 ff                                           	xor    edi,edi
  8af583:	e8 78 08 00 00                                  	call   0x8afe00
  8af588:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8af58a:	57                                              	push   edi
  8af58b:	8b c8                                           	mov    ecx,eax
  8af58d:	8b 82 34 01 00 00                               	mov    eax,DWORD PTR [edx+0x134]
  8af593:	53                                              	push   ebx
  8af594:	ff d0                                           	call   eax
  8af596:	8a 06                                           	mov    al,BYTE PTR [esi]
  8af598:	84 c0                                           	test   al,al
  8af59a:	74 2d                                           	je     0x8af5c9
  8af59c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  8af5a0:	0f be c8                                        	movsx  ecx,al
  8af5a3:	51                                              	push   ecx
  8af5a4:	ff d5                                           	call   ebp
  8af5a6:	83 c4 04                                        	add    esp,0x4
  8af5a9:	85 c0                                           	test   eax,eax
  8af5ab:	75 12                                           	jne    0x8af5bf
  8af5ad:	8a 46 01                                        	mov    al,BYTE PTR [esi+0x1]
  8af5b0:	83 c6 01                                        	add    esi,0x1
  8af5b3:	84 c0                                           	test   al,al
  8af5b5:	75 e9                                           	jne    0x8af5a0
  8af5b7:	5f                                              	pop    edi
  8af5b8:	5b                                              	pop    ebx
  8af5b9:	5d                                              	pop    ebp
  8af5ba:	5e                                              	pop    esi
  8af5bb:	59                                              	pop    ecx
  8af5bc:	c2 04 00                                        	ret    0x4
  8af5bf:	8a 06                                           	mov    al,BYTE PTR [esi]
  8af5c1:	84 c0                                           	test   al,al
  8af5c3:	0f 85 27 ff ff ff                               	jne    0x8af4f0
  8af5c9:	5f                                              	pop    edi
  8af5ca:	5b                                              	pop    ebx
  8af5cb:	5d                                              	pop    ebp
  8af5cc:	5e                                              	pop    esi
  8af5cd:	59                                              	pop    ecx
  8af5ce:	c2 04 00                                        	ret    0x4
  8af5d1:	cc                                              	int3
  8af5d2:	cc                                              	int3
  8af5d3:	cc                                              	int3
  8af5d4:	cc                                              	int3
  8af5d5:	cc                                              	int3
  8af5d6:	cc                                              	int3
  8af5d7:	cc                                              	int3
  8af5d8:	cc                                              	int3
  8af5d9:	cc                                              	int3
  8af5da:	cc                                              	int3
  8af5db:	cc                                              	int3
  8af5dc:	cc                                              	int3
  8af5dd:	cc                                              	int3
  8af5de:	cc                                              	int3
  8af5df:	cc                                              	int3
