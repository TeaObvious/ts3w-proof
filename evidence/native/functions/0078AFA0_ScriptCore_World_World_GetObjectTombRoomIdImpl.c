/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163460 (TS3W.exe).
   ScriptCore.World::World_GetObjectTombRoomIdImpl [assembly=ScriptCore token=0x06000791; objId:
   System.UInt64; return=System.Int16]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC1.67 tomb/diving contract. AX carries signed int16 roomId; all missing object,
   Location, Transform, world-lot or partition branches return0xffff (-1). Temporarily retains
   object; samples worldposition and subtracts Location+0x24 vertical offset before ordinary local
   level selection and light-blocking room lookup. This is lot geometry, not travel. */

short __cdecl ScriptCore.World::World_GetObjectTombRoomIdImpl(ulonglong objectGuid)

{
  int *piVar1;
  int iVar2;
  short sVar3;
  void *pvVar4;
  undefined4 *this;
  void *this_00;
  float *pfVar5;
  void *pvVar6;
  float local_38;
  float local_34;
  float local_30;
  LotXZLevel local_2c;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar6 = DAT_011edbc4;
  pvVar4 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar4,objectGuid);
  if (this == (undefined4 *)0x0) {
    return -1;
  }
  piVar1 = this + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  pvVar4 = Object_GetComponentByMask(this,DAT_011edf08);
  this_00 = Object_GetComponentByMask(this,DAT_011ea158);
  if ((pvVar4 != (void *)0x0) && (this_00 != (void *)0x0)) {
    pfVar5 = TransformComponent_GetWorldPosition(this_00,&local_20);
    FUN_0076c150(&local_38,pfVar5);
    local_34 = local_34 - *(float *)((int)pvVar4 + 0x24);
    if (((pvVar6 == (void *)0x0) ||
        (pvVar6 = LotSpatialIndex_FindContainingLotAtWorldXZ(pvVar6,local_38,local_30),
        pvVar6 == (void *)0x0)) || (pvVar4 = *(void **)((int)pvVar6 + 0x298), pvVar4 == (void *)0x0)
       ) {
      sVar3 = -1;
    }
    else {
      local_2c.x = DAT_00fab218;
      local_2c.z = DAT_00fab218;
      local_2c.level = 0;
      local_20 = local_38;
      fStack_1c = local_34;
      fStack_18 = local_30;
      fStack_14 = local_38;
      Lot_WorldPositionToLocalLocation(pvVar6,&local_20,&local_2c);
      sVar3 = LotRoom_ResolveForLocalLocation(pvVar4,&local_2c.x,0,0);
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
    return sVar3;
  }
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar2 != 1) {
    return -1;
  }
  LOCK();
  *piVar1 = 1;
  UNLOCK();
  (**(code **)*this)(1);
  return -1;
}

