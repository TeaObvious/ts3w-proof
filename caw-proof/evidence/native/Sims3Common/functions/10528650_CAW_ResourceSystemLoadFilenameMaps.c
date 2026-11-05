/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10528777) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: If byte+764 admits hash tables and owned list+758 is empty,
   enumerate all0166038C NMAP resources, sort/deduplicate keys, open each winning database resource,
   read its map and append it in that order. An existing nonempty list is reused. No request
   type/group filter is applied. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

int * __fastcall CAW_ResourceSystemLoadFilenameMaps(int param_1)

{
  undefined **ppuVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  void *stream;
  int unaff_EBX;
  undefined **ppuVar6;
  undefined **ppuStack_1c;
  undefined **local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar3 = (int *)(param_1 + 0x758);
  if (*(char *)(param_1 + 0x764) != '\0') {
    if ((int *)*piVar3 != piVar3) {
      return (int *)(param_1 + 0x758);
    }
    local_18 = &PTR_LAB_10ab5a24;
    local_14 = 0x166038c;
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = "Debug/KeyNameMap/TempKeyList";
    piVar3 = (int *)FUN_108e50d0();
    (**(code **)(*piVar3 + 0x20))(&local_10,&local_18,0);
    CAW_ResourceKeySortAndUnique((int *)&ppuStack_1c);
    ppuVar1 = local_18;
    for (ppuVar6 = ppuStack_1c; ppuVar6 != ppuVar1; ppuVar6 = ppuVar6 + 4) {
      piVar4 = (int *)(**(code **)(*piVar3 + 0x44))(ppuVar6);
      if ((piVar4 != (int *)0x0) &&
         (cVar2 = (**(code **)(*piVar4 + 0x34))(ppuVar6,&stack0xffffffcc,1,6,1,0), cVar2 != '\0')) {
        puVar5 = (undefined4 *)FUN_10918eb0(0x48,"Debug/KeyNameMap",0);
        if (puVar5 == (undefined4 *)0x0) {
          puVar5 = (undefined4 *)0x0;
        }
        else {
          puVar5 = FUN_10522410(puVar5);
        }
        stream = (void *)(**(code **)(_DAT_00000000 + 0x18))();
        CAW_KeyNameMapRead(puVar5,stream);
        FUN_100df4a0((void *)(unaff_EBX + 0x758),(int *)&stack0xffffffd0);
        (**(code **)(_DAT_00000000 + 0x20))();
        param_1 = unaff_EBX;
      }
    }
    if (ppuStack_1c != (undefined **)0x0) {
      FUN_10918e90((int)ppuStack_1c);
    }
    piVar3 = (int *)(param_1 + 0x758);
  }
  return piVar3;
}

