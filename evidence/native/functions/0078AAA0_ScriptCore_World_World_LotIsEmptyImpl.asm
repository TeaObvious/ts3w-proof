# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078aaa0 (ScriptCore.World::World_LotIsEmptyImpl)
Paired Ghidra pseudocode: 0078AAA0_ScriptCore_World_World_LotIsEmptyImpl.c
Window: [0x0078aaa0, 0x0078ab40) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ab40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078aaa0: 8b 0d c4 db 1e 01 85 c9 75 03 32 c0 c3 8b 44 24
0078aab0: 08 8b 54 24 04 56 6a 00 50 52 e8 51 7d 4d 00 8b
0078aac0: f0 85 f6 74 0f 6a 00 56 e8 a3 71 37 00 83 c4 08
0078aad0: 84 c0 75 04 32 c0 5e c3 55 8b 2d 34 e0 1e 01 85
0078aae0: ed 75 05 5d 32 c0 5e c3 57 8b ce e8 60 31 4e 00
0078aaf0: 8b 30 8b 78 04 3b f7 74 39 8d a4 24 00 00 00 00
0078ab00: 8b 06 8b 0d f8 a0 1e 01 85 48 2c 75 1e 83 c0 18
0078ab10: 81 78 08 1d 4f 9e 31 75 12 50 8b cd e8 8f 40 50
0078ab20: 00 85 c0 74 06 f6 40 64 01 75 0d 83 c6 04 3b f7
0078ab30: 75 ce 5f 5d b0 01 5e c3 5f 5d 32 c0 5e c3 cc cc

LINEAR DISASSEMBLY
0078aaa0 <.text+0x389aa0>:
  78aaa0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78aaa6:	85 c9                                           	test   ecx,ecx
  78aaa8:	75 03                                           	jne    0x78aaad
  78aaaa:	32 c0                                           	xor    al,al
  78aaac:	c3                                              	ret
  78aaad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78aab1:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78aab5:	56                                              	push   esi
  78aab6:	6a 00                                           	push   0x0
  78aab8:	50                                              	push   eax
  78aab9:	52                                              	push   edx
  78aaba:	e8 51 7d 4d 00                                  	call   0xc62810
  78aabf:	8b f0                                           	mov    esi,eax
  78aac1:	85 f6                                           	test   esi,esi
  78aac3:	74 0f                                           	je     0x78aad4
  78aac5:	6a 00                                           	push   0x0
  78aac7:	56                                              	push   esi
  78aac8:	e8 a3 71 37 00                                  	call   0xb01c70
  78aacd:	83 c4 08                                        	add    esp,0x8
  78aad0:	84 c0                                           	test   al,al
  78aad2:	75 04                                           	jne    0x78aad8
  78aad4:	32 c0                                           	xor    al,al
  78aad6:	5e                                              	pop    esi
  78aad7:	c3                                              	ret
  78aad8:	55                                              	push   ebp
  78aad9:	8b 2d 34 e0 1e 01                               	mov    ebp,DWORD PTR ds:0x11ee034
  78aadf:	85 ed                                           	test   ebp,ebp
  78aae1:	75 05                                           	jne    0x78aae8
  78aae3:	5d                                              	pop    ebp
  78aae4:	32 c0                                           	xor    al,al
  78aae6:	5e                                              	pop    esi
  78aae7:	c3                                              	ret
  78aae8:	57                                              	push   edi
  78aae9:	8b ce                                           	mov    ecx,esi
  78aaeb:	e8 60 31 4e 00                                  	call   0xc6dc50
  78aaf0:	8b 30                                           	mov    esi,DWORD PTR [eax]
  78aaf2:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  78aaf5:	3b f7                                           	cmp    esi,edi
  78aaf7:	74 39                                           	je     0x78ab32
  78aaf9:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  78ab00:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78ab02:	8b 0d f8 a0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea0f8
  78ab08:	85 48 2c                                        	test   DWORD PTR [eax+0x2c],ecx
  78ab0b:	75 1e                                           	jne    0x78ab2b
  78ab0d:	83 c0 18                                        	add    eax,0x18
  78ab10:	81 78 08 1d 4f 9e 31                            	cmp    DWORD PTR [eax+0x8],0x319e4f1d
  78ab17:	75 12                                           	jne    0x78ab2b
  78ab19:	50                                              	push   eax
  78ab1a:	8b cd                                           	mov    ecx,ebp
  78ab1c:	e8 8f 40 50 00                                  	call   0xc8ebb0
  78ab21:	85 c0                                           	test   eax,eax
  78ab23:	74 06                                           	je     0x78ab2b
  78ab25:	f6 40 64 01                                     	test   BYTE PTR [eax+0x64],0x1
  78ab29:	75 0d                                           	jne    0x78ab38
  78ab2b:	83 c6 04                                        	add    esi,0x4
  78ab2e:	3b f7                                           	cmp    esi,edi
  78ab30:	75 ce                                           	jne    0x78ab00
  78ab32:	5f                                              	pop    edi
  78ab33:	5d                                              	pop    ebp
  78ab34:	b0 01                                           	mov    al,0x1
  78ab36:	5e                                              	pop    esi
  78ab37:	c3                                              	ret
  78ab38:	5f                                              	pop    edi
  78ab39:	5d                                              	pop    ebp
  78ab3a:	32 c0                                           	xor    al,al
  78ab3c:	5e                                              	pop    esi
  78ab3d:	c3                                              	ret
  78ab3e:	cc                                              	int3
  78ab3f:	cc                                              	int3
