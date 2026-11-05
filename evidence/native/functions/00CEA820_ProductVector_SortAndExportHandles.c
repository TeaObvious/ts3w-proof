/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical cdecl3stackwords vector,family,optionalFilter; plainRET,EAXopaque32-bit
   managed-array exporthandle. If globalinterface absent returns0. Calls CE5D10 then CEA670 sort
   before acquiring/exporting any handles, irrespective of current C# conditional family sorting.
   Allocates4-byte entries,count signed SAR2. Each product invokes vtable0 retain and host+C8
   withtype45hex; makes UInt32-array envelope and host+50 export, frees temporarybuffer; actual
   native error/allocation/retain/host callbacks remain complete here, not guessed CLR ownership
   equivalence. */

uint __cdecl ProductVector_SortAndExportHandles(void *vector,uint family,void *optionalFilter)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint local_34;
  int *local_30;
  int *local_2c;
  undefined1 local_28 [8];
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  iVar6 = 0;
  local_34 = 0;
  local_2c = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_2c == (int *)0x0) {
    return local_34;
  }
  puVar1 = *(undefined4 **)vector;
  puVar2 = *(undefined4 **)((int)vector + 4);
  local_30 = (int *)0x10816fc;
  piVar3 = ProductSort_ConstructOrdering(local_28,family,optionalFilter);
  FUN_00cea670(puVar1,puVar2,&local_30,*piVar3,(void *)piVar3[1]);
  iVar5 = *(int *)((int)vector + 4) - *(int *)vector >> 2;
  local_30 = FUN_004e6f20(DAT_011cc864,iVar5 * 4,0);
  if (local_30 != (int *)0x0) {
    if (0 < iVar5) {
      do {
        puVar1 = *(undefined4 **)(*(int *)vector + iVar6 * 4);
        (**(code **)*puVar1)();
        iVar4 = (**(code **)(*local_2c + 200))(puVar1,0x45);
        local_30[iVar6] = iVar4;
        iVar6 = iVar6 + 1;
      } while (iVar6 < iVar5);
    }
    piVar3 = local_30;
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    if (iVar5 == 0) {
      iVar5 = 0;
      uVar7 = 0x20;
    }
    else {
      uVar7 = 0x18;
    }
    FUN_004f59c0(local_20,10,uVar7,local_30,4,iVar5);
    (**(code **)(*local_2c + 0x50))(local_20,&local_34);
    FUN_004e5e70(DAT_011cc864,(int)piVar3);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\0');
    }
  }
  return local_34;
}

