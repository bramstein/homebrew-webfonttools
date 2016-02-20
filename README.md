# Homebrew web font tools

Add the tap:

    > brew tap bramstein/webfonttools

Update brew:

    > brew update

Then install any of the following formula by using `brew install <formula>`:

* `sfnt2woff`: Tool for converting TrueType and OpenType font files to WOFF made by Jonathan Kew. This installs two utilities `sfnt2woff` to compress and `woff2sfnt` to decompress.
* `sfnt2woff-zopfli`: Modified version of sfnt2woff that uses the Zopfli compression algorithm (2-5% better compression than standard WOFF). This installs two utilities `sfnt2woff-zopfli` to compress and `woff2sfnt-zopfli` to decompress.
* `woff2`: WOFF2 compression and decompression utilities by Google. This installs two utilities `woff2_compress` to compress and `woff2_decompress` to decompress.
* `ttf2eot`: Tool for converting TrueType font files to the embedded OpenType format (EOT). Does not include MTX compression. The installed utility is called `ttf2eot`.
* `sfntly`: Google's subsetting and font conversion tools. This will install two utilities called `sfnttool` and `fontinfo`. The `sfnttool` utility performs subsetting and can also create WOFF and EOT files. The `fontinfo` utility shows you information about a font.
* `fonttools`: [TTX/fonttools (Behdad's fork)](https://github.com/behdad/fonttools).
* `ots`: [OpenType sanitiser](https://github.com/khaledhosny/ots)

## Recommendations

So which tool should you use to create web fonts? I recommend the following because they create the smallest possible font files:

* WOFF2: Use `woff2`.
* WOFF: Use `sfnt2woff-zopfli` if you're generating static files, use `sfnt2woff` or `sfnttool` if you're dynamically generating WOFF files.
* EOT: Use `sfntly`'s `sfnttool` with the `-e` and `-x` options to generate compressed EOT files.
