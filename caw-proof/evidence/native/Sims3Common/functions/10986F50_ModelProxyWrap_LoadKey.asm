# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986f50 (ModelProxyWrap_LoadKey)
Paired Ghidra pseudocode: 10986F50_ModelProxyWrap_LoadKey.c
Window: [0x10986f50, 0x10986f90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986f90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986f50: 83 ec 10 8b 4c 24 24 8b 54 24 18 8b 44 24 20 89
10986f60: 4c 24 04 8b 4c 24 28 89 54 24 08 51 8b 4c 24 18
10986f70: 89 44 24 04 8b 44 24 20 8d 54 24 04 52 89 44 24
10986f80: 14 e8 6a c6 b4 ff 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986f50 <.text+0x985f50>:
10986f50:	83 ec 10                                        	sub    esp,0x10
10986f53:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10986f57:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10986f5b:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10986f5f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10986f63:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10986f67:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10986f6b:	51                                              	push   ecx
10986f6c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10986f70:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10986f74:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10986f78:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10986f7c:	52                                              	push   edx
10986f7d:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10986f81:	e8 6a c6 b4 ff                                  	call   0x104d35f0
10986f86:	83 c4 10                                        	add    esp,0x10
10986f89:	c3                                              	ret
10986f8a:	cc                                              	int3
10986f8b:	cc                                              	int3
10986f8c:	cc                                              	int3
10986f8d:	cc                                              	int3
10986f8e:	cc                                              	int3
10986f8f:	cc                                              	int3
