# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10983c30 (ContentManager_ExportWorld)
Paired Ghidra pseudocode: 10983C30_ContentManager_ExportWorld.c
Window: [0x10983c30, 0x10984510) (2272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10984510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10983c30: 81 ec e4 0b 00 00 56 8b b4 24 ec 0b 00 00 57 56
10983c40: 8d 8c 24 e0 07 00 00 e8 44 e7 f9 ff 68 00 01 00
10983c50: 00 8d 84 24 e0 05 00 00 50 8d 8c 24 e4 07 00 00
10983c60: e8 db e3 f9 ff 8d 8c 24 dc 05 00 00 51 e8 0e fd
10983c70: c3 ff 89 44 24 0c 8b 84 24 18 0c 00 00 89 44 24
10983c80: 18 83 c4 04 c1 e8 18 6a 01 25 01 ff ff ff 50 8d
10983c90: 4c 24 7c 89 54 24 14 c7 44 24 18 92 1f bc 06 e8
10983ca0: bc 5d 77 ff 8b 94 24 18 0c 00 00 6a 00 8d 44 24
10983cb0: 0c 50 8d 8c 24 c4 00 00 00 89 94 24 c0 00 00 00
10983cc0: e8 eb 23 e1 ff 66 83 3e 00 8b c6 74 0c 8d 49 00
10983cd0: 83 c0 02 66 83 38 00 75 f7 2b c6 d1 f8 8d 0c 46
10983ce0: 51 56 8d 8c 24 44 01 00 00 e8 d2 bb 69 ff 8b 8c
10983cf0: 24 f4 0b 00 00 8b c1 8d 78 01 8d 9b 00 00 00 00
10983d00: 8a 10 83 c0 01 84 d2 75 f7 2b c7 03 c1 50 51 8d
10983d10: 8c 24 d4 00 00 00 e8 85 ab 68 ff 8b 8c 24 f8 0b
10983d20: 00 00 8b c1 8d 78 01 8a 10 83 c0 01 84 d2 75 f7
10983d30: 2b c7 03 c1 50 51 8d 8c 24 e4 00 00 00 e8 5e ab
10983d40: 68 ff 6a 00 8d 4c 24 68 e8 33 f8 fa ff 6a 00 56
10983d50: 8d 8c 24 4c 02 00 00 e8 74 b2 f5 ff 8d 8c 24 44
10983d60: 02 00 00 e8 48 75 d8 ff 84 c0 0f 84 9c 00 00 00
10983d70: 6a 00 6a 06 6a 01 8d 8c 24 50 02 00 00 e8 de 9b
10983d80: f5 ff 84 c0 0f 84 82 00 00 00 6a 01 8d 94 24 48
10983d90: 02 00 00 52 8d 4c 24 4c e8 f3 6a c4 ff 8d 8c 24
10983da0: a4 01 00 00 e8 87 82 a1 ff 6a 00 8d 44 24 48 50
10983db0: 8d 8c 24 ac 01 00 00 e8 04 87 a1 ff 84 c0 74 1f
10983dc0: 8d 8c 24 f4 01 00 00 51 8d 4c 24 0c e8 ef f7 fa
10983dd0: ff 8d 54 24 08 52 8d 4c 24 68 e8 e1 f7 fa ff 8d
10983de0: 8c 24 44 02 00 00 e8 f5 af f5 ff 8d 8c 24 44 02
10983df0: 00 00 e8 69 8f f5 ff 8d 8c 24 a4 01 00 00 e8 ed
10983e00: 82 a1 ff 8d 4c 24 44 e8 f4 6a c4 ff 6a 00 8d 4c
10983e10: 24 0c e8 69 f7 fa ff 8d 44 24 08 50 8d 4c 24 68
10983e20: 51 e8 4a f8 fa ff 83 c4 08 84 c0 74 6d 8d 8c 24
10983e30: 44 02 00 00 e8 97 a7 f5 ff 8d 8c 24 bc 00 00 00
10983e40: e8 9b b9 77 ff 8b 94 24 a0 00 00 00 8b 84 24 98
10983e50: 00 00 00 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74
10983e60: 09 50 e8 29 50 f9 ff 83 c4 04 8b 8c 24 90 00 00
10983e70: 00 8b 84 24 88 00 00 00 2b c8 83 e1 fe 83 f9 02
10983e80: 7e 0d 85 c0 74 09 50 e8 04 50 f9 ff 83 c4 04 5f
10983e90: 32 c0 5e 81 c4 e4 0b 00 00 c3 53 55 8d 54 24 6c
10983ea0: 52 8d 8c 24 fc 00 00 00 e8 13 f7 fa ff 8b 84 24
10983eb0: 04 0c 00 00 85 c0 0f 8e 55 02 00 00 8b 8c 24 0c
10983ec0: 0c 00 00 8b 94 24 08 0c 00 00 2b d1 89 4c 24 24
10983ed0: 89 54 24 68 89 44 24 28 eb 06 8d 9b 00 00 00 00
10983ee0: 8b 44 24 68 8b 74 24 24 8b 0c 30 66 83 39 00 bb
10983ef0: 44 82 ca 10 bf 46 82 ca 10 c7 44 24 58 b4 66 b9
10983f00: 10 89 5c 24 4c 89 5c 24 50 89 7c 24 54 c7 44 24
10983f10: 1c 84 66 b9 10 89 5c 24 10 89 5c 24 14 89 7c 24
10983f20: 18 8b c1 74 09 83 c0 02 66 83 38 00 75 f7 2b c1
10983f30: d1 f8 8d 14 41 52 51 8d 4c 24 54 e8 80 b9 69 ff
10983f40: 8b 0e 66 83 39 00 8b c1 74 0f 8d 9b 00 00 00 00
10983f50: 83 c0 02 66 83 38 00 75 f7 2b c1 d1 f8 8d 04 41
10983f60: 50 51 8d 4c 24 18 e8 55 b9 69 ff 8b 74 24 50 8b
10983f70: 6c 24 4c 8b 4c 24 58 2b f5 d1 fe 8d 46 01 83 f8
10983f80: 01 89 4c 24 38 76 26 68 e7 00 00 00 68 d0 df aa
10983f90: 10 6a 00 6a 00 8d 3c 00 51 57 e8 11 4f f9 ff 8b
10983fa0: d8 8d 0c 3b 83 c4 18 89 4c 24 34 eb 04 89 7c 24
10983fb0: 34 03 f6 56 55 53 89 5c 24 38 ff 15 00 b6 aa 10
10983fc0: 8b 4c 24 28 03 f3 89 74 24 3c 66 c7 06 00 00 8b
10983fd0: 74 24 20 2b 74 24 1c 83 c4 0c d1 fe 8d 46 01 83
10983fe0: f8 01 89 4c 24 48 76 21 68 e7 00 00 00 68 d0 df
10983ff0: aa 10 6a 00 6a 00 8d 2c 00 51 55 e8 b0 4e f9 ff
10984000: 8b f8 83 c4 18 03 ef eb 0a bf 44 82 ca 10 bd 46
10984010: 82 ca 10 8b 54 24 10 03 f6 56 52 57 89 6c 24 50
10984020: 89 7c 24 48 ff 15 00 b6 aa 10 03 f7 66 c7 06 00
10984030: 00 8b 84 24 64 01 00 00 83 c4 0c 3b 84 24 5c 01
10984040: 00 00 89 74 24 40 73 2b 8b f0 83 c0 20 85 f6 89
10984050: 84 24 58 01 00 00 74 39 8d 44 24 2c 50 8b ce e8
10984060: bc 62 6e ff 8d 4c 24 3c 51 8d 4e 10 e8 af 62 6e
10984070: ff eb 1e 8d 54 24 2c 52 50 8d 8c 24 5c 01 00 00
10984080: e8 cb 0c e2 ff 8b 6c 24 44 8b 7c 24 3c 8b 5c 24
10984090: 2c 2b ef 83 e5 fe 83 fd 02 7e 0d 85 ff 74 09 57
109840a0: e8 eb 4d f9 ff 83 c4 04 8b 44 24 34 2b c3 83 e0
109840b0: fe 83 f8 02 7e 0d 85 db 74 09 53 e8 d0 4d f9 ff
109840c0: 83 c4 04 8b 4c 24 18 8b 44 24 10 2b c8 83 e1 fe
109840d0: 83 f9 02 7e 0d 85 c0 74 09 50 e8 b1 4d f9 ff 83
109840e0: c4 04 8b 54 24 54 8b 44 24 4c 2b d0 83 e2 fe 83
109840f0: fa 02 7e 0d 85 c0 74 09 50 e8 92 4d f9 ff 83 c4
10984100: 04 83 44 24 24 04 83 6c 24 28 01 0f 85 cf fd ff
10984110: ff 8b 8c 24 10 0c 00 00 85 c9 0f 8e 62 03 00 00
10984120: 8b 84 24 18 0c 00 00 8b 94 24 14 0c 00 00 2b d0
10984130: 89 44 24 24 89 54 24 68 89 4c 24 28 8d 64 24 00
10984140: 8b 44 24 68 8b 74 24 24 8b 0c 30 66 83 39 00 bb
10984150: 44 82 ca 10 bf 46 82 ca 10 c7 44 24 1c 54 66 b9
10984160: 10 89 5c 24 10 89 5c 24 14 89 7c 24 18 c7 44 24
10984170: 58 28 66 b9 10 89 5c 24 4c 89 5c 24 50 89 7c 24
10984180: 54 8b c1 74 09 83 c0 02 66 83 38 00 75 f7 2b c1
10984190: d1 f8 8d 14 41 52 51 8d 4c 24 18 e8 20 b7 69 ff
109841a0: 8b 0e 66 83 39 00 8b c1 74 0f 8d 9b 00 00 00 00
109841b0: 83 c0 02 66 83 38 00 75 f7 2b c1 d1 f8 8d 04 41
109841c0: 50 51 8d 4c 24 54 e8 f5 b6 69 ff 8b 74 24 14 8b
109841d0: 6c 24 10 8b 4c 24 1c 2b f5 d1 fe 8d 46 01 83 f8
109841e0: 01 89 4c 24 38 76 26 68 e7 00 00 00 68 d0 df aa
109841f0: 10 6a 00 6a 00 8d 3c 00 51 57 e8 b1 4c f9 ff 8b
10984200: d8 8d 0c 3b 83 c4 18 89 4c 24 34 eb 04 89 7c 24
10984210: 34 03 f6 56 55 53 89 5c 24 38 ff 15 00 b6 aa 10
10984220: 8b 4c 24 64 03 f3 89 74 24 3c 66 c7 06 00 00 8b
10984230: 74 24 5c 2b 74 24 58 83 c4 0c d1 fe 8d 46 01 83
10984240: f8 01 89 4c 24 48 76 26 68 e7 00 00 00 68 d0 df
10984250: aa 10 6a 00 6a 00 8d 2c 00 51 55 e8 50 4c f9 ff
10984260: 8b f8 8d 14 2f 83 c4 18 89 54 24 44 eb 0d bf 44
10984270: 82 ca 10 c7 44 24 44 46 82 ca 10 8b 44 24 4c 03
10984280: f6 56 50 57 89 7c 24 48 ff 15 00 b6 aa 10 8d 2c
10984290: 3e 66 c7 45 00 00 00 8b 84 24 74 01 00 00 83 c4
109842a0: 0c 3b 84 24 6c 01 00 00 89 6c 24 40 0f 83 30 01
109842b0: 00 00 8b f0 83 c0 20 89 84 24 68 01 00 00 33 c0
109842c0: 3b f0 0f 84 34 01 00 00 8b 4c 24 1c 89 06 89 46
109842d0: 04 89 46 08 8b 44 24 30 2b c3 d1 f8 89 44 24 20
109842e0: 83 c0 01 83 f8 01 89 4e 0c 76 30 68 e7 00 00 00
109842f0: 68 d0 df aa 10 6a 00 6a 00 8b d1 03 c0 52 50 89
10984300: 44 24 7c e8 a8 4b f9 ff 8b 4c 24 7c 83 c4 18 89
10984310: 06 89 46 04 03 c1 89 46 08 eb 14 c7 06 44 82 ca
10984320: 10 c7 46 04 44 82 ca 10 c7 46 08 46 82 ca 10 8b
10984330: 4c 24 20 8b 06 03 c9 51 53 50 89 44 24 70 89 4c
10984340: 24 2c ff 15 00 b6 aa 10 8b 54 24 2c 8b 44 24 70
10984350: 33 c9 03 c2 89 46 04 66 89 08 2b ef d1 fd 89 4e
10984360: 10 89 4e 14 89 4e 18 8b 4c 24 64 8d 45 01 83 c4
10984370: 0c 83 f8 01 89 4e 1c 76 31 68 e7 00 00 00 68 d0
10984380: df aa 10 6a 00 6a 00 8b d1 03 c0 52 50 89 44 24
10984390: 38 e8 1a 4b f9 ff 8b 4c 24 38 83 c4 18 89 46 10
109843a0: 89 46 14 03 c1 89 46 18 eb 12 b8 44 82 ca 10 89
109843b0: 46 10 89 46 14 c7 46 18 46 82 ca 10 8b 46 10 03
109843c0: ed 55 57 50 89 44 24 2c ff 15 00 b6 aa 10 8b 54
109843d0: 24 2c 8d 04 2a 89 46 14 83 c4 0c 66 c7 00 00 00
109843e0: eb 1a 8d 4c 24 2c 51 50 8d 8c 24 6c 01 00 00 e8
109843f0: 5c 09 e2 ff 8b 7c 24 3c 8b 5c 24 2c 8b 44 24 44
10984400: 2b c7 83 e0 fe 83 f8 02 7e 0d 85 ff 74 09 57 e8
10984410: 7c 4a f9 ff 83 c4 04 8b 44 24 34 2b c3 83 e0 fe
10984420: 83 f8 02 7e 0d 85 db 74 09 53 e8 61 4a f9 ff 83
10984430: c4 04 8b 54 24 54 8b 44 24 4c 2b d0 83 e2 fe 83
10984440: fa 02 7e 0d 85 c0 74 09 50 e8 42 4a f9 ff 83 c4
10984450: 04 8b 4c 24 18 8b 44 24 10 2b c8 83 e1 fe 83 f9
10984460: 02 7e 0f 85 c0 74 0b 8b d0 52 e8 21 4a f9 ff 83
10984470: c4 04 83 44 24 24 04 83 6c 24 28 01 0f 85 be fc
10984480: ff ff 6a 00 8d 84 24 80 00 00 00 50 8d 8c 24 cc
10984490: 00 00 00 51 e8 77 8d e1 ff 83 c4 0c 8d 8c 24 4c
109844a0: 02 00 00 8a d8 e8 26 a1 f5 ff 8d 8c 24 c4 00 00
109844b0: 00 e8 2a b3 77 ff 8b 94 24 a8 00 00 00 8b 84 24
109844c0: a0 00 00 00 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
109844d0: 74 09 50 e8 b8 49 f9 ff 83 c4 04 8b 8c 24 98 00
109844e0: 00 00 8b 84 24 90 00 00 00 2b c8 83 e1 fe 83 f9
109844f0: 02 7e 0d 85 c0 74 09 50 e8 93 49 f9 ff 83 c4 04
10984500: 5d 8a c3 5b 5f 5e 81 c4 e4 0b 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10983c30 <.text+0x982c30>:
10983c30:	81 ec e4 0b 00 00                               	sub    esp,0xbe4
10983c36:	56                                              	push   esi
10983c37:	8b b4 24 ec 0b 00 00                            	mov    esi,DWORD PTR [esp+0xbec]
10983c3e:	57                                              	push   edi
10983c3f:	56                                              	push   esi
10983c40:	8d 8c 24 e0 07 00 00                            	lea    ecx,[esp+0x7e0]
10983c47:	e8 44 e7 f9 ff                                  	call   0x10922390
10983c4c:	68 00 01 00 00                                  	push   0x100
10983c51:	8d 84 24 e0 05 00 00                            	lea    eax,[esp+0x5e0]
10983c58:	50                                              	push   eax
10983c59:	8d 8c 24 e4 07 00 00                            	lea    ecx,[esp+0x7e4]
10983c60:	e8 db e3 f9 ff                                  	call   0x10922040
10983c65:	8d 8c 24 dc 05 00 00                            	lea    ecx,[esp+0x5dc]
10983c6c:	51                                              	push   ecx
10983c6d:	e8 0e fd c3 ff                                  	call   0x105c3980
10983c72:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10983c76:	8b 84 24 18 0c 00 00                            	mov    eax,DWORD PTR [esp+0xc18]
10983c7d:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10983c81:	83 c4 04                                        	add    esp,0x4
10983c84:	c1 e8 18                                        	shr    eax,0x18
10983c87:	6a 01                                           	push   0x1
10983c89:	25 01 ff ff ff                                  	and    eax,0xffffff01
10983c8e:	50                                              	push   eax
10983c8f:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
10983c93:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10983c97:	c7 44 24 18 92 1f bc 06                         	mov    DWORD PTR [esp+0x18],0x6bc1f92
10983c9f:	e8 bc 5d 77 ff                                  	call   0x100f9a60
10983ca4:	8b 94 24 18 0c 00 00                            	mov    edx,DWORD PTR [esp+0xc18]
10983cab:	6a 00                                           	push   0x0
10983cad:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10983cb1:	50                                              	push   eax
10983cb2:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
10983cb9:	89 94 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],edx
10983cc0:	e8 eb 23 e1 ff                                  	call   0x107960b0
10983cc5:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
10983cc9:	8b c6                                           	mov    eax,esi
10983ccb:	74 0c                                           	je     0x10983cd9
10983ccd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10983cd0:	83 c0 02                                        	add    eax,0x2
10983cd3:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10983cd7:	75 f7                                           	jne    0x10983cd0
10983cd9:	2b c6                                           	sub    eax,esi
10983cdb:	d1 f8                                           	sar    eax,1
10983cdd:	8d 0c 46                                        	lea    ecx,[esi+eax*2]
10983ce0:	51                                              	push   ecx
10983ce1:	56                                              	push   esi
10983ce2:	8d 8c 24 44 01 00 00                            	lea    ecx,[esp+0x144]
10983ce9:	e8 d2 bb 69 ff                                  	call   0x1001f8c0
10983cee:	8b 8c 24 f4 0b 00 00                            	mov    ecx,DWORD PTR [esp+0xbf4]
10983cf5:	8b c1                                           	mov    eax,ecx
10983cf7:	8d 78 01                                        	lea    edi,[eax+0x1]
10983cfa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10983d00:	8a 10                                           	mov    dl,BYTE PTR [eax]
10983d02:	83 c0 01                                        	add    eax,0x1
10983d05:	84 d2                                           	test   dl,dl
10983d07:	75 f7                                           	jne    0x10983d00
10983d09:	2b c7                                           	sub    eax,edi
10983d0b:	03 c1                                           	add    eax,ecx
10983d0d:	50                                              	push   eax
10983d0e:	51                                              	push   ecx
10983d0f:	8d 8c 24 d4 00 00 00                            	lea    ecx,[esp+0xd4]
10983d16:	e8 85 ab 68 ff                                  	call   0x1000e8a0
10983d1b:	8b 8c 24 f8 0b 00 00                            	mov    ecx,DWORD PTR [esp+0xbf8]
10983d22:	8b c1                                           	mov    eax,ecx
10983d24:	8d 78 01                                        	lea    edi,[eax+0x1]
10983d27:	8a 10                                           	mov    dl,BYTE PTR [eax]
10983d29:	83 c0 01                                        	add    eax,0x1
10983d2c:	84 d2                                           	test   dl,dl
10983d2e:	75 f7                                           	jne    0x10983d27
10983d30:	2b c7                                           	sub    eax,edi
10983d32:	03 c1                                           	add    eax,ecx
10983d34:	50                                              	push   eax
10983d35:	51                                              	push   ecx
10983d36:	8d 8c 24 e4 00 00 00                            	lea    ecx,[esp+0xe4]
10983d3d:	e8 5e ab 68 ff                                  	call   0x1000e8a0
10983d42:	6a 00                                           	push   0x0
10983d44:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10983d48:	e8 33 f8 fa ff                                  	call   0x10933580
10983d4d:	6a 00                                           	push   0x0
10983d4f:	56                                              	push   esi
10983d50:	8d 8c 24 4c 02 00 00                            	lea    ecx,[esp+0x24c]
10983d57:	e8 74 b2 f5 ff                                  	call   0x108defd0
10983d5c:	8d 8c 24 44 02 00 00                            	lea    ecx,[esp+0x244]
10983d63:	e8 48 75 d8 ff                                  	call   0x1070b2b0
10983d68:	84 c0                                           	test   al,al
10983d6a:	0f 84 9c 00 00 00                               	je     0x10983e0c
10983d70:	6a 00                                           	push   0x0
10983d72:	6a 06                                           	push   0x6
10983d74:	6a 01                                           	push   0x1
10983d76:	8d 8c 24 50 02 00 00                            	lea    ecx,[esp+0x250]
10983d7d:	e8 de 9b f5 ff                                  	call   0x108dd960
10983d82:	84 c0                                           	test   al,al
10983d84:	0f 84 82 00 00 00                               	je     0x10983e0c
10983d8a:	6a 01                                           	push   0x1
10983d8c:	8d 94 24 48 02 00 00                            	lea    edx,[esp+0x248]
10983d93:	52                                              	push   edx
10983d94:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10983d98:	e8 f3 6a c4 ff                                  	call   0x105ca890
10983d9d:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
10983da4:	e8 87 82 a1 ff                                  	call   0x1039c030
10983da9:	6a 00                                           	push   0x0
10983dab:	8d 44 24 48                                     	lea    eax,[esp+0x48]
10983daf:	50                                              	push   eax
10983db0:	8d 8c 24 ac 01 00 00                            	lea    ecx,[esp+0x1ac]
10983db7:	e8 04 87 a1 ff                                  	call   0x1039c4c0
10983dbc:	84 c0                                           	test   al,al
10983dbe:	74 1f                                           	je     0x10983ddf
10983dc0:	8d 8c 24 f4 01 00 00                            	lea    ecx,[esp+0x1f4]
10983dc7:	51                                              	push   ecx
10983dc8:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10983dcc:	e8 ef f7 fa ff                                  	call   0x109335c0
10983dd1:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10983dd5:	52                                              	push   edx
10983dd6:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10983dda:	e8 e1 f7 fa ff                                  	call   0x109335c0
10983ddf:	8d 8c 24 44 02 00 00                            	lea    ecx,[esp+0x244]
10983de6:	e8 f5 af f5 ff                                  	call   0x108dede0
10983deb:	8d 8c 24 44 02 00 00                            	lea    ecx,[esp+0x244]
10983df2:	e8 69 8f f5 ff                                  	call   0x108dcd60
10983df7:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
10983dfe:	e8 ed 82 a1 ff                                  	call   0x1039c0f0
10983e03:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10983e07:	e8 f4 6a c4 ff                                  	call   0x105ca900
10983e0c:	6a 00                                           	push   0x0
10983e0e:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10983e12:	e8 69 f7 fa ff                                  	call   0x10933580
10983e17:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10983e1b:	50                                              	push   eax
10983e1c:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10983e20:	51                                              	push   ecx
10983e21:	e8 4a f8 fa ff                                  	call   0x10933670
10983e26:	83 c4 08                                        	add    esp,0x8
10983e29:	84 c0                                           	test   al,al
10983e2b:	74 6d                                           	je     0x10983e9a
10983e2d:	8d 8c 24 44 02 00 00                            	lea    ecx,[esp+0x244]
10983e34:	e8 97 a7 f5 ff                                  	call   0x108de5d0
10983e39:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
10983e40:	e8 9b b9 77 ff                                  	call   0x100ff7e0
10983e45:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
10983e4c:	8b 84 24 98 00 00 00                            	mov    eax,DWORD PTR [esp+0x98]
10983e53:	2b d0                                           	sub    edx,eax
10983e55:	83 e2 fe                                        	and    edx,0xfffffffe
10983e58:	83 fa 02                                        	cmp    edx,0x2
10983e5b:	7e 0d                                           	jle    0x10983e6a
10983e5d:	85 c0                                           	test   eax,eax
10983e5f:	74 09                                           	je     0x10983e6a
10983e61:	50                                              	push   eax
10983e62:	e8 29 50 f9 ff                                  	call   0x10918e90
10983e67:	83 c4 04                                        	add    esp,0x4
10983e6a:	8b 8c 24 90 00 00 00                            	mov    ecx,DWORD PTR [esp+0x90]
10983e71:	8b 84 24 88 00 00 00                            	mov    eax,DWORD PTR [esp+0x88]
10983e78:	2b c8                                           	sub    ecx,eax
10983e7a:	83 e1 fe                                        	and    ecx,0xfffffffe
10983e7d:	83 f9 02                                        	cmp    ecx,0x2
10983e80:	7e 0d                                           	jle    0x10983e8f
10983e82:	85 c0                                           	test   eax,eax
10983e84:	74 09                                           	je     0x10983e8f
10983e86:	50                                              	push   eax
10983e87:	e8 04 50 f9 ff                                  	call   0x10918e90
10983e8c:	83 c4 04                                        	add    esp,0x4
10983e8f:	5f                                              	pop    edi
10983e90:	32 c0                                           	xor    al,al
10983e92:	5e                                              	pop    esi
10983e93:	81 c4 e4 0b 00 00                               	add    esp,0xbe4
10983e99:	c3                                              	ret
10983e9a:	53                                              	push   ebx
10983e9b:	55                                              	push   ebp
10983e9c:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
10983ea0:	52                                              	push   edx
10983ea1:	8d 8c 24 fc 00 00 00                            	lea    ecx,[esp+0xfc]
10983ea8:	e8 13 f7 fa ff                                  	call   0x109335c0
10983ead:	8b 84 24 04 0c 00 00                            	mov    eax,DWORD PTR [esp+0xc04]
10983eb4:	85 c0                                           	test   eax,eax
10983eb6:	0f 8e 55 02 00 00                               	jle    0x10984111
10983ebc:	8b 8c 24 0c 0c 00 00                            	mov    ecx,DWORD PTR [esp+0xc0c]
10983ec3:	8b 94 24 08 0c 00 00                            	mov    edx,DWORD PTR [esp+0xc08]
10983eca:	2b d1                                           	sub    edx,ecx
10983ecc:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
10983ed0:	89 54 24 68                                     	mov    DWORD PTR [esp+0x68],edx
10983ed4:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
10983ed8:	eb 06                                           	jmp    0x10983ee0
10983eda:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10983ee0:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
10983ee4:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
10983ee8:	8b 0c 30                                        	mov    ecx,DWORD PTR [eax+esi*1]
10983eeb:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
10983eef:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
10983ef4:	bf 46 82 ca 10                                  	mov    edi,0x10ca8246
10983ef9:	c7 44 24 58 b4 66 b9 10                         	mov    DWORD PTR [esp+0x58],0x10b966b4
10983f01:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
10983f05:	89 5c 24 50                                     	mov    DWORD PTR [esp+0x50],ebx
10983f09:	89 7c 24 54                                     	mov    DWORD PTR [esp+0x54],edi
10983f0d:	c7 44 24 1c 84 66 b9 10                         	mov    DWORD PTR [esp+0x1c],0x10b96684
10983f15:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
10983f19:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10983f1d:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
10983f21:	8b c1                                           	mov    eax,ecx
10983f23:	74 09                                           	je     0x10983f2e
10983f25:	83 c0 02                                        	add    eax,0x2
10983f28:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10983f2c:	75 f7                                           	jne    0x10983f25
10983f2e:	2b c1                                           	sub    eax,ecx
10983f30:	d1 f8                                           	sar    eax,1
10983f32:	8d 14 41                                        	lea    edx,[ecx+eax*2]
10983f35:	52                                              	push   edx
10983f36:	51                                              	push   ecx
10983f37:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10983f3b:	e8 80 b9 69 ff                                  	call   0x1001f8c0
10983f40:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
10983f42:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
10983f46:	8b c1                                           	mov    eax,ecx
10983f48:	74 0f                                           	je     0x10983f59
10983f4a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10983f50:	83 c0 02                                        	add    eax,0x2
10983f53:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10983f57:	75 f7                                           	jne    0x10983f50
10983f59:	2b c1                                           	sub    eax,ecx
10983f5b:	d1 f8                                           	sar    eax,1
10983f5d:	8d 04 41                                        	lea    eax,[ecx+eax*2]
10983f60:	50                                              	push   eax
10983f61:	51                                              	push   ecx
10983f62:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10983f66:	e8 55 b9 69 ff                                  	call   0x1001f8c0
10983f6b:	8b 74 24 50                                     	mov    esi,DWORD PTR [esp+0x50]
10983f6f:	8b 6c 24 4c                                     	mov    ebp,DWORD PTR [esp+0x4c]
10983f73:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
10983f77:	2b f5                                           	sub    esi,ebp
10983f79:	d1 fe                                           	sar    esi,1
10983f7b:	8d 46 01                                        	lea    eax,[esi+0x1]
10983f7e:	83 f8 01                                        	cmp    eax,0x1
10983f81:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
10983f85:	76 26                                           	jbe    0x10983fad
10983f87:	68 e7 00 00 00                                  	push   0xe7
10983f8c:	68 d0 df aa 10                                  	push   0x10aadfd0
10983f91:	6a 00                                           	push   0x0
10983f93:	6a 00                                           	push   0x0
10983f95:	8d 3c 00                                        	lea    edi,[eax+eax*1]
10983f98:	51                                              	push   ecx
10983f99:	57                                              	push   edi
10983f9a:	e8 11 4f f9 ff                                  	call   0x10918eb0
10983f9f:	8b d8                                           	mov    ebx,eax
10983fa1:	8d 0c 3b                                        	lea    ecx,[ebx+edi*1]
10983fa4:	83 c4 18                                        	add    esp,0x18
10983fa7:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
10983fab:	eb 04                                           	jmp    0x10983fb1
10983fad:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
10983fb1:	03 f6                                           	add    esi,esi
10983fb3:	56                                              	push   esi
10983fb4:	55                                              	push   ebp
10983fb5:	53                                              	push   ebx
10983fb6:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
10983fba:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10983fc0:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10983fc4:	03 f3                                           	add    esi,ebx
10983fc6:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
10983fca:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
10983fcf:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
10983fd3:	2b 74 24 1c                                     	sub    esi,DWORD PTR [esp+0x1c]
10983fd7:	83 c4 0c                                        	add    esp,0xc
10983fda:	d1 fe                                           	sar    esi,1
10983fdc:	8d 46 01                                        	lea    eax,[esi+0x1]
10983fdf:	83 f8 01                                        	cmp    eax,0x1
10983fe2:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
10983fe6:	76 21                                           	jbe    0x10984009
10983fe8:	68 e7 00 00 00                                  	push   0xe7
10983fed:	68 d0 df aa 10                                  	push   0x10aadfd0
10983ff2:	6a 00                                           	push   0x0
10983ff4:	6a 00                                           	push   0x0
10983ff6:	8d 2c 00                                        	lea    ebp,[eax+eax*1]
10983ff9:	51                                              	push   ecx
10983ffa:	55                                              	push   ebp
10983ffb:	e8 b0 4e f9 ff                                  	call   0x10918eb0
10984000:	8b f8                                           	mov    edi,eax
10984002:	83 c4 18                                        	add    esp,0x18
10984005:	03 ef                                           	add    ebp,edi
10984007:	eb 0a                                           	jmp    0x10984013
10984009:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
1098400e:	bd 46 82 ca 10                                  	mov    ebp,0x10ca8246
10984013:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10984017:	03 f6                                           	add    esi,esi
10984019:	56                                              	push   esi
1098401a:	52                                              	push   edx
1098401b:	57                                              	push   edi
1098401c:	89 6c 24 50                                     	mov    DWORD PTR [esp+0x50],ebp
10984020:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
10984024:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098402a:	03 f7                                           	add    esi,edi
1098402c:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
10984031:	8b 84 24 64 01 00 00                            	mov    eax,DWORD PTR [esp+0x164]
10984038:	83 c4 0c                                        	add    esp,0xc
1098403b:	3b 84 24 5c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x15c]
10984042:	89 74 24 40                                     	mov    DWORD PTR [esp+0x40],esi
10984046:	73 2b                                           	jae    0x10984073
10984048:	8b f0                                           	mov    esi,eax
1098404a:	83 c0 20                                        	add    eax,0x20
1098404d:	85 f6                                           	test   esi,esi
1098404f:	89 84 24 58 01 00 00                            	mov    DWORD PTR [esp+0x158],eax
10984056:	74 39                                           	je     0x10984091
10984058:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1098405c:	50                                              	push   eax
1098405d:	8b ce                                           	mov    ecx,esi
1098405f:	e8 bc 62 6e ff                                  	call   0x1006a320
10984064:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10984068:	51                                              	push   ecx
10984069:	8d 4e 10                                        	lea    ecx,[esi+0x10]
1098406c:	e8 af 62 6e ff                                  	call   0x1006a320
10984071:	eb 1e                                           	jmp    0x10984091
10984073:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
10984077:	52                                              	push   edx
10984078:	50                                              	push   eax
10984079:	8d 8c 24 5c 01 00 00                            	lea    ecx,[esp+0x15c]
10984080:	e8 cb 0c e2 ff                                  	call   0x107a4d50
10984085:	8b 6c 24 44                                     	mov    ebp,DWORD PTR [esp+0x44]
10984089:	8b 7c 24 3c                                     	mov    edi,DWORD PTR [esp+0x3c]
1098408d:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
10984091:	2b ef                                           	sub    ebp,edi
10984093:	83 e5 fe                                        	and    ebp,0xfffffffe
10984096:	83 fd 02                                        	cmp    ebp,0x2
10984099:	7e 0d                                           	jle    0x109840a8
1098409b:	85 ff                                           	test   edi,edi
1098409d:	74 09                                           	je     0x109840a8
1098409f:	57                                              	push   edi
109840a0:	e8 eb 4d f9 ff                                  	call   0x10918e90
109840a5:	83 c4 04                                        	add    esp,0x4
109840a8:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
109840ac:	2b c3                                           	sub    eax,ebx
109840ae:	83 e0 fe                                        	and    eax,0xfffffffe
109840b1:	83 f8 02                                        	cmp    eax,0x2
109840b4:	7e 0d                                           	jle    0x109840c3
109840b6:	85 db                                           	test   ebx,ebx
109840b8:	74 09                                           	je     0x109840c3
109840ba:	53                                              	push   ebx
109840bb:	e8 d0 4d f9 ff                                  	call   0x10918e90
109840c0:	83 c4 04                                        	add    esp,0x4
109840c3:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109840c7:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
109840cb:	2b c8                                           	sub    ecx,eax
109840cd:	83 e1 fe                                        	and    ecx,0xfffffffe
109840d0:	83 f9 02                                        	cmp    ecx,0x2
109840d3:	7e 0d                                           	jle    0x109840e2
109840d5:	85 c0                                           	test   eax,eax
109840d7:	74 09                                           	je     0x109840e2
109840d9:	50                                              	push   eax
109840da:	e8 b1 4d f9 ff                                  	call   0x10918e90
109840df:	83 c4 04                                        	add    esp,0x4
109840e2:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
109840e6:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
109840ea:	2b d0                                           	sub    edx,eax
109840ec:	83 e2 fe                                        	and    edx,0xfffffffe
109840ef:	83 fa 02                                        	cmp    edx,0x2
109840f2:	7e 0d                                           	jle    0x10984101
109840f4:	85 c0                                           	test   eax,eax
109840f6:	74 09                                           	je     0x10984101
109840f8:	50                                              	push   eax
109840f9:	e8 92 4d f9 ff                                  	call   0x10918e90
109840fe:	83 c4 04                                        	add    esp,0x4
10984101:	83 44 24 24 04                                  	add    DWORD PTR [esp+0x24],0x4
10984106:	83 6c 24 28 01                                  	sub    DWORD PTR [esp+0x28],0x1
1098410b:	0f 85 cf fd ff ff                               	jne    0x10983ee0
10984111:	8b 8c 24 10 0c 00 00                            	mov    ecx,DWORD PTR [esp+0xc10]
10984118:	85 c9                                           	test   ecx,ecx
1098411a:	0f 8e 62 03 00 00                               	jle    0x10984482
10984120:	8b 84 24 18 0c 00 00                            	mov    eax,DWORD PTR [esp+0xc18]
10984127:	8b 94 24 14 0c 00 00                            	mov    edx,DWORD PTR [esp+0xc14]
1098412e:	2b d0                                           	sub    edx,eax
10984130:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
10984134:	89 54 24 68                                     	mov    DWORD PTR [esp+0x68],edx
10984138:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
1098413c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
10984140:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
10984144:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
10984148:	8b 0c 30                                        	mov    ecx,DWORD PTR [eax+esi*1]
1098414b:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
1098414f:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
10984154:	bf 46 82 ca 10                                  	mov    edi,0x10ca8246
10984159:	c7 44 24 1c 54 66 b9 10                         	mov    DWORD PTR [esp+0x1c],0x10b96654
10984161:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
10984165:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10984169:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1098416d:	c7 44 24 58 28 66 b9 10                         	mov    DWORD PTR [esp+0x58],0x10b96628
10984175:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
10984179:	89 5c 24 50                                     	mov    DWORD PTR [esp+0x50],ebx
1098417d:	89 7c 24 54                                     	mov    DWORD PTR [esp+0x54],edi
10984181:	8b c1                                           	mov    eax,ecx
10984183:	74 09                                           	je     0x1098418e
10984185:	83 c0 02                                        	add    eax,0x2
10984188:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1098418c:	75 f7                                           	jne    0x10984185
1098418e:	2b c1                                           	sub    eax,ecx
10984190:	d1 f8                                           	sar    eax,1
10984192:	8d 14 41                                        	lea    edx,[ecx+eax*2]
10984195:	52                                              	push   edx
10984196:	51                                              	push   ecx
10984197:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098419b:	e8 20 b7 69 ff                                  	call   0x1001f8c0
109841a0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
109841a2:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
109841a6:	8b c1                                           	mov    eax,ecx
109841a8:	74 0f                                           	je     0x109841b9
109841aa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
109841b0:	83 c0 02                                        	add    eax,0x2
109841b3:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
109841b7:	75 f7                                           	jne    0x109841b0
109841b9:	2b c1                                           	sub    eax,ecx
109841bb:	d1 f8                                           	sar    eax,1
109841bd:	8d 04 41                                        	lea    eax,[ecx+eax*2]
109841c0:	50                                              	push   eax
109841c1:	51                                              	push   ecx
109841c2:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109841c6:	e8 f5 b6 69 ff                                  	call   0x1001f8c0
109841cb:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
109841cf:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
109841d3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109841d7:	2b f5                                           	sub    esi,ebp
109841d9:	d1 fe                                           	sar    esi,1
109841db:	8d 46 01                                        	lea    eax,[esi+0x1]
109841de:	83 f8 01                                        	cmp    eax,0x1
109841e1:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
109841e5:	76 26                                           	jbe    0x1098420d
109841e7:	68 e7 00 00 00                                  	push   0xe7
109841ec:	68 d0 df aa 10                                  	push   0x10aadfd0
109841f1:	6a 00                                           	push   0x0
109841f3:	6a 00                                           	push   0x0
109841f5:	8d 3c 00                                        	lea    edi,[eax+eax*1]
109841f8:	51                                              	push   ecx
109841f9:	57                                              	push   edi
109841fa:	e8 b1 4c f9 ff                                  	call   0x10918eb0
109841ff:	8b d8                                           	mov    ebx,eax
10984201:	8d 0c 3b                                        	lea    ecx,[ebx+edi*1]
10984204:	83 c4 18                                        	add    esp,0x18
10984207:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
1098420b:	eb 04                                           	jmp    0x10984211
1098420d:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
10984211:	03 f6                                           	add    esi,esi
10984213:	56                                              	push   esi
10984214:	55                                              	push   ebp
10984215:	53                                              	push   ebx
10984216:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
1098421a:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10984220:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
10984224:	03 f3                                           	add    esi,ebx
10984226:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
1098422a:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
1098422f:	8b 74 24 5c                                     	mov    esi,DWORD PTR [esp+0x5c]
10984233:	2b 74 24 58                                     	sub    esi,DWORD PTR [esp+0x58]
10984237:	83 c4 0c                                        	add    esp,0xc
1098423a:	d1 fe                                           	sar    esi,1
1098423c:	8d 46 01                                        	lea    eax,[esi+0x1]
1098423f:	83 f8 01                                        	cmp    eax,0x1
10984242:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
10984246:	76 26                                           	jbe    0x1098426e
10984248:	68 e7 00 00 00                                  	push   0xe7
1098424d:	68 d0 df aa 10                                  	push   0x10aadfd0
10984252:	6a 00                                           	push   0x0
10984254:	6a 00                                           	push   0x0
10984256:	8d 2c 00                                        	lea    ebp,[eax+eax*1]
10984259:	51                                              	push   ecx
1098425a:	55                                              	push   ebp
1098425b:	e8 50 4c f9 ff                                  	call   0x10918eb0
10984260:	8b f8                                           	mov    edi,eax
10984262:	8d 14 2f                                        	lea    edx,[edi+ebp*1]
10984265:	83 c4 18                                        	add    esp,0x18
10984268:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
1098426c:	eb 0d                                           	jmp    0x1098427b
1098426e:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
10984273:	c7 44 24 44 46 82 ca 10                         	mov    DWORD PTR [esp+0x44],0x10ca8246
1098427b:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
1098427f:	03 f6                                           	add    esi,esi
10984281:	56                                              	push   esi
10984282:	50                                              	push   eax
10984283:	57                                              	push   edi
10984284:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
10984288:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098428e:	8d 2c 3e                                        	lea    ebp,[esi+edi*1]
10984291:	66 c7 45 00 00 00                               	mov    WORD PTR [ebp+0x0],0x0
10984297:	8b 84 24 74 01 00 00                            	mov    eax,DWORD PTR [esp+0x174]
1098429e:	83 c4 0c                                        	add    esp,0xc
109842a1:	3b 84 24 6c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x16c]
109842a8:	89 6c 24 40                                     	mov    DWORD PTR [esp+0x40],ebp
109842ac:	0f 83 30 01 00 00                               	jae    0x109843e2
109842b2:	8b f0                                           	mov    esi,eax
109842b4:	83 c0 20                                        	add    eax,0x20
109842b7:	89 84 24 68 01 00 00                            	mov    DWORD PTR [esp+0x168],eax
109842be:	33 c0                                           	xor    eax,eax
109842c0:	3b f0                                           	cmp    esi,eax
109842c2:	0f 84 34 01 00 00                               	je     0x109843fc
109842c8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109842cc:	89 06                                           	mov    DWORD PTR [esi],eax
109842ce:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
109842d1:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
109842d4:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
109842d8:	2b c3                                           	sub    eax,ebx
109842da:	d1 f8                                           	sar    eax,1
109842dc:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
109842e0:	83 c0 01                                        	add    eax,0x1
109842e3:	83 f8 01                                        	cmp    eax,0x1
109842e6:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
109842e9:	76 30                                           	jbe    0x1098431b
109842eb:	68 e7 00 00 00                                  	push   0xe7
109842f0:	68 d0 df aa 10                                  	push   0x10aadfd0
109842f5:	6a 00                                           	push   0x0
109842f7:	6a 00                                           	push   0x0
109842f9:	8b d1                                           	mov    edx,ecx
109842fb:	03 c0                                           	add    eax,eax
109842fd:	52                                              	push   edx
109842fe:	50                                              	push   eax
109842ff:	89 44 24 7c                                     	mov    DWORD PTR [esp+0x7c],eax
10984303:	e8 a8 4b f9 ff                                  	call   0x10918eb0
10984308:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
1098430c:	83 c4 18                                        	add    esp,0x18
1098430f:	89 06                                           	mov    DWORD PTR [esi],eax
10984311:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10984314:	03 c1                                           	add    eax,ecx
10984316:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10984319:	eb 14                                           	jmp    0x1098432f
1098431b:	c7 06 44 82 ca 10                               	mov    DWORD PTR [esi],0x10ca8244
10984321:	c7 46 04 44 82 ca 10                            	mov    DWORD PTR [esi+0x4],0x10ca8244
10984328:	c7 46 08 46 82 ca 10                            	mov    DWORD PTR [esi+0x8],0x10ca8246
1098432f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10984333:	8b 06                                           	mov    eax,DWORD PTR [esi]
10984335:	03 c9                                           	add    ecx,ecx
10984337:	51                                              	push   ecx
10984338:	53                                              	push   ebx
10984339:	50                                              	push   eax
1098433a:	89 44 24 70                                     	mov    DWORD PTR [esp+0x70],eax
1098433e:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
10984342:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10984348:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1098434c:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
10984350:	33 c9                                           	xor    ecx,ecx
10984352:	03 c2                                           	add    eax,edx
10984354:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10984357:	66 89 08                                        	mov    WORD PTR [eax],cx
1098435a:	2b ef                                           	sub    ebp,edi
1098435c:	d1 fd                                           	sar    ebp,1
1098435e:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
10984361:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
10984364:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
10984367:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
1098436b:	8d 45 01                                        	lea    eax,[ebp+0x1]
1098436e:	83 c4 0c                                        	add    esp,0xc
10984371:	83 f8 01                                        	cmp    eax,0x1
10984374:	89 4e 1c                                        	mov    DWORD PTR [esi+0x1c],ecx
10984377:	76 31                                           	jbe    0x109843aa
10984379:	68 e7 00 00 00                                  	push   0xe7
1098437e:	68 d0 df aa 10                                  	push   0x10aadfd0
10984383:	6a 00                                           	push   0x0
10984385:	6a 00                                           	push   0x0
10984387:	8b d1                                           	mov    edx,ecx
10984389:	03 c0                                           	add    eax,eax
1098438b:	52                                              	push   edx
1098438c:	50                                              	push   eax
1098438d:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
10984391:	e8 1a 4b f9 ff                                  	call   0x10918eb0
10984396:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1098439a:	83 c4 18                                        	add    esp,0x18
1098439d:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
109843a0:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
109843a3:	03 c1                                           	add    eax,ecx
109843a5:	89 46 18                                        	mov    DWORD PTR [esi+0x18],eax
109843a8:	eb 12                                           	jmp    0x109843bc
109843aa:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
109843af:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
109843b2:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
109843b5:	c7 46 18 46 82 ca 10                            	mov    DWORD PTR [esi+0x18],0x10ca8246
109843bc:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
109843bf:	03 ed                                           	add    ebp,ebp
109843c1:	55                                              	push   ebp
109843c2:	57                                              	push   edi
109843c3:	50                                              	push   eax
109843c4:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
109843c8:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
109843ce:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
109843d2:	8d 04 2a                                        	lea    eax,[edx+ebp*1]
109843d5:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
109843d8:	83 c4 0c                                        	add    esp,0xc
109843db:	66 c7 00 00 00                                  	mov    WORD PTR [eax],0x0
109843e0:	eb 1a                                           	jmp    0x109843fc
109843e2:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
109843e6:	51                                              	push   ecx
109843e7:	50                                              	push   eax
109843e8:	8d 8c 24 6c 01 00 00                            	lea    ecx,[esp+0x16c]
109843ef:	e8 5c 09 e2 ff                                  	call   0x107a4d50
109843f4:	8b 7c 24 3c                                     	mov    edi,DWORD PTR [esp+0x3c]
109843f8:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
109843fc:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10984400:	2b c7                                           	sub    eax,edi
10984402:	83 e0 fe                                        	and    eax,0xfffffffe
10984405:	83 f8 02                                        	cmp    eax,0x2
10984408:	7e 0d                                           	jle    0x10984417
1098440a:	85 ff                                           	test   edi,edi
1098440c:	74 09                                           	je     0x10984417
1098440e:	57                                              	push   edi
1098440f:	e8 7c 4a f9 ff                                  	call   0x10918e90
10984414:	83 c4 04                                        	add    esp,0x4
10984417:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1098441b:	2b c3                                           	sub    eax,ebx
1098441d:	83 e0 fe                                        	and    eax,0xfffffffe
10984420:	83 f8 02                                        	cmp    eax,0x2
10984423:	7e 0d                                           	jle    0x10984432
10984425:	85 db                                           	test   ebx,ebx
10984427:	74 09                                           	je     0x10984432
10984429:	53                                              	push   ebx
1098442a:	e8 61 4a f9 ff                                  	call   0x10918e90
1098442f:	83 c4 04                                        	add    esp,0x4
10984432:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
10984436:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
1098443a:	2b d0                                           	sub    edx,eax
1098443c:	83 e2 fe                                        	and    edx,0xfffffffe
1098443f:	83 fa 02                                        	cmp    edx,0x2
10984442:	7e 0d                                           	jle    0x10984451
10984444:	85 c0                                           	test   eax,eax
10984446:	74 09                                           	je     0x10984451
10984448:	50                                              	push   eax
10984449:	e8 42 4a f9 ff                                  	call   0x10918e90
1098444e:	83 c4 04                                        	add    esp,0x4
10984451:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10984455:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10984459:	2b c8                                           	sub    ecx,eax
1098445b:	83 e1 fe                                        	and    ecx,0xfffffffe
1098445e:	83 f9 02                                        	cmp    ecx,0x2
10984461:	7e 0f                                           	jle    0x10984472
10984463:	85 c0                                           	test   eax,eax
10984465:	74 0b                                           	je     0x10984472
10984467:	8b d0                                           	mov    edx,eax
10984469:	52                                              	push   edx
1098446a:	e8 21 4a f9 ff                                  	call   0x10918e90
1098446f:	83 c4 04                                        	add    esp,0x4
10984472:	83 44 24 24 04                                  	add    DWORD PTR [esp+0x24],0x4
10984477:	83 6c 24 28 01                                  	sub    DWORD PTR [esp+0x28],0x1
1098447c:	0f 85 be fc ff ff                               	jne    0x10984140
10984482:	6a 00                                           	push   0x0
10984484:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
1098448b:	50                                              	push   eax
1098448c:	8d 8c 24 cc 00 00 00                            	lea    ecx,[esp+0xcc]
10984493:	51                                              	push   ecx
10984494:	e8 77 8d e1 ff                                  	call   0x1079d210
10984499:	83 c4 0c                                        	add    esp,0xc
1098449c:	8d 8c 24 4c 02 00 00                            	lea    ecx,[esp+0x24c]
109844a3:	8a d8                                           	mov    bl,al
109844a5:	e8 26 a1 f5 ff                                  	call   0x108de5d0
109844aa:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
109844b1:	e8 2a b3 77 ff                                  	call   0x100ff7e0
109844b6:	8b 94 24 a8 00 00 00                            	mov    edx,DWORD PTR [esp+0xa8]
109844bd:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
109844c4:	2b d0                                           	sub    edx,eax
109844c6:	83 e2 fe                                        	and    edx,0xfffffffe
109844c9:	83 fa 02                                        	cmp    edx,0x2
109844cc:	7e 0d                                           	jle    0x109844db
109844ce:	85 c0                                           	test   eax,eax
109844d0:	74 09                                           	je     0x109844db
109844d2:	50                                              	push   eax
109844d3:	e8 b8 49 f9 ff                                  	call   0x10918e90
109844d8:	83 c4 04                                        	add    esp,0x4
109844db:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
109844e2:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
109844e9:	2b c8                                           	sub    ecx,eax
109844eb:	83 e1 fe                                        	and    ecx,0xfffffffe
109844ee:	83 f9 02                                        	cmp    ecx,0x2
109844f1:	7e 0d                                           	jle    0x10984500
109844f3:	85 c0                                           	test   eax,eax
109844f5:	74 09                                           	je     0x10984500
109844f7:	50                                              	push   eax
109844f8:	e8 93 49 f9 ff                                  	call   0x10918e90
109844fd:	83 c4 04                                        	add    esp,0x4
10984500:	5d                                              	pop    ebp
10984501:	8a c3                                           	mov    al,bl
10984503:	5b                                              	pop    ebx
10984504:	5f                                              	pop    edi
10984505:	5e                                              	pop    esi
10984506:	81 c4 e4 0b 00 00                               	add    esp,0xbe4
1098450c:	c3                                              	ret
1098450d:	cc                                              	int3
1098450e:	cc                                              	int3
1098450f:	cc                                              	int3
