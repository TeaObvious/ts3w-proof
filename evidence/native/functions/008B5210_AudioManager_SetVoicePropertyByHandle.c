/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67: finds a sound handle in manager map +33C, returns false at the end sentinel,
   and otherwise invokes the stored voice's property-interface slot +C with property, float value
   and flag. This is the scalar script-property route after command dispatch. Raw instruction proof:
   008B5210_AudioManager_SetVoicePropertyByHandle.asm.
   original PC 1.67 TS3W.exe. */



/* Verified PC 1.67: finds a sound handle in manager map +33C, returns false at the end sentinel,
   and otherwise invokes the stored voice's property-interface slot +C with property, float value
   and flag. This is the scalar script-property route after command dispatch. Raw instruction proof:
   the canonical ASM/C pair for this function. Reference TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

uint __thiscall
AudioManager_SetVoicePropertyByHandle
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint local_8 [2];
  
  UInt32PairMap_Find((void *)((int)this + 0x33c),local_8,&param_1);
  if (local_8[0] == *(uint *)(*(int *)((int)this + 0x340) + *(int *)((int)this + 0x344) * 4)) {
    return local_8[0] & 0xffffff00;
  }
  uVar1 = (**(code **)(**(int **)(local_8[0] + 4) + 0xc))(param_2,param_3,param_4);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

