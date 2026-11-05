/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Global resource-manager vtable 0x10B18F10 slot +90. Locks
   +140, scans the owned TNMap at +F0, compares registered UTF-16 names with _wcsicmp and returns
   the associated type. Returns 0xFFFFFFFF when no registration matches. This is reverse type-name
   lookup, separate from database-local file-extension tables. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 __thiscall CAW_ResourceManagerFindTypeByName(void *this,wchar_t *param_1)

{
  int *piVar1;
  LPCRITICAL_SECTION this_00;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x140);
  FUN_109166c0(this_00,(uint *)&DAT_10b87e8c);
  piVar5 = *(int **)((int)this + 0xf4);
  puVar4 = (undefined4 *)*piVar5;
  if (puVar4 == (undefined4 *)0x0) {
    piVar5 = piVar5 + 1;
    iVar3 = *piVar5;
    while (iVar3 == 0) {
      piVar5 = piVar5 + 1;
      iVar3 = *piVar5;
    }
    puVar4 = (undefined4 *)*piVar5;
  }
  if (puVar4 != *(undefined4 **)(*(int *)((int)this + 0xf4) + *(int *)((int)this + 0xf8) * 4)) {
    do {
      iVar3 = _wcsicmp((wchar_t *)puVar4[1],param_1);
      if (iVar3 == 0) {
        uVar2 = *puVar4;
        FUN_10916780(this_00);
        return uVar2;
      }
      puVar4 = (undefined4 *)puVar4[5];
      while (puVar4 == (undefined4 *)0x0) {
        piVar1 = piVar5 + 1;
        piVar5 = piVar5 + 1;
        puVar4 = (undefined4 *)*piVar1;
      }
    } while (puVar4 != *(undefined4 **)(*(int *)((int)this + 0xf4) + *(int *)((int)this + 0xf8) * 4)
            );
  }
  FUN_10916780(this_00);
  return 0xffffffff;
}

