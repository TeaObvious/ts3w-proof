/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Cdecl three physical words
   streamContext,keyVector,outputKey. ReadUInt32 ordinal, compare unsigned against
   vector(end-begin)>>4; copy all four32-bit words from native instance-low/high/type/group layout
   to output on valid ordinal andAL1, elseAL0. Accumulated stream status and ordinal validity are
   distinct; current strict array exception protocol differs. */

uint __cdecl ReferenceTable_ReadKeyByOrdinal(void *param_1,int *param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  bool readSucceeded;
  undefined4 *puVar4;
  uint local_4;
  
  iVar1 = param_2[1];
  iVar2 = *param_2;
  local_4 = 0;
  readSucceeded =
       Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,readSucceeded);
  if (local_4 < (uint)(iVar1 - iVar2 >> 4)) {
    puVar4 = (undefined4 *)(local_4 * 0x10 + *param_2);
    *param_3 = *puVar4;
    param_3[1] = puVar4[1];
    param_3[2] = puVar4[2];
    uVar3 = puVar4[3];
    param_3[3] = uVar3;
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  return local_4 & 0xffffff00;
}

