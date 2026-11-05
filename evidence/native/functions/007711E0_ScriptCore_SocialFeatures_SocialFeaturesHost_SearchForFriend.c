/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162280 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_SearchForFriend [assembly=ScriptCore
   token=0x06000A49; nucleusID: System.Int64, matchString: System.String, status: System.UInt32,
   withinFriendSearch: System.Boolean, ep: System.UInt32, startIndex: System.UInt32, maxResults:
   System.UInt32, sortFilter: System.UInt32, sortType: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_SearchForFriend
          (int param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
          undefined4 param_10)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  char *unaff_EBX;
  undefined1 *puVar5;
  char *pcVar6;
  int unaff_retaddr;
  char *local_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (param_3 != 0)) {
    pcVar6 = &DAT_011c8e54;
    puVar5 = &DAT_011c8e55;
    local_14[0] = "Services/SocialFeaturesHost/SearchForFriend/MatchString8";
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_3);
    puVar3 = FUN_004f3cc0(local_14,pWVar2,0xffffffff,(char *)0x0);
    if (puVar3 != (undefined4 *)&stack0xffffffdc) {
      pcVar6 = unaff_EBX;
      FUN_00405910(&stack0xffffffdc,(void *)*puVar3,(undefined1 *)puVar3[1]);
      puVar5 = &DAT_011c8e54;
    }
    if ((1 < iStack_c - (int)local_14[0]) && (local_14[0] != (char *)0x0)) {
      FUN_004e44e0((int)local_14[0]);
    }
    uVar4 = FUN_00a227e0(unaff_retaddr,param_1,pcVar6,param_3,(char)param_4,param_5,param_6,param_7,
                         param_8,param_9);
    if ((1 < (int)puVar5 - (int)pcVar6) && (pcVar6 != (char *)0x0)) {
      FUN_004e44e0((int)pcVar6);
    }
    return uVar4;
  }
  uVar4 = FUN_00a227e0(param_1,param_2,(char *)0x0,param_4,(char)param_5,param_6,param_7,param_8,
                       param_9,param_10);
  return uVar4;
}

