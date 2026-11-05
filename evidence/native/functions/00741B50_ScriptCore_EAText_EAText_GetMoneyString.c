/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011610b8 (original PC 1.67 TS3W.exe).
   ScriptCore.EAText::EAText_GetMoneyString [assembly=ScriptCore token=0x060002D3; amount:
   System.Int64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_EAText__EAText_GetMoneyString(longlong param_1)

{
  int iVar1;
  int *piVar2;
  undefined1 *puVar3;
  int aiStack_b4 [3];
  undefined **ppuStack_a8;
  undefined1 auStack_a4 [4];
  undefined **appuStack_a0 [2];
  undefined2 uStack_98;
  undefined2 uStack_96;
  short asStack_80 [64];
  
  FUN_00449630((double)param_1,asStack_80,0x40,0x1001f60,(short *)&DAT_01001f70);
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  aiStack_b4[0] = 0;
  aiStack_b4[1] = 0;
  aiStack_b4[2] = 0;
  ppuStack_a8 = (undefined **)0x1001f44;
  FUN_0040b590(aiStack_b4,asStack_80);
  appuStack_a0[0] = &PTR_FUN_0100886c;
  uStack_96 = 0x13;
  uStack_98 = 0xb;
  FUN_004f59c0(appuStack_a0,0x13,9,aiStack_b4,0x10,1);
  puVar3 = auStack_a4;
  (**(code **)(*piVar2 + 0x50))(appuStack_a0);
  iVar1 = aiStack_b4[2];
  ppuStack_a8 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_a0[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_a8,'\0');
  }
  if ((2 < (int)(aiStack_b4[0] - (int)puVar3 & 0xfffffffeU)) && (puVar3 != (undefined1 *)0x0)) {
    FUN_004e44e0((int)puVar3);
  }
  return iVar1;
}

