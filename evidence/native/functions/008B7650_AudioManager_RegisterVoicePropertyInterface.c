/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67: obtains the interface handle through vtable +8 and inserts the voice property
   interface in manager map +33C when absent. Later property commands use that map; the voice root
   and property-interface vtables are separate. Raw instruction proof:
   008B7650_AudioManager_RegisterVoicePropertyInterface.asm.
   original PC 1.67 TS3W.exe. */



/* Verified PC 1.67: obtains the interface handle through vtable +8 and inserts the voice property
   interface in manager map +33C when absent. Later property commands use that map; the voice root
   and property-interface vtables are separate. Raw instruction proof: the canonical ASM/C pair for
   this function. Reference TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

uint __thiscall AudioManager_RegisterVoicePropertyInterface(void *this,int *param_1)

{
  int *piVar1;
  uint in_EAX;
  undefined4 uVar2;
  uint uStack_14;
  int *piStack_10;
  int aiStack_c [3];
  
  piVar1 = param_1;
  if (param_1 != (int *)0x0) {
    param_1 = (int *)(**(code **)(*param_1 + 8))();
    UInt32PairMap_Find((void *)((int)this + 0x33c),&uStack_14,(uint *)&param_1);
    in_EAX = *(uint *)((int)this + 0x340);
    if (uStack_14 == *(uint *)(in_EAX + *(int *)((int)this + 0x344) * 4)) {
      uStack_14 = (**(code **)(*piVar1 + 8))();
      param_1 = (int *)((uint)param_1 & 0xffffff00);
      piStack_10 = piVar1;
      uVar2 = FUN_0045f3f0((void *)((int)this + 0x33c),aiStack_c,&uStack_14);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
  }
  return in_EAX & 0xffffff00;
}

