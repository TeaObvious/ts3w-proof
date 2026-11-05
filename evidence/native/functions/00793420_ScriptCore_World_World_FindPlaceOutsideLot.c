/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00793601) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01163538 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_FindPlaceOutsideLot [assembly=ScriptCore token=0x060007AB; lotId:
   System.UInt64, offsetHint: System.UInt32&, outPos: Sims3.SimIFace.Vector3&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.World::World_FindPlaceOutsideLot(int param_1,int param_2,uint *param_3,float *param_4)

{
  bool bVar1;
  void *this;
  float in_EAX;
  int *piVar2;
  uint uVar3;
  void *pvVar4;
  float *pfVar5;
  undefined4 uVar6;
  uint uVar7;
  float *pfVar8;
  float10 fVar9;
  float fVar10;
  ulonglong uVar11;
  float local_78;
  float local_74;
  float local_70;
  void *local_6c;
  float local_68;
  float local_60;
  float fStack_5c;
  float local_58;
  float local_54;
  float local_4c;
  float local_44;
  int local_40 [3];
  char *local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar2 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0.0;
    if (piVar2 != (int *)0x0) {
      pfVar5 = (float *)(piVar2 + 0x4d);
      uVar7 = 1;
      pfVar8 = pfVar5;
      do {
        uVar3 = uVar7 & 0x80000003;
        if ((int)uVar3 < 0) {
          uVar3 = (uVar3 - 1 | 0xfffffffc) + 1;
        }
        local_68 = pfVar5[uVar3 * 2] - *pfVar8;
        fVar10 = DAT_00f998f0 - ((float)piVar2[uVar3 * 2 + 0x4e] - pfVar8[1]);
        _local_60 = CONCAT44(fStack_5c,fVar10);
        local_44 = 1.0 / SQRT(local_68 * local_68 + fVar10 * fVar10);
        local_4c = local_44 * local_68;
        local_44 = local_44 * fVar10;
        local_54 = ((pfVar5 + uVar3 * 2)[1] + pfVar8[1]) * _DAT_00f9b5b4 + local_4c;
        local_58 = (pfVar5[uVar3 * 2] + *pfVar8) * _DAT_00f9b5b4 + local_44;
        local_44 = DAT_00f998f0 - local_44;
        pvVar4 = FUN_00c687d0(this,local_58,local_54);
        if (pvVar4 == (void *)0x0) break;
        pfVar8 = pfVar8 + 2;
        bVar1 = (int)uVar7 < 4;
        uVar7 = uVar7 + 1;
      } while (bVar1);
      local_6c = (void *)FUN_00686e60();
      local_78 = *(float *)((int)this + 0xc0);
      local_74 = *(float *)((int)this + 0xbc);
      pfVar5 = &local_78;
      if (*(float *)((int)this + 0xbc) <= *(float *)((int)this + 0xc0)) {
        pfVar5 = &local_74;
      }
      uVar7 = *param_3 + 1;
      local_60 = (float)(longlong)ROUND(*pfVar5);
      local_68 = local_60;
      in_EAX = local_60;
      if (uVar7 < (uint)local_60) {
        do {
          local_70 = DAT_00fab218;
          if ((uVar7 & 1) == 0) {
            local_70 = DAT_00f998f8;
          }
          local_70 = (float)(uVar7 >> 1) * local_70;
          fStack_24 = local_4c * local_70 + local_58;
          fStack_28 = local_44 * local_70 + local_54;
          _local_60 = CONCAT44(fStack_28,fStack_24);
          fVar9 = FUN_00c6a090(this,fStack_24,fStack_28,0,'\x01','\0',(undefined1 *)0x0,
                               (undefined1 *)0x0,'\0','\0');
          local_70 = (float)fVar9;
          local_30 = local_60;
          local_20 = local_60;
          fStack_18 = fStack_28;
          fStack_14 = fStack_24;
          local_40[0] = 0;
          local_40[1] = 0;
          local_40[2] = 0;
          local_34 = "Physics/RangeResult";
          fStack_2c = local_70;
          fStack_1c = local_70;
          uVar11 = FUN_00686fe0(local_6c,&local_20,1.0,0xc,local_40);
          if (((char)uVar11 == '\0') && (param_4 != (float *)0x0)) {
            *param_4 = local_20;
            local_30 = local_20;
            fStack_2c = fStack_1c;
            fStack_28 = fStack_18;
            fStack_24 = fStack_14;
            param_4[1] = fStack_1c;
            param_4[2] = fStack_18;
            *param_3 = uVar7;
            uVar6 = 0;
            if (local_40[0] != 0) {
              uVar6 = FUN_004e44e0(local_40[0]);
            }
            return CONCAT31((int3)((uint)uVar6 >> 8),1);
          }
          in_EAX = 0.0;
          if (local_40[0] != 0) {
            in_EAX = (float)FUN_004e44e0(local_40[0]);
          }
          uVar7 = uVar7 + 1;
        } while (uVar7 < (uint)local_68);
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

