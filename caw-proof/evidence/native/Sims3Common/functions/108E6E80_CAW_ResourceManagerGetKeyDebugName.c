/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: First tries selected directory database name, then owned
   full-key name map+118, then numeric/type-name formatting108E4B30. This internal method is
   separate from exported1098A460 GetNameForKey. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_ResourceManagerGetKeyDebugName(void *this,uint *param_1)

{
  LPCRITICAL_SECTION this_00;
  int *piVar1;
  undefined4 uVar2;
  int unaff_EBX;
  
  piVar1 = (int *)(**(code **)(*(int *)this + 0x44))(param_1);
  if ((piVar1 != (int *)0x0) &&
     (uVar2 = CAW_ResourceDirectoryNameForKey(param_1,param_1,piVar1), (char)uVar2 != '\0')) {
    return;
  }
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x140);
  FUN_109166c0(this_00,(uint *)&DAT_10b87e8c);
  FUN_108e6960((void *)((int)this + 0x118),(undefined4 *)&stack0xfffffff4,param_1);
  if (unaff_EBX != *(int *)(*(int *)((int)this + 0x11c) + *(int *)((int)this + 0x120) * 4)) {
    if ((uint *)(unaff_EBX + 0x10) != param_1) {
      FUN_1001f8c0(param_1,*(void **)(unaff_EBX + 0x10),*(int **)(unaff_EBX + 0x14));
    }
    FUN_10916780(this_00);
    return;
  }
  FUN_108e4b30((int)param_1,param_1,this,piVar1,(short *)0x0);
  FUN_10916780(this_00);
  return;
}

