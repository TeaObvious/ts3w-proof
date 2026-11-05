/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163478 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_IsObjectOnScreenImpl [assembly=ScriptCore token=0x06000783; scriptHandle:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 object screen-query original boundary review (2026-10-17). Registered screen-query
   wrapper complete332B111Listing, existing336-byte canonical raw window retained separately. Native
   handle lookup/retain precedes Transform component admission (descriptor mask011EA158, distinct
   from Location) then selected camera accessor0096A080. Missing Model uses center0/radius1; present
   Model bounds pointer00948880 feeds68BFA0, then Transform world translation00957A30 and packed
   sphere68D520. Actual Boolean inAL/plainRET, stored inferrednoargument/undefined4 signature
   remains untouched. Release/last-reference cleanup unchanged. Current
   camera-first/hostregistry/defaultModelbounds/sixplane workflow is preserved as a distinct current
   contract. Original managed World facade and UInt64/Boolean forwarder remain authoritative. IDs,
   physical ABI, inferred prototypes/types, body/bytes/Listing/flow/references and analysis state
   remain unchanged. */

uint ScriptCore.World::World_IsObjectOnScreenImpl(void)

{
  int iVar1;
  void *pvVar2;
  int *this;
  uint uVar3;
  void *pvVar4;
  float *pfVar5;
  undefined4 uVar6;
  int *piVar7;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  float local_4c;
  int *local_48;
  void *local_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(in_stack_00000008,in_stack_00000004));
  piVar7 = this;
  if (this != (int *)0x0) {
    piVar7 = this + 1;
    LOCK();
    *piVar7 = *piVar7 + 1;
    UNLOCK();
    local_48 = this;
    pvVar2 = Object_GetComponentByMask(this,DAT_011ea158);
    if (pvVar2 != (void *)0x0) {
      local_44 = (void *)WorldCamera_GetScreenQueryCamera();
      if (local_44 != (void *)0x0) {
        fStack_34 = 0.0;
        fStack_38 = 0.0;
        fStack_3c = 0.0;
        local_40 = 0.0;
        local_30 = 0.0;
        fStack_2c = 0.0;
        fStack_28 = 0.0;
        fStack_24 = 0.0;
        local_4c = 1.0;
        pvVar4 = Object_GetComponentByMask(this,DAT_011e9fc4);
        if (pvVar4 != (void *)0x0) {
          pvVar4 = (void *)ModelComponent_GetBoundsStorage((int)pvVar4);
          Bounds_WriteCenterAndRadius(pvVar4,&local_30,&local_4c);
        }
        pfVar5 = TransformComponent_GetWorldPosition(pvVar2,&local_40);
        local_40 = *pfVar5 + local_30;
        fStack_3c = pfVar5[1] + fStack_2c;
        fStack_38 = pfVar5[2] + fStack_28;
        fStack_24 = pfVar5[3] + fStack_24;
        fStack_34 = local_4c;
        fStack_14 = local_4c;
        local_30 = local_40;
        fStack_2c = fStack_3c;
        fStack_28 = fStack_38;
        local_20 = local_40;
        fStack_1c = fStack_3c;
        fStack_18 = fStack_38;
        uVar6 = Camera_IntersectsPackedSphere(local_44,&local_20);
        if ((char)uVar6 != '\0') {
          uVar6 = FUN_007462e0((int *)&local_48);
          return CONCAT31((int3)((uint)uVar6 >> 8),1);
        }
        piVar7 = (int *)FUN_007462e0((int *)&local_48);
        goto LAB_0078af93;
      }
    }
    LOCK();
    iVar1 = *piVar7;
    *piVar7 = *piVar7 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar7 = 1;
      UNLOCK();
      uVar3 = (**(code **)*this)(1);
      return uVar3 & 0xffffff00;
    }
  }
LAB_0078af93:
  return (uint)piVar7 & 0xffffff00;
}

