# Original managed complate and preset preparation

## Original artifacts and scope

The matching PC 1.67 Sims3Metadata assembly owns `Sims3.Metadata.Complate`, its
nested texture-part/destination/step types, and `Sims3.Metadata.MathParse`.
Its package resource, DLL identity and module identity are recorded in the
[managed evidence index](../../evidence/managed/README.md).

The [complete selected original IL](../../evidence/managed/complate.il.txt)
([annotated Complate C#](../../evidence/managed/types/Sims3.Metadata.Complate.cs),
[annotated MathParse C#](../../evidence/managed/types/Sims3.Metadata.MathParse.cs))
retains seventeen method bodies including locals, exception regions and exact
instruction offsets. Both C# files are actual ILSpy 11.1 renderings of the
pristine DLL; comments identify reviewed MethodDefs. Full type context remains
readable, without claiming every unannotated method's complete contract. C#
local names and syntax are decompiler output, not recovered original source.

The [method lookup](../../evidence/managed/complate-method-index.tsv) joins each
selected assembly-local token to RVA, IL length and C# owner. The
[91 selected direct MethodDef sites](../../evidence/managed/complate-calls.tsv)
include original caller offsets and distinguish retained versus unexpanded IL.
No original assembly, preset, expression or native compositor was executed.

## Processed part production

`Complate.Process` (06000321) copies each variable's current value into the
complate lookup, clears processed parts, invokes Clone on each authored part,
processes that clone and appends it in authored order. Nested Process methods
for steps/destinations/parts (06000361/36B/373) expand a snapshot of their detail
keys through the parent ProcessString; destination and part then visit their
children. Exact template cache/clone admission and every XML parser method are
outside this selected contract.

`ProcessString` (06000322) repeatedly finds `($`, locates the next `)`, fetches
the named lookup value and reconstructs the string. Only after no such marker
remains does it repeatedly find `{...}`, call MathParse.Parse and substitute
`double.ToString("0.#######;-0.#######;0")`. The checked formatting call supplies
no explicit culture provider. This leaf has no explicit cycle, recursion,
iteration or extent guard and no missing-delimiter recovery. Its caller's
exception scope must be checked separately.

## Actual expression evaluator

`MathParse.Parse` (06000382) invokes ProcessVectors first, removes ASCII spaces
and tokenizes using the original operator sequence `+`, `-`, `/`, `*`. It uses
**one Boolean parenthesis flag**, rather than a nesting stack or recursive
arithmetic evaluation. Plus/minus characters in a collected operand are later
removed and their minus parity becomes a leading sign. This is the retained
algorithm, not a promise of general parenthesized expression syntax.

ProcessPair (0600037F) parses the two operands as doubles and applies its
operator; ProcessOps (06000380) consumes multiplication/division first, then
addition/subtraction left-to-right. Intermediate doubles are converted to
strings and parsed again. Those Parse/ToString calls supply no invariant
provider. Empty input returns zero; selected missing right-hand and unknown
operator paths throw. Full accepted syntax/culture and exceptional numeric
behavior require the actual managed implementation, not an inferred generic
expression library.

ProcessVectors (06000381) scans `vectorSel(`, commas and a closing parenthesis,
then substitutes the selected string. Its selected guard is `selector != -1`
and `selector < count`; it is not a complete nonnegative range check. This
simple scan and parenthesis handling should not be generalized to arbitrary
nested function expressions.

## Preset input, nested patterns and failure results

The string ProcessPreset overload (0600033C) uses a streaming XML reader. It
does **not** clear the caller lookup on entry. Each selected complate supplies
its name and resource key; legacy name `rgbMaskStandard` maps to `ObjectRgbMask`.
Resolution and ProcessPresetValues feed the caller lookup and update the
returned last-successful name.

Its failure results are distinct:

| Path | Lookup effect | Returned name |
| --- | --- | --- |
| Selected complate without attributes | Retains the existing lookup | Prior result |
| Failed template resolution or top-level values processing | Clears lookup | Prior result, possibly nonempty after an earlier success |
| Caught Exception | Clears lookup | Empty string |

The DOM ProcessPreset overload (0600033E) clears on entry, visits document
complate children and has no matching broad catch. Selected later failures
clear the lookup and retain the prior result, which may be nonempty. Missing
document element returns its initial empty result. Neither overload is a
universal transactional success Boolean.

The streaming/DOM ProcessPresetValues methods (0600033D/33F) write value
key/text into the lookup and resolve nested patterns under their authored
variable slots. Failed pattern resolution tries the original fallback pattern
and key; failure of both returns false. The recursive processing call's Boolean
result is **discarded** before nested publication. Finally current lookup
values are copied back into variables. Streaming attribute admission and DOM
attribute access differ; they are not interchangeable cleanup/error contracts.

## Compositor output and step construction

MakeName (06000330) appends authored part and destination details with
underscores when those details exist. CreateTextureCompositors (06000334)
visits processed parts/destinations and assigns each created compositor into
a Hashtable under that name. Repeated names overwrite an earlier entry.

CreateTextureCompositor (06000335) uses the first processed part when none is
supplied; no processed part returns null. An omitted destination directly
indexes the first destination: there is no preceding empty-destination check.
It stores original source complate/part/destination, target pattern size and
part region before visiting steps. Enum parsing is case-insensitive; its
legacy aliases map body/bottom/shoes/top/lowerbody/upperbody to Body, accessory
to Accessories, face to Face, hair to Hair and scalp to Scalp. Selected unknown
aliases yield None; the original distinct exception handlers remain in the IL.

TextureStep.CreateTextureStep (06000362) treats empty enabled text as enabled.
A nonempty value must parse as Boolean true; malformed/false text returns null.
An unknown type table entry also returns null. A constructed object must
implement the original texture-step interface or construction throws. The
original step Init receives the authored data and group ID; only nonnull steps
are added to the compositor.

These methods own **managed template/value/expression/step preparation**.
They do not by themselves prove the binary program serialization, native
resource reservation, property packing, render-target/pass construction, pixel
execution or GPU behavior. Those producers/consumers require their own evidence.
The original static caller index includes Pattern and ColorInfo paths as well
as Complate callers; virtual/reflection dispatch and runtime frequency remain
unresolved by those direct sites.

## Separate native preparation boundary

The [native complate preparation contract](native-complate-preparation.md) retains
a separate original native wrapper/destination/operation chain. Its selected
enabled gate differs from this managed Boolean gate. Neither set of methods by
itself establishes the full initial object/wall producer, threading or resource
lifetime. Similar operation names do not prove interchangeable producers.


## Cache acquisition, cloning and authored step admission join

[Eight additional complete original CIL bodies](../../evidence/managed/complate-acquisition.il.txt)
extend the same method/call indexes to25 selected methods, rather than a second
unconnected cache reference. GetCachedComplate0600030C/32bytes,
SetCachedComplate0600030D/23bytes, FromXml0600033A/74bytes and0600033B/189bytes
are318bytes together. Clone06000340/227bytes, both ParseTextureStep0600031E/51
and0600031F/87bytes, plus static initializer06000346/331bytes bring the eight
additional bodies to1014bytes. All nine freshly selected bodies/1145CIL bytes,
including already retained CreateTextureStep06000362/131bytes, match the pristine
packaged DLL directly. No duplicate step-admission export is added. Existing
actual C# type supplies full surrounding declarations; direct call sites remain
static and incomplete for reflection/virtual/native consumers.

GetCachedComplate does a ResourceKey lookup and clones a hit before returning
true. SetCachedComplate stores a clone. Neither body contains a lock, source
stamp, package path, mount generation, cache bound or invalidation protocol.
Clone copies scalar/reference metadata, clones authored/processed TextureParts
and calls CopyData; full nested clone/reference alias behavior is a separate
dependency, not a blanket deep-immutability promise.

FromXml(ResourceKey) tries the cache before Simulator.LoadXMLString. Null/empty
string returns null without caching a negative. Otherwise it constructs Complate,
sets assetRoot, calls Parse, stores a clone and returns the parsed object.
FromXml(name,keyText) first tries valid supplied four-colon-field key, then uses
ResourceKey.CreateXMLKey(name,0), cache and Simulator service; the name path does
not have the same explicit assetRoot assignment. No broad catch encloses these
selected cache/acquisition bodies. Parser/service/Clone/loader exceptions and
original global-access concurrency are not equivalent to a host catch-and-null.

These methods do not implement the host PatternPreviewTemplates leaf/full-path
heuristic or a mutable installed-package filesystem cache. Removing a host
source-blind positive/null memo restores host per-call selection only; it is not
proof of original cache, full material freshness, negative retry frequency or
parallel-safety parity. Higher final products can avoid template acquisition.
The separate specular template-text cache and loaded original CAS cache must not
be conflated with this small host diffuse-Pattern preview interpreter.

Both ParseTextureStep overloads copy authored attribute names/values into step
details. Static initializer06000346 sets kEnabledAttribute to literal enabled.
TextureStep.Process06000361 expands detail strings through ProcessString before
CreateTextureStep06000362 applies its gate: empty admits, otherwise Boolean
parse must yieldtrue. A processed false or malformed string returnsnull before
Activator construction/Init. CreateTextureCompositor06000335 adds only nonnull
steps. enabled and enableBlending are distinct fields/responsibilities.

A host parser that drops enabled and executes every supported type has a real
literal-false step-admission mismatch; no complete pixel or particular retail
asset regression follows without a runtime/asset test. Expression-bearing enabled
values must be resolved in original order before admission, rather than skipped
or guessed true from raw text. XML namespace/name/admission, first diffuse-part
selection, supported operations, scalar defaults, extent/encoding and GPU/native
execution remain separately qualified host/original boundaries.
