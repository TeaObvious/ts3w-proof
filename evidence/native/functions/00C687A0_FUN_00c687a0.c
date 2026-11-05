/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


int __thiscall FUN_00c687a0(void *this,char param_1)

{
  int iVar1;
  
  if (*(char *)((int)this + 0x1cc) != '\0') {
    LotSpatialIndex_RebuildBuckets((int)this);
  }
  iVar1 = (int)this + 0x204;
  if (param_1 == '\0') {
    iVar1 = (int)this + 500;
  }
  return iVar1;
}

