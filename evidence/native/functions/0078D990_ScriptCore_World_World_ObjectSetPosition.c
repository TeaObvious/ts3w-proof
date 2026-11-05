/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011636b8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectSetPosition [assembly=ScriptCore token=0x060007DF; objId:
   System.UInt64, pos: Sims3.SimIFace.Vector3, level: System.Int32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectSetPosition
          (undefined4 param_1,undefined4 param_2,float param_3,undefined4 param_4,float param_5,
          undefined4 param_6)

{
  int iVar1;
  uint uVar2;
  int *this;
  int *piVar3;
  float local_50;
  undefined4 uStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float fStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  float fStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    uVar2 = FUN_00937f80(iVar1);
    if (uVar2 != 0) {
      if (DAT_011edbc4 == (void *)0x0) {
        this = (int *)0x0;
      }
      else {
        this = FUN_00c687d0(DAT_011edbc4,param_3,param_5);
      }
      piVar3 = (int *)FUN_0068f130(uVar2);
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x3c))(uVar2,0);
      }
      if (this != (int *)0x0) {
        local_50 = param_3;
        uStack_4c = param_4;
        fStack_48 = param_5;
        fStack_44 = param_3;
        FUN_00ab71a0(this,&local_50,&local_40);
        fStack_30 = local_40;
        uStack_2c = uStack_3c;
        uStack_28 = uStack_38;
        uStack_24 = uStack_34;
        fStack_20 = local_40;
        uStack_1c = uStack_3c;
        uStack_18 = uStack_38;
        uStack_14 = uStack_34;
        (**(code **)(*this + 0x34))(uVar2,local_40,uStack_38,param_6);
      }
    }
  }
  return;
}

