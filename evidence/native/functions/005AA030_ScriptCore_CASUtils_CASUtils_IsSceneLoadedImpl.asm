# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aa030 (ScriptCore.CASUtils::CASUtils_IsSceneLoadedImpl)
Paired Ghidra pseudocode: 005AA030_ScriptCore_CASUtils_CASUtils_IsSceneLoadedImpl.c
Window: [0x005aa030, 0x005aa0e0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aa0e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aa030: 83 ec 20 53 56 8b 74 24 2c 8b c6 25 00 00 00 ff
005aa040: 3d 00 00 00 30 bb 01 00 00 00 0f 85 81 00 00 00
005aa050: e8 3b f3 1b 00 8b 10 8b c8 8b 82 cc 00 00 00 56
005aa060: ff d0 85 c0 74 6b 8b 10 8b c8 8b 42 0c 68 6f 43
005aa070: 9a 03 ff d0 8b f0 85 f6 74 57 c7 44 24 08 f4 a6
005aa080: fb 00 88 5c 24 18 66 89 5c 24 12 66 c7 44 24 10
005aa090: 00 00 e8 f9 f2 1b 00 53 8b ce e8 41 13 24 00 85
005aa0a0: c0 74 14 6a 00 6a 00 6a 00 6a ff 8b c8 e8 9e 9b
005aa0b0: 14 00 84 c0 0f 94 c3 f6 44 24 10 04 c7 44 24 08
005aa0c0: f4 a6 fb 00 74 0b 6a 00 8d 4c 24 0c e8 8f b6 f4
005aa0d0: ff 5e 8a c3 5b 83 c4 20 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aa030 <.text+0x1a9030>:
  5aa030:	83 ec 20                                        	sub    esp,0x20
  5aa033:	53                                              	push   ebx
  5aa034:	56                                              	push   esi
  5aa035:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  5aa039:	8b c6                                           	mov    eax,esi
  5aa03b:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aa040:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5aa045:	bb 01 00 00 00                                  	mov    ebx,0x1
  5aa04a:	0f 85 81 00 00 00                               	jne    0x5aa0d1
  5aa050:	e8 3b f3 1b 00                                  	call   0x769390
  5aa055:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa057:	8b c8                                           	mov    ecx,eax
  5aa059:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aa05f:	56                                              	push   esi
  5aa060:	ff d0                                           	call   eax
  5aa062:	85 c0                                           	test   eax,eax
  5aa064:	74 6b                                           	je     0x5aa0d1
  5aa066:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa068:	8b c8                                           	mov    ecx,eax
  5aa06a:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5aa06d:	68 6f 43 9a 03                                  	push   0x39a436f
  5aa072:	ff d0                                           	call   eax
  5aa074:	8b f0                                           	mov    esi,eax
  5aa076:	85 f6                                           	test   esi,esi
  5aa078:	74 57                                           	je     0x5aa0d1
  5aa07a:	c7 44 24 08 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x8],0xfba6f4
  5aa082:	88 5c 24 18                                     	mov    BYTE PTR [esp+0x18],bl
  5aa086:	66 89 5c 24 12                                  	mov    WORD PTR [esp+0x12],bx
  5aa08b:	66 c7 44 24 10 00 00                            	mov    WORD PTR [esp+0x10],0x0
  5aa092:	e8 f9 f2 1b 00                                  	call   0x769390
  5aa097:	53                                              	push   ebx
  5aa098:	8b ce                                           	mov    ecx,esi
  5aa09a:	e8 41 13 24 00                                  	call   0x7eb3e0
  5aa09f:	85 c0                                           	test   eax,eax
  5aa0a1:	74 14                                           	je     0x5aa0b7
  5aa0a3:	6a 00                                           	push   0x0
  5aa0a5:	6a 00                                           	push   0x0
  5aa0a7:	6a 00                                           	push   0x0
  5aa0a9:	6a ff                                           	push   0xffffffff
  5aa0ab:	8b c8                                           	mov    ecx,eax
  5aa0ad:	e8 9e 9b 14 00                                  	call   0x6f3c50
  5aa0b2:	84 c0                                           	test   al,al
  5aa0b4:	0f 94 c3                                        	sete   bl
  5aa0b7:	f6 44 24 10 04                                  	test   BYTE PTR [esp+0x10],0x4
  5aa0bc:	c7 44 24 08 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x8],0xfba6f4
  5aa0c4:	74 0b                                           	je     0x5aa0d1
  5aa0c6:	6a 00                                           	push   0x0
  5aa0c8:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5aa0cc:	e8 8f b6 f4 ff                                  	call   0x4f5760
  5aa0d1:	5e                                              	pop    esi
  5aa0d2:	8a c3                                           	mov    al,bl
  5aa0d4:	5b                                              	pop    ebx
  5aa0d5:	83 c4 20                                        	add    esp,0x20
  5aa0d8:	c3                                              	ret
  5aa0d9:	cc                                              	int3
  5aa0da:	cc                                              	int3
  5aa0db:	cc                                              	int3
  5aa0dc:	cc                                              	int3
  5aa0dd:	cc                                              	int3
  5aa0de:	cc                                              	int3
  5aa0df:	cc                                              	int3
