/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ebc8 (original PC 1.67 TS3W.exe).
   ScriptCore.AutomationUtils::Automation_EnableNetworkListening [assembly=ScriptCore
   token=0x06000620; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore.AutomationUtils::Automation_EnableNetworkListening(void)

{
  int *piVar1;
  char cVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 *puVar6;
  int *piVar7;
  int *piVar8;
  uint uVar9;
  undefined4 uVar10;
  char local_48 [16];
  undefined2 local_38;
  undefined2 local_36;
  char *local_34;
  undefined2 local_1c;
  undefined2 local_1a;
  undefined4 local_18;
  
  local_38 = 2;
  local_1c = 2;
  DAT_011d4e38 = DAT_011d4e3c;
  uVar9 = 0;
  local_34 = (char *)0x0;
  local_36 = 0x1010;
  local_18 = 0;
  local_1a = 0x1010;
  cVar2 = FUN_00502200();
  uVar4 = FUN_00502160(local_34,local_48,'\x01');
  if (cVar2 == '\0') {
    return uVar4 & 0xffffff00;
  }
  iVar5 = FUN_00502d40();
  if (iVar5 == 0) {
    puVar6 = (undefined4 *)FUN_004e4500(0x1cc,"Debug/Automation",0);
    if (puVar6 == (undefined4 *)0x0) {
      piVar7 = (int *)0x0;
    }
    else {
      piVar7 = FUN_005023e0(puVar6);
    }
    cVar2 = (**(code **)(*piVar7 + 4))();
    if (cVar2 == '\0') {
      uVar9 = (**(code **)*piVar7)(1);
      return uVar9 & 0xffffff00;
    }
    FUN_00502d50(piVar7);
  }
  piVar7 = *(int **)(DAT_011d4e38 + 8);
  piVar1 = *(int **)(DAT_011d4e38 + 4);
  uVar4 = DAT_011d4e38;
  if ((((piVar7 != (int *)0x0) && (piVar1 != (int *)0x0)) &&
      (uVar4 = (**(code **)(*piVar7 + 0x24))(), (char)uVar4 != '\0')) &&
     ((uVar4 = (**(code **)(*piVar1 + 0x24))(), (char)uVar4 != '\0' &&
      (uVar4 = (**(code **)(*piVar7 + 0x2c))(&local_1c), (char)uVar4 != '\0')))) {
    piVar8 = piVar7 + 0x1f;
    uVar10 = 0;
    uVar4 = (**(code **)(piVar7[0x1f] + 0x1c))();
    if ((char)uVar4 != '\0') {
      cVar3 = (**(code **)(*piVar8 + 0x30))(0);
      cVar2 = (char)((uint)uVar10 >> 0x18);
      for (; (cVar3 == '\0' && (cVar2 = (char)((uint)uVar10 >> 0x18), uVar9 < 10));
          uVar9 = uVar9 + 1) {
        FUN_004e1830((DWORD *)&stack0xffffffa8);
        cVar3 = (**(code **)(*piVar8 + 0x30))(0);
        cVar2 = (char)((uint)uVar10 >> 0x18);
      }
      uVar4 = (**(code **)(*piVar8 + 0x30))(0);
      if ((char)uVar4 != '\0') {
        cVar3 = (**(code **)(*piVar8 + 0x38))(piVar1 + 0x1f,&stack0xffffffa3);
        if ((cVar3 != '\0') && (cVar2 != '\0')) {
          return 1;
        }
        return 0;
      }
    }
  }
  return uVar4 & 0xffffff00;
}

