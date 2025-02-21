# [34375](https://github.com/renovatebot/renovate/discussions/34375)

## Current behavior

Renovate Bot fails to parse the `main.tf` if there is a resources using a [provider function](https://opentofu.org/docs/language/functions/#provider-defined-functions).

## Expected behavior

I expect renovate successfully update the provider, regardless of the terraform config.

## Link to the Renovate issue or Discussion

https://github.com/renovatebot/renovate/discussions/34375