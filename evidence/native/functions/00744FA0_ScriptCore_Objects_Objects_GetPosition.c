/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161428 (TS3W.exe).
   ScriptCore.Objects::Objects_GetPosition [assembly=ScriptCore token=0x06000006; id: System.UInt64;
   return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. Firststackoutput Vector3 buffer, thenfull GUID;
   validpathcomposedworldposition, missingobject/Transform zerosXYZ. EAX returns buffer. */

float * __cdecl ScriptCore.Objects::Objects_GetPosition(float *outPosition,ulonglong guid)

{
  void *pvVar1;
  float *pfVar2;
  undefined4 local_20 [7];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,guid);
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
    if (pvVar1 != (void *)0x0) {
      pfVar2 = TransformComponent_GetWorldPosition(pvVar1,local_20);
      FUN_0076c150(outPosition,pfVar2);
      return outPosition;
    }
  }
  FUN_0076bf70(outPosition,0,0,0);
  return outPosition;
}

