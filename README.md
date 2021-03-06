# OpenTwitterAPIClient-for-swift

This is autogenerated Twitter v2 API client for swift.　The code is generated by using an OSS ["openapi-generator"](https://github.com/OpenAPITools/openapi-generator). The api specification is located at [here](https://api.twitter.com/2/openapi.json) that is provided by Twitter, inc.

The purpose of this repository is to enable developers to quickly set up Twitter API's client code.

## Important

This repository doesn't provide an oauth 1.0 and 2.0 client-side implementation, because the implementation requires deep experiences as a security expart, and I am not. Therefore, you have to authorize your app by using a great OAuth client library such as listed in [OAuth Libraries for Swift](https://oauth.net/code/swift/), or implementing them by yourselves.

## Usege

```swift
import OpenTwitterAPIClient

Task {

    do {
    
        // 1. Get oauth credentials by using some library, or sources that you've implemented.
        let oauthCredentials = try await OAuth2.auth(...)
        
        // 2. Set the result token as a bearer. You can also set app level
        OpenTwitterAPIClientAPI.setToken(oauthCredentials.accessToken)

        // 3. Uses an API
        let userIDs = try await UsersAPI.usersIdFollowing(id: userID)
        print(userIDs)
        
    } catch {
        print("An error occur: \(error)")
    }
}

```

Please check out `GeneratedSources/docs` for more details.

## Installation

### Recommended

Swift Package

### Others

CocoaPods, Carthage

## Regenerate codes

I will use GitHub Action for automated re-generation of the client, but I kick it manually now.

Please setup Docker environment, and execute:

```
sh update.sh
```

## License

This repository basically follows [an OpenAPITools/openapi-genarator's license definition](https://github.com/OpenAPITools/openapi-generator#table-of-contents), but if there are any problems, please let us know as issues.
