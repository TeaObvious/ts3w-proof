/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163090 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_CullMapTagByPositionImpl [assembly=ScriptCore token=0x06000E4D;
   position: Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_UIManager__UIManager_CullMapTagByPositionImpl
          (float param_1,undefined4 param_2,undefined4 param_3)

{
  void *this;
  undefined4 uVar1;
  
  this = (void *)FUN_007e9f60();
  if (this != (void *)0x0) {
    uVar1 = FUN_007e9f10(this,param_1,param_2,param_3);
    return uVar1;
  }
  return 0;
}

