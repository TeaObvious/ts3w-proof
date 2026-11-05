/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_EnableInGameAdsImpl;
   WorldWrap_EnableInGameAds. Export ordinal(s): 1297; 2619. Entry VA: 0x10578930. Original managed
   P/Invoke MethodDef(s): CSHostWrap:0x06000516; ScriptCore:0x06000BDC. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_EnableInGameAdsImpl(undefined1 param_1)

{
  undefined *puVar1;
  
                    /* 0x578930  1297  World_EnableInGameAdsImpl
                       0x578930  2619  WorldWrap_EnableInGameAds */
  puVar1 = FUN_107ce4c0();
  puVar1[0x4c0] = param_1;
  return;
}

