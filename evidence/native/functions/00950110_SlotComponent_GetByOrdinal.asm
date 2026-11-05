# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00950110 <.text+0x54f110>:
  950110:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  950113:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  950117:	3b c2                	cmp    eax,edx
  950119:	73 0c                	jae    0x950127
  95011b:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  95011e:	8d 04 40             	lea    eax,[eax+eax*2]
  950121:	8d 04 c1             	lea    eax,[ecx+eax*8]
  950124:	c2 04 00             	ret    0x4
  950127:	2b c2                	sub    eax,edx
  950129:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
  95012c:	3b c2                	cmp    eax,edx
  95012e:	73 09                	jae    0x950139
  950130:	c1 e0 05             	shl    eax,0x5
  950133:	03 41 14             	add    eax,DWORD PTR [ecx+0x14]
  950136:	c2 04 00             	ret    0x4
  950139:	2b c2                	sub    eax,edx
  95013b:	8b 51 18             	mov    edx,DWORD PTR [ecx+0x18]
  95013e:	3b c2                	cmp    eax,edx
  950140:	73 0c                	jae    0x95014e
  950142:	8d 14 40             	lea    edx,[eax+eax*2]
  950145:	8b 41 1c             	mov    eax,DWORD PTR [ecx+0x1c]
  950148:	8d 04 d0             	lea    eax,[eax+edx*8]
  95014b:	c2 04 00             	ret    0x4
  95014e:	2b c2                	sub    eax,edx
  950150:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  950153:	3b c2                	cmp    eax,edx
  950155:	73 0c                	jae    0x950163
  950157:	8d 14 40             	lea    edx,[eax+eax*2]
  95015a:	8b 41 24             	mov    eax,DWORD PTR [ecx+0x24]
  95015d:	8d 04 d0             	lea    eax,[eax+edx*8]
  950160:	c2 04 00             	ret    0x4
  950163:	2b c2                	sub    eax,edx
  950165:	8b 51 28             	mov    edx,DWORD PTR [ecx+0x28]
  950168:	3b c2                	cmp    eax,edx
  95016a:	73 09                	jae    0x950175
  95016c:	c1 e0 05             	shl    eax,0x5
  95016f:	03 41 2c             	add    eax,DWORD PTR [ecx+0x2c]
  950172:	c2 04 00             	ret    0x4
  950175:	2b c2                	sub    eax,edx
  950177:	8b 51 58             	mov    edx,DWORD PTR [ecx+0x58]
  95017a:	2b 51 54             	sub    edx,DWORD PTR [ecx+0x54]
  95017d:	c1 fa 02             	sar    edx,0x2
  950180:	3b c2                	cmp    eax,edx
  950182:	73 09                	jae    0x95018d
  950184:	8b 49 54             	mov    ecx,DWORD PTR [ecx+0x54]
  950187:	8b 04 81             	mov    eax,DWORD PTR [ecx+eax*4]
  95018a:	c2 04 00             	ret    0x4
  95018d:	33 c0                	xor    eax,eax
  95018f:	c2 04 00             	ret    0x4
