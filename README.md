# Editor.js (Automad Fork)

> [!IMPORTANT]
>This is a fork of [codex-team/editor.js](https://github.com/codex-team/editor.js) that is optimized to work with [Automad](https://automad.org). It tries to stay as close as possible to the upstream while being modified to fit Automad's requirements.

## Versioning

From version `2.31`, all versions created from this fork should keep the tag from upstream that has been merged last with a `-am.X` suffix appended. For example:

```
v2.31.0-rc.10 -> v2.31.0-rc.10-am.0
```

## Notable Changes


This fork diverges in some details that are only required in Automad.

| [Compage to upstream](https://github.com/codex-team/editor.js/compare/next...automadcms:automad-editorjs:next) |
| --- |

- The inline toolbar is positioned correctly also when being used inside a nested instance of Editor.js. ([6cd10fe1](https://github.com/automadcms/automad-editorjs/commit/6cd10fe1df7e751aee9ce505d85a09fad480a43b))
- Since block tunes are merged common tunes, there is no way in the upstream version to define a fixed order for individual elements. This for supports sorting by adding a deditcated `sort` field to the `MenuConfigItem` type. ([c9757aa](https://github.com/automadcms/automad-editorjs/commit/c9757aab994782c0cce986534dbbd4e7eccb9046))

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
npm unlink
```

---

You can find out more about the original upstrem project on [GitHub](https://github.com/codex-team/editor.js) and on the official [documentation](https://editorjs.io) website.
