/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. For the ctor-installed command+50 interface, relative+8 is
   command+58 held pointer and relative+50 is command+A0 cached pointer. Compare oldGUID, borrow
   newGUID and swap matching references. Byte+89 guards reentry. When byte+88 is set, B08E20
   event428E0A8 precedes held refswap and428E0A3 follows. Event consumers are not inferred. Four
   physical GUID DWORDs despite two declared C parameters. */

void __thiscall ObjectUndoable_ReplaceHeldAndCachedReferences(void *this,int param_1,int param_2)

{
  int *this_00;
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  undefined4 in_stack_0000000c;
  undefined4 in_stack_00000010;
  
  this_00 = (int *)((int)this + 8);
  if ((*(int *)((int)this + 8) != 0) && (*(char *)((int)this + 0x89) == '\0')) {
    *(undefined1 *)((int)this + 0x89) = 1;
    pvVar2 = ObjectRegistry_GetGlobal();
    if (pvVar2 != (void *)0x0) {
      if (((*(int *)(*this_00 + 8) == param_1) && (*(int *)(*this_00 + 0xc) == param_2)) &&
         (puVar3 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(in_stack_00000010,in_stack_0000000c))
         , puVar3 != (undefined4 *)0x0)) {
        if ((*(char *)((int)this + 0x88) != '\0') && ((void *)*this_00 != (void *)0x0)) {
          FUN_00b08e20(0x428e0a8,(void *)*this_00);
        }
        FUN_00874fb0(this_00,puVar3);
        if ((*(char *)((int)this + 0x88) != '\0') && ((void *)*this_00 != (void *)0x0)) {
          FUN_00b08e20(0x428e0a3,(void *)*this_00);
        }
      }
      iVar1 = *(int *)((int)this + 0x50);
      if ((((iVar1 != 0) && (*(int *)(iVar1 + 8) == param_1)) && (*(int *)(iVar1 + 0xc) == param_2))
         && (pvVar2 = ObjectRegistry_FindBorrowed
                                (pvVar2,CONCAT44(in_stack_00000010,in_stack_0000000c)),
            pvVar2 != (void *)0x0)) {
        *(void **)((int)this + 0x50) = pvVar2;
      }
    }
    *(undefined1 *)((int)this + 0x89) = 0;
  }
  return;
}

