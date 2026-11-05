/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned neutral field-address name. Physical ECX
   object/no stackwords/plainRET; LEA EAX,object+C0 returns borrowed field address, no allocation,
   copy, validation or retention. In the independently traced CFIR product context, this is
   the16-byte GroundLevel key lane populated by C955C0. Shared/folded callsites may use other object
   types; this annotation does not globally type the receiver as FireplaceProduct. No key-word
   pointee type is inferred for unrelated users. */

void * __thiscall ObjectField_AddressC0(void *this)

{
  return (void *)((int)this + 0xc0);
}

