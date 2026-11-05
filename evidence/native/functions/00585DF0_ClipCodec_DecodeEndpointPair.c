/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name. Original PC1.67 endpoint dispatch, cdecl seven stack arguments, RET without callee
   cleanup. channelRecord is a20-byte record: signed relative payload at+0(-1 sentinel), target
   hash+4, float offset+8, float scale+0xC, zero-extended u16 keyCount+0x10, u8 codec+0x12, u8
   subtarget+0x13. Only low codec byte dispatches. Cases9..12 write both float4 endpoints0;13..16
   write1;17 writes(0,0,0,1), without payload/keyCount reads. Each endpoint lane then executes
   separate MULSS by scale and ADDSS offset. Unsupported codec values fall through to scaling
   existing outputs; this is NOT a verified successful decoder for unknown codecs. Case3
   indexed3,18/19 packed10x3,20 u16x4 endpoint helpers retained separately. indexedContext points to
   context whose first DWORD is the indexed float base. Decompiler stack aliases for temporary
   endpoint flags/case5+ scratch are not extra semantic input fields. */

void __cdecl
ClipCodec_DecodeEndpointPair
          (byte *codecBase,byte *channelRecord,uint frame0,uint frame1,float *sample0,float *sample1
          ,uint *indexedContext)

{
  float fVar1;
  byte *pbVar2;
  float *pfVar3;
  float *pfVar4;
  ushort *puVar5;
  float fVar6;
  undefined4 local_4;
  
  pfVar4 = sample1;
  pfVar3 = sample0;
  pbVar2 = channelRecord;
  fVar1 = DAT_00f998f8;
  local_4 = 0;
  switch(channelRecord[0x12]) {
  case 1:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    FUN_005852d0(frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
                 (int *)indexedContext,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 2:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    FUN_00585390(frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
                 (int *)indexedContext,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 3:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    ClipKeys_ReadIndexed3EndpointPair
              (frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
               (int *)indexedContext,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 4:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    FUN_00585510(frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
                 (int *)indexedContext,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 5:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    FUN_005855d0(frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
                 &channelRecord,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 6:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    FUN_00585690(frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
                 &channelRecord,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 7:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    FUN_00585750(frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
                 &channelRecord,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 8:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    FUN_00585810(frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
                 &channelRecord,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 9:
  case 10:
  case 0xb:
  case 0xc:
    fVar6 = 0.0;
    goto LAB_00586095;
  case 0xd:
  case 0xe:
  case 0xf:
  case 0x10:
    fVar6 = DAT_00f998f8;
LAB_00586095:
    sample0[3] = fVar6;
    sample0[2] = fVar6;
    sample0[1] = fVar6;
    *sample0 = fVar6;
    sample1[3] = fVar6;
LAB_005860dc:
    sample1[2] = fVar6;
    sample1[1] = fVar6;
    *sample1 = fVar6;
    break;
  case 0x11:
    fVar6 = 0.0;
    sample0[2] = 0.0;
    sample0[1] = 0.0;
    *sample0 = 0.0;
    sample0[3] = fVar1;
    sample1[3] = fVar1;
    goto LAB_005860dc;
  case 0x12:
  case 0x13:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    ClipKeys_ReadPacked10EndpointPair
              (frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
               &channelRecord,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
    break;
  case 0x14:
    if (*(int *)channelRecord == -1) {
      puVar5 = (ushort *)0x0;
    }
    else {
      puVar5 = (ushort *)(codecBase + *(int *)channelRecord);
    }
    ClipKeys_ReadU16QuaternionEndpointPair
              (frame0,sample0,(undefined2 *)&local_4,frame1,sample1,(undefined2 *)&channelRecord,
               &channelRecord,puVar5,(uint)*(ushort *)(channelRecord + 0x10));
  }
  *pfVar3 = *(float *)(pbVar2 + 0xc) * *pfVar3 + *(float *)(pbVar2 + 8);
  pfVar3[1] = *(float *)(pbVar2 + 0xc) * pfVar3[1] + *(float *)(pbVar2 + 8);
  pfVar3[2] = *(float *)(pbVar2 + 0xc) * pfVar3[2] + *(float *)(pbVar2 + 8);
  pfVar3[3] = *(float *)(pbVar2 + 0xc) * pfVar3[3] + *(float *)(pbVar2 + 8);
  *pfVar4 = *(float *)(pbVar2 + 0xc) * *pfVar4 + *(float *)(pbVar2 + 8);
  pfVar4[1] = pfVar4[1] * *(float *)(pbVar2 + 0xc) + *(float *)(pbVar2 + 8);
  pfVar4[2] = *(float *)(pbVar2 + 0xc) * pfVar4[2] + *(float *)(pbVar2 + 8);
  pfVar4[3] = pfVar4[3] * *(float *)(pbVar2 + 0xc) + *(float *)(pbVar2 + 8);
  return;
}

