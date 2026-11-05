/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161440 (original PC 1.67 TS3W.exe).
   ScriptCore.Objects::Objects_GetForward [assembly=ScriptCore token=0x06000009; id: System.UInt64;
   return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl ScriptCore.Objects::Objects_GetForward(undefined4 *param_1)

{
  int iVar1;
  void *pvVar2;
  uint local_50 [8];
  undefined4 local_30 [11];
  
  iVar1 = FUN_00937570();
  pvVar2 = (void *)FUN_00937f80(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea158);
    if (pvVar2 != (void *)0x0) {
      FUN_00957a90(pvVar2,local_50);
      FUN_0076c150(param_1,local_30);
      return param_1;
    }
  }
  FUN_0076bf70(param_1,0,0,0x3f800000);
  return param_1;
}

