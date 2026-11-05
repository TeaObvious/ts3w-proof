# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00957ce0, 0x00957d24); analyst name TransformComponent_NotifyObjectAttached.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957ce0 <.text+0x556ce0>:
  957ce0:	55                   	push   ebp
  957ce1:	8b ec                	mov    ebp,esp
  957ce3:	83 e4 f0             	and    esp,0xfffffff0
  957ce6:	83 ec 2c             	sub    esp,0x2c
  957ce9:	56                   	push   esi
  957cea:	8b f1                	mov    esi,ecx
  957cec:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  957cef:	a8 04                	test   al,0x4
  957cf1:	75 28                	jne    0x957d1b
  957cf3:	a8 03                	test   al,0x3
  957cf5:	74 05                	je     0x957cfc
  957cf7:	e8 64 f1 ff ff       	call   0x956e60
  957cfc:	8d 44 24 10          	lea    eax,[esp+0x10]
  957d00:	50                   	push   eax
  957d01:	8b ce                	mov    ecx,esi
  957d03:	e8 08 fc ff ff       	call   0x957910
  957d08:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  957d0b:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  957d0f:	51                   	push   ecx
  957d10:	52                   	push   edx
  957d11:	6a 0e                	push   0xe
  957d13:	e8 a8 d9 fd ff       	call   0x9356c0
  957d18:	83 c4 0c             	add    esp,0xc
  957d1b:	b0 01                	mov    al,0x1
  957d1d:	5e                   	pop    esi
  957d1e:	8b e5                	mov    esp,ebp
  957d20:	5d                   	pop    ebp
  957d21:	c2 04 00             	ret    0x4
