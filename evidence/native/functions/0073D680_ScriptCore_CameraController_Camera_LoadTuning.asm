# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d680 (ScriptCore.CameraController::Camera_LoadTuning)
Paired Ghidra pseudocode: 0073D680_ScriptCore_CameraController_Camera_LoadTuning.c
Window: [0x0073d680, 0x0073d6f0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d680: 83 ec 08 e8 08 bd 02 00 85 c0 74 59 8b 10 8b 52
0073d690: 78 8d 0c 24 51 8d 4c 24 08 51 8b 4c 24 18 51 8b
0073d6a0: c8 c7 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00
0073d6b0: 00 ff d2 e8 18 c5 22 00 85 c0 74 29 8b c8 e8 2d
0073d6c0: 49 7e 00 85 c0 74 1e 8b 4c 24 14 8b 14 24 6a 00
0073d6d0: 6a 01 51 8b 4c 24 10 52 8b 54 24 1c 51 52 8b c8
0073d6e0: e8 db c6 22 00 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073d680 <.text+0x33c680>:
  73d680:	83 ec 08                                        	sub    esp,0x8
  73d683:	e8 08 bd 02 00                                  	call   0x769390
  73d688:	85 c0                                           	test   eax,eax
  73d68a:	74 59                                           	je     0x73d6e5
  73d68c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73d68e:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
  73d691:	8d 0c 24                                        	lea    ecx,[esp]
  73d694:	51                                              	push   ecx
  73d695:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  73d699:	51                                              	push   ecx
  73d69a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  73d69e:	51                                              	push   ecx
  73d69f:	8b c8                                           	mov    ecx,eax
  73d6a1:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  73d6a9:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  73d6b1:	ff d2                                           	call   edx
  73d6b3:	e8 18 c5 22 00                                  	call   0x969bd0
  73d6b8:	85 c0                                           	test   eax,eax
  73d6ba:	74 29                                           	je     0x73d6e5
  73d6bc:	8b c8                                           	mov    ecx,eax
  73d6be:	e8 2d 49 7e 00                                  	call   0xf21ff0
  73d6c3:	85 c0                                           	test   eax,eax
  73d6c5:	74 1e                                           	je     0x73d6e5
  73d6c7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  73d6cb:	8b 14 24                                        	mov    edx,DWORD PTR [esp]
  73d6ce:	6a 00                                           	push   0x0
  73d6d0:	6a 01                                           	push   0x1
  73d6d2:	51                                              	push   ecx
  73d6d3:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73d6d7:	52                                              	push   edx
  73d6d8:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  73d6dc:	51                                              	push   ecx
  73d6dd:	52                                              	push   edx
  73d6de:	8b c8                                           	mov    ecx,eax
  73d6e0:	e8 db c6 22 00                                  	call   0x969dc0
  73d6e5:	83 c4 08                                        	add    esp,0x8
  73d6e8:	c3                                              	ret
  73d6e9:	cc                                              	int3
  73d6ea:	cc                                              	int3
  73d6eb:	cc                                              	int3
  73d6ec:	cc                                              	int3
  73d6ed:	cc                                              	int3
  73d6ee:	cc                                              	int3
  73d6ef:	cc                                              	int3
