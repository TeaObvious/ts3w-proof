/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: validates a level cell/mask. Inputs are compact signed coordinate/level bytes, a
   quadrant mask byte, and a flag consumed in its low byte. Dispatches differently at level zero
   according to lot+4bc; otherwise checks the cell gate then calls 00a8d300. Selectors pass mask0f
   and flag1 and test only AL. High EAX bits in the decompiler CONCAT31 expressions are outside the
   boolean contract. Meanings of the subordinate gate flags require their producer/reader contracts.
    */

uint __thiscall
LotLevelSurface_TestCellMask(void *this,char *param_1,byte param_2,undefined4 param_3)

{
  void *this_00;
  bool bVar1;
  uint uVar2;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  
  this_00 = *(void **)((int)this + 4);
  if (param_1[2] == '\0') {
    if (*(char *)((int)this_00 + 0x4bc) == '\0') {
      bVar1 = Lot_IsSignedTileInBounds(this_00,param_1);
      if ((bVar1) && ((char)param_3 != '\0')) {
        param_3 = CONCAT13(param_2,*(undefined3 *)param_1);
        bVar1 = FloorManager_TileHasAnyRequestedFlag(this,(char *)&param_3);
        return CONCAT31(extraout_var_00,bVar1);
      }
      return CONCAT31(extraout_var,1);
    }
    uVar2 = FUN_00807670(this_00,param_1);
  }
  else {
    bVar1 = Lot_IsSignedTileInBounds(this_00,param_1);
    uVar2 = CONCAT31(extraout_var_01,bVar1);
  }
  if ((char)uVar2 == '\0') {
    return uVar2 & 0xffffff00;
  }
  bVar1 = FloorManager_TestPatternParts(this,param_1,param_2,false,SUB41(param_3,0));
  return CONCAT31(extraout_var_02,bVar1);
}

