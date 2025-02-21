# Wildcard domain certificates

This opentofu module is responsible for the order, import and assignment of
the wildcard certificates.

The main steps in the process are as follows:

  1. Create the certificate order
  2. Assign a Key Vault to the certificate order*
  3. Confirm domain ownership through a TXT DNS entry*
  4. Create a custom hostname binding to the App Service
  5. Bind the generated certificate to the custom hostname


\* Steps 2 and 3 are not currently implemented and have to be done manually
through the Azure Portal and DNS provider.
