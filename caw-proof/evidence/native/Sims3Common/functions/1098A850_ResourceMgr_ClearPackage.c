/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_ClearPackage. Export ordinal(s):
   2014. Entry VA: 0x1098a850. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000896. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void ResourceMgr_ClearPackage(void)

{
  int *piVar1;
  void *pvVar2;
  int iVar3;
  int local_18;
  int iStack_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x98a850  2014  ResourceMgr_ClearPackage */
  iVar3 = FUN_108e50d0();
  pvVar2 = DAT_10cb8078;
  if ((iVar3 != 0) &&
     (FUN_106a8410(DAT_10cb8078,&local_18,(uint *)&stack0x00000004),
     local_18 != *(int *)(*(int *)((int)pvVar2 + 4) + *(int *)((int)pvVar2 + 8) * 4))) {
    piVar1 = *(int **)(local_18 + 4);
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = "ResourceSystem/ResourceManagerWrap";
    (**(code **)(*piVar1 + 0x30))(&local_10,0);
    if (local_18 != iStack_14) {
      do {
        (**(code **)(*piVar1 + 0x40))(iStack_14 + -0x10);
        iStack_14 = iStack_14 + -0x10;
      } while (local_18 != iStack_14);
    }
    if (local_18 != 0) {
      FUN_10918e90(local_18);
    }
  }
  return;
}

