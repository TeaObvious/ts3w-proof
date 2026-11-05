/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_IsDevBuild;
   GameVersion_IsDevBuild. Export ordinal(s): 399; 1831. Entry VA: 0x10784800. Original managed
   P/Invoke MethodDef(s): CSHostWrap:0x06000F07; ScriptCore:0x06001196. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 DownloadContent_IsDevBuild(void)

{
  LPCWSTR pWVar1;
  int iStack_10;
  int iStack_c;
  int iStack_8;
  int iStack_4;
  
                    /* 0x784800  399  DownloadContent_IsDevBuild
                       0x784800  1831  GameVersion_IsDevBuild */
  if (DAT_10c8deb1 != '\0') {
    return DAT_10c8deb0;
  }
  pWVar1 = (LPCWSTR)FUN_10388740(L"Version",L"GameVersion",L"0.0.0.0");
  FUN_1079df30(&iStack_10,pWVar1);
  DAT_10c8deb0 = 1;
  DAT_10c8deb1 = 1;
  if ((((iStack_10 != 0) || (iStack_c != 0)) || (iStack_8 != 0)) || (iStack_4 != 0)) {
    DAT_10c8deb0 = 0;
  }
  return DAT_10c8deb0;
}

