/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x103a5e71) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_TextSearchLookupKeywordResultImpl.
   Export ordinal(s): 253. Entry VA: 0x103a5dc0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000482. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl CASUtils_TextSearchLookupKeywordResultImpl(uint param_1,uint param_2)

{
  int *piVar1;
  void *this;
  short *psVar2;
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  undefined4 uStack_8;
  
                    /* 0x3a5dc0  253  CASUtils_TextSearchLookupKeywordResultImpl */
  if ((param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    ppuStack_2c = (undefined **)0x0;
    pcStack_28 = "CAS/Host/varString";
    psVar2 = (short *)FUN_103a5810(this,param_1,param_2);
    FUN_1006a620(&stack0xffffffcc,psVar2);
    appuStack_24[0] = &PTR_FUN_10aca5b4;
    uStack_1a = 0x13;
    uStack_1c = 0xb;
    FUN_10928b90(appuStack_24,0x13,9,&stack0xffffffcc,0x10,1);
    (**(code **)(*piVar1 + 0x50))(appuStack_24,&stack0x00000000);
    ppuStack_2c = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_24[0] & 4) != 0) {
      FUN_10928a90(&ppuStack_2c,'\0');
    }
    return uStack_8;
  }
  return 0;
}

