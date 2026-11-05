/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Automation_EnableNetworkListening. Export
   ordinal(s): 48. Entry VA: 0x1052e830. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000362. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint Automation_EnableNetworkListening(void)

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
  
                    /* 0x52e830  48  Automation_EnableNetworkListening */
  local_38 = 2;
  local_1c = 2;
  DAT_10c786b8 = DAT_10c786bc;
  uVar9 = 0;
  local_34 = (char *)0x0;
  local_36 = 0x1010;
  local_18 = 0;
  local_1a = 0x1010;
  cVar2 = FUN_10934b90();
  uVar4 = FUN_10934af0(local_34,local_48,'\x01');
  if (cVar2 == '\0') {
    return uVar4 & 0xffffff00;
  }
  iVar5 = FUN_109356d0();
  if (iVar5 == 0) {
    puVar6 = (undefined4 *)FUN_10918eb0(0x1cc,"Debug/Automation",0);
    if (puVar6 == (undefined4 *)0x0) {
      piVar7 = (int *)0x0;
    }
    else {
      piVar7 = FUN_10934d70(puVar6);
    }
    cVar2 = (**(code **)(*piVar7 + 4))();
    if (cVar2 == '\0') {
      uVar9 = (**(code **)*piVar7)(1);
      return uVar9 & 0xffffff00;
    }
    FUN_109356e0(piVar7);
  }
  piVar7 = *(int **)(DAT_10c786b8 + 8);
  piVar1 = *(int **)(DAT_10c786b8 + 4);
  uVar4 = DAT_10c786b8;
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
        FUN_109162d0((DWORD *)&stack0xffffffa8);
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

