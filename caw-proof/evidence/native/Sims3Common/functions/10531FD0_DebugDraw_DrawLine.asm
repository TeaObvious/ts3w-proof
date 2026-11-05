# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531fd0 (DebugDraw_DrawLine)
Paired Ghidra pseudocode: 10531FD0_DebugDraw_DrawLine.c
Window: [0x10531fd0, 0x10532060) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531fd0: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 1c f3 0f
10531fe0: 10 45 14 8b 45 20 f3 0f 11 4c 24 08 f3 0f 10 4d
10531ff0: 18 f3 0f 11 4c 24 04 f3 0f 10 4d 10 f3 0f 11 44
10532000: 24 0c f3 0f 11 04 24 0f 28 04 24 f3 0f 11 4c 24
10532010: 08 f3 0f 10 4d 0c 50 0f 29 44 24 14 f3 0f 10 45
10532020: 08 8d 4c 24 14 f3 0f 11 44 24 10 f3 0f 11 4c 24
10532030: 08 f3 0f 11 44 24 04 0f 28 44 24 04 51 8d 54 24
10532040: 08 52 0f 29 44 24 0c e8 34 fe ff ff 83 c4 0c 8b
10532050: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10531fd0 <.text+0x530fd0>:
10531fd0:	55                                              	push   ebp
10531fd1:	8b ec                                           	mov    ebp,esp
10531fd3:	83 e4 f0                                        	and    esp,0xfffffff0
10531fd6:	83 ec 20                                        	sub    esp,0x20
10531fd9:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
10531fde:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10531fe3:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
10531fe6:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10531fec:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10531ff1:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10531ff7:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10531ffc:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10532002:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10532007:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1053200b:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10532011:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
10532016:	50                                              	push   eax
10532017:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
1053201c:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10532021:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10532025:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1053202b:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10532031:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10532037:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
1053203c:	51                                              	push   ecx
1053203d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10532041:	52                                              	push   edx
10532042:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
10532047:	e8 34 fe ff ff                                  	call   0x10531e80
1053204c:	83 c4 0c                                        	add    esp,0xc
1053204f:	8b e5                                           	mov    esp,ebp
10532051:	5d                                              	pop    ebp
10532052:	c3                                              	ret
10532053:	cc                                              	int3
10532054:	cc                                              	int3
10532055:	cc                                              	int3
10532056:	cc                                              	int3
10532057:	cc                                              	int3
10532058:	cc                                              	int3
10532059:	cc                                              	int3
1053205a:	cc                                              	int3
1053205b:	cc                                              	int3
1053205c:	cc                                              	int3
1053205d:	cc                                              	int3
1053205e:	cc                                              	int3
1053205f:	cc                                              	int3
