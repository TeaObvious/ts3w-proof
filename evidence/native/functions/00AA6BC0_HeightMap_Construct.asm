# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00aa6bc0..00aa6c26; HeightMap_Construct
  aa6bc0:	8b c1                	mov    eax,ecx
  aa6bc2:	c7 00 a4 bb 02 01    	mov    DWORD PTR [eax],0x102bba4
  aa6bc8:	33 c9                	xor    ecx,ecx
  aa6bca:	8d 50 04             	lea    edx,[eax+0x4]
  aa6bcd:	87 0a                	xchg   DWORD PTR [edx],ecx
  aa6bcf:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  aa6bd7:	33 c9                	xor    ecx,ecx
  aa6bd9:	c7 00 b8 50 06 01    	mov    DWORD PTR [eax],0x10650b8
  aa6bdf:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  aa6be4:	f3 0f 11 40 0c       	movss  DWORD PTR [eax+0xc],xmm0
  aa6be9:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  aa6bec:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
  aa6bef:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  aa6bf2:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  aa6bf5:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  aa6bf8:	89 48 30             	mov    DWORD PTR [eax+0x30],ecx
  aa6bfb:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  aa6bfe:	83 ca ff             	or     edx,0xffffffff
  aa6c01:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
  aa6c04:	89 50 40             	mov    DWORD PTR [eax+0x40],edx
  aa6c07:	89 48 44             	mov    DWORD PTR [eax+0x44],ecx
  aa6c0a:	89 48 48             	mov    DWORD PTR [eax+0x48],ecx
  aa6c0d:	89 48 4c             	mov    DWORD PTR [eax+0x4c],ecx
  aa6c10:	c7 40 50 a8 50 06 01 	mov    DWORD PTR [eax+0x50],0x10650a8
  aa6c17:	89 48 54             	mov    DWORD PTR [eax+0x54],ecx
  aa6c1a:	89 48 58             	mov    DWORD PTR [eax+0x58],ecx
  aa6c1d:	89 48 5c             	mov    DWORD PTR [eax+0x5c],ecx
  aa6c20:	89 48 60             	mov    DWORD PTR [eax+0x60],ecx
  aa6c23:	88 48 34             	mov    BYTE PTR [eax+0x34],cl
  aa6c26:	c3                   	ret
