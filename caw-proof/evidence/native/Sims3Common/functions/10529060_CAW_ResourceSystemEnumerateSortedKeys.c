/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Global manager virtual+20 delegates enumeration to108E70C0,
   then sorts and deduplicates a nonempty supplied key list through108E5080. Export1098AD50
   GetKeyList uses this global path when databaseId zero; supplied database uses its separate
   virtual+30 enumerator. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __thiscall
CAW_ResourceSystemEnumerateSortedKeys(void *this,int *param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  
  iVar1 = FUN_108e70c0(this,param_1,param_2,param_3);
  if ((iVar1 != 0) && (param_1 != (int *)0x0)) {
    CAW_ResourceKeySortAndUnique(param_1);
  }
  return;
}

