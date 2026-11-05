/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX auxiliary grid, nine stack DWORDs, RET24hex, copies context byte+14 to AL. Constructs
   B125533A key with supplied group/instanceLow/high; opens for READ (mode0) only when context+4
   absent. Four UInt32 stream reads consume tag then raw width/depth/levels; no comparison of the
   consumed tag or exact EOF. Outputs width,depth and width*depth*levels modulo32. Caller AC3630
   uses group0093D6D4 and separately reads that many raw DWORD elements. minimumLevel<0 calls
   physical virtual4 with count=-minimum,mode0,dimensionsOnly0; virtual8 receives ONE count word,
   not three dimensions. Callsite-local physical overrides restore stack propagation; no global
   vtable type changes. Temp receiver vtable1063DD8 has verified targets ABA310/A92650/A927C0.
   Maximum-level word is physically present but not read in this function. Native raw
   multiplication/unsafe allocation are not managed validation requirements. Failure closes; success
   leaves the stream open for the caller body. */

uchar __thiscall
LotGrid_ReadExternalDimensions
          (void *this,undefined *context,uint resourceGroup,uint instanceLow,uint instanceHigh,
          int minimumLevel,int maximumLevel,uint *widthOutput,uint *depthOutput,
          uint *elementCountOutput)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  uint *puVar5;
  bool bVar6;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  uint local_4;
  
  local_10 = instanceLow;
  local_c = instanceHigh;
  local_8 = 0xb125533a;
  local_4 = resourceGroup;
  if (*(int *)(context + 4) == 0) {
    bVar6 = ResourceStreamContext_OpenWrite(context,&local_10,0);
    if (!bVar6) goto LAB_00c6db84;
  }
  bVar6 = Stream_ReadUInt32(*(void **)(context + 8),&instanceLow,*(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(context,bVar6);
  puVar4 = widthOutput;
  bVar6 = Stream_ReadUInt32(*(void **)(context + 8),widthOutput,*(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(context,bVar6);
  puVar5 = depthOutput;
  bVar6 = Stream_ReadUInt32(*(void **)(context + 8),depthOutput,*(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(context,bVar6);
  bVar6 = Stream_ReadUInt32(*(void **)(context + 8),&resourceGroup,*(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(context,bVar6);
  *elementCountOutput = *puVar4 * *puVar5 * resourceGroup;
  if (minimumLevel < 0) {
    (**(code **)(*(int *)this + 4))(this,-minimumLevel,'\0','\0');
  }
  uVar3 = resourceGroup;
  iVar1 = *(int *)((int)this + 4);
  iVar2 = *(int *)((int)this + 8);
  (**(code **)(*(int *)this + 8))(this,iVar1 * iVar2 * resourceGroup);
  *(int *)((int)this + 4) = iVar1;
  *(int *)((int)this + 8) = iVar2;
  *(uint *)((int)this + 0xc) = uVar3;
  if (context[0x14] == '\0') {
    ResourceStreamContext_Close(context);
  }
LAB_00c6db84:
  return context[0x14];
}

