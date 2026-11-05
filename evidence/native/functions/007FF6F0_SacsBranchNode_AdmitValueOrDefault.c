/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX branch node, five stack words, RET14.
   Virtual+44 obtains actual key, map lookup007FD910; only absent actual key invokes virtual+4C
   default key and retries. Still absent admits no children. Found bucket dispatches its child set
   through007F4770. Parameter VTable01020F10 points +44 to007FFB20 and +4C to007FFB10; default
   literal hash helper hashes UTF16 default. Destination variant uses a state identity, not this
   parameter hash. Container iterator and stack aliases are decompiler artifacts; no native
   missing-destination exception is established. */

void __thiscall
SacsBranchNode_AdmitValueOrDefault
          (void *this,uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  uint *puVar5;
  undefined4 uStack_28;
  undefined4 uStack_24;
  void *pvStack_c;
  
  uStack_24 = param_5;
  uStack_28 = param_4;
  param_1 = (**(code **)(*(int *)this + 0x44))(param_2,param_3);
  piVar2 = (int *)FUN_007fd910((void *)((int)this + 0x30),&uStack_28,&param_1);
  iVar3 = *piVar2;
  if (iVar3 == *(int *)(*(int *)((int)this + 0x34) + *(int *)((int)this + 0x38) * 4)) {
    param_1 = (**(code **)(*(int *)this + 0x4c))();
    piVar2 = (int *)FUN_007fd910((void *)((int)this + 0x30),(undefined4 *)&stack0xffffffe0,&param_1)
    ;
    iVar3 = *piVar2;
  }
  if (iVar3 != *(int *)(*(int *)((int)this + 0x34) + *(int *)((int)this + 0x38) * 4)) {
    piVar4 = *(int **)(iVar3 + 8);
    piVar2 = piVar4 + *(int *)(iVar3 + 0xc);
    piVar1 = piVar4 + *(int *)(iVar3 + 0xc);
    puVar5 = (uint *)*piVar4;
    if (puVar5 == (uint *)0x0) {
      piVar4 = piVar4 + 1;
      iVar3 = *piVar4;
      while (iVar3 == 0) {
        piVar4 = piVar4 + 1;
        iVar3 = *piVar4;
      }
      puVar5 = (uint *)*piVar4;
    }
    FUN_007f4770(pvStack_c,puVar5,(uint)piVar4,(uint *)*piVar2,piVar1);
  }
  return;
}

