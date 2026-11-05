/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX node, five stack words, RET14, AL
   success. Payload u32 count then Float32 weight/u32 child count followed packed child references;
   cached total changes by (old total-old weight)+new weight, no clamp. Native stride24hex=36bytes.
   Version>=0101 requires DEADBEEF then stores low bit of following word at+44. Final remaining one
   word must be literal bytes /DGN, optionally endian-swapped. Ghidra float count/fVar2 and huge
   negative sentinel are artifacts: MOV/CMP and CMP dword DEADBEEF establish uint counts/sentinel.
   Unresolved child ref fails AL0; partial mutation may already exist. */

uint __thiscall
SacsRandomNode_ReadOutcomes
          (void *this,uint param_1,uint *param_2,int param_3,void *param_4,char param_5)

{
  float *pfVar1;
  float fVar2;
  uint *puVar3;
  uint *puVar4;
  int iVar5;
  float *pfVar6;
  float fVar7;
  void *local_18;
  uint *local_14;
  uint *local_10;
  undefined4 local_c [3];
  
  puVar3 = (uint *)*param_2;
  local_10 = param_2;
  pfVar6 = (float *)(param_2 + 1);
  local_14 = puVar3;
  puVar4 = (uint *)FUN_007fa110((void *)((int)this + 0x30),(uint)puVar3);
  param_2 = (uint *)0x0;
  if (puVar3 != (uint *)0x0) {
    iVar5 = 0;
    do {
      fVar2 = *pfVar6;
      *(float *)((int)this + 0x40) =
           (*(float *)((int)this + 0x40) - *(float *)(*(int *)((int)this + 0x30) + iVar5)) + fVar2;
      *(float *)(*(int *)((int)this + 0x30) + iVar5) = fVar2;
      fVar2 = pfVar6[1];
      pfVar6 = pfVar6 + 2;
      if (fVar2 != 0.0) {
        fVar7 = 0.0;
        do {
          local_18 = RcolContext_ResolveOneBasedBlock(param_4,(uint)*pfVar6);
          pfVar6 = pfVar6 + 1;
          puVar4 = (uint *)0x0;
          if (local_18 == (void *)0x0) goto LAB_007fa31e;
          FUN_006b5bc0((void *)(*(int *)((int)this + 0x30) + 4 + iVar5),local_c,(uint *)&local_18);
          fVar7 = (float)((int)fVar7 + 1);
        } while ((uint)fVar7 < (uint)fVar2);
      }
      puVar4 = (uint *)((int)param_2 + 1);
      iVar5 = iVar5 + 0x24;
      param_2 = puVar4;
    } while (puVar4 < local_14);
  }
  if (0x100 < param_1) {
    if (*pfVar6 != -6.2598534e+18) goto LAB_007fa31e;
    pfVar1 = pfVar6 + 1;
    pfVar6 = pfVar6 + 2;
    *(byte *)((int)this + 0x44) = SUB41(*pfVar1,0) & 1;
  }
  if (param_5 != '\0') {
    ResourceBytes_SwapDwordsInPlace((uint *)pfVar6,1);
  }
  puVar4 = (uint *)((int)pfVar6 - (int)local_10 >> 2);
  if ((((param_3 - (int)puVar4 == 1) && (*(char *)pfVar6 == '/')) &&
      (*(char *)((int)pfVar6 + 1) == 'D')) &&
     ((*(char *)((int)pfVar6 + 2) == 'G' && (*(char *)((int)pfVar6 + 3) == 'N')))) {
    return CONCAT31((int3)((int)pfVar6 - (int)local_10 >> 10),1);
  }
LAB_007fa31e:
  return (uint)puVar4 & 0xffffff00;
}

