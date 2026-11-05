# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x007a0fb0,0x007a1049); analyst name ShaderTechnique_ApplyPassesAndDraw.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a0fb0 <.text+0x39ffb0>:
  7a0fb0:	83 ec 34             	sub    esp,0x34
  7a0fb3:	57                   	push   edi
  7a0fb4:	8b f9                	mov    edi,ecx
  7a0fb6:	83 7f 04 00          	cmp    DWORD PTR [edi+0x4],0x0
  7a0fba:	0f 84 82 00 00 00    	je     0x7a1042
  7a0fc0:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  7a0fc4:	8b 41 54             	mov    eax,DWORD PTR [ecx+0x54]
  7a0fc7:	3b 07                	cmp    eax,DWORD PTR [edi]
  7a0fc9:	74 05                	je     0x7a0fd0
  7a0fcb:	e8 b0 f2 e6 ff       	call   0x610280
  7a0fd0:	55                   	push   ebp
  7a0fd1:	33 ed                	xor    ebp,ebp
  7a0fd3:	39 6f 04             	cmp    DWORD PTR [edi+0x4],ebp
  7a0fd6:	c6 44 24 08 00       	mov    BYTE PTR [esp+0x8],0x0
  7a0fdb:	76 64                	jbe    0x7a1041
  7a0fdd:	53                   	push   ebx
  7a0fde:	56                   	push   esi
  7a0fdf:	33 db                	xor    ebx,ebx
  7a0fe1:	8b 37                	mov    esi,DWORD PTR [edi]
  7a0fe3:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  7a0fe7:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7a0feb:	51                   	push   ecx
  7a0fec:	03 f3                	add    esi,ebx
  7a0fee:	52                   	push   edx
  7a0fef:	8b ce                	mov    ecx,esi
  7a0ff1:	e8 ea d7 ff ff       	call   0x79e7e0
  7a0ff6:	84 c0                	test   al,al
  7a0ff8:	74 22                	je     0x7a101c
  7a0ffa:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  7a0ffe:	50                   	push   eax
  7a0fff:	8b ce                	mov    ecx,esi
  7a1001:	e8 0a c6 ff ff       	call   0x79d610
  7a1006:	3c 01                	cmp    al,0x1
  7a1008:	74 12                	je     0x7a101c
  7a100a:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  7a100e:	85 c0                	test   eax,eax
  7a1010:	74 0a                	je     0x7a101c
  7a1012:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  7a1016:	51                   	push   ecx
  7a1017:	ff d0                	call   eax
  7a1019:	83 c4 04             	add    esp,0x4
  7a101c:	83 c5 01             	add    ebp,0x1
  7a101f:	81 c3 8c 01 00 00    	add    ebx,0x18c
  7a1025:	3b 6f 04             	cmp    ebp,DWORD PTR [edi+0x4]
  7a1028:	72 b7                	jb     0x7a0fe1
  7a102a:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  7a102f:	5e                   	pop    esi
  7a1030:	5b                   	pop    ebx
  7a1031:	74 0e                	je     0x7a1041
  7a1033:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  7a1037:	8d 54 24 0c          	lea    edx,[esp+0xc]
  7a103b:	52                   	push   edx
  7a103c:	e8 1f da e6 ff       	call   0x60ea60
  7a1041:	5d                   	pop    ebp
  7a1042:	5f                   	pop    edi
  7a1043:	83 c4 34             	add    esp,0x34
  7a1046:	c2 0c 00             	ret    0xc
