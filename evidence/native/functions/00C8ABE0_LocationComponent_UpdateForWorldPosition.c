/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Requires owner hiddenflags!=ffffffff, world lot registry
   andTransform. Calls specialized00c8a550, else fallback00c8a810. May dispatch object event0b
   onownertransition; flags3c update cache andnonzero flags dispatch00c89a20. Exact lower level/room
   predicates andflag taxonomy remain open. Hiddenflags call receives full owner GUID per original
   instructions, despite stale callee decompiler prototype.
   
   PC1.67 original static instructions. Selected admission closure: hiddenflags!=FFFFFFFF
   plusworldregistry andTransform gate; specializedC8A550 elseuncontainedC8A810. Ownertransition
   mayemit0B dependinglotreadiness. Deltaflags3C -> C8A200 managed event17 BEFORE nonzero flags ->
   C89A20 native owner/index transition. Physical hiddenflags lookup uses fullownerGUID despite
   stale callee decompiler tracking. Managedcallbacks can reenter native/membership ownership; no
   CLR revision rollback follows. */

void __thiscall LocationComponent_UpdateForWorldPosition(void *this,float *worldPosition)

{
  uint guidHigh;
  void *this_00;
  uchar uVar1;
  uint uVar2;
  void *pvVar3;
  undefined4 uVar4;
  int *this_01;
  int *piVar5;
  uint local_8;
  int *local_4;
  
  local_8 = 0;
  local_4 = (int *)0x0;
  uVar2 = ScriptCore.World::World_ObjectGetHiddenFlags();
  this_00 = DAT_011edbc4;
  if ((((uVar2 != 0xffffffff) && (DAT_011edbc4 != (void *)0x0)) &&
      (*(void **)((int)this + 4) != (void *)0x0)) &&
     (pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea158),
     pvVar3 != (void *)0x0)) {
    uVar2 = *(uint *)((int)this + 8);
    guidHigh = *(uint *)((int)this + 0xc);
    uVar4 = FUN_00c8a550(this,worldPosition,this_00,(int)pvVar3,&local_8);
    if ((char)uVar4 == '\0') {
      LocationComponent_ResolveUncontainedWorldPosition(this,worldPosition,this_00,&local_8);
    }
    piVar5 = local_4;
    if (((uVar2 != *(uint *)((int)this + 8)) || (guidHigh != *(uint *)((int)this + 0xc))) &&
       (uVar2 != 0 || guidHigh != 0)) {
      this_01 = WorldObjects_FindLotByGuid(this_00,uVar2,guidHigh,(uint *)0x0);
      piVar5 = WorldObjects_FindLotByGuid
                         (this_00,*(uint *)((int)this + 8),*(uint *)((int)this + 0xc),(uint *)0x0);
      if (((this_01 != (int *)0x0) && (uVar1 = Lot_ReadDetailReadinessByte(this_01), uVar1 == '\0'))
         && ((piVar5 == (int *)0x0 || (uVar1 = Lot_ReadDetailReadinessByte(piVar5), uVar1 != '\0')))
         ) {
        ObjectEvents_Dispatch(0xb,*(void **)((int)this + 4),(void *)0x0);
      }
    }
    uVar2 = local_8;
    if ((local_8 & 0x3c) != 0) {
      LocationComponent_NotifyManagedLotUpdate((int)this);
    }
    if (uVar2 != 0) {
      FUN_00c89a20(this,uVar2,piVar5);
    }
  }
  return;
}

