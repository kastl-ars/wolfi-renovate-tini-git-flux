# wolfi-renovate-nodejs-bash-git

Container image containing [renovate](https://github.com/renovatebot/renovate).
Based on WolfiOS and built using the
[apko-publish](https://github.com/chainguard-images/actions/tree/main/apko-publish)
GitHub Action.

The image is inspired by the [Chainguard node
image](https://images.chainguard.dev/directory/image/node/overview), i.e. I
adapted the
[apko.yaml](https://github.com/chainguard-images/images/blob/main/images/node/config/template.apko.yaml)
file used to build that image.

To make this more usable for **my** use cases, I included gnupg (to have GPG
signing of commits made by renovate) and flux, to allow updating Flux manifests.

To have the image fully work with signals (i.e. SIGTERM), the image runs
[tini](https://github.com/krallin/tini) as "init system".

Kudos to the Chainguard team for making it so easy and painless to build a small
and secure image!

## Testing the image

The image can be tested using the `test_the_image.sh`, which will run this with
[Podman](https://podman.io/) and will output the version:

```
$ ./test_the_image.sh
Trying to pull ghcr.io/kastl-ars/wolfi-renovate-tini-git-flux:22...
Getting image source signatures
Copying blob 7e5a0c5b4516 skipped: already exists
Copying config 9815666748 done   |
Writing manifest to image destination
(node:1) [DEP0040] DeprecationWarning: The `punycode` module is deprecated.
Please use a userland alternative instead.
(Use `node --trace-deprecation ...` to show where the warning was created)
37.381.0
$
```

## Licensing

The container image contains software packages that are direct or transitive
dependencies. As renovate is the most prominent one, I have taken its license
`AGPL-3.0-only` as a license for this repository, too.
