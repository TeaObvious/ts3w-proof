/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXrecord+1mappingreceiver/RET4. Maps raw unsigned
   corners+18/+19 and+1A/+1B viaCB30C0, stores min/max of mapped pairs back to bytes. Invoked by
   imported object-index readC08A00; ordinary savedresourceC091C0 reads fullGUID directly and does
   not use this remapper. */

void __thiscall RugRecord_RemapCompactCorners(void *this,int param_1)

{
  byte bVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  int *piVar7;
  int *piVar8;
  int *piVar9;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
  bVar1 = *(byte *)((int)this + 0x1a);
  bVar2 = *(byte *)((int)this + 0x1b);
  FUN_00cb30c0((void *)(param_1 + 100),(uint)*(byte *)((int)this + 0x18),
               (uint)*(byte *)((int)this + 0x19),&local_8,&local_10);
  FUN_00cb30c0((void *)(param_1 + 100),(uint)bVar1,(uint)bVar2,&local_4,&local_c);
  piVar9 = &local_c;
  if (local_c <= local_10) {
    piVar9 = &local_10;
  }
  piVar8 = &local_4;
  if (local_4 <= local_8) {
    piVar8 = &local_8;
  }
  piVar7 = &local_c;
  if (local_10 <= local_c) {
    piVar7 = &local_10;
  }
  piVar6 = &local_4;
  if (local_8 <= local_4) {
    piVar6 = &local_8;
  }
  iVar3 = *piVar7;
  iVar4 = *piVar8;
  *(char *)((int)this + 0x18) = (char)*piVar6;
  iVar5 = *piVar9;
  *(char *)((int)this + 0x19) = (char)iVar3;
  *(char *)((int)this + 0x1a) = (char)iVar4;
  *(char *)((int)this + 0x1b) = (char)iVar5;
  return;
}

