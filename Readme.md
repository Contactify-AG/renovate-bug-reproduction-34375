# [34375](https://github.com/renovatebot/renovate/discussions/34375)

## Current behavior

Renovate Bot ignores the `main.tf` if there is a resources using a [provider function](https://opentofu.org/docs/language/functions/#provider-defined-functions).

## Expected behavior

I expect renovate to pick up the terraform provider, regardless of the terraform config.

## Link to the Renovate issue or Discussion

https://github.com/renovatebot/renovate/discussions/34375