/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161480 (TS3W.exe).
   ScriptCore.Objects::Objects_GetLocation [assembly=ScriptCore token=0x06000011; id: System.UInt64,
   lotId: System.UInt64&, level: System.Int32&, roomId: System.Int32&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. FullGUID, output lotId64/level32/room32.
   ReadsLocation+8/+c,+18,+20. MissingID/component leavesall outputs untouched.
   Completebody7453c0..74540d. */

void __cdecl Objects_GetLocation(ulonglong guid,ulonglong *outLotId,int *outLevel,int *outRoom)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,guid);
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011edf08);
    if (pvVar1 != (void *)0x0) {
      *(undefined4 *)outLotId = *(undefined4 *)((int)pvVar1 + 8);
      *(undefined4 *)((int)outLotId + 4) = *(undefined4 *)((int)pvVar1 + 0xc);
      *outLevel = *(int *)((int)pvVar1 + 0x18);
      *outRoom = *(int *)((int)pvVar1 + 0x20);
    }
  }
  return;
}

