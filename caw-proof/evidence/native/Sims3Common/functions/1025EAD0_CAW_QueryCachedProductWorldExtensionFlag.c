/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Lazily queries installed-product flag 0x40000 through
   GameConfig product-bit test 0x1038E6E0 using configuration state 0x10C726C0, caches its result in
   0x10C703EE and marks initialized at 0x10C703EF. The world constructor uses the result to choose a
   Z upper-bound extension of zero or 2048. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined1 CAW_QueryCachedProductWorldExtensionFlag(void)

{
  if (DAT_10c703ef == '\0') {
    DAT_10c703ee = CAW_GameConfigHasInstalledProductBits(&DAT_10c726c0,0x40000);
    DAT_10c703ef = 1;
    return DAT_10c703ee;
  }
  return DAT_10c703ee;
}

