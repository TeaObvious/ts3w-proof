/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Resets original DBPF vtables, calls108DCD60 Shutdown,
   releases record/cache/critical-section state, then calls10910890 on the embedded file stream
   atdatabase+34. The destructor therefore also ensures no retained ordinary file handle survives
   final database ownership release. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

void __fastcall CAW_DbpfDestroy(int *param_1)

{
  int iVar1;
  
  *param_1 = (int)&PTR_CAW_DbpfDeletingDestructor_10b87808;
  param_1[1] = (int)&PTR_FUN_10b877f4;
  CAW_DbpfShutdown(param_1);
  FUN_108e0ee0((int)(param_1 + 0xda));
  FUN_108e0ee0((int)(param_1 + 0xd1));
  FUN_108dd920(param_1 + 0xba,(undefined4 *)param_1[0xbd]);
  FUN_10916640((LPCRITICAL_SECTION)(param_1 + 0xa8));
  FUN_10916640((LPCRITICAL_SECTION)(param_1 + 0x9c));
  if ((int *)param_1[0x98] != (int *)0x0) {
    (**(code **)(*(int *)param_1[0x98] + 8))();
  }
  CAW_FileStreamDestroy(param_1 + 0xd);
  iVar1 = param_1[9];
  if ((2 < (int)(param_1[0xb] - iVar1 & 0xfffffffeU)) && (iVar1 != 0)) {
    FUN_10918e90(iVar1);
  }
  param_1[1] = (int)&PTR_FUN_10b18120;
  param_1[1] = (int)&PTR_LAB_10ab04c4;
  *param_1 = (int)&PTR_LAB_10b18a2c;
  return;
}

