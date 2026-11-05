# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab100 (ScriptCore.CASUtils::CASUtils_SimOutfitSetPartPresetImpl)
Paired Ghidra pseudocode: 005AB100_ScriptCore_CASUtils_CASUtils_SimOutfitSetPartPresetImpl.c
Window: [0x005ab100, 0x005ab1d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab100: 83 ec 20 53 8b 5c 24 28 8b c3 25 00 00 00 ff 3d
005ab110: 00 00 00 35 0f 85 b0 00 00 00 57 8b 7c 24 40 85
005ab120: ff 0f 84 a2 00 00 00 56 e8 63 e2 1b 00 8b f0 8b
005ab130: 16 8b 42 58 57 8b ce ff d0 8b 16 8b f8 8b 82 cc
005ab140: 00 00 00 53 8b ce ff d0 8b f0 85 f6 74 7a 8b 4c
005ab150: 24 3c 8b 54 24 40 8b 44 24 34 89 4c 24 1c 8b 4c
005ab160: 24 38 89 4c 24 28 57 8d 4c 24 10 89 54 24 24 89
005ab170: 44 24 28 c7 44 24 10 00 00 00 00 c7 44 24 14 00
005ab180: 00 00 00 c7 44 24 18 00 00 00 00 c7 44 24 1c 0c
005ab190: f9 fd 00 e8 f8 03 e6 ff 8d 54 24 0c 52 8d 44 24
005ab1a0: 20 50 8b ce e8 a7 a7 03 00 8b 4c 24 14 8b 44 24
005ab1b0: 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
005ab1c0: e8 1b 93 f3 ff 83 c4 04 5e 5f 5b 83 c4 20 c3 cc

LINEAR DISASSEMBLY
005ab100 <.text+0x1aa100>:
  5ab100:	83 ec 20                                        	sub    esp,0x20
  5ab103:	53                                              	push   ebx
  5ab104:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
  5ab108:	8b c3                                           	mov    eax,ebx
  5ab10a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ab10f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ab114:	0f 85 b0 00 00 00                               	jne    0x5ab1ca
  5ab11a:	57                                              	push   edi
  5ab11b:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
  5ab11f:	85 ff                                           	test   edi,edi
  5ab121:	0f 84 a2 00 00 00                               	je     0x5ab1c9
  5ab127:	56                                              	push   esi
  5ab128:	e8 63 e2 1b 00                                  	call   0x769390
  5ab12d:	8b f0                                           	mov    esi,eax
  5ab12f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ab131:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  5ab134:	57                                              	push   edi
  5ab135:	8b ce                                           	mov    ecx,esi
  5ab137:	ff d0                                           	call   eax
  5ab139:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ab13b:	8b f8                                           	mov    edi,eax
  5ab13d:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab143:	53                                              	push   ebx
  5ab144:	8b ce                                           	mov    ecx,esi
  5ab146:	ff d0                                           	call   eax
  5ab148:	8b f0                                           	mov    esi,eax
  5ab14a:	85 f6                                           	test   esi,esi
  5ab14c:	74 7a                                           	je     0x5ab1c8
  5ab14e:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  5ab152:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  5ab156:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  5ab15a:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5ab15e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  5ab162:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  5ab166:	57                                              	push   edi
  5ab167:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5ab16b:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5ab16f:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  5ab173:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  5ab17b:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  5ab183:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  5ab18b:	c7 44 24 1c 0c f9 fd 00                         	mov    DWORD PTR [esp+0x1c],0xfdf90c
  5ab193:	e8 f8 03 e6 ff                                  	call   0x40b590
  5ab198:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  5ab19c:	52                                              	push   edx
  5ab19d:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  5ab1a1:	50                                              	push   eax
  5ab1a2:	8b ce                                           	mov    ecx,esi
  5ab1a4:	e8 a7 a7 03 00                                  	call   0x5e5950
  5ab1a9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5ab1ad:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5ab1b1:	2b c8                                           	sub    ecx,eax
  5ab1b3:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ab1b6:	83 f9 02                                        	cmp    ecx,0x2
  5ab1b9:	7e 0d                                           	jle    0x5ab1c8
  5ab1bb:	85 c0                                           	test   eax,eax
  5ab1bd:	74 09                                           	je     0x5ab1c8
  5ab1bf:	50                                              	push   eax
  5ab1c0:	e8 1b 93 f3 ff                                  	call   0x4e44e0
  5ab1c5:	83 c4 04                                        	add    esp,0x4
  5ab1c8:	5e                                              	pop    esi
  5ab1c9:	5f                                              	pop    edi
  5ab1ca:	5b                                              	pop    ebx
  5ab1cb:	83 c4 20                                        	add    esp,0x20
  5ab1ce:	c3                                              	ret
  5ab1cf:	cc                                              	int3
