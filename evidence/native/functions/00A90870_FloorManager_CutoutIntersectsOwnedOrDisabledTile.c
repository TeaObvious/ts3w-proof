/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physical ECXFloorManager plus5stackwords RET14hex lowALBoolean. Collects rotated rectangle
   at candidate signed level. Only onlot/livelevel quarters are checked. First tile with a different
   nonzero full64bit cutout owner, OR no requested FlagsLayer bit, returns true after freeing
   vector; empty/no admitted conflict false. Does not perform pixel alpha overlap. Parent B40C50
   maps true to feedback11hex and retains separate level/height/exemption checks. */

bool __thiscall
FloorManager_CutoutIntersectsOwnedOrDisabledTile
          (void *this,undefined4 *param_1,float *param_2,float param_3,int param_4,uint param_5)

{
  int iVar1;
  char *allocation;
  bool bVar2;
  char *pcVar3;
  undefined4 local_18;
  undefined4 local_14;
  char *local_10;
  char *local_c;
  undefined4 local_8;
  char *local_4;
  
  local_18 = *param_1;
  local_14 = param_1[1];
  local_10 = (char *)0x0;
  local_c = (char *)0x0;
  local_8 = 0;
  local_4 = "Lot/FloorManager/SetFloorCutout/tilePartArray";
  FloorCutout_CollectRotatedRectangleQuarters
            (*(int *)((int)this + 4),(char)param_1[2],&local_18,param_3,param_2,&local_10);
  allocation = local_10;
  if (local_10 != local_c) {
    iVar1 = *(int *)((int)this + 4);
    pcVar3 = local_10;
    do {
      if (((((-1 < *pcVar3) && ((int)*pcVar3 < *(int *)(iVar1 + 0x174))) && (-1 < pcVar3[1])) &&
          (((int)pcVar3[1] < *(int *)(iVar1 + 0x178) && (*(int *)(iVar1 + 0x17c) <= (int)pcVar3[2]))
          )) && (((int)pcVar3[2] <= *(int *)(iVar1 + 0x180) &&
                 ((bVar2 = FloorManager_TileHasOtherCutoutOwner(this,pcVar3,param_4,param_5), bVar2
                  || (bVar2 = FloorManager_TileHasAnyRequestedFlag(this,pcVar3), !bVar2)))))) {
        if (allocation != (char *)0x0) {
          Memory_FreeIfNonNull(allocation);
        }
        return true;
      }
      pcVar3 = pcVar3 + 4;
    } while (pcVar3 != local_c);
  }
  if (allocation != (char *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  return false;
}

