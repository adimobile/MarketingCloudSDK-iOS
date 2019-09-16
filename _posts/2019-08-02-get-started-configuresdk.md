---
layout: page
title: "4. Configure the SDK"
subtitle: "Configure the SDK"
category: get-started
date: 2019-08-02 12:00:00
order: 4
published: true
---

## Configure the SDK

#### See the SDK header MarketingCloudSDK/MarketingCloudSDK+Base.h ([AppleDoc](https://salesforce-marketingcloud.github.io/MarketingCloudSDK-iOS/appledoc/Classes/MarketingCloudSDK.html)) for detailed documentation on SDK configuration methods.

This example uses the MarketingCloudSDK [ConfigBuilder ](https://salesforce-marketingcloud.github.io/MarketingCloudSDK-iOS/appledoc/Classes/MarketingCloudSDK.html#//api/name/sfmc_configureWithDictionary:error:) configuration method, as it is the most flexible means to support your application's usage of MobilePush.

> Configuration of the SDK using a JSON file (included in our [GitHub repository](https://github.com/salesforce-marketingcloud/MarketingCloudSDK-iOS)) will be **deprecated** in an upcoming SDK release. We encourage you to move existing implementations to the builder method. For more information on our configuration methods, see the [AppleDoc](https://salesforce-marketingcloud.github.io/MarketingCloudSDK-iOS/appledoc/Classes/MarketingCloudSDK.html)).

> All method names contain the prefix `sfmc_`. This convention allows the application implementing the SDK to avoid namespace collisions between the external libraries it uses. MarketingCloudSDK does not cause compile, link, or runtime collisions with other code your application implements. Review Apple’s [documentation on customizing existing classes](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/CustomizingExistingClasses/CustomizingExistingClasses.html#//apple_ref/doc/uid/TP40011210-CH6-SW4) for further information.

1. Using the `Access Token`, `App ID`, `App Endpoint`, and `MID` values noted when you [Setup Push Apps]({{ site.baseurl }}/get-started/get-started-setupapps.html), configure the SDK in your application.

    <script src="https://gist.github.com/dff538b60618bdcf6d64cef21fe4e0c2.js"></script>

1. Enable or disable `etanalytics`, `pianalytics`, `location`, or `inbox` entries depending on the unique needs of your application and your usage of Marketing Cloud.

  
### Next Steps

[Configure for Push]({{ site.baseurl }}/get-started/get-started-configureforpush.html)