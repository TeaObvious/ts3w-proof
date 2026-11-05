# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077acd0 (ScriptCore.UIManager::UIManager_IsWindowAttachedImpl)
Paired Ghidra pseudocode: 0077ACD0_ScriptCore_UIManager_UIManager_IsWindowAttachedImpl.c
Window: [0x0077acd0, 0x0077ad30) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077ad30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077acd0: e8 bb e6 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077ace0: ff 81 fa 00 00 00 30 75 3f 8b 10 51 8b c8 8b 82
0077acf0: cc 00 00 00 ff d0 85 c0 74 2e 8b 10 8b c8 8b 42
0077ad00: 0c 68 18 82 ee ee ff d0 85 c0 74 1c 8b 10 8b c8
0077ad10: 8b 42 14 56 ff d0 8b f0 e8 73 02 d9 ff 33 c9 3b
0077ad20: f0 0f 94 c1 8a c1 5e c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0077acd0 <.text+0x379cd0>:
  77acd0:	e8 bb e6 fe ff                                  	call   0x769390
  77acd5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77acd9:	8b d1                                           	mov    edx,ecx
  77acdb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77ace1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77ace7:	75 3f                                           	jne    0x77ad28
  77ace9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aceb:	51                                              	push   ecx
  77acec:	8b c8                                           	mov    ecx,eax
  77acee:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77acf4:	ff d0                                           	call   eax
  77acf6:	85 c0                                           	test   eax,eax
  77acf8:	74 2e                                           	je     0x77ad28
  77acfa:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77acfc:	8b c8                                           	mov    ecx,eax
  77acfe:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ad01:	68 18 82 ee ee                                  	push   0xeeee8218
  77ad06:	ff d0                                           	call   eax
  77ad08:	85 c0                                           	test   eax,eax
  77ad0a:	74 1c                                           	je     0x77ad28
  77ad0c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ad0e:	8b c8                                           	mov    ecx,eax
  77ad10:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  77ad13:	56                                              	push   esi
  77ad14:	ff d0                                           	call   eax
  77ad16:	8b f0                                           	mov    esi,eax
  77ad18:	e8 73 02 d9 ff                                  	call   0x50af90
  77ad1d:	33 c9                                           	xor    ecx,ecx
  77ad1f:	3b f0                                           	cmp    esi,eax
  77ad21:	0f 94 c1                                        	sete   cl
  77ad24:	8a c1                                           	mov    al,cl
  77ad26:	5e                                              	pop    esi
  77ad27:	c3                                              	ret
  77ad28:	32 c0                                           	xor    al,al
  77ad2a:	c3                                              	ret
  77ad2b:	cc                                              	int3
  77ad2c:	cc                                              	int3
  77ad2d:	cc                                              	int3
  77ad2e:	cc                                              	int3
  77ad2f:	cc                                              	int3
