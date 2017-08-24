# ${POD_NAME}

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS & tvOS 9

## How to push new Spec

Step 1:

Create a new version tag and push tag to server.

Step 2:

```sh
./version.sh
```

## Installation

${POD_NAME} is available through [MFCocoaPods](https://bitbucket.org/mediafly-team/mediafly-podspec-repo). To install
it, simply add the following lines to your Podfile:

```ruby
source 'git@bitbucket.org:mediafly-team/mediafly-podspec-repo.git'

pod "${POD_NAME}"
```

## Author

Mediafly
