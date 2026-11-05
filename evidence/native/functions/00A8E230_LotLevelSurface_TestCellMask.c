/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  uint uVar1;
  undefined4 uVar2;
  
  this_00 = *(void **)((int)this + 4);
  if (param_1[2] == '\0') {
    if (*(char *)((int)this_00 + 0x4bc) == '\0') {
      uVar2 = FUN_00868970(this_00,param_1);
      if (((char)uVar2 != '\0') && ((char)param_3 != '\0')) {
        param_3 = CONCAT13(param_2,*(undefined3 *)param_1);
        uVar1 = FUN_00a8cb10(this,(char *)&param_3);
        return uVar1;
      }
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
    uVar1 = FUN_00807670(this_00,param_1);
  }
  else {
    uVar1 = FUN_00868970(this_00,param_1);
  }
  if ((char)uVar1 != '\0') {
    uVar1 = FUN_00a8d300(this,param_1,param_2,'\0',(char)param_3);
    return uVar1;
  }
  return uVar1 & 0xffffff00;
}

