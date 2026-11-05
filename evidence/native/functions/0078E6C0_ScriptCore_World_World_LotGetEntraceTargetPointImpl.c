/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163c98 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotGetEntraceTargetPointImpl [assembly=ScriptCore token=0x0600088E;
   lotId: System.UInt64; return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void * __cdecl
ScriptCore.World::World_LotGetEntraceTargetPointImpl(void *param_1,uint param_2,uint param_3)

{
  int iVar1;
  void *this;
  int *this_00;
  undefined4 uVar2;
  float *pfVar3;
  float local_90;
  float fStack_8c;
  float fStack_88;
  undefined4 uStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  uint local_50 [19];
  
  FUN_0076bf70(param_1,0,0,0);
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 != 0) {
    this = (void *)FUN_008295c0(iVar1);
    if (this != (void *)0x0) {
      if (DAT_011edbc4 != (void *)0x0) {
        this_00 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_2,param_3,(uint *)0x0);
        if (this_00 != (int *)0x0) {
          local_90 = 0.0;
          fStack_8c = 0.0;
          fStack_88 = 0.0;
          uStack_84 = 0;
          uVar2 = FUN_00632200(this,param_2,param_3,&local_90);
          if ((char)uVar2 != '\0') {
            pfVar3 = (float *)Lot_BuildLocalToWorldPoseMatrix(this_00,local_50);
            local_80 = local_90 * *pfVar3 + pfVar3[0xc] + fStack_8c * pfVar3[4] +
                       fStack_88 * pfVar3[8];
            fStack_7c = local_90 * pfVar3[1] + pfVar3[0xd] + fStack_8c * pfVar3[5] +
                        fStack_88 * pfVar3[9];
            fStack_78 = local_90 * pfVar3[2] + pfVar3[0xe] + fStack_8c * pfVar3[6] +
                        fStack_88 * pfVar3[10];
            fStack_74 = local_90 * pfVar3[3] + pfVar3[0xf] + fStack_8c * pfVar3[7] +
                        fStack_88 * pfVar3[0xb];
            local_70 = local_80;
            fStack_6c = fStack_7c;
            fStack_68 = fStack_78;
            fStack_64 = fStack_74;
            local_60 = local_80;
            fStack_5c = fStack_7c;
            fStack_58 = fStack_78;
            fStack_54 = fStack_74;
            FUN_0076bf70(param_1,local_80,fStack_7c,fStack_78);
          }
        }
      }
      return param_1;
    }
  }
  return param_1;
}

