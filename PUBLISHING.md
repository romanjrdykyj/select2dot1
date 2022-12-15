Rough notes on steps I take to publish a new version of select2dot1:

1. Create version branch `v1.2.3-dev`.

2. Merge all changes to `version branch`.

3. Bump the version in `pubspec.yaml` and update `CHANGELOG.md`.

4. Update `README.md` as appropriate with any changed examples.

5. If ready, run `git tag v1.2.3` (with the appropriate version number) to tag
   the release.

6. Run `git push` and `git push --tags` to push both the release and the tag to
   GitHub.

7. Merge `version branch` to `main`.

8. Run `dart pub publish` to push the build live (only if CICD failed). Watch 
   pub.dev to make sure that there's nothing broken.
