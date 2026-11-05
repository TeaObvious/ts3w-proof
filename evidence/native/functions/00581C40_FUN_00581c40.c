/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX SceneEntity receiver, one low-byte consume flag stack word, EAX record pointer, RET4. If receiver+0C bit4 is clear, inspect saved record and its full two-word parent identity; nonzero parent is looked up through937570/937F80. Missing lookup leaves bit4 clear; other shown paths OR bit4. Independently loads current record pointer and, for nonzero consume flag, zeroes receiver+18 before returning it. This is not a Boolean success result or a null-record rejection. 582D40 Unparent passes1 before selecting detach or direct saved-parent restoration. Full bit4 producer/reset/cache interpretation and original object/namespace/allocator lifetime remain open. */

undefined4 __thiscall FUN_00581c40(void *this,char param_1)

{
  int *piVar1;
  undefined4 uVar2;
  void *pvVar3;
  int iVar4;
  int iVar5;
  
  if ((*(uint *)((int)this + 0xc) & 4) == 0) {
    piVar1 = *(int **)((int)this + 0x18);
    if ((piVar1 != (int *)0x0) && (*piVar1 != 0 || piVar1[1] != 0)) {
      iVar5 = piVar1[1];
      iVar4 = *piVar1;
      pvVar3 = ObjectRegistry_GetGlobal();
      pvVar3 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(iVar5,iVar4));
      if (pvVar3 == (void *)0x0) goto LAB_00581c75;
    }
    *(uint *)((int)this + 0xc) = *(uint *)((int)this + 0xc) | 4;
  }
LAB_00581c75:
  uVar2 = *(undefined4 *)((int)this + 0x18);
  if (param_1 != '\0') {
    *(undefined4 *)((int)this + 0x18) = 0;
  }
  return uVar2;
}
