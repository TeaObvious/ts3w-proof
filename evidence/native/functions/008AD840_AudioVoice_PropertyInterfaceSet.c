/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: property-interface slot +C handles mapped dynamic property nodes; ordinary
   scalar properties reach root-vtable +B0 at 008AD940. Do not infer that all property IDs use the
   normal scalar branch. Raw instruction proof:
   008AD840_AudioVoice_PropertyInterfaceSet.asm.
   original PC 1.67 TS3W.exe. */

void __thiscall AudioVoice_PropertyInterfaceSet(void *this,float param_1,undefined4 param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  int unaff_EBX;
  longlong lVar3;
  int aiStack_10 [4];
  
  piVar1 = (int *)FUN_008afe00();
  lVar3 = (**(code **)(*piVar1 + 0x11c))(param_1);
  if (lVar3 == 0) {
    (**(code **)(*(int *)((int)this + -4) + 0xb0))(param_1,param_1,param_2);
    return;
  }
  FUN_00a5b9b0((void *)((int)this + 0x524),(undefined4 *)&stack0xffffffe8,(uint *)&stack0x00000000);
  if (unaff_EBX != *(int *)(*(int *)((int)this + 0x528) + *(int *)((int)this + 0x52c) * 4)) {
    FUN_008a6270(*(void **)(unaff_EBX + 4),param_1);
    return;
  }
  puVar2 = FUN_008a62f0(0x18);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    puVar2 = (undefined4 *)FUN_008a6330(puVar2,(int)this + -4);
  }
  (**(code **)*puVar2)();
  FUN_007391d0(puVar2,param_1);
  FUN_008a6270(puVar2,param_1);
  FUN_0045f3f0((void *)((int)this + 0x524),aiStack_10,(uint *)&stack0xffffffe8);
  (**(code **)(*(int *)this + 0x18))(param_1,puVar2);
  return;
}

