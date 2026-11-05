# Thumbnail cache path selection

Static original PC1.67 evidence; analyst role names are descriptive. Binary identity
is recorded in the [native reference](README.md). The full selector is retained as
[original ASM](functions/00D4BAB0_ThumbnailCache_SelectPath.asm) ([actual annotated Ghidra C](functions/00D4BAB0_ThumbnailCache_SelectPath.c)).

## Inputs, output and branches

ECX is the thumbnail owner; the two stack slots are UInt32 cacheKind and mutable
wide-string output. The result is AL Boolean and callee stack cleanup is RET8.
The receiver is saved and supplied to the object-cache-kind predicate; an inferred
cdecl signature loses that dependency. Configuration key names are narrow ASCII,
whereas configured/default path values are wide strings; the lookup's inferred
LPCWSTR key type is not authoritative.

For kind5A2DD454, query thumbnailAltCache; kind6283AE8A queries
CASThumbnailAltCache. A nonnull configured result is assigned to the output and
returns true without the later root/directory checks. This branch does not require
a nonempty configured string. Otherwise get the current root through the provider
returned by72F140, vtable+24. A null or empty root returns false.

Assign the root and append Thumbnails, then require the directory helper's true
result. The object-kind predicate selects ObjectThumbnails.package. Otherwise
6283AE8A selects CASThumbnails.package and B7254173 selects
DownloadsThumbnails.package; other kinds fail. thumbnailDefaultCacheName can
replace the chosen filename. Append it through the wide-string helper and return
that helper's Boolean. Output is mutated before several failure branches and is
not rolled back or cleared.

## Scope

The82 instructions cover237 original bytes, checked against pristine executable
bytes; actual annotations/prototype are saved in Ghidra without byte changes.
This is static path/configuration evidence, not execution of original filesystem
operations. It establishes neither a portable project cache schema nor package
precedence, image decoding, generated-thumbnail readiness or all caller policy.
