/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161408 (TS3W.exe).
   ScriptCore.Objects::Objects_GetTransform [assembly=ScriptCore token=0x06000002; id:
   System.UInt64; return=Sims3.SimIFace.Matrix44]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. Explicitfirststackoutputbuffer (managedstructreturnABI),
   thenfull GUID. Missingobject/Transform writesidentityMatrix44; validpath convertsfourworld matrix
   rows. ReturnsbufferEAX. */

float * __cdecl ScriptCore.Objects::Objects_GetTransform(float *outMatrix,ulonglong guid)

{
  void *pvVar1;
  float local_50 [4];
  undefined4 local_40 [4];
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,guid);
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
    if (pvVar1 != (void *)0x0) {
      TransformComponent_GetWorldMatrix(pvVar1,local_50);
      FUN_00adf9e0(outMatrix,local_50);
      FUN_00adf9e0(outMatrix + 4,local_40);
      FUN_00adf9e0(outMatrix + 8,local_30);
      FUN_00adf9e0(outMatrix + 0xc,local_20);
      return outMatrix;
    }
  }
  FUN_0076bfa0(outMatrix,0x3f800000,0,0,0);
  FUN_0076bfa0(outMatrix + 4,0,0x3f800000,0,0);
  FUN_0076bfa0(outMatrix + 8,0,0,0x3f800000,0);
  FUN_0076bfa0(outMatrix + 0xc,0,0,0,0x3f800000);
  return outMatrix;
}

