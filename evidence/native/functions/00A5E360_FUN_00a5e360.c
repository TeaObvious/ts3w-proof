/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, instruction-qualified interpretation. Physical ECX swap is saved at entry despite stored C stdcall missing it; point/mode two stack words RET8. 16-byte aligned point copied, containing-lot C687D0, AB1020 and AFDE10 AL gates, ADC860, B04090 locator then A8FA90 current pattern four-key copy. Nonzero returned fourth lane gates writes swap+42 mode,+41=1,+30 float4 point. No retained hover record. Do not interpret decompiler local_74 as initialized by a C assignment; it is the saved ECX receiver. */

uint FUN_00a5e360(float *param_1,char param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  char cVar4;
  uint in_EAX;
  void *pvVar5;
  undefined3 extraout_var;
  undefined2 local_78;
  undefined1 local_76;
  undefined1 local_75;
  int local_74;
  LotXZLevel local_70;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 local_50 [14];
  int local_18;
  
  if (DAT_011edbc4 != (void *)0x0) {
    local_70.x = *param_1;
    local_70.z = param_1[1];
    local_70.level = (int)param_1[2];
    fStack_64 = param_1[3];
    local_60 = local_70.x;
    fStack_5c = local_70.z;
    fStack_58 = (float)local_70.level;
    fStack_54 = fStack_64;
    pvVar5 = LotSpatialIndex_FindContainingLotAtWorldXZ
                       (DAT_011edbc4,local_70.x,(float)local_70.level);
    in_EAX = 0;
    if (pvVar5 != (void *)0x0) {
      cVar4 = FUN_00ab1020((int)pvVar5);
      in_EAX = CONCAT31(extraout_var,cVar4);
      if (cVar4 != '\0') {
        local_70.x = -1.0;
        local_70.z = -1.0;
        local_70.level = 0;
        Lot_WorldPositionToLocalLocation(pvVar5,param_1,&local_70);
        in_EAX = FUN_00afde10(pvVar5,&local_70.x,'\x01','\0','\0');
        if ((char)in_EAX != '\0') {
          local_78._0_1_ = -1;
          local_78._1_1_ = 0xff;
          local_75 = 0xff;
          local_76 = 0;
          FUN_00b04090(&local_78,&local_70.x,pvVar5,'\0','\x01',param_2);
          FUN_00afba70(local_50);
          in_EAX = FloorManager_CopyPatternKeysAtCellPart
                             (*(void **)((int)pvVar5 + 0x290),(char *)&local_78,local_50);
          if (local_18 != 0) {
            *(char *)(local_74 + 0x42) = param_2;
            *(undefined1 *)(local_74 + 0x41) = 1;
            fVar1 = param_1[1];
            fVar2 = param_1[2];
            fVar3 = param_1[3];
            *(float *)(local_74 + 0x30) = *param_1;
            *(float *)(local_74 + 0x34) = fVar1;
            *(float *)(local_74 + 0x38) = fVar2;
            *(float *)(local_74 + 0x3c) = fVar3;
            return CONCAT31((int3)((uint)local_74 >> 8),1);
          }
        }
      }
    }
  }
  return in_EAX & 0xffffff00;
}
