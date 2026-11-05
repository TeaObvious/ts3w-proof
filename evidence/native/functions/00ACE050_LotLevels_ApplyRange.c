/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67, ECX retained lot, two signed range words, RET8. Count=(maximum-minimum)+1 stored as
   DWORD; signed shrink test compares it with old lot+184. Shrink invokes A8FC00 before resizing.
   Minimum change calls ACDA80(oldMinimum-newMinimum, mode0); maximum change calls
   ACDA80(newMaximum-oldMaximum, mode1), in that order. Only afterward writes lot+17C/+180/+184 and
   calls ABF620 with retained display level +39C and booleans true,true,false. This function permits
   range changes broader than the CD2DA0 growth-admission wrapper; do not impose wrapper bounds or
   unsigned counts on its ABI. Native signed overflow and unsafe allocation are not a managed
   safe-domain requirement. */

void __thiscall LotLevels_ApplyRange(void *this,int minimumLevel,int maximumLevel)

{
  int iVar1;
  
  iVar1 = (maximumLevel - minimumLevel) + 1;
  if (iVar1 < *(int *)((int)this + 0x184)) {
    FUN_00a8fc00(*(void **)((int)this + 0x290),minimumLevel,maximumLevel);
  }
  if (minimumLevel != *(int *)((int)this + 0x17c)) {
    Lot_InsertFloorLevelsAndBasementRows(this,*(int *)((int)this + 0x17c) - minimumLevel,0);
  }
  if (maximumLevel != *(int *)((int)this + 0x180)) {
    Lot_InsertFloorLevelsAndBasementRows(this,maximumLevel - *(int *)((int)this + 0x180),1);
  }
  *(int *)((int)this + 0x17c) = minimumLevel;
  *(int *)((int)this + 0x180) = maximumLevel;
  *(int *)((int)this + 0x184) = iVar1;
  Lot_SetDisplayLevel(this,*(int *)((int)this + 0x39c),true,true,false);
  return;
}

