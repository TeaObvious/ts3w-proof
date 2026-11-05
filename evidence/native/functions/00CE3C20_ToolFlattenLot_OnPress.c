/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXflatten-lot tool plus one forwarded press DWORD RET4, AL success. Flag1C sets unit
   price0; otherwise lookup tool2 then physical D1A900->CEF6B0, FSTP binary32 attool34. Missing
   lookup leaves prior field unchanged. Sea-height/clamp/funds/action logic belongs to remaining
   body, not this unit-price projection. */

bool __thiscall ToolFlattenLot_OnPress(void *this,uint pressWord)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  undefined *product;
  undefined4 uVar5;
  float10 fVar6;
  
  cVar4 = FUN_00cd2d30((int)this);
  if (cVar4 != '\0') {
    if (*(char *)((int)this + 0x1c) == '\0') {
      if (DAT_011ee034 != (void *)0x0) {
        product = CatalogToolProxies_FindByToolType(DAT_011ee034,2);
        if (product != (undefined *)0x0) {
          fVar6 = CatalogPrice_ForwardDisplayPrice(product);
          *(float *)((int)this + 0x34) = (float)fVar6;
        }
      }
    }
    else {
      *(undefined4 *)((int)this + 0x34) = 0;
    }
    FUN_00cd3810((int)this);
    piVar1 = *(int **)((int)this + 0xc);
    if (piVar1 != (int *)0x0) {
      iVar2 = piVar1[0xa4];
      iVar3 = *(int *)(iVar2 + 0x24);
      pressWord = *(uint *)(*(int *)(iVar3 + 0x10) +
                           (*(int *)(iVar2 + 0x18) - *(int *)(iVar2 + 0x10)) * *(int *)(iVar3 + 8) *
                           *(int *)(iVar3 + 4) * 4);
      if ((piVar1[0x102] != 1) || (piVar1[0x103] != 0x50)) {
        fVar6 = Lot_GetLocalSeaLevel(piVar1);
        if ((float10)(float)pressWord < fVar6 + (float10)1.0) {
          pressWord = (uint)(float)(fVar6 + (float10)1.0);
        }
      }
      fVar6 = FUN_00ce3b30(this,(float)pressWord);
      uVar5 = FUN_00cd2e10((float)fVar6);
      if ((char)uVar5 != '\0') {
        FUN_00ce3990(this,(float)pressWord);
        FUN_00cd04a0(DAT_011ebfe8);
        return true;
      }
      (**(code **)(*(int *)this + 0x4c))(1);
      return true;
    }
  }
  return false;
}

