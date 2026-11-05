/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CTProductModularObject_GetResourceKeysImpl.
   Export ordinal(s): 259. Entry VA: 0x1026cb10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001201. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CTProductModularObject_GetResourceKeysImpl(uint param_1)

{
  char cVar1;
  int *piVar2;
  void *this;
  undefined4 uVar3;
  size_t sVar4;
  int unaff_ESI;
  int iStack_54;
  undefined1 auStack_48 [20];
  int iStack_34;
  undefined **ppuStack_30;
  undefined4 *puStack_2c;
  
  if ((((param_1 & 0xff000000) == 0x54000000) &&
      (piVar2 = (int *)FUN_1055b120(), piVar2 != (int *)0x0)) &&
     (this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1), this != (void *)0x0)) {
    FUN_10727810(&stack0xffffffa8,(undefined4 *)&stack0x00000000);
    FUN_1026c6c0(this,&stack0xffffffa8);
    sVar4 = (iStack_54 - unaff_ESI >> 4) * 0x10 + 4;
    FUN_109140f0(&ppuStack_30,(void *)0x0,sVar4,'\0',1,(int *)0x0,
                 "Scratch/CTModularObjectHost/KeyTable");
    FUN_105cc2a0(auStack_48,(int *)&ppuStack_30,1);
    cVar1 = FUN_105cb8c0(&stack0xffffffa8,(int)auStack_48);
    if (cVar1 == '\0') {
      FUN_105ca900((int)auStack_48);
    }
    else {
      (**(code **)(*piVar2 + 0x80))(param_1,sVar4);
      if (iStack_34 == 0) {
        uVar3 = 0;
      }
      else {
        uVar3 = *(undefined4 *)(iStack_34 + 8);
      }
      (**(code **)(*piVar2 + 0x98))(param_1,uVar3,0,sVar4);
      FUN_105ca900((int)auStack_48);
    }
    ppuStack_30 = &PTR_FUN_10b8ad10;
    if (puStack_2c != (undefined4 *)0x0) {
      FUN_10913a30(puStack_2c);
    }
    ppuStack_30 = &PTR_LAB_10aafee4;
    if (unaff_ESI != 0) {
      FUN_10918e90(unaff_ESI);
    }
  }
  return;
}

