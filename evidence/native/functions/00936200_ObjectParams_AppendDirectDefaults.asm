# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00936200,0x00936273); analyst name ObjectParams_AppendDirectDefaults.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00936200 <.text+0x535200>:
  936200:	53                   	push   ebx
  936201:	8b d9                	mov    ebx,ecx
  936203:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  936206:	2b 43 2c             	sub    eax,DWORD PTR [ebx+0x2c]
  936209:	c1 f8 06             	sar    eax,0x6
  93620c:	74 61                	je     0x93626f
  93620e:	55                   	push   ebp
  93620f:	56                   	push   esi
  936210:	57                   	push   edi
  936211:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  936215:	33 f6                	xor    esi,esi
  936217:	8b e8                	mov    ebp,eax
  936219:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  936220:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
  936223:	0f b6 4c 30 3c       	movzx  ecx,BYTE PTR [eax+esi*1+0x3c]
  936228:	03 c6                	add    eax,esi
  93622a:	83 f9 04             	cmp    ecx,0x4
  93622d:	77 35                	ja     0x936264
  93622f:	ff 24 8d 74 62 93 00 	jmp    DWORD PTR [ecx*4+0x936274]
  936236:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  936239:	8b 10                	mov    edx,DWORD PTR [eax]
  93623b:	51                   	push   ecx
  93623c:	52                   	push   edx
  93623d:	8b cf                	mov    ecx,edi
  93623f:	e8 4c 3d 00 00       	call   0x939f90
  936244:	eb 1e                	jmp    0x936264
  936246:	8b 10                	mov    edx,DWORD PTR [eax]
  936248:	8d 48 18             	lea    ecx,[eax+0x18]
  93624b:	51                   	push   ecx
  93624c:	52                   	push   edx
  93624d:	8b cf                	mov    ecx,edi
  93624f:	e8 0c 3e 00 00       	call   0x93a060
  936254:	eb 0e                	jmp    0x936264
  936256:	8b 48 38             	mov    ecx,DWORD PTR [eax+0x38]
  936259:	8b 10                	mov    edx,DWORD PTR [eax]
  93625b:	51                   	push   ecx
  93625c:	52                   	push   edx
  93625d:	8b cf                	mov    ecx,edi
  93625f:	e8 8c 3c 00 00       	call   0x939ef0
  936264:	83 c6 40             	add    esi,0x40
  936267:	83 ed 01             	sub    ebp,0x1
  93626a:	75 b4                	jne    0x936220
  93626c:	5f                   	pop    edi
  93626d:	5e                   	pop    esi
  93626e:	5d                   	pop    ebp
  93626f:	5b                   	pop    ebx
  936270:	c2 04 00             	ret    0x4
