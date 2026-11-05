/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX catalog
   receiver, no stack parameters, plain RET. Enumerates resource type319E4F1D, loads products and
   queries interface519E4F25. Group bit01000000 requires nonzero resource-manager vtable44 on
   product+88 EXACT key, before C919E0 installation. Mode byte catalog+6/status bit40 control
   visibility-bit normalization via C92FB0. The decompiler may mis-track receiver/registers across
   indirect resource calls; original instructions establish these gates. Native enumeration ordering
   beyond this consumer is not resolved. */

void __thiscall ObjectCatalog_LoadObjectProducts(void *this)

{
  char cVar1;
  byte bVar2;
  int *piVar3;
  int iVar4;
  int *this_00;
  int iVar5;
  int iVar6;
  void *unaff_EBP;
  int *piStack_30;
  void *local_1c;
  undefined **local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piStack_30 = (int *)0xc92234;
  local_1c = this;
  FUN_00c8d610((uint *)((int)this + 0xc0));
  piStack_30 = (int *)0xc92239;
  piVar3 = (int *)FUN_004afe80();
  piStack_30 = (int *)0x0;
  local_18 = &PTR_LAB_00fd92b0;
  local_14 = 0x319e4f1d;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "Lot/CTCatalog/ObjectProductKeyList";
  (**(code **)(*piVar3 + 0x20))(&local_10,&local_18);
  FUN_004afe30((int *)&local_1c);
  iVar4 = (int)local_18 - (int)local_1c >> 4;
  if (iVar4 != 0) {
    iVar6 = 0;
    do {
      iVar5 = iVar6 + (int)local_1c;
      piStack_30 = (int *)0x0;
      cVar1 = (**(code **)(*piVar3 + 0xc))(iVar5,&piStack_30,0,0,0,0);
      if (cVar1 == '\0') {
LAB_00c92322:
        if (piStack_30 != (int *)0x0) {
          (**(code **)(*piStack_30 + 4))();
        }
      }
      else if (piStack_30 != (int *)0x0) {
        this_00 = (int *)(**(code **)(*piStack_30 + 0xc))(0x519e4f25);
        if ((this_00 != (int *)0x0) &&
           (((*(uint *)(iVar5 + 0xc) & 0x1000000) == 0 ||
            (iVar5 = (**(code **)(*piVar3 + 0x44))(this_00 + 0x22), iVar5 != 0)))) {
          bVar2 = *(byte *)(this_00 + 0x19);
          if (*(char *)((int)unaff_EBP + 6) == '\0') {
            if ((bVar2 & 0x40) == 0) goto LAB_00c9230f;
          }
          else if ((bVar2 & 0x40) != 0) {
LAB_00c9230f:
            bVar2 = bVar2 & 0xfe;
          }
          CatalogProduct_SetStatusByte(this_00,bVar2);
          ObjectCatalog_IndexProductAliases(unaff_EBP,this_00);
        }
        goto LAB_00c92322;
      }
      iVar6 = iVar6 + 0x10;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
  }
  if (local_1c != (void *)0x0) {
    Memory_FreeIfNonNull(local_1c);
  }
  return;
}

