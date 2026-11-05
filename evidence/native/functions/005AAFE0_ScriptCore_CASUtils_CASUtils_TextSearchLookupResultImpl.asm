# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aafe0 (ScriptCore.CASUtils::CASUtils_TextSearchLookupResultImpl)
Paired Ghidra pseudocode: 005AAFE0_ScriptCore_CASUtils_CASUtils_TextSearchLookupResultImpl.c
Window: [0x005aafe0, 0x005ab060) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aafe0: 56 57 8b 7c 24 0c 6a 48 6a 00 57 e8 a8 42 9d 00
005aaff0: 8b 74 24 1c 8b c6 25 00 00 00 ff 83 c4 0c 3d 00
005ab000: 00 00 35 75 4a e8 86 e3 1b 00 8b 10 8b c8 8b 82
005ab010: cc 00 00 00 56 ff d0 85 c0 74 34 8b 54 24 18 8d
005ab020: 4c 24 0c 51 8b 4c 24 18 52 51 8b c8 e8 af fd ff
005ab030: ff 84 c0 74 1a 8b 74 24 0c 8d 56 08 57 52 e8 4d
005ab040: ce ff ff 8b 06 8b 50 04 83 c4 08 8b ce ff d2 8b
005ab050: c7 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aafe0 <.text+0x1a9fe0>:
  5aafe0:	56                                              	push   esi
  5aafe1:	57                                              	push   edi
  5aafe2:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  5aafe6:	6a 48                                           	push   0x48
  5aafe8:	6a 00                                           	push   0x0
  5aafea:	57                                              	push   edi
  5aafeb:	e8 a8 42 9d 00                                  	call   0xf7f298
  5aaff0:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  5aaff4:	8b c6                                           	mov    eax,esi
  5aaff6:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aaffb:	83 c4 0c                                        	add    esp,0xc
  5aaffe:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ab003:	75 4a                                           	jne    0x5ab04f
  5ab005:	e8 86 e3 1b 00                                  	call   0x769390
  5ab00a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab00c:	8b c8                                           	mov    ecx,eax
  5ab00e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab014:	56                                              	push   esi
  5ab015:	ff d0                                           	call   eax
  5ab017:	85 c0                                           	test   eax,eax
  5ab019:	74 34                                           	je     0x5ab04f
  5ab01b:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5ab01f:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5ab023:	51                                              	push   ecx
  5ab024:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5ab028:	52                                              	push   edx
  5ab029:	51                                              	push   ecx
  5ab02a:	8b c8                                           	mov    ecx,eax
  5ab02c:	e8 af fd ff ff                                  	call   0x5aade0
  5ab031:	84 c0                                           	test   al,al
  5ab033:	74 1a                                           	je     0x5ab04f
  5ab035:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5ab039:	8d 56 08                                        	lea    edx,[esi+0x8]
  5ab03c:	57                                              	push   edi
  5ab03d:	52                                              	push   edx
  5ab03e:	e8 4d ce ff ff                                  	call   0x5a7e90
  5ab043:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5ab045:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5ab048:	83 c4 08                                        	add    esp,0x8
  5ab04b:	8b ce                                           	mov    ecx,esi
  5ab04d:	ff d2                                           	call   edx
  5ab04f:	8b c7                                           	mov    eax,edi
  5ab051:	5f                                              	pop    edi
  5ab052:	5e                                              	pop    esi
  5ab053:	c3                                              	ret
  5ab054:	cc                                              	int3
  5ab055:	cc                                              	int3
  5ab056:	cc                                              	int3
  5ab057:	cc                                              	int3
  5ab058:	cc                                              	int3
  5ab059:	cc                                              	int3
  5ab05a:	cc                                              	int3
  5ab05b:	cc                                              	int3
  5ab05c:	cc                                              	int3
  5ab05d:	cc                                              	int3
  5ab05e:	cc                                              	int3
  5ab05f:	cc                                              	int3
