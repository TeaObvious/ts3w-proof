/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011633b8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_BulldozeLotImpl [assembly=ScriptCore token=0x06000774; lotId:
   System.UInt64, bAllowDestruction: System.Boolean, bFinishOp: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_BulldozeLotImpl(int param_1,int param_2,char param_3,char param_4)

{
  void *pvVar1;
  int *piVar2;
  undefined4 uVar3;
  int iStack_4;
  
  pvVar1 = DAT_011edbc4;
  if ((DAT_011edbc4 != (void *)0x0) &&
     (piVar2 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0), piVar2 != (int *)0x0)) {
    FUN_00799140(&iStack_4,piVar2);
    uVar3 = FUN_00b01c70((int)piVar2,'\x01');
    if (((char)uVar3 != '\0') && (param_3 != '\0')) {
      FUN_00b03180(pvVar1,piVar2);
      ScriptCore.Animation::Animation_SetMissingAnimationCallback();
      return;
    }
    FUN_00a47400(&iStack_4);
    if (param_4 != '\0') {
      FUN_00a475d0(&iStack_4);
    }
    ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  }
  return;
}

