/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 physical ECX receiver plus two stackwords, RET8 and normalized AL status, despite
   current inferred C omitting the second input. Under receiver+28 critical section calls B31970
   before the existing virtual service, queries049CAE8B, acquires/stores/releases component at+AC,
   copies the second input16-byte key into+B8..C4 then calls B37120. This is source-component/key
   binding, not catalog finish worker scheduling or geometry proof. */

uint __thiscall MaterialSource_BindComponentAndResourceKey(void *this,undefined4 param_1)

{
  LPCRITICAL_SECTION this_00;
  int *piVar1;
  char cVar2;
  int *piVar3;
  uint uVar4;
  LONG LVar5;
  undefined4 *unaff_EDI;
  int *piVar6;
  void *local_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x28);
  local_4 = this;
  FUN_004e1c00(this_00,(uint *)&DAT_0106c8a4);
  piVar3 = (int *)FUN_004afe80();
  FUN_00b31970((int)this);
  piVar6 = (int *)0x0;
  cVar2 = (**(code **)(*piVar3 + 0xc))(param_1,&local_4,0,0,0,0);
  if (cVar2 != '\0') {
    if (piVar6 == (int *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)(**(code **)(*piVar6 + 0xc))(0x49cae8b);
    }
    piVar1 = *(int **)((int)this + 0xac);
    if (piVar3 != piVar1) {
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
      }
      *(int **)((int)this + 0xac) = piVar3;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    (**(code **)(*piVar6 + 4))();
    if (*(int *)((int)this + 0xac) != 0) {
      *(undefined4 *)((int)this + 0xb8) = *unaff_EDI;
      *(undefined4 *)((int)this + 0xbc) = unaff_EDI[1];
      *(undefined4 *)((int)this + 0xc0) = unaff_EDI[2];
      *(undefined4 *)((int)this + 0xc4) = unaff_EDI[3];
      FUN_00b37120((int)this);
      LVar5 = FUN_004e1cc0(this_00);
      return CONCAT31((int3)((uint)LVar5 >> 8),1);
    }
  }
  uVar4 = FUN_004e1cc0(this_00);
  return uVar4 & 0xffffff00;
}

