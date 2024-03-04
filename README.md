UnivisionPodSpecs
===============
*(iOS) Repo of specs for Univision's shared components*

This repository contains the private Univision [CocoaPods](https://github.com/CocoaPods/CocoaPods) specifications.

## More info on private cocoapods

- [Private Cocoapods](http://guides.cocoapods.org/making/private-cocoapods.html): Learn about creating Podspec's and the Spec repo.

## Installing the Specs Repo

To use Univision's pods, add this specs repo to your computer's cocoapods setup:
```Shell
# pod repo add REPO_NAME SOURCE_URL
pod repo add univision https://github.com/CarlosGP-TD/UnivisionPodSpecs.git
```

To update the repo (in case new PodSpecs were added):
```Shell
pod repo update univision
```

## Adding a PodSpec to this repo
```Shell
# pod repo push REPO_NAME SPEC_NAME.podspec
pod repo push univision exampleSpec.podspec
```

## Available components

- [FSClient](https://github.com/CarlosGP-TD/Univision-Framework-iOS/tree/master/FSClient)
- [ULOoyalaPlayer](https://github.com/CarlosGP-TD/Univision-Framework-iOS/tree/master/ULOoyalaPlayer)
- [ULAdobeAuthenticator](https://github.com/CarlosGP-TD/Univision-Framework-iOS/tree/master/ULAdobeAuthenticator)
