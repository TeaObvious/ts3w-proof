/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Read appdir/code_version.txt using
   case-sensitive Version: token and first-line reader. Release path uses token; missing token/file
   falls back Unknown. Development/build-date branch is separate. Native appdir and selected
   installation content roots are distinct producers. */

uint __cdecl Version_ReadCodeVersion(void *param_1)

{
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  wchar_t *pwVar4;
  undefined4 uVar6;
  wchar_t *local_218;
  wchar_t *local_214;
  wchar_t local_208 [260];
  wchar_t *pwVar5;
  
  iVar1 = _stricmp("2014-01-16-1625","Local");
  if (iVar1 == 0) {
    pvVar2 = FUN_00405910(param_1,"Local","");
    return (uint)pvVar2 & 0xffffff00;
  }
  local_218 = local_208;
  local_208[0] = L'\0';
  local_214 = local_218;
  puVar3 = (undefined4 *)FUN_005491e0(0x11cede0);
  FUN_009c5100(&local_218,(short *)*puVar3);
  pwVar4 = L"code_version.txt";
  do {
    pwVar5 = pwVar4;
    pwVar4 = pwVar5 + 1;
  } while (*pwVar4 != L'\0');
  FUN_009b0770(&local_218,L"code_version.txt",L"code_version.txt" + ((int)(pwVar5 + -0x80dbb9) >> 1)
              );
  uVar6 = Version_ReadFirstLineToken(local_218,"Version:",param_1,'\x01');
  if ((char)uVar6 == '\0') {
    pvVar2 = FUN_00405910(param_1,"Unknown","");
    return (uint)pvVar2 & 0xffffff00;
  }
  return CONCAT31((int3)((uint)uVar6 >> 8),1);
}

