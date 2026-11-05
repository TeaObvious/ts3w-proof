/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager pluspackedquarter pointer,ignoredGUIDlow/high RET0Chex ALBoolean. Tile owner
   byte comes from +D0 grid, translates ID through +1BC map, ownerGUID must be nonzero and differ in
   either32bitword. Zero GUID or same fullGUID is not another owner. Relative signedlevel compared
   with depth before lookup. Instructions dereference grid depth before explicit nulltest, so no
   universal nullgrid safety inferred. */

bool __thiscall
FloorManager_TileHasOtherCutoutOwner(void *this,char *param_1,int param_2,uint param_3)

{
  void *this_00;
  int iVar1;
  undefined1 *puVar2;
  int local_8 [2];
  
  iVar1 = (int)param_1[2] - *(int *)((int)this + 0x10);
  this_00 = *(void **)((int)this + 0xd0);
  if ((iVar1 < *(int *)((int)this_00 + 0xc)) && (this_00 != (void *)0x0)) {
    puVar2 = (undefined1 *)FUN_00a8b3b0(this_00,(int)*param_1,(int)param_1[1],iVar1);
    param_1 = (char *)CONCAT31(param_1._1_3_,*puVar2);
    FUN_00a8d7f0((void *)((int)this + 0x1bc),local_8,(byte *)&param_1);
    if (local_8[0] != *(int *)(*(int *)((int)this + 0x1c0) + *(int *)((int)this + 0x1c4) * 4)) {
      if ((*(int *)(local_8[0] + 8) != 0 || *(uint *)(local_8[0] + 0xc) != 0) &&
         ((*(int *)(local_8[0] + 8) != param_2 || (*(uint *)(local_8[0] + 0xc) != param_3)))) {
        return true;
      }
    }
  }
  return false;
}

