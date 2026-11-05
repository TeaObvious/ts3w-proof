# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076df10 (ScriptCore.Simulator::Simulator_CreateScriptErrorFileImpl)
Paired Ghidra pseudocode: 0076DF10_ScriptCore_Simulator_Simulator_CreateScriptErrorFileImpl.c
Window: [0x0076df10, 0x0076e3d0) (1216 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076e3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076df10: 81 ec 8c 05 00 00 53 55 56 57 e8 21 12 fc ff 8b
0076df20: 10 8b c8 8b 42 24 ff d0 50 8d 8c 24 90 01 00 00
0076df30: e8 3b 02 d8 ff 8d 8c 24 8c 01 00 00 e8 5f 72 07
0076df40: 00 50 e8 a9 f3 d6 ff 33 ed 33 ff 33 f6 83 c4 04
0076df50: 89 6c 24 5c 89 6c 24 60 89 6c 24 64 89 6c 24 68
0076df60: 89 7c 24 4c 89 74 24 50 89 6c 24 54 c7 44 24 58
0076df70: 14 92 00 01 e8 17 bd d6 ff 33 c9 68 00 00 10 00
0076df80: 89 4c 24 2c 89 4c 24 30 8d 4c 24 2c 6a 02 89 44
0076df90: 24 38 8b c1 8b d1 55 89 4c 24 34 50 8d 8c 24 9c
0076dfa0: 01 00 00 89 6c 24 44 c7 44 24 48 f8 91 00 01 89
0076dfb0: 54 24 3c e8 e8 71 07 00 50 8d 4c 24 70 e8 be c5
0076dfc0: d6 ff 8b 44 24 28 8d 4c 24 28 3b c1 8b d8 0f 84
0076dfd0: da 00 00 00 8b 43 0c 55 68 d4 91 00 01 50 e8 3d
0076dfe0: 23 d9 ff 83 c4 0c 84 c0 0f 84 ae 00 00 00 b8 54
0076dff0: 8e 1c 01 8d 8c 24 8c 01 00 00 c7 44 24 1c b4 91
0076e000: 00 01 89 44 24 10 89 44 24 14 c7 44 24 18 56 8e
0076e010: 1c 01 e8 89 71 07 00 66 39 28 8b c8 74 0a 8b ff
0076e020: 83 c1 02 66 39 29 75 f8 2b c8 d1 f9 8d 14 48 52
0076e030: 50 8d 4c 24 18 e8 26 ad c9 ff 8b 43 10 8b 4b 0c
0076e040: 50 51 8d 4c 24 18 e8 45 ab c9 ff 3b 74 24 54 73
0076e050: 19 8b ce 83 c6 10 3b cd 89 74 24 50 74 1f 8d 54
0076e060: 24 10 52 e8 88 ad c9 ff eb 13 8d 44 24 10 50 56
0076e070: 8d 4c 24 54 e8 57 fb da ff 8b 74 24 50 8b 4c 24
0076e080: 18 8b 44 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d 3b
0076e090: c5 74 09 50 e8 47 64 d7 ff 83 c4 04 8b 1b 8d 54
0076e0a0: 24 28 3b da 0f 85 2a ff ff ff 8b 7c 24 4c 8b c6
0076e0b0: 2b c7 c1 f8 04 83 f8 0a 76 43 68 10 d2 76 00 56
0076e0c0: 8d 8f a0 00 00 00 51 57 e8 b3 17 fd ff 83 c4 10
0076e0d0: 3b fe 8b df bd 0a 00 00 00 74 20 eb 03 8d 49 00
0076e0e0: 85 ed 7e 05 83 ed 01 eb 0b 8b 13 52 e8 af dc d6
0076e0f0: ff 83 c4 04 83 c3 10 3b de 75 e5 33 ed 8d 4c 24
0076e100: 28 e8 ba 8d ce ff 3b fe 8b df 73 27 8d 64 24 00
0076e110: 8b 03 8b 4b 08 2b c8 83 e1 fe 83 f9 02 7e 0d 3b
0076e120: c5 74 09 50 e8 b7 63 d7 ff 83 c4 04 83 c3 10 3b
0076e130: de 72 dd 3b fd 74 09 57 e8 a3 63 d7 ff 83 c4 04
0076e140: 8b 9c 24 a0 05 00 00 89 2b e8 42 b2 ff ff 6a ff
0076e150: 8d 4c 24 24 8b f8 e8 95 c8 d8 ff 55 8d 4c 24 24
0076e160: e8 8b c8 d8 ff 8d 94 24 8c 00 00 00 68 00 01 00
0076e170: 00 52 e8 69 40 d9 ff bd 54 8e 1c 01 83 c4 08 8d
0076e180: 4c 24 20 c7 44 24 1c b4 91 00 01 89 6c 24 10 89
0076e190: 6c 24 14 c7 44 24 18 56 8e 1c 01 e8 70 c8 d8 ff
0076e1a0: 50 6a 0a e8 58 c1 d8 ff 83 c4 04 50 6a 09 e8 4d
0076e1b0: c1 d8 ff 83 c4 04 50 6a 08 e8 42 c1 d8 ff 83 c4
0076e1c0: 04 50 6a 01 e8 37 c1 d8 ff 83 c4 04 50 6a 06 e8
0076e1d0: 2c c1 d8 ff 83 c4 04 50 6a 02 e8 21 c1 d8 ff 83
0076e1e0: c4 04 50 8d 84 24 a8 00 00 00 50 8d 4c 24 30 68
0076e1f0: 40 91 00 01 51 e8 46 06 ca ff 8b 54 24 38 83 c4
0076e200: 28 6a 00 52 8d 8c 24 94 01 00 00 e8 f0 01 d8 ff
0076e210: 8d 8c 24 8c 01 00 00 e8 84 6f 07 00 8b f0 6a 00
0076e220: 56 c7 44 24 50 1c 91 00 01 89 6c 24 44 89 6c 24
0076e230: 48 c7 44 24 4c 56 8e 1c 01 e8 b2 da d6 ff 83 c4
0076e240: 08 84 c0 74 76 8b 44 24 14 8b 6c 24 10 50 55 8d
0076e250: 4c 24 44 e8 08 ab c9 ff 6a 00 6a 00 6a 00 6a 00
0076e260: 68 f8 90 00 01 68 28 02 00 00 e8 91 62 d7 ff 83
0076e270: c4 18 85 c0 74 0c 56 8b c8 e8 c2 d8 d6 ff 8b f0
0076e280: eb 02 33 f6 8b 16 8b 42 4c 6a 00 6a 01 6a 03 6a
0076e290: 02 8b ce ff d0 84 c0 74 11 8b 17 8b 82 c8 00 00
0076e2a0: 00 6a 47 56 8b cf ff d0 89 03 83 3b 00 75 60 8b
0076e2b0: 16 8b 02 6a 01 8b ce ff d0 eb 54 68 d4 90 00 01
0076e2c0: 6a ff 8d 4c 24 64 68 48 8f 00 01 51 e8 7f 58 d8
0076e2d0: ff 8d 54 24 4c 83 c4 10 3b c2 74 10 8b 48 04 8b
0076e2e0: 10 51 52 8d 4c 24 44 e8 74 aa c9 ff 8b 4c 24 64
0076e2f0: 8b 44 24 5c 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0
0076e300: 74 09 50 e8 d8 61 d7 ff 83 c4 04 8b 6c 24 10 6a
0076e310: 01 6a 10 8d 54 24 44 52 6a 09 6a 13 8d 8c 24 80
0076e320: 00 00 00 c7 84 24 80 00 00 00 6c 88 00 01 66 c7
0076e330: 84 24 8a 00 00 00 13 00 66 c7 84 24 88 00 00 00
0076e340: 0b 00 e8 79 76 d8 ff c7 44 24 24 00 00 00 00 e8
0076e350: 3c b0 ff ff 8b 10 8b 52 50 8d 4c 24 24 51 8d 4c
0076e360: 24 70 51 8b c8 ff d2 f6 44 24 74 04 8b 74 24 24
0076e370: c7 44 24 6c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 70
0076e380: e8 db 73 d8 ff 8b 4c 24 44 8b 44 24 3c 2b c8 83
0076e390: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 3f 61 d7
0076e3a0: ff 83 c4 04 8b 54 24 18 2b d5 83 e2 fe 83 fa 02
0076e3b0: 7e 0d 85 ed 74 09 55 e8 24 61 d7 ff 83 c4 04 5f
0076e3c0: 8b c6 5e 5d 5b 81 c4 8c 05 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
0076df10 <.text+0x36cf10>:
  76df10:	81 ec 8c 05 00 00                               	sub    esp,0x58c
  76df16:	53                                              	push   ebx
  76df17:	55                                              	push   ebp
  76df18:	56                                              	push   esi
  76df19:	57                                              	push   edi
  76df1a:	e8 21 12 fc ff                                  	call   0x72f140
  76df1f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76df21:	8b c8                                           	mov    ecx,eax
  76df23:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  76df26:	ff d0                                           	call   eax
  76df28:	50                                              	push   eax
  76df29:	8d 8c 24 90 01 00 00                            	lea    ecx,[esp+0x190]
  76df30:	e8 3b 02 d8 ff                                  	call   0x4ee170
  76df35:	8d 8c 24 8c 01 00 00                            	lea    ecx,[esp+0x18c]
  76df3c:	e8 5f 72 07 00                                  	call   0x7e51a0
  76df41:	50                                              	push   eax
  76df42:	e8 a9 f3 d6 ff                                  	call   0x4dd2f0
  76df47:	33 ed                                           	xor    ebp,ebp
  76df49:	33 ff                                           	xor    edi,edi
  76df4b:	33 f6                                           	xor    esi,esi
  76df4d:	83 c4 04                                        	add    esp,0x4
  76df50:	89 6c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebp
  76df54:	89 6c 24 60                                     	mov    DWORD PTR [esp+0x60],ebp
  76df58:	89 6c 24 64                                     	mov    DWORD PTR [esp+0x64],ebp
  76df5c:	89 6c 24 68                                     	mov    DWORD PTR [esp+0x68],ebp
  76df60:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
  76df64:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
  76df68:	89 6c 24 54                                     	mov    DWORD PTR [esp+0x54],ebp
  76df6c:	c7 44 24 58 14 92 00 01                         	mov    DWORD PTR [esp+0x58],0x1009214
  76df74:	e8 17 bd d6 ff                                  	call   0x4d9c90
  76df79:	33 c9                                           	xor    ecx,ecx
  76df7b:	68 00 00 10 00                                  	push   0x100000
  76df80:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  76df84:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  76df88:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  76df8c:	6a 02                                           	push   0x2
  76df8e:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  76df92:	8b c1                                           	mov    eax,ecx
  76df94:	8b d1                                           	mov    edx,ecx
  76df96:	55                                              	push   ebp
  76df97:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
  76df9b:	50                                              	push   eax
  76df9c:	8d 8c 24 9c 01 00 00                            	lea    ecx,[esp+0x19c]
  76dfa3:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
  76dfa7:	c7 44 24 48 f8 91 00 01                         	mov    DWORD PTR [esp+0x48],0x10091f8
  76dfaf:	89 54 24 3c                                     	mov    DWORD PTR [esp+0x3c],edx
  76dfb3:	e8 e8 71 07 00                                  	call   0x7e51a0
  76dfb8:	50                                              	push   eax
  76dfb9:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  76dfbd:	e8 be c5 d6 ff                                  	call   0x4da580
  76dfc2:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  76dfc6:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  76dfca:	3b c1                                           	cmp    eax,ecx
  76dfcc:	8b d8                                           	mov    ebx,eax
  76dfce:	0f 84 da 00 00 00                               	je     0x76e0ae
  76dfd4:	8b 43 0c                                        	mov    eax,DWORD PTR [ebx+0xc]
  76dfd7:	55                                              	push   ebp
  76dfd8:	68 d4 91 00 01                                  	push   0x10091d4
  76dfdd:	50                                              	push   eax
  76dfde:	e8 3d 23 d9 ff                                  	call   0x500320
  76dfe3:	83 c4 0c                                        	add    esp,0xc
  76dfe6:	84 c0                                           	test   al,al
  76dfe8:	0f 84 ae 00 00 00                               	je     0x76e09c
  76dfee:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  76dff3:	8d 8c 24 8c 01 00 00                            	lea    ecx,[esp+0x18c]
  76dffa:	c7 44 24 1c b4 91 00 01                         	mov    DWORD PTR [esp+0x1c],0x10091b4
  76e002:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  76e006:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  76e00a:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  76e012:	e8 89 71 07 00                                  	call   0x7e51a0
  76e017:	66 39 28                                        	cmp    WORD PTR [eax],bp
  76e01a:	8b c8                                           	mov    ecx,eax
  76e01c:	74 0a                                           	je     0x76e028
  76e01e:	8b ff                                           	mov    edi,edi
  76e020:	83 c1 02                                        	add    ecx,0x2
  76e023:	66 39 29                                        	cmp    WORD PTR [ecx],bp
  76e026:	75 f8                                           	jne    0x76e020
  76e028:	2b c8                                           	sub    ecx,eax
  76e02a:	d1 f9                                           	sar    ecx,1
  76e02c:	8d 14 48                                        	lea    edx,[eax+ecx*2]
  76e02f:	52                                              	push   edx
  76e030:	50                                              	push   eax
  76e031:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76e035:	e8 26 ad c9 ff                                  	call   0x408d60
  76e03a:	8b 43 10                                        	mov    eax,DWORD PTR [ebx+0x10]
  76e03d:	8b 4b 0c                                        	mov    ecx,DWORD PTR [ebx+0xc]
  76e040:	50                                              	push   eax
  76e041:	51                                              	push   ecx
  76e042:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76e046:	e8 45 ab c9 ff                                  	call   0x408b90
  76e04b:	3b 74 24 54                                     	cmp    esi,DWORD PTR [esp+0x54]
  76e04f:	73 19                                           	jae    0x76e06a
  76e051:	8b ce                                           	mov    ecx,esi
  76e053:	83 c6 10                                        	add    esi,0x10
  76e056:	3b cd                                           	cmp    ecx,ebp
  76e058:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
  76e05c:	74 1f                                           	je     0x76e07d
  76e05e:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  76e062:	52                                              	push   edx
  76e063:	e8 88 ad c9 ff                                  	call   0x408df0
  76e068:	eb 13                                           	jmp    0x76e07d
  76e06a:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  76e06e:	50                                              	push   eax
  76e06f:	56                                              	push   esi
  76e070:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  76e074:	e8 57 fb da ff                                  	call   0x51dbd0
  76e079:	8b 74 24 50                                     	mov    esi,DWORD PTR [esp+0x50]
  76e07d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76e081:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  76e085:	2b c8                                           	sub    ecx,eax
  76e087:	83 e1 fe                                        	and    ecx,0xfffffffe
  76e08a:	83 f9 02                                        	cmp    ecx,0x2
  76e08d:	7e 0d                                           	jle    0x76e09c
  76e08f:	3b c5                                           	cmp    eax,ebp
  76e091:	74 09                                           	je     0x76e09c
  76e093:	50                                              	push   eax
  76e094:	e8 47 64 d7 ff                                  	call   0x4e44e0
  76e099:	83 c4 04                                        	add    esp,0x4
  76e09c:	8b 1b                                           	mov    ebx,DWORD PTR [ebx]
  76e09e:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  76e0a2:	3b da                                           	cmp    ebx,edx
  76e0a4:	0f 85 2a ff ff ff                               	jne    0x76dfd4
  76e0aa:	8b 7c 24 4c                                     	mov    edi,DWORD PTR [esp+0x4c]
  76e0ae:	8b c6                                           	mov    eax,esi
  76e0b0:	2b c7                                           	sub    eax,edi
  76e0b2:	c1 f8 04                                        	sar    eax,0x4
  76e0b5:	83 f8 0a                                        	cmp    eax,0xa
  76e0b8:	76 43                                           	jbe    0x76e0fd
  76e0ba:	68 10 d2 76 00                                  	push   0x76d210
  76e0bf:	56                                              	push   esi
  76e0c0:	8d 8f a0 00 00 00                               	lea    ecx,[edi+0xa0]
  76e0c6:	51                                              	push   ecx
  76e0c7:	57                                              	push   edi
  76e0c8:	e8 b3 17 fd ff                                  	call   0x73f880
  76e0cd:	83 c4 10                                        	add    esp,0x10
  76e0d0:	3b fe                                           	cmp    edi,esi
  76e0d2:	8b df                                           	mov    ebx,edi
  76e0d4:	bd 0a 00 00 00                                  	mov    ebp,0xa
  76e0d9:	74 20                                           	je     0x76e0fb
  76e0db:	eb 03                                           	jmp    0x76e0e0
  76e0dd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  76e0e0:	85 ed                                           	test   ebp,ebp
  76e0e2:	7e 05                                           	jle    0x76e0e9
  76e0e4:	83 ed 01                                        	sub    ebp,0x1
  76e0e7:	eb 0b                                           	jmp    0x76e0f4
  76e0e9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  76e0eb:	52                                              	push   edx
  76e0ec:	e8 af dc d6 ff                                  	call   0x4dbda0
  76e0f1:	83 c4 04                                        	add    esp,0x4
  76e0f4:	83 c3 10                                        	add    ebx,0x10
  76e0f7:	3b de                                           	cmp    ebx,esi
  76e0f9:	75 e5                                           	jne    0x76e0e0
  76e0fb:	33 ed                                           	xor    ebp,ebp
  76e0fd:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  76e101:	e8 ba 8d ce ff                                  	call   0x456ec0
  76e106:	3b fe                                           	cmp    edi,esi
  76e108:	8b df                                           	mov    ebx,edi
  76e10a:	73 27                                           	jae    0x76e133
  76e10c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  76e110:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  76e112:	8b 4b 08                                        	mov    ecx,DWORD PTR [ebx+0x8]
  76e115:	2b c8                                           	sub    ecx,eax
  76e117:	83 e1 fe                                        	and    ecx,0xfffffffe
  76e11a:	83 f9 02                                        	cmp    ecx,0x2
  76e11d:	7e 0d                                           	jle    0x76e12c
  76e11f:	3b c5                                           	cmp    eax,ebp
  76e121:	74 09                                           	je     0x76e12c
  76e123:	50                                              	push   eax
  76e124:	e8 b7 63 d7 ff                                  	call   0x4e44e0
  76e129:	83 c4 04                                        	add    esp,0x4
  76e12c:	83 c3 10                                        	add    ebx,0x10
  76e12f:	3b de                                           	cmp    ebx,esi
  76e131:	72 dd                                           	jb     0x76e110
  76e133:	3b fd                                           	cmp    edi,ebp
  76e135:	74 09                                           	je     0x76e140
  76e137:	57                                              	push   edi
  76e138:	e8 a3 63 d7 ff                                  	call   0x4e44e0
  76e13d:	83 c4 04                                        	add    esp,0x4
  76e140:	8b 9c 24 a0 05 00 00                            	mov    ebx,DWORD PTR [esp+0x5a0]
  76e147:	89 2b                                           	mov    DWORD PTR [ebx],ebp
  76e149:	e8 42 b2 ff ff                                  	call   0x769390
  76e14e:	6a ff                                           	push   0xffffffff
  76e150:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  76e154:	8b f8                                           	mov    edi,eax
  76e156:	e8 95 c8 d8 ff                                  	call   0x4fa9f0
  76e15b:	55                                              	push   ebp
  76e15c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  76e160:	e8 8b c8 d8 ff                                  	call   0x4fa9f0
  76e165:	8d 94 24 8c 00 00 00                            	lea    edx,[esp+0x8c]
  76e16c:	68 00 01 00 00                                  	push   0x100
  76e171:	52                                              	push   edx
  76e172:	e8 69 40 d9 ff                                  	call   0x5021e0
  76e177:	bd 54 8e 1c 01                                  	mov    ebp,0x11c8e54
  76e17c:	83 c4 08                                        	add    esp,0x8
  76e17f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  76e183:	c7 44 24 1c b4 91 00 01                         	mov    DWORD PTR [esp+0x1c],0x10091b4
  76e18b:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  76e18f:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
  76e193:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  76e19b:	e8 70 c8 d8 ff                                  	call   0x4faa10
  76e1a0:	50                                              	push   eax
  76e1a1:	6a 0a                                           	push   0xa
  76e1a3:	e8 58 c1 d8 ff                                  	call   0x4fa300
  76e1a8:	83 c4 04                                        	add    esp,0x4
  76e1ab:	50                                              	push   eax
  76e1ac:	6a 09                                           	push   0x9
  76e1ae:	e8 4d c1 d8 ff                                  	call   0x4fa300
  76e1b3:	83 c4 04                                        	add    esp,0x4
  76e1b6:	50                                              	push   eax
  76e1b7:	6a 08                                           	push   0x8
  76e1b9:	e8 42 c1 d8 ff                                  	call   0x4fa300
  76e1be:	83 c4 04                                        	add    esp,0x4
  76e1c1:	50                                              	push   eax
  76e1c2:	6a 01                                           	push   0x1
  76e1c4:	e8 37 c1 d8 ff                                  	call   0x4fa300
  76e1c9:	83 c4 04                                        	add    esp,0x4
  76e1cc:	50                                              	push   eax
  76e1cd:	6a 06                                           	push   0x6
  76e1cf:	e8 2c c1 d8 ff                                  	call   0x4fa300
  76e1d4:	83 c4 04                                        	add    esp,0x4
  76e1d7:	50                                              	push   eax
  76e1d8:	6a 02                                           	push   0x2
  76e1da:	e8 21 c1 d8 ff                                  	call   0x4fa300
  76e1df:	83 c4 04                                        	add    esp,0x4
  76e1e2:	50                                              	push   eax
  76e1e3:	8d 84 24 a8 00 00 00                            	lea    eax,[esp+0xa8]
  76e1ea:	50                                              	push   eax
  76e1eb:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  76e1ef:	68 40 91 00 01                                  	push   0x1009140
  76e1f4:	51                                              	push   ecx
  76e1f5:	e8 46 06 ca ff                                  	call   0x40e840
  76e1fa:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  76e1fe:	83 c4 28                                        	add    esp,0x28
  76e201:	6a 00                                           	push   0x0
  76e203:	52                                              	push   edx
  76e204:	8d 8c 24 94 01 00 00                            	lea    ecx,[esp+0x194]
  76e20b:	e8 f0 01 d8 ff                                  	call   0x4ee400
  76e210:	8d 8c 24 8c 01 00 00                            	lea    ecx,[esp+0x18c]
  76e217:	e8 84 6f 07 00                                  	call   0x7e51a0
  76e21c:	8b f0                                           	mov    esi,eax
  76e21e:	6a 00                                           	push   0x0
  76e220:	56                                              	push   esi
  76e221:	c7 44 24 50 1c 91 00 01                         	mov    DWORD PTR [esp+0x50],0x100911c
  76e229:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
  76e22d:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
  76e231:	c7 44 24 4c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x4c],0x11c8e56
  76e239:	e8 b2 da d6 ff                                  	call   0x4dbcf0
  76e23e:	83 c4 08                                        	add    esp,0x8
  76e241:	84 c0                                           	test   al,al
  76e243:	74 76                                           	je     0x76e2bb
  76e245:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  76e249:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  76e24d:	50                                              	push   eax
  76e24e:	55                                              	push   ebp
  76e24f:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  76e253:	e8 08 ab c9 ff                                  	call   0x408d60
  76e258:	6a 00                                           	push   0x0
  76e25a:	6a 00                                           	push   0x0
  76e25c:	6a 00                                           	push   0x0
  76e25e:	6a 00                                           	push   0x0
  76e260:	68 f8 90 00 01                                  	push   0x10090f8
  76e265:	68 28 02 00 00                                  	push   0x228
  76e26a:	e8 91 62 d7 ff                                  	call   0x4e4500
  76e26f:	83 c4 18                                        	add    esp,0x18
  76e272:	85 c0                                           	test   eax,eax
  76e274:	74 0c                                           	je     0x76e282
  76e276:	56                                              	push   esi
  76e277:	8b c8                                           	mov    ecx,eax
  76e279:	e8 c2 d8 d6 ff                                  	call   0x4dbb40
  76e27e:	8b f0                                           	mov    esi,eax
  76e280:	eb 02                                           	jmp    0x76e284
  76e282:	33 f6                                           	xor    esi,esi
  76e284:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76e286:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
  76e289:	6a 00                                           	push   0x0
  76e28b:	6a 01                                           	push   0x1
  76e28d:	6a 03                                           	push   0x3
  76e28f:	6a 02                                           	push   0x2
  76e291:	8b ce                                           	mov    ecx,esi
  76e293:	ff d0                                           	call   eax
  76e295:	84 c0                                           	test   al,al
  76e297:	74 11                                           	je     0x76e2aa
  76e299:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76e29b:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  76e2a1:	6a 47                                           	push   0x47
  76e2a3:	56                                              	push   esi
  76e2a4:	8b cf                                           	mov    ecx,edi
  76e2a6:	ff d0                                           	call   eax
  76e2a8:	89 03                                           	mov    DWORD PTR [ebx],eax
  76e2aa:	83 3b 00                                        	cmp    DWORD PTR [ebx],0x0
  76e2ad:	75 60                                           	jne    0x76e30f
  76e2af:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76e2b1:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76e2b3:	6a 01                                           	push   0x1
  76e2b5:	8b ce                                           	mov    ecx,esi
  76e2b7:	ff d0                                           	call   eax
  76e2b9:	eb 54                                           	jmp    0x76e30f
  76e2bb:	68 d4 90 00 01                                  	push   0x10090d4
  76e2c0:	6a ff                                           	push   0xffffffff
  76e2c2:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  76e2c6:	68 48 8f 00 01                                  	push   0x1008f48
  76e2cb:	51                                              	push   ecx
  76e2cc:	e8 7f 58 d8 ff                                  	call   0x4f3b50
  76e2d1:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
  76e2d5:	83 c4 10                                        	add    esp,0x10
  76e2d8:	3b c2                                           	cmp    eax,edx
  76e2da:	74 10                                           	je     0x76e2ec
  76e2dc:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  76e2df:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76e2e1:	51                                              	push   ecx
  76e2e2:	52                                              	push   edx
  76e2e3:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  76e2e7:	e8 74 aa c9 ff                                  	call   0x408d60
  76e2ec:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  76e2f0:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  76e2f4:	2b c8                                           	sub    ecx,eax
  76e2f6:	83 e1 fe                                        	and    ecx,0xfffffffe
  76e2f9:	83 f9 02                                        	cmp    ecx,0x2
  76e2fc:	7e 0d                                           	jle    0x76e30b
  76e2fe:	85 c0                                           	test   eax,eax
  76e300:	74 09                                           	je     0x76e30b
  76e302:	50                                              	push   eax
  76e303:	e8 d8 61 d7 ff                                  	call   0x4e44e0
  76e308:	83 c4 04                                        	add    esp,0x4
  76e30b:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  76e30f:	6a 01                                           	push   0x1
  76e311:	6a 10                                           	push   0x10
  76e313:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  76e317:	52                                              	push   edx
  76e318:	6a 09                                           	push   0x9
  76e31a:	6a 13                                           	push   0x13
  76e31c:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  76e323:	c7 84 24 80 00 00 00 6c 88 00 01                	mov    DWORD PTR [esp+0x80],0x100886c
  76e32e:	66 c7 84 24 8a 00 00 00 13 00                   	mov    WORD PTR [esp+0x8a],0x13
  76e338:	66 c7 84 24 88 00 00 00 0b 00                   	mov    WORD PTR [esp+0x88],0xb
  76e342:	e8 79 76 d8 ff                                  	call   0x4f59c0
  76e347:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  76e34f:	e8 3c b0 ff ff                                  	call   0x769390
  76e354:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76e356:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  76e359:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  76e35d:	51                                              	push   ecx
  76e35e:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  76e362:	51                                              	push   ecx
  76e363:	8b c8                                           	mov    ecx,eax
  76e365:	ff d2                                           	call   edx
  76e367:	f6 44 24 74 04                                  	test   BYTE PTR [esp+0x74],0x4
  76e36c:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  76e370:	c7 44 24 6c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x6c],0xfba6f4
  76e378:	74 0b                                           	je     0x76e385
  76e37a:	6a 00                                           	push   0x0
  76e37c:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  76e380:	e8 db 73 d8 ff                                  	call   0x4f5760
  76e385:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  76e389:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  76e38d:	2b c8                                           	sub    ecx,eax
  76e38f:	83 e1 fe                                        	and    ecx,0xfffffffe
  76e392:	83 f9 02                                        	cmp    ecx,0x2
  76e395:	7e 0d                                           	jle    0x76e3a4
  76e397:	85 c0                                           	test   eax,eax
  76e399:	74 09                                           	je     0x76e3a4
  76e39b:	50                                              	push   eax
  76e39c:	e8 3f 61 d7 ff                                  	call   0x4e44e0
  76e3a1:	83 c4 04                                        	add    esp,0x4
  76e3a4:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  76e3a8:	2b d5                                           	sub    edx,ebp
  76e3aa:	83 e2 fe                                        	and    edx,0xfffffffe
  76e3ad:	83 fa 02                                        	cmp    edx,0x2
  76e3b0:	7e 0d                                           	jle    0x76e3bf
  76e3b2:	85 ed                                           	test   ebp,ebp
  76e3b4:	74 09                                           	je     0x76e3bf
  76e3b6:	55                                              	push   ebp
  76e3b7:	e8 24 61 d7 ff                                  	call   0x4e44e0
  76e3bc:	83 c4 04                                        	add    esp,0x4
  76e3bf:	5f                                              	pop    edi
  76e3c0:	8b c6                                           	mov    eax,esi
  76e3c2:	5e                                              	pop    esi
  76e3c3:	5d                                              	pop    ebp
  76e3c4:	5b                                              	pop    ebx
  76e3c5:	81 c4 8c 05 00 00                               	add    esp,0x58c
  76e3cb:	c3                                              	ret
  76e3cc:	cc                                              	int3
  76e3cd:	cc                                              	int3
  76e3ce:	cc                                              	int3
  76e3cf:	cc                                              	int3
