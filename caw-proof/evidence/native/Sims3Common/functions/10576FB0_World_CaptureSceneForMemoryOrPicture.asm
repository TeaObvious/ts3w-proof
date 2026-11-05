# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576fb0 (World_CaptureSceneForMemoryOrPicture)
Paired Ghidra pseudocode: 10576FB0_World_CaptureSceneForMemoryOrPicture.c
Window: [0x10576fb0, 0x10577040) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576fb0: 83 ec 08 56 57 e8 c6 61 25 00 8b f8 e8 5f 41 fe
10576fc0: ff 85 ff 8b f0 74 6c 85 f6 74 68 8b 06 8b 90 18
10576fd0: 01 00 00 53 8b ce ff d2 8b 4c 24 34 8b 1e 6a 00
10576fe0: 51 6a ff 52 89 54 24 20 8b 93 20 01 00 00 50 8b
10576ff0: ce 89 44 24 20 ff d2 8b 4c 24 30 8b 54 24 2c 8d
10577000: 44 24 0c 50 8b 44 24 2c 51 8b 4c 24 2c 52 8b 54
10577010: 24 2c 50 8b 44 24 2c 51 8b 4c 24 2c 52 50 51 8b
10577020: cf e8 da 5a 25 00 8b 16 8b 82 1c 01 00 00 8b ce
10577030: ff d0 5b 5f 5e 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576fb0 <.text+0x575fb0>:
10576fb0:	83 ec 08                                        	sub    esp,0x8
10576fb3:	56                                              	push   esi
10576fb4:	57                                              	push   edi
10576fb5:	e8 c6 61 25 00                                  	call   0x107cd180
10576fba:	8b f8                                           	mov    edi,eax
10576fbc:	e8 5f 41 fe ff                                  	call   0x1055b120
10576fc1:	85 ff                                           	test   edi,edi
10576fc3:	8b f0                                           	mov    esi,eax
10576fc5:	74 6c                                           	je     0x10577033
10576fc7:	85 f6                                           	test   esi,esi
10576fc9:	74 68                                           	je     0x10577033
10576fcb:	8b 06                                           	mov    eax,DWORD PTR [esi]
10576fcd:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
10576fd3:	53                                              	push   ebx
10576fd4:	8b ce                                           	mov    ecx,esi
10576fd6:	ff d2                                           	call   edx
10576fd8:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10576fdc:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
10576fde:	6a 00                                           	push   0x0
10576fe0:	51                                              	push   ecx
10576fe1:	6a ff                                           	push   0xffffffff
10576fe3:	52                                              	push   edx
10576fe4:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
10576fe8:	8b 93 20 01 00 00                               	mov    edx,DWORD PTR [ebx+0x120]
10576fee:	50                                              	push   eax
10576fef:	8b ce                                           	mov    ecx,esi
10576ff1:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
10576ff5:	ff d2                                           	call   edx
10576ff7:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10576ffb:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
10576fff:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10577003:	50                                              	push   eax
10577004:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10577008:	51                                              	push   ecx
10577009:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1057700d:	52                                              	push   edx
1057700e:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
10577012:	50                                              	push   eax
10577013:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10577017:	51                                              	push   ecx
10577018:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1057701c:	52                                              	push   edx
1057701d:	50                                              	push   eax
1057701e:	51                                              	push   ecx
1057701f:	8b cf                                           	mov    ecx,edi
10577021:	e8 da 5a 25 00                                  	call   0x107ccb00
10577026:	8b 16                                           	mov    edx,DWORD PTR [esi]
10577028:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
1057702e:	8b ce                                           	mov    ecx,esi
10577030:	ff d0                                           	call   eax
10577032:	5b                                              	pop    ebx
10577033:	5f                                              	pop    edi
10577034:	5e                                              	pop    esi
10577035:	83 c4 08                                        	add    esp,0x8
10577038:	c3                                              	ret
10577039:	cc                                              	int3
1057703a:	cc                                              	int3
1057703b:	cc                                              	int3
1057703c:	cc                                              	int3
1057703d:	cc                                              	int3
1057703e:	cc                                              	int3
1057703f:	cc                                              	int3
