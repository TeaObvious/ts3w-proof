/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlevel-rectangle tool plus one forwarded press DWORD RET4, AL success. On initial active
   press, flag1C sets unit price0; otherwise lookup tool1 throughC8F2D0 and call physical D1A900 JMP
   thunk toCEF6B0, then FSTP binary32 attool6C. Missing catalog/proxy leaves previous field
   unchanged; no claim that every miss writes0. Other undo/cursor side effects remain in complete
   body. */

bool __thiscall ToolFloorLevel_OnPress(void *this,uint pressWord)

{
  byte bVar1;
  char cVar2;
  undefined *product;
  void *this_00;
  undefined4 *puVar3;
  float10 fVar4;
  
  if (*(char *)((int)this + 0x5c) == '\0') {
    cVar2 = FUN_00cd2d30((int)this);
    if (cVar2 == '\0') {
      return false;
    }
    if (*(char *)((int)this + 0x1c) == '\0') {
      if (DAT_011ee034 != (void *)0x0) {
        product = CatalogToolProxies_FindByToolType(DAT_011ee034,1);
        if (product != (undefined *)0x0) {
          fVar4 = CatalogPrice_ForwardDisplayPrice(product);
          *(float *)((int)this + 0x6c) = (float)fVar4;
        }
      }
    }
    else {
      *(undefined4 *)((int)this + 0x6c) = 0;
    }
    this_00 = (void *)FUN_004e4500(0xb0,"UserTool/LevelFloorRect/UndoableFloorElevation",0);
    if (this_00 == (void *)0x0) {
      puVar3 = (undefined4 *)0x0;
    }
    else {
      puVar3 = FUN_00d21810(this_00,*(undefined4 **)((int)this + 0xc));
    }
    FUN_00566590((undefined4 *)((int)this + 0x80),puVar3);
    (**(code **)(**(int **)((int)this + 0x80) + 4))();
    FUN_00cede10(this,"levelToolActive");
    bVar1 = (byte)DAT_0118455c & 0x1f;
    *(char *)((int)this + 0x70) =
         '\0' << ((byte)DAT_01184564 & 0x1f) | '\0' << ((byte)DAT_01184560 & 0x1f) | '\0' << bVar1 |
         ('\0' << bVar1) << ((byte)DAT_01184558 & 0x1f);
    FUN_00cedbb0((int)this);
    *(undefined1 *)((int)this + 0x5c) = 1;
  }
  return true;
}

