/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: finds a sound handle in manager map +33C, returns false at the end sentinel,
   and otherwise invokes the stored voice's property-interface slot +C with property, float value
   and flag. This is the scalar script-property route after command dispatch. Raw instruction proof:
   008B5210_AudioManager_SetVoicePropertyByHandle.asm.
   original PC 1.67 TS3W.exe. */

uint __thiscall
AudioManager_SetVoicePropertyByHandle
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint local_8 [2];
  
  FUN_00a5b9b0((void *)((int)this + 0x33c),local_8,&param_1);
  if (local_8[0] == *(uint *)(*(int *)((int)this + 0x340) + *(int *)((int)this + 0x344) * 4)) {
    return local_8[0] & 0xffffff00;
  }
  uVar1 = (**(code **)(**(int **)(local_8[0] + 4) + 0xc))(param_2,param_3,param_4);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

