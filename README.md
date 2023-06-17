# Description
This repo can be used as a registry in Vcpkg, it provides some packages that maintained by Klrohias.

# Installation
Add following object into your `vcpkg-configuration.json`:
```json
{
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/Klrohias/vcpkg-registry",
      "baseline": "28e17668623992dad20d88dd9e0255ebd2e71f24",
      "packages": [ "unimage" ]
    }
  ]
}
```
