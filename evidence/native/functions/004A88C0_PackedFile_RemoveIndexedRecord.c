/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Under provider lock, verify writable/indexed/not-open key,
   invoke index vtable+30 removal, release region via4A6D10 and set dirty+2D8. Physical removal API;
   not evidence of serialized tombstone construction. */

undefined4 __thiscall PackedFile_RemoveIndexedRecord(void *this,uint *param_1)

{
  uint *puVar1;
  char cVar2;
  int iVar3;
  int *piVar4;
  LONG LVar5;
  undefined1 uVar6;
  undefined1 uVar7;
  int iStack_10;
  int iStack_c;
  undefined4 uStack_8;
  undefined2 uStack_4;
  char cStack_2;
  
  FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x270),(uint *)&DAT_00fb3508);
  uVar6 = 0;
  if (((((*(byte *)((int)this + 0x14) & 2) != 0) ||
       ((uVar7 = 0, (*(byte *)((int)this + 0x18) & 2) != 0 &&
        (cVar2 = FUN_004a6c20(this), cVar2 != '\0')))) &&
      (puVar1 = param_1, iVar3 = (**(code **)(**(int **)((int)this + 0x2d0) + 0x28))(param_1),
      uVar7 = uVar6, iVar3 != 0)) &&
     (piVar4 = (int *)FUN_0072ca50((void *)((int)this + 0x2e8),(int *)&param_1,puVar1),
     *piVar4 == (int)this + 0x2ec)) {
    (**(code **)(*(int *)this + 0x9c))();
    iStack_10 = 0;
    iStack_c = 0;
    uStack_8 = 0;
    uStack_4 = 0;
    cStack_2 = '\0';
    cVar2 = (**(code **)(**(int **)((int)this + 0x2d0) + 0x30))(puVar1,&iStack_10);
    if (cVar2 != '\0') {
      FUN_004a6d10(this,iStack_10,iStack_c,cStack_2 == '\0');
      uVar7 = 1;
      *(undefined1 *)((int)this + 0x2d8) = 1;
    }
  }
  LVar5 = FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x270));
  return CONCAT31((int3)((uint)LVar5 >> 8),uVar7);
}

