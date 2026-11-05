/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67: property-interface slot +C handles mapped dynamic property nodes; ordinary
   scalar properties reach root-vtable +B0 at 008AD940. Do not infer that all property IDs use the
   normal scalar branch. Raw instruction proof:
   008AD840_AudioVoice_PropertyInterfaceSet.asm.
   original PC 1.67 TS3W.exe. */



/* Verified PC 1.67: property-interface slot +C handles mapped dynamic property nodes; ordinary
   scalar properties reach root-vtable +B0 at 008AD940. Do not infer that all property IDs use the
   normal scalar branch. Raw instruction proof: the canonical ASM/C pair for this function.
   Reference TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __thiscall AudioVoice_PropertyInterfaceSet(void *this,float param_1,undefined4 param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  int unaff_EBX;
  longlong lVar3;
  undefined1 uStack00000000;
  undefined1 auStack_12 [2];
  uint auStack_10 [4];
  
  piVar1 = (int *)FUN_008afe00();
  lVar3 = (**(code **)(*piVar1 + 0x11c))(param_1);
  if (lVar3 == 0) {
    (**(code **)(*(int *)((int)this + -4) + 0xb0))(param_1,param_1,param_2);
    return;
  }
  UInt32PairMap_Find((void *)((int)this + 0x524),auStack_12 + -6,(uint *)&uStack00000000);
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
  FUN_0045f3f0((void *)((int)this + 0x524),(int *)auStack_10,(uint *)(auStack_12 + -6));
  (**(code **)(*(int *)this + 0x18))(param_1,puVar2);
  return;
}

