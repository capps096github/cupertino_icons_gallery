## What this PR is changing:

This PR `updates the cupertino_icons README.md` to include the [Cupertino Icons Gallery] which contains over 1,335 Cupertino Icons used in Flutter with intelligent searching, filtering and code snippets of Cupertino Icons.

## Why the PR:

Since the [Old Cupertino Icons Gallery] `is no longer up`, most Flutter Devs including me have been facing challenges in accessing `Cupertino Icons`. So this PR comes to inform them about the free and open-source [Cupertino Icons Gallery] App.

## Issues are fixed by this PR:

- This `PR fixes this issue: [cupertino-icon-page-not-found]

- It also `answers a question listed on Stack Overflow` about [how-to-access-cupertino-icons-1-0-0-gallery]

_It doesn't have anything to change anything in the [flutter/tests] repo._

## Screenshots of the README.md:

### a) Before
![Image of the Cupertino Icons Gallery App is here:](https://raw.githubusercontent.com/capps096github/cupertino_icons_gallery/master/web/images/old_readme.png)

### b) After
![Image of the Cupertino Icons Gallery App is here:](https://raw.githubusercontent.com/capps096github/cupertino_icons_gallery/master/web/images/new_readme.png)
## Pre-launch Checklist

- [x] I read the [Contributor Guide] and followed the process outlined there for submitting PRs.
- [x] I read the [Tree Hygiene] wiki page, which explains my responsibilities.
- [x] I read and followed the [relevant style guides] and ran the auto-formatter. (Unlike the flutter/flutter repo, the flutter/packages repo does use `dart format`.)
- [x] I signed the [CLA].
- [x] The title of the PR starts with the name of the package surrounded by square brackets, e.g. `[shared_preferences]`
- [x] I listed at least one issue that this PR fixes in the description above.
- [x] All existing and new tests are passing.
- [x] I updated `CHANGELOG.md` to add a description of the change, [following repository CHANGELOG style].

_These are unchecked because no part of the codebase has been changed, it's just the README file that has been editted._

- [ ] I updated `pubspec.yaml` with an appropriate new version according to the [pub versioning philosophy], or this PR is [exempt from version changes].
- [ ] I updated/added relevant documentation (doc comments with `///`).
- [ ] I added new tests to check the change I am making, or this PR is [test-exempt].

If you need help, consider asking for advice on the #hackers-new channel on [Discord].

<!-- Links -->

[contributor guide]: https://github.com/flutter/packages/blob/master/CONTRIBUTING.md
[tree hygiene]: https://github.com/flutter/flutter/wiki/Tree-hygiene
[relevant style guides]: https://github.com/flutter/packages/blob/master/CONTRIBUTING.md#style
[cla]: https://cla.developers.google.com/
[flutter/tests]: https://github.com/flutter/tests
[breaking change policy]: https://github.com/flutter/flutter/wiki/Tree-hygiene#handling-breaking-changes
[discord]: https://github.com/flutter/flutter/wiki/Chat
[pub versioning philosophy]: https://dart.dev/tools/pub/versioning
[exempt from version changes]: https://github.com/flutter/flutter/wiki/Contributing-to-Plugins-and-Packages#version-and-changelog-updates
[following repository changelog style]: https://github.com/flutter/flutter/wiki/Contributing-to-Plugins-and-Packages#changelog-style
[test-exempt]: https://github.com/flutter/flutter/wiki/Tree-hygiene#tests
[cupertino-icon-page-not-found]: https://github.com/flutter/flutter/issues/88754
[how-to-access-cupertino-icons-1-0-0-gallery]: https://stackoverflow.com/questions/69003317/how-to-access-cupertino-icons-1-0-0-gallery/72284660#72284660
[cupertino icons gallery]: https://cupertino.page.link/icons
[old cupertino icons gallery]: https://flutter.github.io/cupertino_icons
