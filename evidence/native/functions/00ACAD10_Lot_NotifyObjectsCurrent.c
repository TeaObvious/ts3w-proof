/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Original debug label Lot/SetIsCurrent/objectsOnLevel
   identifies operation. Enumerates objects for each signed floor from lot+17c through+184 count;
   for matching component mask011ea2a8 calls0095f930(component,isCurrent). Called on old/new active
   GUID changes; does not directly set lot+c1. */

void __thiscall Lot_NotifyObjectsCurrent(void *this,uchar isCurrent)

{
  void *pvVar1;
  uint uVar2;
  void *allocation;
  uint uVar3;
  int local_24;
  void *local_20;
  void *local_1c;
  undefined4 local_18;
  char *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  allocation = (void *)0x0;
  local_20 = (void *)0x0;
  local_1c = (void *)0x0;
  local_18 = 0;
  local_14 = "Lot/SetIsCurrent/objectsOnLevel";
  local_24 = 0;
  if (0 < *(int *)((int)this + 0x184)) {
    local_10 = 0;
    local_c = 0;
    do {
      uVar2 = 0;
      local_8 = *(undefined4 *)((int)this + 0x174);
      local_4 = *(undefined4 *)((int)this + 0x178);
      local_1c = allocation;
      FUN_00ac85d0(this,&local_10,*(int *)((int)this + 0x17c) + local_24,&local_20,'\0','\0','\0',5,
                   '\x01');
      allocation = local_20;
      uVar3 = (int)local_1c - (int)local_20 >> 2;
      if (uVar3 != 0) {
        do {
          pvVar1 = *(void **)((int)allocation + uVar2 * 4);
          if ((pvVar1 != (void *)0x0) &&
             (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8), pvVar1 != (void *)0x0)) {
            FUN_0095f930(pvVar1,isCurrent);
          }
          uVar2 = uVar2 + 1;
        } while (uVar2 < uVar3);
      }
      local_24 = local_24 + 1;
    } while (local_24 < *(int *)((int)this + 0x184));
  }
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  return;
}

