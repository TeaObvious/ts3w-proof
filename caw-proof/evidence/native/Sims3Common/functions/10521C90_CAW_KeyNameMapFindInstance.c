/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Looks up the unsigned64 instance in the owned name map
   at+28 and returns its raw string pointer or null. The containing resource type/group do not enter
   this lookup. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

char * __thiscall CAW_KeyNameMapFindInstance(void *this,ulonglong *instance)

{
  int local_8 [2];
  
  FUN_10832400((void *)((int)this + 0x28),local_8,(uint *)instance);
  if (local_8[0] == *(int *)(*(int *)((int)this + 0x2c) + *(int *)((int)this + 0x30) * 4)) {
    return (char *)0x0;
  }
  return *(char **)(local_8[0] + 8);
}

