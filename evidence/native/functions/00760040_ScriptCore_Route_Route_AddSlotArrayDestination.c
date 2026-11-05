/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161930.
   ScriptCore.Route::Route_AddSlotArrayDestination [assembly=ScriptCore token=0x060010FA; handle:
   System.UInt32, nTag: System.UInt32, fWeight: System.Single, ageGenderSpecies: System.UInt32,
   bOffsetForPortalsByAGS: System.Boolean, scoreFunctionWeights: System.Single[], targetObject:
   System.UInt64, slotNameHashes: System.UInt32[], slotWeights: System.Single[];
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst static routing contract: cdecl stack layout after24-byte locals+4 saved
   regs:handle@ESP+0x2c,tag+0x30,floatweight+0x34,AGS+0x38,byte
   offsetflag+0x3c,scorearray+0x40,target halves+0x44/+0x48,slotHashes+0x4c,slotWeights+0x50. Host
   vtable+0x6c gives uint array pointer/count; require nonnull pointer and signed count>0. Weights
   extracted at+0x78; unequal length discards weight pointer, retaining default1. Null weights
   allowed. AL bool. Decompiler may mis-track these indirect call stack purges; original offsets
   govern. */

bool __cdecl
ScriptCore.Route::Route_AddSlotArrayDestination
          (uint handle,uint tag,float weight,uint ags,bool offsetForAGS,void *scoreWeights,
          ulonglong target,void *slotHashes,void *slotWeights)

{
  int *piVar1;
  int *host;
  undefined4 *puVar2;
  void *pvVar3;
  int iVar4;
  int *piVar5;
  int *local_18;
  void *local_14;
  void *local_10;
  int *piStack_c;
  uint uStack_8;
  void *pvStack_4;
  
  if ((DAT_011d50c4 != (void *)0x0) && (slotHashes != (void *)0x0)) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    local_14 = (void *)0x0;
    local_10 = (void *)0x0;
    local_18 = (int *)0x0;
    (**(code **)(*piVar1 + 0x6c))(piVar1,slotHashes,&local_14,(uint *)&local_18);
    if ((local_14 != (void *)0x0) && (0 < (int)local_18)) {
      if (slotWeights != (void *)0x0) {
        piStack_c = (int *)0x0;
        (**(code **)(*piVar1 + 0x78))(piVar1,slotWeights,&local_10,(uint *)&piStack_c);
        if (piStack_c != local_18) {
          local_10 = (void *)0x0;
        }
      }
      host = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,handle);
      if (host != (int *)0x0) {
        (**(code **)(*host + 0x10))();
        puVar2 = RouteHost_GetOrCreateGoal(host);
        FUN_007fd370(&piStack_c,puVar2);
        piVar5 = piStack_c;
        if (piStack_c != (int *)0x0) {
          pvVar3 = (void *)FUN_004e4500(0x58,"Routing/SlotArrayDestination",0);
          if ((pvVar3 != (void *)0x0) &&
             (pvVar3 = SlotArrayDestination_Initialize(pvVar3), piVar5 = piStack_c,
             pvVar3 != (void *)0x0)) {
            *(uint *)((int)pvVar3 + 0x28) = tag;
            *(float *)((int)pvVar3 + 0x2c) = weight;
            *(int *)((int)pvVar3 + 0x40) = host[0x10];
            *(int *)((int)pvVar3 + 0x44) = host[0x11];
            *(ulonglong *)((int)pvVar3 + 0x48) = target;
            if (scoreWeights != (void *)0x0) {
              pvStack_4 = (void *)0x0;
              uStack_8 = 0;
              (**(code **)(*piVar1 + 0x78))(piVar1,scoreWeights,&pvStack_4,&uStack_8);
              RouteDestination_CopyScoreWeights(pvVar3,(uint)pvStack_4,uStack_8);
            }
            piVar1 = (int *)((int)pvVar3 + 0x30);
            SlotGoals_ResizeWithUnitWeight(piVar1,(uint)local_18);
            piVar5 = piStack_c;
            iVar4 = 0;
            if (0 < (int)local_18) {
              do {
                *(undefined4 *)(*piVar1 + iVar4 * 8) = *(undefined4 *)((int)local_14 + iVar4 * 4);
                if (local_10 != (void *)0x0) {
                  *(undefined4 *)(*piVar1 + 4 + iVar4 * 8) =
                       *(undefined4 *)((int)local_10 + iVar4 * 4);
                }
                iVar4 = iVar4 + 1;
              } while (iVar4 < (int)local_18);
            }
            *(bool *)((int)pvVar3 + 0x54) = offsetForAGS;
            *(uint *)((int)pvVar3 + 0x50) = ags;
            RouteGoal_AppendDestination(piStack_c,(int)pvVar3);
            (**(code **)(*piVar5 + 4))();
            (**(code **)(*host + 0x14))();
            return true;
          }
          (**(code **)(*piVar5 + 4))();
        }
        (**(code **)(*host + 0x14))();
      }
    }
  }
  return false;
}

