/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 ECXmanager pluspackedquarter pointer,ignoredGUIDlow/high RET0Chex ALBoolean. Tile owner
   byte comes from +D0 grid, translates ID through +1BC map, ownerGUID must be nonzero and differ in
   either32bitword. Zero GUID or same fullGUID is not another owner. Relative signedlevel compared
   with depth before lookup. Instructions dereference grid depth before explicit nulltest, so no
   universal nullgrid safety inferred. */

bool __thiscall
FloorManager_TileHasOtherCutoutOwner(void *this,char *param_1,int param_2,uint param_3)

{
  void *this_00;
  int relativeLevel;
  byte *pbVar1;
  int local_8 [2];
  
  relativeLevel = (int)param_1[2] - *(int *)((int)this + 0x10);
  this_00 = *(void **)((int)this + 0xd0);
  if ((relativeLevel < *(int *)((int)this_00 + 0xc)) && (this_00 != (void *)0x0)) {
    pbVar1 = ByteTileGrid_CellPointer(this_00,(int)*param_1,(int)param_1[1],relativeLevel);
    param_1 = (char *)CONCAT31(param_1._1_3_,*pbVar1);
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

