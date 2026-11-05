# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec2890 (ScriptCore.GameUtils::GameUtils_GetCommandLineSwitch)
Paired Ghidra pseudocode: 00EC2890_ScriptCore_GameUtils_GameUtils_GetCommandLineSwitch.c
Window: [0x00ec2890, 0x00ec2980) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec2980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec2890: 83 ec 34 56 57 e8 f6 6a 8a ff 8b 4c 24 40 8b f0
00ec28a0: 8b 06 8b 50 58 51 8b ce ff d2 8b c8 33 ff 33 c0
00ec28b0: 3b cf 74 0a 57 51 e8 d5 83 6c ff 83 c4 08 3b c7
00ec28c0: c7 44 24 1c f4 a6 fb 00 66 89 7c 24 24 66 89 7c
00ec28d0: 24 26 74 65 50 8d 4c 24 10 89 7c 24 10 89 7c 24
00ec28e0: 14 89 7c 24 18 c7 44 24 1c 80 33 0f 01 e8 9e 8c
00ec28f0: 54 ff f6 44 24 24 04 74 0b 6a 01 8d 4c 24 20 e8
00ec2900: 5c 2e 63 ff 6a 01 6a 10 8d 44 24 14 50 6a 09 6a
00ec2910: 13 8d 4c 24 30 e8 a6 30 63 ff 8b 4c 24 14 8b 44
00ec2920: 24 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74 09
00ec2930: 50 e8 aa 1b 62 ff 83 c4 04 8d 44 24 08 89 7c 24
00ec2940: 08 8b 16 8b 52 50 50 8d 4c 24 20 51 8b ce ff d2
00ec2950: f6 44 24 24 04 8b 74 24 08 c7 44 24 1c f4 a6 fb
00ec2960: 00 74 0a 57 8d 4c 24 20 e8 f3 2d 63 ff 5f 8b c6
00ec2970: 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec2890 <.text+0xac1890>:
  ec2890:	83 ec 34                                        	sub    esp,0x34
  ec2893:	56                                              	push   esi
  ec2894:	57                                              	push   edi
  ec2895:	e8 f6 6a 8a ff                                  	call   0x769390
  ec289a:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  ec289e:	8b f0                                           	mov    esi,eax
  ec28a0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec28a2:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec28a5:	51                                              	push   ecx
  ec28a6:	8b ce                                           	mov    ecx,esi
  ec28a8:	ff d2                                           	call   edx
  ec28aa:	8b c8                                           	mov    ecx,eax
  ec28ac:	33 ff                                           	xor    edi,edi
  ec28ae:	33 c0                                           	xor    eax,eax
  ec28b0:	3b cf                                           	cmp    ecx,edi
  ec28b2:	74 0a                                           	je     0xec28be
  ec28b4:	57                                              	push   edi
  ec28b5:	51                                              	push   ecx
  ec28b6:	e8 d5 83 6c ff                                  	call   0x58ac90
  ec28bb:	83 c4 08                                        	add    esp,0x8
  ec28be:	3b c7                                           	cmp    eax,edi
  ec28c0:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  ec28c8:	66 89 7c 24 24                                  	mov    WORD PTR [esp+0x24],di
  ec28cd:	66 89 7c 24 26                                  	mov    WORD PTR [esp+0x26],di
  ec28d2:	74 65                                           	je     0xec2939
  ec28d4:	50                                              	push   eax
  ec28d5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec28d9:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  ec28dd:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  ec28e1:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  ec28e5:	c7 44 24 1c 80 33 0f 01                         	mov    DWORD PTR [esp+0x1c],0x10f3380
  ec28ed:	e8 9e 8c 54 ff                                  	call   0x40b590
  ec28f2:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  ec28f7:	74 0b                                           	je     0xec2904
  ec28f9:	6a 01                                           	push   0x1
  ec28fb:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec28ff:	e8 5c 2e 63 ff                                  	call   0x4f5760
  ec2904:	6a 01                                           	push   0x1
  ec2906:	6a 10                                           	push   0x10
  ec2908:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ec290c:	50                                              	push   eax
  ec290d:	6a 09                                           	push   0x9
  ec290f:	6a 13                                           	push   0x13
  ec2911:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ec2915:	e8 a6 30 63 ff                                  	call   0x4f59c0
  ec291a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec291e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec2922:	2b c8                                           	sub    ecx,eax
  ec2924:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec2927:	83 f9 02                                        	cmp    ecx,0x2
  ec292a:	7e 0d                                           	jle    0xec2939
  ec292c:	3b c7                                           	cmp    eax,edi
  ec292e:	74 09                                           	je     0xec2939
  ec2930:	50                                              	push   eax
  ec2931:	e8 aa 1b 62 ff                                  	call   0x4e44e0
  ec2936:	83 c4 04                                        	add    esp,0x4
  ec2939:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ec293d:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
  ec2941:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec2943:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec2946:	50                                              	push   eax
  ec2947:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec294b:	51                                              	push   ecx
  ec294c:	8b ce                                           	mov    ecx,esi
  ec294e:	ff d2                                           	call   edx
  ec2950:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  ec2955:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec2959:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  ec2961:	74 0a                                           	je     0xec296d
  ec2963:	57                                              	push   edi
  ec2964:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec2968:	e8 f3 2d 63 ff                                  	call   0x4f5760
  ec296d:	5f                                              	pop    edi
  ec296e:	8b c6                                           	mov    eax,esi
  ec2970:	5e                                              	pop    esi
  ec2971:	83 c4 34                                        	add    esp,0x34
  ec2974:	c3                                              	ret
  ec2975:	cc                                              	int3
  ec2976:	cc                                              	int3
  ec2977:	cc                                              	int3
  ec2978:	cc                                              	int3
  ec2979:	cc                                              	int3
  ec297a:	cc                                              	int3
  ec297b:	cc                                              	int3
  ec297c:	cc                                              	int3
  ec297d:	cc                                              	int3
  ec297e:	cc                                              	int3
  ec297f:	cc                                              	int3
