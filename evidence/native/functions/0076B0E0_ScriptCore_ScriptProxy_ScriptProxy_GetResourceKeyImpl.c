/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161f00, 0x011635c0 (original PC 1.67 TS3W.exe).
   ScriptCore.ScriptProxy::ScriptProxy_GetResourceKeyImpl [assembly=ScriptCore token=0x060006BE;
   objectId: System.UInt64; return=Sims3.SimIFace.ResourceKey]
   ScriptCore.World::World_ObjectGetProductKey [assembly=ScriptCore token=0x060007BC; objId:
   System.UInt64; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.ScriptProxy::ScriptProxy_GetResourceKeyImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined1 local_10 [8];
  undefined4 *puStack_8;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xbc))(local_10,param_2,param_3);
  *puStack_8 = *puVar3;
  puStack_8[1] = puVar3[1];
  uVar1 = puVar3[3];
  puStack_8[2] = puVar3[2];
  puStack_8[3] = uVar1;
  return puStack_8;
}

