/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_GetDesignPresetImpl. Export
   ordinal(s): 1485. Entry VA: 0x10589070. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C6C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl World_ObjectDesigner_GetDesignPresetImpl(int *param_1)

{
  char cVar1;
  void *this;
  int *piVar2;
  int unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_34 [4];
  undefined *puStack_30;
  undefined *puStack_2c;
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  this = (void *)FUN_100f8460();
  piVar2 = (int *)FUN_1055b120();
  puStack_30 = &_Dst_10ca8244;
  puStack_2c = &_Dst_10ca8244;
  pcStack_24 = "World/WorldHost";
  ppuStack_28 = (undefined **)&DAT_10ca8246;
  cVar1 = FUN_100fbcb0(this,param_1,(int *)&puStack_30);
  if (cVar1 != '\0') {
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    uStack_16 = 0x13;
    uStack_18 = 0xb;
    FUN_10928b90(appuStack_20,0x13,9,&puStack_30,0x10,1);
    (**(code **)(*piVar2 + 0x50))(appuStack_20,auStack_34);
    ppuStack_28 = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_20[0] & 4) != 0) {
      FUN_10928a90(&ppuStack_28,'\0');
    }
    if ((2 < (int)((int)puStack_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_10918e90(unaff_ESI);
    }
    return unaff_EDI;
  }
  if ((2 < (int)((int)ppuStack_28 - (int)puStack_30 & 0xfffffffeU)) &&
     (puStack_30 != (undefined *)0x0)) {
    FUN_10918e90((int)puStack_30);
  }
  return 0;
}

