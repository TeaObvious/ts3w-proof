/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Finds a full resource key in manager-owned name map+118 and
   erases an existing mapping under lock+140. ReturnsAL1 on removal,0 on a miss. This is not the
   virtual+88 writer. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

bool __thiscall CAW_ResourceManagerForgetKeyName(void *this,ResourceKeyWords *key)

{
  LPCRITICAL_SECTION this_00;
  int local_8;
  int *local_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x140);
  FUN_109166c0(this_00,(uint *)&DAT_10b87e8c);
  FUN_108e6960((void *)((int)this + 0x118),&local_8,&key->instanceLow);
  if (local_8 != *(int *)(*(int *)((int)this + 0x11c) + *(int *)((int)this + 0x120) * 4)) {
    FUN_108e7030((void *)((int)this + 0x118),&local_8,local_8,local_4);
    FUN_10916780(this_00);
    return true;
  }
  FUN_10916780(this_00);
  return false;
}

