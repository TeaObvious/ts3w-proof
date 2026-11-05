# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9fc0 (ScriptCore.CASUtils::CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl)
Paired Ghidra pseudocode: 005A9FC0_ScriptCore_CASUtils_CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl.c
Window: [0x005a9fc0, 0x005aa030) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aa030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9fc0: 8b 44 24 04 25 00 00 00 ff 3d 00 00 00 30 75 58
005a9fd0: 56 e8 9a d5 38 00 8b 4c 24 10 8b 54 24 0c 51 52
005a9fe0: 8b c8 e8 99 df 38 00 8b f0 85 f6 74 3a 57 8d 7e
005a9ff0: 04 8b c7 b9 01 00 00 00 f0 0f c1 08 6a 00 56 6a
005aa000: 0c e8 ba b6 38 00 83 c4 0c 8b d7 83 c8 ff f0 0f
005aa010: c1 02 48 75 11 b9 01 00 00 00 87 0f 8b 16 8b 02
005aa020: 6a 01 8b ce ff d0 5f 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9fc0 <.text+0x1a8fc0>:
  5a9fc0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  5a9fc4:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a9fc9:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5a9fce:	75 58                                           	jne    0x5aa028
  5a9fd0:	56                                              	push   esi
  5a9fd1:	e8 9a d5 38 00                                  	call   0x937570
  5a9fd6:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5a9fda:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a9fde:	51                                              	push   ecx
  5a9fdf:	52                                              	push   edx
  5a9fe0:	8b c8                                           	mov    ecx,eax
  5a9fe2:	e8 99 df 38 00                                  	call   0x937f80
  5a9fe7:	8b f0                                           	mov    esi,eax
  5a9fe9:	85 f6                                           	test   esi,esi
  5a9feb:	74 3a                                           	je     0x5aa027
  5a9fed:	57                                              	push   edi
  5a9fee:	8d 7e 04                                        	lea    edi,[esi+0x4]
  5a9ff1:	8b c7                                           	mov    eax,edi
  5a9ff3:	b9 01 00 00 00                                  	mov    ecx,0x1
  5a9ff8:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9ffc:	6a 00                                           	push   0x0
  5a9ffe:	56                                              	push   esi
  5a9fff:	6a 0c                                           	push   0xc
  5aa001:	e8 ba b6 38 00                                  	call   0x9356c0
  5aa006:	83 c4 0c                                        	add    esp,0xc
  5aa009:	8b d7                                           	mov    edx,edi
  5aa00b:	83 c8 ff                                        	or     eax,0xffffffff
  5aa00e:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  5aa012:	48                                              	dec    eax
  5aa013:	75 11                                           	jne    0x5aa026
  5aa015:	b9 01 00 00 00                                  	mov    ecx,0x1
  5aa01a:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  5aa01c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5aa01e:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5aa020:	6a 01                                           	push   0x1
  5aa022:	8b ce                                           	mov    ecx,esi
  5aa024:	ff d0                                           	call   eax
  5aa026:	5f                                              	pop    edi
  5aa027:	5e                                              	pop    esi
  5aa028:	c3                                              	ret
  5aa029:	cc                                              	int3
  5aa02a:	cc                                              	int3
  5aa02b:	cc                                              	int3
  5aa02c:	cc                                              	int3
  5aa02d:	cc                                              	int3
  5aa02e:	cc                                              	int3
  5aa02f:	cc                                              	int3
