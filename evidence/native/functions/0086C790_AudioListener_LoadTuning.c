/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: loads listener tuning resource 7FB30F8A5DDF6D75 and curve properties F8DEB1C3,
   0A1495CB (height), and 16074FA6 (forward). Returns false if the resource cannot be opened. Raw
   instructions at 0086C7A7-0086C822 identify these IDs; decompiler locals across indirect calls are
   unreliable. Raw instruction proof:
   0086C790_AudioListener_LoadTuning.asm.
   original PC 1.67 TS3W.exe. */

uint __thiscall AudioListener_LoadTuning(void *this,int *param_1)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  undefined4 local_4;
  
  piVar4 = (int *)0x7fb30f8a;
  piVar3 = (int *)0x5ddf6d75;
  local_4 = 0;
  uVar1 = (**(code **)(*param_1 + 0x1c))(0x5ddf6d75,0x7fb30f8a,&local_4,0x1407ec);
  if ((char)uVar1 == '\0') {
    if (piVar4 != (int *)0x0) {
      uVar1 = (**(code **)(*piVar4 + 4))();
    }
    return uVar1 & 0xffffff00;
  }
  AudioCurve_LoadProperty((void *)((int)this + 0x40),piVar4,0xf8deb1c3);
  AudioCurve_LoadProperty((void *)((int)this + 0x3a0),piVar4,0xa1495cb);
  iVar2 = (**(code **)(*piVar4 + 0x18))(0x16074fa6);
  *(char *)((int)this + 0xa60) = (char)iVar2;
  if ((char)iVar2 != '\0') {
    iVar2 = AudioCurve_LoadProperty((void *)((int)this + 0x700),piVar3,0x16074fa6);
  }
  if (piVar3 != (int *)0x0) {
    iVar2 = (**(code **)(*piVar3 + 4))();
  }
  return CONCAT31((int3)((uint)iVar2 >> 8),1);
}

