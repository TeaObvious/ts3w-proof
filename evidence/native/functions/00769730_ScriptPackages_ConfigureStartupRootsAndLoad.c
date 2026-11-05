/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. stdcall RET8, root UTF16 pointer and
   low-byte mode. allscripts/systemscripts/gameplayscripts roots are looked up; empty allscripts
   falls back input root and empty other roots fall back allscripts. When mode0, invokes package
   interface for scripts.package,simcore.package,gameplay.package; always invokes
   Gameplay\\GameplayData.package. Missing package interface returnsAL1; observed loading failures
   returnAL0. Indirect-call stack-derived output/flag expressions require original instructions;
   complete resource-loader policy remains open. */

bool ScriptPackages_ConfigureStartupRootsAndLoad(short *param_1,char param_2)

{
  short *psVar1;
  short *psVar2;
  short *psVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  short local_208 [260];
  
  psVar1 = (short *)FUN_0058ac90(L"allscripts",0);
  psVar2 = (short *)FUN_0058ac90(L"systemscripts",0);
  psVar3 = (short *)FUN_0058ac90(L"gameplayscripts",0);
  if ((psVar1 == (short *)0x0) || (*psVar1 == 0)) {
    psVar1 = param_1;
  }
  if ((psVar2 == (short *)0x0) || (*psVar2 == 0)) {
    psVar2 = psVar1;
  }
  if ((psVar3 == (short *)0x0) || (*psVar3 == 0)) {
    psVar3 = psVar1;
  }
  piVar4 = (int *)FUN_0072f140();
  if (piVar4 == (int *)0x0) {
    return true;
  }
  bVar7 = true;
  if (param_2 == '\0') {
    FUN_004ff550(local_208,psVar2,0x104);
    FUN_004ecc60(local_208,-1);
    FUN_004ff640(local_208,L"scripts.package",0x104);
    iVar5 = (**(code **)(*piVar4 + 0xc))(local_208);
    FUN_004ff550(&stack0xfffffdf4,psVar2,0x104);
    FUN_004ecc60((short *)&stack0xfffffdf4,-1);
    FUN_004ff640((short *)&stack0xfffffdf4,L"simcore.package",0x104);
    iVar6 = (**(code **)(*piVar4 + 0xc))(&stack0xfffffdf4);
    bVar7 = iVar6 != 0 && iVar5 != 0;
    FUN_004ff550(&stack0xfffffdf0,psVar3,0x104);
    FUN_004ecc60((short *)&stack0xfffffdf0,-1);
    FUN_004ff640((short *)&stack0xfffffdf0,L"gameplay.package",0x104);
    iVar5 = (**(code **)(*piVar4 + 0xc))(&stack0xfffffdf0);
    if (iVar5 == 0) {
      bVar7 = false;
    }
  }
  FUN_004ff550(local_208,psVar3,0x104);
  FUN_004ecc60(local_208,-1);
  FUN_004ff640(local_208,L"Gameplay\\GameplayData.package",0x104);
  iVar5 = (**(code **)(*piVar4 + 8))(local_208,0xfffffc18);
  if (iVar5 == 0) {
    bVar7 = false;
  }
  return bVar7;
}

