# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578bb0 (ScriptProxy_GetResourceKeyImpl)
Paired Ghidra pseudocode: 10578BB0_ScriptProxy_GetResourceKeyImpl.c
Window: [0x10578bb0, 0x10578c00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578bb0: 83 ec 10 e8 68 25 fe ff 8b 4c 24 1c 8b 10 8b 92
10578bc0: bc 00 00 00 51 8b 4c 24 1c 51 8d 4c 24 08 51 8b
10578bd0: c8 ff d2 8b 4c 24 14 8b 10 89 11 8b 50 04 89 51
10578be0: 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83
10578bf0: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578bb0 <.text+0x577bb0>:
10578bb0:	83 ec 10                                        	sub    esp,0x10
10578bb3:	e8 68 25 fe ff                                  	call   0x1055b120
10578bb8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10578bbc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10578bbe:	8b 92 bc 00 00 00                               	mov    edx,DWORD PTR [edx+0xbc]
10578bc4:	51                                              	push   ecx
10578bc5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10578bc9:	51                                              	push   ecx
10578bca:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10578bce:	51                                              	push   ecx
10578bcf:	8b c8                                           	mov    ecx,eax
10578bd1:	ff d2                                           	call   edx
10578bd3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10578bd7:	8b 10                                           	mov    edx,DWORD PTR [eax]
10578bd9:	89 11                                           	mov    DWORD PTR [ecx],edx
10578bdb:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10578bde:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10578be1:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10578be4:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10578be7:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10578bea:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10578bed:	8b c1                                           	mov    eax,ecx
10578bef:	83 c4 10                                        	add    esp,0x10
10578bf2:	c3                                              	ret
10578bf3:	cc                                              	int3
10578bf4:	cc                                              	int3
10578bf5:	cc                                              	int3
10578bf6:	cc                                              	int3
10578bf7:	cc                                              	int3
10578bf8:	cc                                              	int3
10578bf9:	cc                                              	int3
10578bfa:	cc                                              	int3
10578bfb:	cc                                              	int3
10578bfc:	cc                                              	int3
10578bfd:	cc                                              	int3
10578bfe:	cc                                              	int3
10578bff:	cc                                              	int3
