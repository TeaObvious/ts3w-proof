# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0093cad0, 0x0093cb30); analyst name AnimationComponent_SetForce.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093cad0 <.text+0x53bad0>:
  93cad0:	55                   	push   ebp
  93cad1:	8b ec                	mov    ebp,esp
  93cad3:	83 e4 f0             	and    esp,0xfffffff0
  93cad6:	83 ec 50             	sub    esp,0x50
  93cad9:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
  93cadc:	88 41 38             	mov    BYTE PTR [ecx+0x38],al
  93cadf:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  93cae2:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  93cae5:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  93cae8:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  93caec:	33 c9                	xor    ecx,ecx
  93caee:	84 c0                	test   al,al
  93caf0:	0f 95 c1             	setne  cl
  93caf3:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  93caf7:	8d 14 24             	lea    edx,[esp]
  93cafa:	52                   	push   edx
  93cafb:	c7 44 24 04 78 28 09 0e 	mov    DWORD PTR [esp+0x4],0xe092878
  93cb03:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  93cb0b:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  93cb0f:	e8 6c 68 d5 ff       	call   0x693380
  93cb14:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  93cb18:	83 c4 04             	add    esp,0x4
  93cb1b:	85 c9                	test   ecx,ecx
  93cb1d:	74 0b                	je     0x93cb2a
  93cb1f:	8b 01                	mov    eax,DWORD PTR [ecx]
  93cb21:	8b 00                	mov    eax,DWORD PTR [eax]
  93cb23:	8d 54 24 10          	lea    edx,[esp+0x10]
  93cb27:	52                   	push   edx
  93cb28:	ff d0                	call   eax
  93cb2a:	8b e5                	mov    esp,ebp
  93cb2c:	5d                   	pop    ebp
  93cb2d:	c2 04 00             	ret    0x4
