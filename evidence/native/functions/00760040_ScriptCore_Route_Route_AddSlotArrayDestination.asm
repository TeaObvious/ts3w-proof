# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00760040, 0x0076022c); analyst name Route_AddSlotArrayDestination.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00760040 <.text+0x35f040>:
  760040:	83 ec 18             	sub    esp,0x18
  760043:	53                   	push   ebx
  760044:	55                   	push   ebp
  760045:	33 ed                	xor    ebp,ebp
  760047:	39 2d c4 50 1d 01    	cmp    DWORD PTR ds:0x11d50c4,ebp
  76004d:	56                   	push   esi
  76004e:	57                   	push   edi
  76004f:	0f 84 cd 01 00 00    	je     0x760222
  760055:	8b 74 24 4c          	mov    esi,DWORD PTR [esp+0x4c]
  760059:	3b f5                	cmp    esi,ebp
  76005b:	0f 84 c1 01 00 00    	je     0x760222
  760061:	e8 2a 93 00 00       	call   0x769390
  760066:	8b f8                	mov    edi,eax
  760068:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  76006c:	51                   	push   ecx
  76006d:	8d 54 24 18          	lea    edx,[esp+0x18]
  760071:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  760075:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  760079:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  76007d:	8b 07                	mov    eax,DWORD PTR [edi]
  76007f:	8b 40 6c             	mov    eax,DWORD PTR [eax+0x6c]
  760082:	52                   	push   edx
  760083:	56                   	push   esi
  760084:	8b cf                	mov    ecx,edi
  760086:	ff d0                	call   eax
  760088:	39 6c 24 14          	cmp    DWORD PTR [esp+0x14],ebp
  76008c:	0f 84 90 01 00 00    	je     0x760222
  760092:	39 6c 24 10          	cmp    DWORD PTR [esp+0x10],ebp
  760096:	0f 8e 86 01 00 00    	jle    0x760222
  76009c:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  7600a0:	3b c5                	cmp    eax,ebp
  7600a2:	74 26                	je     0x7600ca
  7600a4:	8b 17                	mov    edx,DWORD PTR [edi]
  7600a6:	8b 52 78             	mov    edx,DWORD PTR [edx+0x78]
  7600a9:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  7600ad:	51                   	push   ecx
  7600ae:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  7600b2:	51                   	push   ecx
  7600b3:	50                   	push   eax
  7600b4:	8b cf                	mov    ecx,edi
  7600b6:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  7600ba:	ff d2                	call   edx
  7600bc:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  7600c0:	3b 44 24 10          	cmp    eax,DWORD PTR [esp+0x10]
  7600c4:	74 04                	je     0x7600ca
  7600c6:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  7600ca:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  7600ce:	51                   	push   ecx
  7600cf:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  7600d5:	e8 d6 b3 fe ff       	call   0x74b4b0
  7600da:	8b d8                	mov    ebx,eax
  7600dc:	3b dd                	cmp    ebx,ebp
  7600de:	0f 84 3e 01 00 00    	je     0x760222
  7600e4:	8b 13                	mov    edx,DWORD PTR [ebx]
  7600e6:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  7600e9:	8b cb                	mov    ecx,ebx
  7600eb:	ff d0                	call   eax
  7600ed:	8b cb                	mov    ecx,ebx
  7600ef:	e8 0c 22 ff ff       	call   0x752300
  7600f4:	50                   	push   eax
  7600f5:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  7600f9:	e8 72 d2 09 00       	call   0x7fd370
  7600fe:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  760102:	3b f5                	cmp    esi,ebp
  760104:	0f 84 0f 01 00 00    	je     0x760219
  76010a:	55                   	push   ebp
  76010b:	55                   	push   ebp
  76010c:	55                   	push   ebp
  76010d:	55                   	push   ebp
  76010e:	68 b8 58 00 01       	push   0x10058b8
  760113:	6a 58                	push   0x58
  760115:	e8 e6 43 d8 ff       	call   0x4e4500
  76011a:	83 c4 18             	add    esp,0x18
  76011d:	3b c5                	cmp    eax,ebp
  76011f:	0f 84 eb 00 00 00    	je     0x760210
  760125:	8b c8                	mov    ecx,eax
  760127:	e8 14 f1 fe ff       	call   0x74f240
  76012c:	8b f0                	mov    esi,eax
  76012e:	3b f5                	cmp    esi,ebp
  760130:	0f 84 d6 00 00 00    	je     0x76020c
  760136:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  76013a:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  760140:	89 4e 28             	mov    DWORD PTR [esi+0x28],ecx
  760143:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  760147:	f3 0f 11 46 2c       	movss  DWORD PTR [esi+0x2c],xmm0
  76014c:	8b 53 40             	mov    edx,DWORD PTR [ebx+0x40]
  76014f:	89 56 40             	mov    DWORD PTR [esi+0x40],edx
  760152:	8b 43 44             	mov    eax,DWORD PTR [ebx+0x44]
  760155:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  760159:	89 46 44             	mov    DWORD PTR [esi+0x44],eax
  76015c:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  760160:	3b c5                	cmp    eax,ebp
  760162:	89 4e 48             	mov    DWORD PTR [esi+0x48],ecx
  760165:	89 56 4c             	mov    DWORD PTR [esi+0x4c],edx
  760168:	74 2d                	je     0x760197
  76016a:	8b 17                	mov    edx,DWORD PTR [edi]
  76016c:	8b 52 78             	mov    edx,DWORD PTR [edx+0x78]
  76016f:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  760173:	51                   	push   ecx
  760174:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  760178:	51                   	push   ecx
  760179:	50                   	push   eax
  76017a:	8b cf                	mov    ecx,edi
  76017c:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  760180:	89 6c 24 2c          	mov    DWORD PTR [esp+0x2c],ebp
  760184:	ff d2                	call   edx
  760186:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  76018a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  76018e:	50                   	push   eax
  76018f:	51                   	push   ecx
  760190:	8b ce                	mov    ecx,esi
  760192:	e8 a9 bb fe ff       	call   0x74bd40
  760197:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  76019b:	8d 7e 30             	lea    edi,[esi+0x30]
  76019e:	52                   	push   edx
  76019f:	8b cf                	mov    ecx,edi
  7601a1:	e8 1a fd ff ff       	call   0x75fec0
  7601a6:	33 c0                	xor    eax,eax
  7601a8:	39 6c 24 10          	cmp    DWORD PTR [esp+0x10],ebp
  7601ac:	7e 28                	jle    0x7601d6
  7601ae:	8b ff                	mov    edi,edi
  7601b0:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  7601b4:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7601b6:	8b 14 82             	mov    edx,DWORD PTR [edx+eax*4]
  7601b9:	89 14 c1             	mov    DWORD PTR [ecx+eax*8],edx
  7601bc:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  7601c0:	3b cd                	cmp    ecx,ebp
  7601c2:	74 09                	je     0x7601cd
  7601c4:	8b 17                	mov    edx,DWORD PTR [edi]
  7601c6:	d9 04 81             	fld    DWORD PTR [ecx+eax*4]
  7601c9:	d9 5c c2 04          	fstp   DWORD PTR [edx+eax*8+0x4]
  7601cd:	83 c0 01             	add    eax,0x1
  7601d0:	3b 44 24 10          	cmp    eax,DWORD PTR [esp+0x10]
  7601d4:	7c da                	jl     0x7601b0
  7601d6:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  7601da:	8a 4c 24 3c          	mov    cl,BYTE PTR [esp+0x3c]
  7601de:	88 4e 54             	mov    BYTE PTR [esi+0x54],cl
  7601e1:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  7601e4:	56                   	push   esi
  7601e5:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  7601e9:	8b ce                	mov    ecx,esi
  7601eb:	e8 10 ef fe ff       	call   0x74f100
  7601f0:	8b 16                	mov    edx,DWORD PTR [esi]
  7601f2:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  7601f5:	8b ce                	mov    ecx,esi
  7601f7:	ff d0                	call   eax
  7601f9:	8b 13                	mov    edx,DWORD PTR [ebx]
  7601fb:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  7601fe:	8b cb                	mov    ecx,ebx
  760200:	ff d0                	call   eax
  760202:	5f                   	pop    edi
  760203:	5e                   	pop    esi
  760204:	5d                   	pop    ebp
  760205:	b0 01                	mov    al,0x1
  760207:	5b                   	pop    ebx
  760208:	83 c4 18             	add    esp,0x18
  76020b:	c3                   	ret
  76020c:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  760210:	8b 16                	mov    edx,DWORD PTR [esi]
  760212:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  760215:	8b ce                	mov    ecx,esi
  760217:	ff d0                	call   eax
  760219:	8b 13                	mov    edx,DWORD PTR [ebx]
  76021b:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  76021e:	8b cb                	mov    ecx,ebx
  760220:	ff d0                	call   eax
  760222:	5f                   	pop    edi
  760223:	5e                   	pop    esi
  760224:	5d                   	pop    ebp
  760225:	32 c0                	xor    al,al
  760227:	5b                   	pop    ebx
  760228:	83 c4 18             	add    esp,0x18
  76022b:	c3                   	ret
