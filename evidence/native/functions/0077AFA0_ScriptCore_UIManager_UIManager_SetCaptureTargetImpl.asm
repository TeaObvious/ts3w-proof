# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077afa0 (ScriptCore.UIManager::UIManager_SetCaptureTargetImpl)
Paired Ghidra pseudocode: 0077AFA0_ScriptCore_UIManager_UIManager_SetCaptureTargetImpl.c
Window: [0x0077afa0, 0x0077b000) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077afa0: e8 eb e3 fe ff 8b 4c 24 08 8b d1 81 e2 00 00 00
0077afb0: ff 81 fa 00 00 00 30 75 40 8b 10 51 8b c8 8b 82
0077afc0: cc 00 00 00 ff d0 85 c0 74 2f 8b 10 56 8b c8 8b
0077afd0: 42 0c 68 18 82 ee ee ff d0 8b f0 85 f6 74 19 e8
0077afe0: ac ff d8 ff 8b 4c 24 10 8b 10 8b 52 64 51 8b 4c
0077aff0: 24 0c 56 51 8b c8 ff d2 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077afa0 <.text+0x379fa0>:
  77afa0:	e8 eb e3 fe ff                                  	call   0x769390
  77afa5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77afa9:	8b d1                                           	mov    edx,ecx
  77afab:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77afb1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77afb7:	75 40                                           	jne    0x77aff9
  77afb9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77afbb:	51                                              	push   ecx
  77afbc:	8b c8                                           	mov    ecx,eax
  77afbe:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77afc4:	ff d0                                           	call   eax
  77afc6:	85 c0                                           	test   eax,eax
  77afc8:	74 2f                                           	je     0x77aff9
  77afca:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77afcc:	56                                              	push   esi
  77afcd:	8b c8                                           	mov    ecx,eax
  77afcf:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77afd2:	68 18 82 ee ee                                  	push   0xeeee8218
  77afd7:	ff d0                                           	call   eax
  77afd9:	8b f0                                           	mov    esi,eax
  77afdb:	85 f6                                           	test   esi,esi
  77afdd:	74 19                                           	je     0x77aff8
  77afdf:	e8 ac ff d8 ff                                  	call   0x50af90
  77afe4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  77afe8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77afea:	8b 52 64                                        	mov    edx,DWORD PTR [edx+0x64]
  77afed:	51                                              	push   ecx
  77afee:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77aff2:	56                                              	push   esi
  77aff3:	51                                              	push   ecx
  77aff4:	8b c8                                           	mov    ecx,eax
  77aff6:	ff d2                                           	call   edx
  77aff8:	5e                                              	pop    esi
  77aff9:	c3                                              	ret
  77affa:	cc                                              	int3
  77affb:	cc                                              	int3
  77affc:	cc                                              	int3
  77affd:	cc                                              	int3
  77affe:	cc                                              	int3
  77afff:	cc                                              	int3
