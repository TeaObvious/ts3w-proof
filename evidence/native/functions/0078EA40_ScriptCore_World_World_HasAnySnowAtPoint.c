/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163d58 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasAnySnowAtPoint [assembly=ScriptCore token=0x060008A6; worldPos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 __cdecl
ScriptCore.World::World_HasAnySnowAtPoint(float param_1,undefined4 param_2,undefined4 param_3)

{
  void *pvVar1;
  short sVar2;
  char local_31;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  if ((DAT_011edbc4 != 0) && (pvVar1 = *(void **)(DAT_011edbc4 + 0x74), pvVar1 != (void *)0x0)) {
    sVar2 = FUN_00d69aa0((int)pvVar1);
    if ((sVar2 == 1) || (sVar2 == 2)) {
      uStack_28 = param_3;
      fStack_24 = param_1;
      uStack_2c = param_2;
      local_30 = param_1;
      local_20 = param_1;
      uStack_1c = param_2;
      uStack_18 = param_3;
      fStack_14 = param_1;
      local_31 = '\0';
      FUN_00d6e270(pvVar1,&local_20,&local_31);
      return local_31;
    }
  }
  return 0;
}

