# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b000 (ScriptCore.UIManager::UIManager_ReleaseCaptureImpl)
Paired Ghidra pseudocode: 0077B000_ScriptCore_UIManager_UIManager_ReleaseCaptureImpl.c
Window: [0x0077b000, 0x0077b060) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b000: e8 8b e3 fe ff 8b 4c 24 08 8b d1 81 e2 00 00 00
0077b010: ff 81 fa 00 00 00 30 75 3d 8b 10 51 8b c8 8b 82
0077b020: cc 00 00 00 ff d0 85 c0 74 2c 8b 10 56 8b c8 8b
0077b030: 42 0c 68 18 82 ee ee ff d0 8b f0 85 f6 74 16 e8
0077b040: 4c ff d8 ff 8b 4c 24 08 8b 10 8b 52 68 6a 00 56
0077b050: 51 8b c8 ff d2 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b000 <.text+0x37a000>:
  77b000:	e8 8b e3 fe ff                                  	call   0x769390
  77b005:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77b009:	8b d1                                           	mov    edx,ecx
  77b00b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b011:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b017:	75 3d                                           	jne    0x77b056
  77b019:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b01b:	51                                              	push   ecx
  77b01c:	8b c8                                           	mov    ecx,eax
  77b01e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b024:	ff d0                                           	call   eax
  77b026:	85 c0                                           	test   eax,eax
  77b028:	74 2c                                           	je     0x77b056
  77b02a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b02c:	56                                              	push   esi
  77b02d:	8b c8                                           	mov    ecx,eax
  77b02f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b032:	68 18 82 ee ee                                  	push   0xeeee8218
  77b037:	ff d0                                           	call   eax
  77b039:	8b f0                                           	mov    esi,eax
  77b03b:	85 f6                                           	test   esi,esi
  77b03d:	74 16                                           	je     0x77b055
  77b03f:	e8 4c ff d8 ff                                  	call   0x50af90
  77b044:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77b048:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b04a:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  77b04d:	6a 00                                           	push   0x0
  77b04f:	56                                              	push   esi
  77b050:	51                                              	push   ecx
  77b051:	8b c8                                           	mov    ecx,eax
  77b053:	ff d2                                           	call   edx
  77b055:	5e                                              	pop    esi
  77b056:	c3                                              	ret
  77b057:	cc                                              	int3
  77b058:	cc                                              	int3
  77b059:	cc                                              	int3
  77b05a:	cc                                              	int3
  77b05b:	cc                                              	int3
  77b05c:	cc                                              	int3
  77b05d:	cc                                              	int3
  77b05e:	cc                                              	int3
  77b05f:	cc                                              	int3
