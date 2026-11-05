/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163c88 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotSetEntranceByTargetPointImpl [assembly=ScriptCore token=0x0600088C;
   lotId: System.UInt64, bEnable: System.Boolean, targetPt: Sims3.SimIFace.Vector3;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_LotSetEntranceByTargetPointImpl
          (uint param_1,uint param_2,char param_3,float param_4,float param_5,float param_6)

{
  int iVar1;
  void *this;
  int *this_00;
  float *pfVar2;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  uint local_50 [19];
  
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 != 0) {
    this = (void *)FUN_008295c0(iVar1);
    if ((this != (void *)0x0) && (DAT_011edbc4 != (void *)0x0)) {
      this_00 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
      if (this_00 != (int *)0x0) {
        pfVar2 = (float *)Lot_BuildWorldToLocalPoseMatrix(this_00,local_50);
        local_60 = param_4 * *pfVar2 + pfVar2[0xc] + param_5 * pfVar2[4] + param_6 * pfVar2[8];
        fStack_5c = param_4 * pfVar2[1] + pfVar2[0xd] + param_5 * pfVar2[5] + param_6 * pfVar2[9];
        fStack_58 = param_4 * pfVar2[2] + pfVar2[0xe] + param_5 * pfVar2[6] + param_6 * pfVar2[10];
        fStack_54 = param_4 * pfVar2[3] + pfVar2[0xf] + param_5 * pfVar2[7] + param_6 * pfVar2[0xb];
        FUN_0063df40(this,param_1,param_2,param_3,(int *)&local_60);
        LotMainEntrance_UpdateDisplayEffects(this_00);
      }
    }
  }
  return;
}

