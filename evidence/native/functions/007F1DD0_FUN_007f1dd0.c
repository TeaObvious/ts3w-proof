/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



undefined4 __cdecl FUN_007f1dd0(undefined4 *param_1,char param_2)

{
  undefined4 uVar1;
  int iVar2;
  void *this;
  uint uVar3;
  uint uVar4;
  int local_10 [3];
  undefined4 local_4;
  
  this = (void *)Graphics_GetManagerSingleton();
  uVar3 = FUN_0058e800();
  uVar4 = uVar3;
  if ((this != (void *)0x0) && (uVar3 != 0)) {
    if (DAT_011d9c48 != 0) {
      FUN_007f19c0(DAT_011d9c48);
    }
    uVar4 = FUN_0058e920((void *)(uVar3 + 4),param_1,0);
    if ((char)uVar4 != '\0') {
      FUN_0058e7a0((void *)(uVar3 + 4),param_2);
      FUN_0060eba0(this,*(int *)(uVar3 + 0x9c),*(int *)(uVar3 + 0xa0),*(int *)(uVar3 + 0xa4));
      FUN_0060eb70(this,param_2 == '\0');
      local_10[2] = *(undefined4 *)(uVar3 + 0x9c);
      local_10[0] = 0;
      local_10[1] = 0;
      local_4 = *(undefined4 *)(uVar3 + 0xa0);
      FUN_00610630(this,local_10,0,0x3f800000);
      iVar2 = DAT_011d9ab0;
      uVar1 = *(undefined4 *)(uVar3 + 0xa0);
      *(undefined4 *)(DAT_011d9ab0 + 0x10) = *(undefined4 *)(uVar3 + 0x9c);
      *(undefined4 *)(iVar2 + 0x14) = uVar1;
      return CONCAT31((int3)((uint)iVar2 >> 8),1);
    }
  }
  return uVar4 & 0xffffff00;
}

