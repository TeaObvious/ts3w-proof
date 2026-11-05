/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_InvalidateHouseholdSimThumbnail.
   Export ordinal(s): 1047. Entry VA: 0x10569af0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600037B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void ThumbnailManager_InvalidateHouseholdSimThumbnail(void)

{
  void *this;
  undefined4 *puVar1;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  uint in_stack_00000020;
  undefined4 local_10 [4];
  
                    /* 0x569af0  1047  ThumbnailManager_InvalidateHouseholdSimThumbnail */
  this = DAT_10c71150;
  if (DAT_10c71150 != (void *)0x0) {
    puVar1 = (undefined4 *)FUN_1055dbb0(&stack0x00000004,local_10);
    FUN_10339ab0(this,puVar1,in_stack_00000014,in_stack_00000018,in_stack_0000001c,in_stack_00000020
                );
  }
  return;
}

