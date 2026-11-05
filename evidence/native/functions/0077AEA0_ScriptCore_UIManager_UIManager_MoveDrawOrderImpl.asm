# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077aea0 (ScriptCore.UIManager::UIManager_MoveDrawOrderImpl)
Paired Ghidra pseudocode: 0077AEA0_ScriptCore_UIManager_UIManager_MoveDrawOrderImpl.c
Window: [0x0077aea0, 0x0077af20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077af20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077aea0: e8 eb e4 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077aeb0: ff 81 fa 00 00 00 30 75 5b 8b 10 51 8b c8 8b 82
0077aec0: cc 00 00 00 ff d0 85 c0 74 4a 8b 10 56 8b c8 8b
0077aed0: 42 0c 68 18 82 ee ee ff d0 8b f0 85 f6 74 34 8b
0077aee0: 16 8b 42 10 8b ce ff d0 85 c0 74 27 8b 16 8b 42
0077aef0: 10 8b ce ff d0 80 7c 24 0c 00 8b 10 56 8b c8 74
0077af00: 0a 8b 82 ec 00 00 00 ff d0 5e c3 8b 82 f0 00 00
0077af10: 00 ff d0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077aea0 <.text+0x379ea0>:
  77aea0:	e8 eb e4 fe ff                                  	call   0x769390
  77aea5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77aea9:	8b d1                                           	mov    edx,ecx
  77aeab:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77aeb1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77aeb7:	75 5b                                           	jne    0x77af14
  77aeb9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aebb:	51                                              	push   ecx
  77aebc:	8b c8                                           	mov    ecx,eax
  77aebe:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77aec4:	ff d0                                           	call   eax
  77aec6:	85 c0                                           	test   eax,eax
  77aec8:	74 4a                                           	je     0x77af14
  77aeca:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aecc:	56                                              	push   esi
  77aecd:	8b c8                                           	mov    ecx,eax
  77aecf:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77aed2:	68 18 82 ee ee                                  	push   0xeeee8218
  77aed7:	ff d0                                           	call   eax
  77aed9:	8b f0                                           	mov    esi,eax
  77aedb:	85 f6                                           	test   esi,esi
  77aedd:	74 34                                           	je     0x77af13
  77aedf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77aee1:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  77aee4:	8b ce                                           	mov    ecx,esi
  77aee6:	ff d0                                           	call   eax
  77aee8:	85 c0                                           	test   eax,eax
  77aeea:	74 27                                           	je     0x77af13
  77aeec:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77aeee:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  77aef1:	8b ce                                           	mov    ecx,esi
  77aef3:	ff d0                                           	call   eax
  77aef5:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  77aefa:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aefc:	56                                              	push   esi
  77aefd:	8b c8                                           	mov    ecx,eax
  77aeff:	74 0a                                           	je     0x77af0b
  77af01:	8b 82 ec 00 00 00                               	mov    eax,DWORD PTR [edx+0xec]
  77af07:	ff d0                                           	call   eax
  77af09:	5e                                              	pop    esi
  77af0a:	c3                                              	ret
  77af0b:	8b 82 f0 00 00 00                               	mov    eax,DWORD PTR [edx+0xf0]
  77af11:	ff d0                                           	call   eax
  77af13:	5e                                              	pop    esi
  77af14:	c3                                              	ret
  77af15:	cc                                              	int3
  77af16:	cc                                              	int3
  77af17:	cc                                              	int3
  77af18:	cc                                              	int3
  77af19:	cc                                              	int3
  77af1a:	cc                                              	int3
  77af1b:	cc                                              	int3
  77af1c:	cc                                              	int3
  77af1d:	cc                                              	int3
  77af1e:	cc                                              	int3
  77af1f:	cc                                              	int3
