# Declared-reference resolution boundaries

Five original-reference pilots identify three managed declarations, one runtime
delegate declaration and one CLI array-member shape. They establish no new
strict-native function or native address. The frozen root, identity and unresolved
reference indexes remain unchanged; none of their unresolved counts is reduced
by this study.

The original PEs and MVIDs are identified by the
[central manifest](../../evidence/managed/reference-inputs.json). The
[family index](../../evidence/managed/reference-resolution/families.json) and
[five-pilot index](../../evidence/managed/reference-resolution/pilots.json)
retain exact owner/signature blobs, tokens, substitutions, source instruction
bytes and ILSpy instruction/header excerpts. They are metadata lookup evidence,
not complete exported function-body contracts.

## Structural families

The underlying MemberRef parent and TypeSpec signature code were read from the
original metadata for every frozen unresolved operand. Family assignment uses
those records, without a name-based generic/array guess.

| Original metadata shape | Tokens | Existing unresolved call sites |
| --- | ---: | ---: |
| MemberRef with GENERICINST TypeSpec owner | 24,308 | 91,639 |
| MemberRef with ARRAY TypeSpec owner | 33 | 290 |
| MethodSpec wrapping a MemberRef with GENERICINST owner | 4 | 5 |
| Total | 24,345 | 91,934 |

Token counts include the 127 address-use/MethodImpl references outside the call
subset. Site counts include only the previously identified call-like sites.
The four MethodSpec records are classified structurally and remain outside the
five-pilot binding study.

The largest original generic-owner definitions are `List<T>` (5,903 tokens,
38,394 sites), `List<T>.Enumerator` (1,715 / 13,245), `Dictionary<K,V>`
(3,890 / 10,659), `InteractionDefinition` with three generic parameters
(3,957 / 4,714), `Interaction` with two parameters (1,300 / 4,233), and
`UIEventHandler<T>` (33 / 3,426). These are unresolved-reference groups, not
native-code dispositions. No strict-native PInvoke/InternalCall/Native-code-type
method in the frozen 2,266-record corpus is declared on a generic TypeDef;
inherited and dynamic possibilities still require their own evidence.

## Binding rule and original checks

A generic member reference separates its instantiated owner from the member's
uninstantiated signature. The pilots first match that open signature against
the original declared method. Owner arguments are substituted afterwards to
describe effective types. Substituting before matching can merge distinct
overloads. CLI multidimensional arrays have runtime-provided constructor,
`Get`, `Set` and `Address` members; an array MemberRef need not have an ordinary
MethodDef in these inputs. These are the encoding rules in
[ECMA-335, 6th edition, sections II.9.8 and II.14.2](https://ecma-international.org/wp-content/uploads/ECMA-335_6th_edition_june_2012.pdf).
They guide static interpretation; the original host's live binding and execution
were not observed.

All ten PE hashes/MVIDs were checked against the frozen manifest. The existing
[37 exact AssemblyRef identity joins](../../evidence/managed/assembly-references.json)
identify the referenced assembly versions, cultures and public-key tokens.
An equal simple name alone is not the assembly-identity check.

Each pilot reads the parent TypeSpec, nominal TypeDef, generic-parameter count,
original member signature and target metadata. A second instruction reader,
ILSpy's `ReflectionDisassembler`, confirms the selected caller instruction and
the identified declaration header. The complete selected local disassemblies
remain research inputs; only their focused metadata/instruction excerpts are
included in the pilot index.

## Five pilots

Tokens in this table are scoped to the named assembly. The pilot index supplies
their complete original signatures and exact example caller/offset/bytes.

| Reference | Owner and member | Static identification | Existing sites |
| --- | --- | --- | ---: |
| `UI:0A000090` | `UIEventHandler<UIButtonClickEventArgs>..ctor` | `UI:060017E7`, Runtime delegate constructor | 1,582 |
| `Sims3GameplayObjects:0A0001B1` | `List<InteractionObjectPair>.Add(!0)` | `mscorlib:06001C7D`, managed declared method | 1,012 |
| `Sims3GameplaySystems:0A0000AF` | `List<Sim>.Enumerator.get_Current()` | `mscorlib:06001CCF`, managed declared method | 1,063 |
| `mscorlib:0A00001D` | `ArraySegment<!0>.Equals(ArraySegment<!0>)` | `mscorlib:060001E9`, managed declared overload | 3 |
| `UI:0A00026A` | `UIImage[,].Set(int32,int32,UIImage)` | CLI array-member shape; no MethodDef/native address assigned | 100 |

The first pilot recovers a declared constructor already present in the frozen
Runtime-delegate index. Its 1,582 `newobj` sites do not become strict-native
bridge sites. The second keeps `!0` in the binding signature, then maps it to
`InteractionObjectPair` for the effective parameter type. The third uses the
nested TypeDef's actual generic-parameter table and maps the return `!0` to
`Sim`; the leaf name `Enumerator` alone does not encode that generic context.

The fourth pilot retains an open argument: target `!0` maps to caller-context
`!0`, rather than a guessed concrete type. Its exact declared overload and
original `ValueType` → `Object` base chain differ from the same-name strict-native
`System.Type.Equals(System.Type)` declaration, `mscorlib:0600053A`. A name-only
`Equals` match cannot identify that native root.

The fifth records an original ARRAY TypeSpec and `call` operand. It qualifies
the synthetic array-member boundary without inventing a missing TypeDef,
attaching an unrelated `System.Array` MethodDef, or assigning a TS3 native address.

## Remaining work

These five cases do not close the 24,345-reference corpus. The identified method
is its static declaration; `callvirt`, delegate construction and array operations
do not supply an observed runtime target, callback lifetime or marshaling
contract. The four generic declared-owner matches do not perform inherited-member
search. Generic base-class substitution, inherited/hidden members, interface
implementation selection, the four MethodSpec records and runtime-generated
array implementations remain separate questions.

A later resolver change must preserve original generic signatures, owner
instantiations, assembly identities and ambiguity. It should be independently
checked on further original cases before producing a new version of the frozen
indexes. These pilot records remain useful even if later interpretation needs
correction.
