/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX actor-operation node, four stack dwords
   RET10. Calls007F3DA0 admission; allocates8bytes per-node data when absent. Only operation+54==1
   with actor definition+50 resolves scene entity through007F3D20, saves entity byte+25 as uint at
   per-node data+4 and sets byte to operand+58!=0 with virtual lifetime guards. Common activation
   flag and graph-phase cleanup are separate; current hash dictionary/undo list are projections, not
   original object identity. */

void __thiscall
SacsActorOperation_ApplyMirror(void *this,int param_1,void *param_2,undefined4 param_3,int *param_4)

{
  int *piVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  
  uVar2 = SacsContext_AdmitActorNode(param_2,param_1,*(int *)((int)this + 0x50));
  if ((char)uVar2 != '\0') {
    piVar3 = (int *)*param_4;
    if (piVar3 == (int *)0x0) {
      piVar3 = FUN_004e6f20(DAT_011cc864,8,0);
      *param_4 = (int)piVar3;
    }
    if ((*(int *)((int)this + 0x54) == 1) &&
       (piVar1 = *(int **)((int)this + 0x50), piVar1 != (int *)0x0)) {
      (**(code **)*piVar1)();
      piVar4 = (int *)SacsContext_FindDefinitionActor(param_2,*(int *)((int)this + 0x50));
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 4))();
        piVar3[1] = (uint)(*(char *)((int)piVar4 + 0x25) != '\0');
        *(bool *)((int)piVar4 + 0x25) = *(int *)((int)this + 0x58) != 0;
        (**(code **)(*piVar4 + 8))();
      }
      (**(code **)(*piVar1 + 4))();
    }
  }
  return;
}

