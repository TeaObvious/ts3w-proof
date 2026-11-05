# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077cfc0 (ScriptCore.UIManager::UIManager_ResetEffectImpl)
Paired Ghidra pseudocode: 0077CFC0_ScriptCore_UIManager_UIManager_ResetEffectImpl.c
Window: [0x0077cfc0, 0x0077d040) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077cfc0: e8 cb c3 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077cfd0: ff 81 fa 00 00 00 30 75 5f 8b 10 56 51 8b c8 8b
0077cfe0: 82 cc 00 00 00 ff d0 8b f0 85 f6 74 4a 8b 16 8b
0077cff0: 42 0c 68 0b 63 2b 8f 8b ce ff d0 85 c0 74 14 80
0077d000: 7c 24 0c 00 8b 10 8b 52 4c 0f 94 c1 51 8b c8 ff
0077d010: d2 5e c3 8b 06 8b 50 0c 68 2f 9c 23 08 8b ce ff
0077d020: d2 85 c0 74 12 80 7c 24 0c 00 8b 10 8b 52 24 0f
0077d030: 94 c1 51 8b c8 ff d2 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077cfc0 <.text+0x37bfc0>:
  77cfc0:	e8 cb c3 fe ff                                  	call   0x769390
  77cfc5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77cfc9:	8b d1                                           	mov    edx,ecx
  77cfcb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77cfd1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77cfd7:	75 5f                                           	jne    0x77d038
  77cfd9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77cfdb:	56                                              	push   esi
  77cfdc:	51                                              	push   ecx
  77cfdd:	8b c8                                           	mov    ecx,eax
  77cfdf:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77cfe5:	ff d0                                           	call   eax
  77cfe7:	8b f0                                           	mov    esi,eax
  77cfe9:	85 f6                                           	test   esi,esi
  77cfeb:	74 4a                                           	je     0x77d037
  77cfed:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cfef:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77cff2:	68 0b 63 2b 8f                                  	push   0x8f2b630b
  77cff7:	8b ce                                           	mov    ecx,esi
  77cff9:	ff d0                                           	call   eax
  77cffb:	85 c0                                           	test   eax,eax
  77cffd:	74 14                                           	je     0x77d013
  77cfff:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  77d004:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d006:	8b 52 4c                                        	mov    edx,DWORD PTR [edx+0x4c]
  77d009:	0f 94 c1                                        	sete   cl
  77d00c:	51                                              	push   ecx
  77d00d:	8b c8                                           	mov    ecx,eax
  77d00f:	ff d2                                           	call   edx
  77d011:	5e                                              	pop    esi
  77d012:	c3                                              	ret
  77d013:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77d015:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  77d018:	68 2f 9c 23 08                                  	push   0x8239c2f
  77d01d:	8b ce                                           	mov    ecx,esi
  77d01f:	ff d2                                           	call   edx
  77d021:	85 c0                                           	test   eax,eax
  77d023:	74 12                                           	je     0x77d037
  77d025:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  77d02a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d02c:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  77d02f:	0f 94 c1                                        	sete   cl
  77d032:	51                                              	push   ecx
  77d033:	8b c8                                           	mov    ecx,eax
  77d035:	ff d2                                           	call   edx
  77d037:	5e                                              	pop    esi
  77d038:	c3                                              	ret
  77d039:	cc                                              	int3
  77d03a:	cc                                              	int3
  77d03b:	cc                                              	int3
  77d03c:	cc                                              	int3
  77d03d:	cc                                              	int3
  77d03e:	cc                                              	int3
  77d03f:	cc                                              	int3
