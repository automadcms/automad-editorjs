# Editor.js (Automad Fork)

> [!IMPORTANT]
> This is a fork of [codex-team/editor.js](https://github.com/codex-team/editor.js) that is optimized to work with [Automad](https://automad.org). It tries to stay as close as possible to the upstream while being modified to fit Automad's requirements.

The `v2.29` is the currently stable branch that is used in production. The branch `next` has still too many issues and doesn't work reliably.

## Notable Changes

This fork diverges in some details that are only required in Automad.

| [Compare to upstream](https://github.com/codex-team/editor.js/compare/v2.29.0...automadcms:automad-editorjs:v2.29) |
| --- |

- add option to sort block tunes [307f1e9](https://github.com/automadcms/automad-editorjs/commit/307f1e9f3868d1b6d3abf3a4748dc86266253669)
- fix position of inline toolbar inside nested editors [99d33da](https://github.com/automadcms/automad-editorjs/commit/99d33da3e5846d3f98014490b1cec87ba6d13daf)
- fix infinite re-rendering of actions inside inline toolbar [3d6ac02](https://github.com/automadcms/automad-editorjs/commit/3d6ac022c3ecf049f79424bf057668cff921fd55)
- add option to define a handler for unknown block types [e52024a](https://github.com/automadcms/automad-editorjs/commit/e52024ac86dc1299313b9ed97c91b059a91158ab)
- add option to define a test for running keyboard event handlers[0681c87](https://github.com/automadcms/automad-editorjs/commit/0681c8741ae058142d98671308604ce9d9cc1cb7)

## Versioning

From version `2.29`, all versions created from this fork should keep the tag from upstream that has been merged last with a `-am.X` suffix appended. For example:

```
v2.29.0 -> v2.29.0-am.0
```

> [!NOTE]
> Existing tags using the old version scheme that simply bumps the patch number are kept as well for reference.

## Local Automad Development

In order to link the package to Automad during development forllow these steps:

```bash
cd /path/to/editorjs
npm link
cd /path/to/automad
npm uninstall automad-editorjs && npm link automad-editorjs
```

In order to remove the link:

```bash
cd /path/to/automad
npm unlink automad-editorjs
npm i -D automad-editorjs
cd /path/to/editorjs
npm unlink -g
```

---

You can find out more about the original upstrem project on [GitHub](https://github.com/codex-team/editor.js) and on the official [documentation](https://editorjs.io) website.
