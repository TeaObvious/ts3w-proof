# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00969f60, 0x0096a04b).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00969f60 <.text+0x568f60>:
  969f60:	83 ec 64             	sub    esp,0x64
  969f63:	53                   	push   ebx
  969f64:	56                   	push   esi
  969f65:	57                   	push   edi
  969f66:	8b d9                	mov    ebx,ecx
  969f68:	b9 0c 00 00 00       	mov    ecx,0xc
  969f6d:	be 0c 62 04 01       	mov    esi,0x104620c
  969f72:	8d 7c 24 3c          	lea    edi,[esp+0x3c]
  969f76:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  969f78:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
  969f7a:	b9 0b 00 00 00       	mov    ecx,0xb
  969f7f:	be dc 61 04 01       	mov    esi,0x10461dc
  969f84:	8d 7c 24 0c          	lea    edi,[esp+0xc]
  969f88:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  969f8a:	8b 0d b0 0a 15 01    	mov    ecx,DWORD PTR ds:0x1150ab0
  969f90:	6a 00                	push   0x0
  969f92:	8d 44 24 40          	lea    eax,[esp+0x40]
  969f96:	50                   	push   eax
  969f97:	51                   	push   ecx
  969f98:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
  969f9a:	e8 91 0e c2 ff       	call   0x58ae30
  969f9f:	6a 00                	push   0x0
  969fa1:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  969fa5:	88 83 e1 00 00 00    	mov    BYTE PTR [ebx+0xe1],al
  969fab:	a1 b0 0a 15 01       	mov    eax,ds:0x1150ab0
  969fb0:	52                   	push   edx
  969fb1:	50                   	push   eax
  969fb2:	e8 79 0e c2 ff       	call   0x58ae30
  969fb7:	6a 01                	push   0x1
  969fb9:	88 83 e2 00 00 00    	mov    BYTE PTR [ebx+0xe2],al
  969fbf:	8b 0d b0 0a 15 01    	mov    ecx,DWORD PTR ds:0x1150ab0
  969fc5:	68 c0 61 04 01       	push   0x10461c0
  969fca:	51                   	push   ecx
  969fcb:	e8 60 0e c2 ff       	call   0x58ae30
  969fd0:	8b 93 94 00 00 00    	mov    edx,DWORD PTR [ebx+0x94]
  969fd6:	88 82 cc 08 00 00    	mov    BYTE PTR [edx+0x8cc],al
  969fdc:	0f b6 83 e2 00 00 00 	movzx  eax,BYTE PTR [ebx+0xe2]
  969fe3:	0f b6 8b e1 00 00 00 	movzx  ecx,BYTE PTR [ebx+0xe1]
  969fea:	83 c4 24             	add    esp,0x24
  969fed:	50                   	push   eax
  969fee:	51                   	push   ecx
  969fef:	8b 8b 94 00 00 00    	mov    ecx,DWORD PTR [ebx+0x94]
  969ff5:	e8 e6 64 00 00       	call   0x9704e0
  969ffa:	0f b6 93 e2 00 00 00 	movzx  edx,BYTE PTR [ebx+0xe2]
  96a001:	8b 8b a8 00 00 00    	mov    ecx,DWORD PTR [ebx+0xa8]
  96a007:	52                   	push   edx
  96a008:	e8 13 0c 01 00       	call   0x97ac20
  96a00d:	0f b6 83 e2 00 00 00 	movzx  eax,BYTE PTR [ebx+0xe2]
  96a014:	0f b6 8b e1 00 00 00 	movzx  ecx,BYTE PTR [ebx+0xe1]
  96a01b:	50                   	push   eax
  96a01c:	51                   	push   ecx
  96a01d:	8b 8b a0 00 00 00    	mov    ecx,DWORD PTR [ebx+0xa0]
  96a023:	e8 b8 64 00 00       	call   0x9704e0
  96a028:	8b 15 b0 0a 15 01    	mov    edx,DWORD PTR ds:0x1150ab0
  96a02e:	6a 00                	push   0x0
  96a030:	68 9c 61 04 01       	push   0x104619c
  96a035:	52                   	push   edx
  96a036:	e8 f5 0d c2 ff       	call   0x58ae30
  96a03b:	83 c4 0c             	add    esp,0xc
  96a03e:	5f                   	pop    edi
  96a03f:	5e                   	pop    esi
  96a040:	88 83 e3 00 00 00    	mov    BYTE PTR [ebx+0xe3],al
  96a046:	5b                   	pop    ebx
  96a047:	83 c4 64             	add    esp,0x64
  96a04a:	c3                   	ret
