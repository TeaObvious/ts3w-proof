/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 static: Two caller-cleaned stack32-bit inputs; arithmetic mixes both words
   modulo32 and tail-forwards to AFC670. Pool tile producer supplies raw float X/Z bit words and
   observes returned EAX32. Preserve stored undefined8 return/prototype: full child combine/EDX
   meaning and general hash algorithm are not established. No collision-free coordinate identity
   inferred. Descriptive role, not recovered symbol.
   
   Additional PC1.67 verified consumers: FireplaceGroups_AddFromLocation hashes rawX/Z then
   low-result/signed-level word, two successive calls. Each word uses modular uint32
   shifts15/10/6/11/16 and multiply9, then pushes mixed second as low and mixed first as high
   intoAFC670. EAX32 is caller identity; preserve unsigned shifts and modulo overflow. Existing
   stair/pool consumers retain their own input meaning. */

undefined8 __cdecl MixTwoWordsAndForwardHash(int param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar1 = ~(param_1 << 0xf) + param_1;
  uVar1 = (uVar1 >> 10 ^ uVar1) * 9;
  uVar1 = uVar1 ^ uVar1 >> 6;
  uVar1 = uVar1 + ~(uVar1 << 0xb);
  uVar2 = ~(param_2 << 0xf) + param_2;
  uVar2 = (uVar2 >> 10 ^ uVar2) * 9;
  uVar2 = uVar2 ^ uVar2 >> 6;
  uVar2 = uVar2 + ~(uVar2 << 0xb);
  uVar3 = HashWordPair_Finalize(uVar2 >> 0x10 ^ uVar2,uVar1 >> 0x10 ^ uVar1);
  return uVar3;
}

