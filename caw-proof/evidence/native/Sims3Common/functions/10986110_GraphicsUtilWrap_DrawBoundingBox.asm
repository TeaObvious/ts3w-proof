# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986110 (GraphicsUtilWrap_DrawBoundingBox)
Paired Ghidra pseudocode: 10986110_GraphicsUtilWrap_DrawBoundingBox.c
Window: [0x10986110, 0x10986160) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986110: 55 8b ec 83 e4 f0 8b 45 0c 83 ec 60 50 8d 4c 24
10986120: 24 51 e8 39 a0 ff ff 8b 45 10 83 c4 08 83 7d 14
10986130: 00 8d 4c 24 20 0f 95 c2 52 50 51 8b 4d 08 8d 54
10986140: 24 0c 52 e8 18 0a 00 00 50 e8 b2 ce c3 ff 83 c4
10986150: 10 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986110 <.text+0x985110>:
10986110:	55                                              	push   ebp
10986111:	8b ec                                           	mov    ebp,esp
10986113:	83 e4 f0                                        	and    esp,0xfffffff0
10986116:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10986119:	83 ec 60                                        	sub    esp,0x60
1098611c:	50                                              	push   eax
1098611d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10986121:	51                                              	push   ecx
10986122:	e8 39 a0 ff ff                                  	call   0x10980160
10986127:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1098612a:	83 c4 08                                        	add    esp,0x8
1098612d:	83 7d 14 00                                     	cmp    DWORD PTR [ebp+0x14],0x0
10986131:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10986135:	0f 95 c2                                        	setne  dl
10986138:	52                                              	push   edx
10986139:	50                                              	push   eax
1098613a:	51                                              	push   ecx
1098613b:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098613e:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
10986142:	52                                              	push   edx
10986143:	e8 18 0a 00 00                                  	call   0x10986b60
10986148:	50                                              	push   eax
10986149:	e8 b2 ce c3 ff                                  	call   0x105c3000
1098614e:	83 c4 10                                        	add    esp,0x10
10986151:	8b e5                                           	mov    esp,ebp
10986153:	5d                                              	pop    ebp
10986154:	c3                                              	ret
10986155:	cc                                              	int3
10986156:	cc                                              	int3
10986157:	cc                                              	int3
10986158:	cc                                              	int3
10986159:	cc                                              	int3
1098615a:	cc                                              	int3
1098615b:	cc                                              	int3
1098615c:	cc                                              	int3
1098615d:	cc                                              	int3
1098615e:	cc                                              	int3
1098615f:	cc                                              	int3
