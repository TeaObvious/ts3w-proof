/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Corrected cdecl ABI: output byte-string
   pointer then UInt32 content-root key, two caller-cleaned stack arguments. Lookup595510, append
   content_version.txt and parse Version: token through7D9CA0. Missing root/file/token returns
   false. Metadata writer uses content-root4 for EP1, not newest installed pack. */

bool __cdecl Version_ReadContentVersion(void *outputText,uint contentRootKey)

{
  int *piVar1;
  short *psVar2;
  undefined4 uVar4;
  wchar_t *local_218;
  wchar_t *local_214;
  wchar_t local_208 [260];
  short *psVar3;
  
  piVar1 = ContentRoots_FindByKey(&DAT_011cede0,(int *)&contentRootKey);
  if (piVar1 == (int *)0x0) {
    return false;
  }
  local_218 = local_208;
  local_208[0] = L'\0';
  local_214 = local_218;
  FUN_009c5100(&local_218,(short *)*piVar1);
  psVar2 = (short *)&DAT_010008b0;
  do {
    psVar3 = psVar2;
    psVar2 = psVar3 + 1;
  } while (*psVar2 != 0);
  FUN_009b0770(&local_218,(undefined2 *)&DAT_010008b0,
               (undefined2 *)(&DAT_010008b0 + ((int)(psVar3 + -0x800457) >> 1) * 2));
  uVar4 = Version_ReadFirstLineToken(local_218,"Version:",outputText,'\x01');
  return SUB41(uVar4,0);
}

