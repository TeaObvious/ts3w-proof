/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager+LotXZLevel pointer/vector pointer RET8, EAXuint32 key. First AFC710 hashes raw
   float X and Z bits (MOVSS no conversion), second hashes EAX with raw signed level DWORD at+8.
   Calls A769F0 with resulting key; no random seed, zero rejection or collision probing. D20430
   transaction wrapper called fromCE384C supplies location obtained fromC894E0 object location
   fields10/14/18. */

uint __thiscall FireplaceGroups_AddFromLocation(void *this,undefined *location,undefined *objectIds)

{
  undefined8 uVar1;
  
  uVar1 = MixTwoWordsAndForwardHash(*(int *)location,*(int *)(location + 4));
  uVar1 = MixTwoWordsAndForwardHash((int)uVar1,*(int *)(location + 8));
  FireplaceGroups_AddIfAbsent(this,(uint)uVar1,objectIds);
  return (uint)uVar1;
}

