# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a110 (ScriptCore.Animation::Animation_GetClipInstanceIdForAges)
Paired Ghidra pseudocode: 0073A110_ScriptCore_Animation_Animation_GetClipInstanceIdForAges.c
Window: [0x0073a110, 0x0073a1b0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a1b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a110: 81 ec 10 01 00 00 53 55 56 57 e8 71 f2 02 00 8b
0073a120: 8c 24 24 01 00 00 8b 10 8b 52 58 51 8b c8 ff d2
0073a130: 6a ff 50 8d 44 24 28 68 00 01 00 00 50 e8 4e a5
0073a140: db ff 8b 8c 24 3c 01 00 00 8b 94 24 38 01 00 00
0073a150: 33 c0 51 52 89 44 24 28 89 44 24 2c e8 2f fa e3
0073a160: ff 8b f0 8d 44 24 28 50 8d 4c 24 3c 51 8b fa e8
0073a170: 4c 06 e4 ff 57 8b ea 8b 54 24 38 56 8b d8 8b 44
0073a180: 24 38 52 50 e8 47 fa e3 ff 57 56 55 53 89 44 24
0073a190: 58 89 54 24 5c e8 36 fa e3 ff 8b 44 24 58 8b 54
0073a1a0: 24 5c 83 c4 40 5f 5e 5d 5b 81 c4 10 01 00 00 c3

LINEAR DISASSEMBLY
0073a110 <.text+0x339110>:
  73a110:	81 ec 10 01 00 00                               	sub    esp,0x110
  73a116:	53                                              	push   ebx
  73a117:	55                                              	push   ebp
  73a118:	56                                              	push   esi
  73a119:	57                                              	push   edi
  73a11a:	e8 71 f2 02 00                                  	call   0x769390
  73a11f:	8b 8c 24 24 01 00 00                            	mov    ecx,DWORD PTR [esp+0x124]
  73a126:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73a128:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  73a12b:	51                                              	push   ecx
  73a12c:	8b c8                                           	mov    ecx,eax
  73a12e:	ff d2                                           	call   edx
  73a130:	6a ff                                           	push   0xffffffff
  73a132:	50                                              	push   eax
  73a133:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  73a137:	68 00 01 00 00                                  	push   0x100
  73a13c:	50                                              	push   eax
  73a13d:	e8 4e a5 db ff                                  	call   0x4f4690
  73a142:	8b 8c 24 3c 01 00 00                            	mov    ecx,DWORD PTR [esp+0x13c]
  73a149:	8b 94 24 38 01 00 00                            	mov    edx,DWORD PTR [esp+0x138]
  73a150:	33 c0                                           	xor    eax,eax
  73a152:	51                                              	push   ecx
  73a153:	52                                              	push   edx
  73a154:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  73a158:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  73a15c:	e8 2f fa e3 ff                                  	call   0x579b90
  73a161:	8b f0                                           	mov    esi,eax
  73a163:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  73a167:	50                                              	push   eax
  73a168:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  73a16c:	51                                              	push   ecx
  73a16d:	8b fa                                           	mov    edi,edx
  73a16f:	e8 4c 06 e4 ff                                  	call   0x57a7c0
  73a174:	57                                              	push   edi
  73a175:	8b ea                                           	mov    ebp,edx
  73a177:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  73a17b:	56                                              	push   esi
  73a17c:	8b d8                                           	mov    ebx,eax
  73a17e:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  73a182:	52                                              	push   edx
  73a183:	50                                              	push   eax
  73a184:	e8 47 fa e3 ff                                  	call   0x579bd0
  73a189:	57                                              	push   edi
  73a18a:	56                                              	push   esi
  73a18b:	55                                              	push   ebp
  73a18c:	53                                              	push   ebx
  73a18d:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
  73a191:	89 54 24 5c                                     	mov    DWORD PTR [esp+0x5c],edx
  73a195:	e8 36 fa e3 ff                                  	call   0x579bd0
  73a19a:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  73a19e:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  73a1a2:	83 c4 40                                        	add    esp,0x40
  73a1a5:	5f                                              	pop    edi
  73a1a6:	5e                                              	pop    esi
  73a1a7:	5d                                              	pop    ebp
  73a1a8:	5b                                              	pop    ebx
  73a1a9:	81 c4 10 01 00 00                               	add    esp,0x110
  73a1af:	c3                                              	ret
