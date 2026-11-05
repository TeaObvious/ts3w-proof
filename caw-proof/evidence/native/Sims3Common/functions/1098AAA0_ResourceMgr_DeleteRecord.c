/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_DeleteRecord. Export ordinal(s):
   2019. Entry VA: 0x1098aaa0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600089B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl
ResourceMgr_DeleteRecord
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5)

{
  undefined4 *puVar1;
  void *pvVar2;
  char cVar3;
  int iVar4;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98aaa0  2019  ResourceMgr_DeleteRecord */
  iVar4 = FUN_108e50d0();
  pvVar2 = DAT_10cb8078;
  if (iVar4 != 0) {
    FUN_106a8410(DAT_10cb8078,&local_10,&param_1);
    if (local_10 != *(int *)(*(int *)((int)pvVar2 + 4) + *(int *)((int)pvVar2 + 8) * 4)) {
      puVar1 = (undefined4 *)(local_10 + 4);
      local_10 = param_4;
      local_c = param_5;
      local_8 = param_2;
      local_4 = param_3;
      cVar3 = (**(code **)(*(int *)*puVar1 + 0x40))(&local_10);
      return cVar3 != '\0';
    }
  }
  return false;
}

