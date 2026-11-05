/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SpeedTreeData_GetCompositeTextureName. Export
   ordinal(s): 2434. Entry VA: 0x109814c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000660. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SpeedTreeData_GetCompositeTextureName(int param_1,uint param_2)

{
  char cVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 uVar4;
  int unaff_ESI;
  int *this;
  undefined1 local_30 [4];
  int iStack_2c;
  int iStack_24;
  int local_20 [5];
  undefined4 *local_c;
  
                    /* 0x9814c0  2434  SpeedTreeData_GetCompositeTextureName */
  puVar2 = (undefined4 *)FUN_105ac380(0xe4);
  this = (int *)0x0;
  if (puVar2 != (undefined4 *)0x0) {
    piVar3 = FUN_105aec90(puVar2);
    if (piVar3 != (int *)0x0) {
      this = piVar3;
    }
  }
  FUN_105abe20(1);
  cVar1 = FUN_105afef0(this,param_1,param_2);
  if (cVar1 == '\0') {
    uVar4 = Ordinal_2(&_Str2_10b624fc);
  }
  else {
    FUN_105ab800(local_20);
    FUN_105acf30(this,local_20);
    puVar2 = FUN_10926db0(local_30,(LPCWSTR)*local_c,0xffffffff,(char *)0x0);
    uVar4 = Ordinal_2(*puVar2);
    if ((2 < (int)(iStack_2c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_10918e90(unaff_ESI);
    }
    FUN_105ac9e0(&iStack_24);
  }
  if (this != (int *)0x0) {
    FUN_105af780(this);
    FUN_105ac3b0((int)this);
  }
  return uVar4;
}

