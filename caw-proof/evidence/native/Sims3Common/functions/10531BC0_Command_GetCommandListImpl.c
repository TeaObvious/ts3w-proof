/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Command_GetCommandListImpl. Export ordinal(s):
   314. Entry VA: 0x10531bc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600029F. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 Command_GetCommandListImpl(void)

{
  undefined2 **ppuVar1;
  int *piVar2;
  void *this;
  undefined4 uVar3;
  int *unaff_EBP;
  undefined2 **ppuVar4;
  undefined4 unaff_EDI;
  int *piStack_64;
  undefined2 **ppuStack_60;
  undefined2 **ppuStack_5c;
  int iStack_58;
  char *pcStack_54;
  undefined *puStack_50;
  undefined *puStack_4c;
  undefined2 *puStack_48;
  char *pcStack_44;
  undefined **appuStack_40 [2];
  ushort uStack_38;
  undefined2 uStack_36;
  undefined **appuStack_28 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  piVar2 = (int *)FUN_1055b120();
  this = (void *)FUN_10387250();
  piStack_64 = (int *)0x0;
                    /* 0x531bc0  314  Command_GetCommandListImpl */
  uVar3 = 0;
  if ((piVar2 != (int *)0x0) && (this != (void *)0x0)) {
    puStack_50 = &_Dst_10ca8244;
    puStack_4c = &_Dst_10ca8244;
    pcStack_44 = "Scripting/Command/CommandList";
    puStack_48 = &DAT_10ca8246;
    ppuStack_60 = (undefined2 **)0x0;
    ppuStack_5c = (undefined2 **)0x0;
    iStack_58 = 0;
    pcStack_54 = "Scripting/Command/CommandList";
    FUN_10387830(this,FUN_10531970,&ppuStack_60);
    FUN_10531900(ppuStack_60,ppuStack_5c,&LAB_10530ad0);
    ppuVar1 = ppuStack_5c;
    for (ppuVar4 = ppuStack_60; ppuVar4 != ppuVar1; ppuVar4 = ppuVar4 + 4) {
      FUN_1001f3b0(&puStack_50,(int *)*ppuVar4,(int *)ppuVar4[1]);
    }
    appuStack_40[0] = &PTR_FUN_10aca5b4;
    uStack_38 = 0;
    uStack_36 = 0;
    FUN_10928b90(appuStack_40,0x13,9,&puStack_50,0x10,1);
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    uStack_18 = 0;
    uStack_16 = 0;
    FUN_100c4ac0(appuStack_20,(int)appuStack_40);
    appuStack_40[0] = &PTR_FUN_10aca5b4;
    if ((uStack_38 & 4) != 0) {
      FUN_10928a90(appuStack_40,'\0');
    }
    (**(code **)(*piVar2 + 0x50))(appuStack_20,&piStack_64);
    appuStack_28[0] = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_20[0] & 4) != 0) {
      FUN_10928a90(appuStack_28,'\0');
    }
    FUN_10530b00(unaff_EBP,piStack_64);
    if (unaff_EBP != (int *)0x0) {
      FUN_10918e90((int)unaff_EBP);
    }
    uVar3 = unaff_EDI;
    if ((2 < (int)((int)puStack_50 - iStack_58 & 0xfffffffeU)) && (iStack_58 != 0)) {
      FUN_10918e90(iStack_58);
    }
  }
  return uVar3;
}

