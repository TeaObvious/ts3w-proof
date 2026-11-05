/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SpeedTreeData_GetBarkDetailTextureName. Export
   ordinal(s): 2430. Entry VA: 0x10981840. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000664. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SpeedTreeData_GetBarkDetailTextureName(int param_1,uint param_2)

{
  char *pcVar1;
  char cVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 uVar5;
  char *pcVar6;
  int *this;
  int iStack_34;
  undefined1 local_30 [4];
  int iStack_2c;
  int iStack_24;
  int local_20 [8];
  
                    /* 0x981840  2430  SpeedTreeData_GetBarkDetailTextureName */
  puVar3 = (undefined4 *)FUN_105ac380(0xe4);
  this = (int *)0x0;
  if (puVar3 != (undefined4 *)0x0) {
    piVar4 = FUN_105aec90(puVar3);
    if (piVar4 != (int *)0x0) {
      this = piVar4;
    }
  }
  FUN_105abe20(1);
  cVar2 = FUN_105afef0(this,param_1,param_2);
  if (cVar2 == '\0') {
    uVar5 = Ordinal_2(&_Str2_10b624fc);
  }
  else {
    FUN_105ab800(local_20);
    FUN_105acf30(this,local_20);
    pcVar6 = *(char **)(local_20[0] + 4);
    pcVar1 = pcVar6 + 1;
    do {
      cVar2 = *pcVar6;
      pcVar6 = pcVar6 + 1;
    } while (cVar2 != '\0');
    if (pcVar6 == pcVar1) {
      uVar5 = Ordinal_2(&_Str2_10b624fc);
    }
    else {
      puVar3 = FUN_10926db0(local_30,*(LPCWSTR *)(local_20[0] + 4),0xffffffff,(char *)0x0);
      uVar5 = Ordinal_2(*puVar3);
      if ((2 < (int)(iStack_2c - iStack_34 & 0xfffffffeU)) && (iStack_34 != 0)) {
        FUN_10918e90(iStack_34);
      }
    }
    FUN_105ac9e0(&iStack_24);
  }
  if (this != (int *)0x0) {
    FUN_105af780(this);
    FUN_105ac3b0((int)this);
  }
  return uVar5;
}

