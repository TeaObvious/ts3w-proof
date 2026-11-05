# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dde70 <.text+0xdce70>:
  4dde70:	83 7c 24 0c 01       	cmp    DWORD PTR [esp+0xc],0x1
  4dde75:	74 10                	je     0x4dde87
  4dde77:	66 8b 44 24 08       	mov    ax,WORD PTR [esp+0x8]
  4dde7c:	66 c1 c0 08          	rol    ax,0x8
  4dde80:	0f b7 c8             	movzx  ecx,ax
  4dde83:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  4dde87:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  4dde8b:	8b 11                	mov    edx,DWORD PTR [ecx]
  4dde8d:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  4dde90:	6a 02                	push   0x2
  4dde92:	8d 44 24 0c          	lea    eax,[esp+0xc]
  4dde96:	50                   	push   eax
  4dde97:	ff d2                	call   edx
  4dde99:	c3                   	ret
