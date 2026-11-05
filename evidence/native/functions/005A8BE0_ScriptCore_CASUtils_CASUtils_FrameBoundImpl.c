/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156520 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_FrameBoundImpl [assembly=ScriptCore token=0x06000341; winHandle:
   System.UInt32, min: Sims3.SimIFace.Vector3, max: Sims3.SimIFace.Vector3, callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_FrameBoundImpl
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *this;
  int *piVar3;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xc))(0x39a436f);
      if (puVar2 != (undefined4 *)0x0) {
        piVar1 = (int *)FUN_0044c4f0();
        uStack_28 = param_2;
        uStack_24 = param_3;
        uStack_20 = param_4;
        uStack_1c = param_2;
        uStack_38 = param_5;
        uStack_34 = param_6;
        uStack_30 = param_7;
        uStack_2c = param_5;
        this = FUN_0076ae20();
        if (this == (undefined4 *)0x0) {
          piVar3 = (int *)0x0;
        }
        else {
          piVar3 = FUN_005a7a10(this,puVar2,&uStack_28,&uStack_38);
        }
        (**(code **)(*piVar3 + 4))();
        (**(code **)(*piVar1 + 0x1c))(0x30290f0,piVar3,0,0);
        (**(code **)(*piVar3 + 8))();
      }
    }
  }
  return;
}

