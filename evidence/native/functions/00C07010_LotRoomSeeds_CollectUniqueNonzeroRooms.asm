# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00c07010,0x00c070a9); analyst name LotRoomSeeds_CollectUniqueNonzeroRooms.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c07010 <.text+0x806010>:
  c07010:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  c07014:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  c0701b:	2b d0                	sub    edx,eax
  c0701d:	57                   	push   edi
  c0701e:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  c07022:	8d 44 91 7c          	lea    eax,[ecx+edx*4+0x7c]
  c07026:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c07028:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  c0702b:	83 78 14 00          	cmp    DWORD PTR [eax+0x14],0x0
  c0702f:	74 74                	je     0xc070a5
  c07031:	55                   	push   ebp
  c07032:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
  c07035:	83 c0 04             	add    eax,0x4
  c07038:	3b e8                	cmp    ebp,eax
  c0703a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  c0703e:	74 64                	je     0xc070a4
  c07040:	53                   	push   ebx
  c07041:	56                   	push   esi
  c07042:	66 83 7d 24 00       	cmp    WORD PTR [ebp+0x24],0x0
  c07047:	8d 5d 24             	lea    ebx,[ebp+0x24]
  c0704a:	74 45                	je     0xc07091
  c0704c:	0f b6 57 10          	movzx  edx,BYTE PTR [edi+0x10]
  c07050:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  c07053:	8b 07                	mov    eax,DWORD PTR [edi]
  c07055:	52                   	push   edx
  c07056:	53                   	push   ebx
  c07057:	56                   	push   esi
  c07058:	50                   	push   eax
  c07059:	e8 a2 35 eb ff       	call   0xaba600
  c0705e:	83 c4 10             	add    esp,0x10
  c07061:	3b c6                	cmp    eax,esi
  c07063:	74 08                	je     0xc0706d
  c07065:	66 8b 0b             	mov    cx,WORD PTR [ebx]
  c07068:	66 3b 08             	cmp    cx,WORD PTR [eax]
  c0706b:	7d 24                	jge    0xc07091
  c0706d:	3b 77 08             	cmp    esi,DWORD PTR [edi+0x8]
  c07070:	74 16                	je     0xc07088
  c07072:	3b c6                	cmp    eax,esi
  c07074:	75 12                	jne    0xc07088
  c07076:	85 f6                	test   esi,esi
  c07078:	8d 56 02             	lea    edx,[esi+0x2]
  c0707b:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  c0707e:	74 11                	je     0xc07091
  c07080:	66 8b 03             	mov    ax,WORD PTR [ebx]
  c07083:	66 89 06             	mov    WORD PTR [esi],ax
  c07086:	eb 09                	jmp    0xc07091
  c07088:	53                   	push   ebx
  c07089:	50                   	push   eax
  c0708a:	8b cf                	mov    ecx,edi
  c0708c:	e8 9f b6 9c ff       	call   0x5d2730
  c07091:	55                   	push   ebp
  c07092:	e8 99 9f 8d ff       	call   0x4e1030
  c07097:	8b e8                	mov    ebp,eax
  c07099:	83 c4 04             	add    esp,0x4
  c0709c:	3b 6c 24 14          	cmp    ebp,DWORD PTR [esp+0x14]
  c070a0:	75 a0                	jne    0xc07042
  c070a2:	5e                   	pop    esi
  c070a3:	5b                   	pop    ebx
  c070a4:	5d                   	pop    ebp
  c070a5:	5f                   	pop    edi
  c070a6:	c2 08 00             	ret    0x8
