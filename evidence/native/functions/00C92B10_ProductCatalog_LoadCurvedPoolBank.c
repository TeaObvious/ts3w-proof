/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00c92bc3) */
/* WARNING: Removing unreachable block (ram,0x00c92bd5) */
/* WARNING: Removing unreachable block (ram,0x00c92be8) */
/* WARNING: Removing unreachable block (ram,0x00c92bf6) */
/* WARNING: Removing unreachable block (ram,0x00c92bff) */
/* WARNING: Removing unreachable block (ram,0x00c92c09) */
/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECXcatalog/no
   stackargs/plainRET; no defined result. Bank124 cleared, resource0A36F07A keylist acquired; actual
   interface virtual0C loads entries, interface0A373472 selects product; C91840 inserts key product8
   into nativebank, retainedproduct before replacing/releasing oldpointer; acquiredresource released
   afterward and keyvector freed. Complete ASM includes physically reachable C92BC3..C92C0E blocks
   which current decompiler removes; actual C warnings/artifacts retained and do not establish
   absent code. No foreign helper prototype changed or CLR stamped-cache equivalence. */

void __thiscall ProductCatalog_LoadCurvedPoolBank(void *this)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint *local_1c;
  undefined **local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_1c = (uint *)((int)this + 0x124);
  FUN_00c8d610(local_1c);
  piVar1 = (int *)FUN_004afe80();
  local_18 = &PTR_LAB_00fd92b0;
  local_14 = 0xa36f07a;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "Lot/CTCatalog/CurvedPoolProductKeyList";
  (**(code **)(*piVar1 + 0x20))(&local_10,&local_18,0);
  FUN_004afe30((int *)&local_1c);
  iVar2 = (int)local_18 - (int)local_1c >> 4;
  if (iVar2 != 0) {
    iVar3 = 0;
    do {
      (**(code **)(*piVar1 + 0xc))(iVar3 + (int)local_1c,&stack0xffffffcc,0,0,0,0);
      iVar3 = iVar3 + 0x10;
      iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
  }
  if (local_1c != (uint *)0x0) {
    Memory_FreeIfNonNull(local_1c);
  }
  return;
}

