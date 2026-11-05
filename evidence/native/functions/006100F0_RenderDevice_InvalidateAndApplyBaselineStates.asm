# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x006100f0,0x0061027e); analyst name RenderDevice_InvalidateAndApplyBaselineStates.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006100f0 <.text+0x20f0f0>:
  6100f0:	56                   	push   esi
  6100f1:	8b d1                	mov    edx,ecx
  6100f3:	33 c0                	xor    eax,eax
  6100f5:	57                   	push   edi
  6100f6:	eb 08                	jmp    0x610100
  6100f8:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  6100ff:	90                   	nop
  610100:	8b 88 50 88 fe 00    	mov    ecx,DWORD PTR [eax+0xfe8850]
  610106:	83 e9 07             	sub    ecx,0x7
  610109:	8b f1                	mov    esi,ecx
  61010b:	83 e1 1f             	and    ecx,0x1f
  61010e:	c1 ee 05             	shr    esi,0x5
  610111:	8d b4 b2 b8 07 00 00 	lea    esi,[edx+esi*4+0x7b8]
  610118:	bf 01 00 00 00       	mov    edi,0x1
  61011d:	d3 e7                	shl    edi,cl
  61011f:	83 c0 18             	add    eax,0x18
  610122:	09 3e                	or     DWORD PTR [esi],edi
  610124:	8b 88 3c 88 fe 00    	mov    ecx,DWORD PTR [eax+0xfe883c]
  61012a:	83 e9 07             	sub    ecx,0x7
  61012d:	8b f1                	mov    esi,ecx
  61012f:	83 e1 1f             	and    ecx,0x1f
  610132:	c1 ee 05             	shr    esi,0x5
  610135:	8d b4 b2 b8 07 00 00 	lea    esi,[edx+esi*4+0x7b8]
  61013c:	bf 01 00 00 00       	mov    edi,0x1
  610141:	d3 e7                	shl    edi,cl
  610143:	09 3e                	or     DWORD PTR [esi],edi
  610145:	8b 88 40 88 fe 00    	mov    ecx,DWORD PTR [eax+0xfe8840]
  61014b:	83 e9 07             	sub    ecx,0x7
  61014e:	8b f1                	mov    esi,ecx
  610150:	83 e1 1f             	and    ecx,0x1f
  610153:	c1 ee 05             	shr    esi,0x5
  610156:	8d b4 b2 b8 07 00 00 	lea    esi,[edx+esi*4+0x7b8]
  61015d:	bf 01 00 00 00       	mov    edi,0x1
  610162:	d3 e7                	shl    edi,cl
  610164:	09 3e                	or     DWORD PTR [esi],edi
  610166:	8b 88 44 88 fe 00    	mov    ecx,DWORD PTR [eax+0xfe8844]
  61016c:	83 e9 07             	sub    ecx,0x7
  61016f:	8b f1                	mov    esi,ecx
  610171:	83 e1 1f             	and    ecx,0x1f
  610174:	c1 ee 05             	shr    esi,0x5
  610177:	8d b4 b2 b8 07 00 00 	lea    esi,[edx+esi*4+0x7b8]
  61017e:	bf 01 00 00 00       	mov    edi,0x1
  610183:	d3 e7                	shl    edi,cl
  610185:	09 3e                	or     DWORD PTR [esi],edi
  610187:	8b 88 48 88 fe 00    	mov    ecx,DWORD PTR [eax+0xfe8848]
  61018d:	83 e9 07             	sub    ecx,0x7
  610190:	8b f1                	mov    esi,ecx
  610192:	83 e1 1f             	and    ecx,0x1f
  610195:	c1 ee 05             	shr    esi,0x5
  610198:	bf 01 00 00 00       	mov    edi,0x1
  61019d:	d3 e7                	shl    edi,cl
  61019f:	8d b4 b2 b8 07 00 00 	lea    esi,[edx+esi*4+0x7b8]
  6101a6:	09 3e                	or     DWORD PTR [esi],edi
  6101a8:	8b 88 4c 88 fe 00    	mov    ecx,DWORD PTR [eax+0xfe884c]
  6101ae:	83 e9 07             	sub    ecx,0x7
  6101b1:	8b f1                	mov    esi,ecx
  6101b3:	83 e1 1f             	and    ecx,0x1f
  6101b6:	bf 01 00 00 00       	mov    edi,0x1
  6101bb:	d3 e7                	shl    edi,cl
  6101bd:	c1 ee 05             	shr    esi,0x5
  6101c0:	8d b4 b2 b8 07 00 00 	lea    esi,[edx+esi*4+0x7b8]
  6101c7:	09 3e                	or     DWORD PTR [esi],edi
  6101c9:	3d 98 01 00 00       	cmp    eax,0x198
  6101ce:	0f 82 2c ff ff ff    	jb     0x610100
  6101d4:	33 c0                	xor    eax,eax
  6101d6:	89 82 d4 07 00 00    	mov    DWORD PTR [edx+0x7d4],eax
  6101dc:	89 82 d8 07 00 00    	mov    DWORD PTR [edx+0x7d8],eax
  6101e2:	89 82 dc 07 00 00    	mov    DWORD PTR [edx+0x7dc],eax
  6101e8:	89 82 e0 07 00 00    	mov    DWORD PTR [edx+0x7e0],eax
  6101ee:	89 82 e4 07 00 00    	mov    DWORD PTR [edx+0x7e4],eax
  6101f4:	89 82 e8 07 00 00    	mov    DWORD PTR [edx+0x7e8],eax
  6101fa:	89 82 ec 07 00 00    	mov    DWORD PTR [edx+0x7ec],eax
  610200:	8d 82 7c 08 00 00    	lea    eax,[edx+0x87c]
  610206:	b9 10 00 00 00       	mov    ecx,0x10
  61020b:	be fe 3f 00 00       	mov    esi,0x3ffe
  610210:	89 70 fc             	mov    DWORD PTR [eax-0x4],esi
  610213:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  610219:	83 c0 74             	add    eax,0x74
  61021c:	83 e9 01             	sub    ecx,0x1
  61021f:	75 ef                	jne    0x610210
  610221:	8d 82 8c 04 00 00    	lea    eax,[edx+0x48c]
  610227:	b9 cb 00 00 00       	mov    ecx,0xcb
  61022c:	8d 64 24 00          	lea    esp,[esp+0x0]
  610230:	8b b0 d4 fc ff ff    	mov    esi,DWORD PTR [eax-0x32c]
  610236:	f7 d6                	not    esi
  610238:	89 30                	mov    DWORD PTR [eax],esi
  61023a:	83 c0 04             	add    eax,0x4
  61023d:	83 e9 01             	sub    ecx,0x1
  610240:	75 ee                	jne    0x610230
  610242:	8d 8a 10 08 00 00    	lea    ecx,[edx+0x810]
  610248:	be 10 00 00 00       	mov    esi,0x10
  61024d:	8d 49 00             	lea    ecx,[ecx+0x0]
  610250:	33 c0                	xor    eax,eax
  610252:	8b 3c 81             	mov    edi,DWORD PTR [ecx+eax*4]
  610255:	f7 d7                	not    edi
  610257:	89 7c 81 34          	mov    DWORD PTR [ecx+eax*4+0x34],edi
  61025b:	83 c0 01             	add    eax,0x1
  61025e:	83 f8 0d             	cmp    eax,0xd
  610261:	72 ef                	jb     0x610252
  610263:	83 c1 74             	add    ecx,0x74
  610266:	83 ee 01             	sub    esi,0x1
  610269:	75 e5                	jne    0x610250
  61026b:	5f                   	pop    edi
  61026c:	c7 82 0c 08 00 00 ff ff 00 00 	mov    DWORD PTR [edx+0x80c],0xffff
  610276:	8b ca                	mov    ecx,edx
  610278:	5e                   	pop    esi
  610279:	e9 a2 ee ff ff       	jmp    0x60f120
