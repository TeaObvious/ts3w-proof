/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_RecordExistsInDatabase. Export
   ordinal(s): 2038. Entry VA: 0x1098ab20. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600089D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl
ResourceMgr_RecordExistsInDatabase
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  void *pvVar1;
  char cVar2;
  int iVar3;
  int local_18 [2];
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98ab20  2038  ResourceMgr_RecordExistsInDatabase */
  iVar3 = FUN_108e50d0();
  pvVar1 = DAT_10cb8078;
  if (iVar3 != 0) {
    local_c = param_5;
    local_8 = param_2;
    local_10 = param_4;
    local_4 = param_3;
    FUN_106a8410(DAT_10cb8078,local_18,&param_1);
    if ((local_18[0] != *(int *)(*(int *)((int)pvVar1 + 4) + *(int *)((int)pvVar1 + 8) * 4)) &&
       (*(int **)(local_18[0] + 4) != (int *)0x0)) {
      cVar2 = (**(code **)(**(int **)(local_18[0] + 4) + 0x34))(&local_10,0,1,6,1,0);
      return cVar2 != '\0';
    }
  }
  return false;
}

