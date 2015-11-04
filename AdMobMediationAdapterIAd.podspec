Pod::Spec.new do |s|
  s.name         = "AdMobMediationAdapterIAd"
  s.version      = "7.5.2"
  s.summary      = "AdMob Mediation Adapter for iAd Network."
  s.description  = <<-DESC
                     By default mediation adapters are not included into iOS AdMob SDK.
                     Each mediation network other than AdMob requries additional library component.
                     This is iAd mediation adapter library, provided by Google.
                     DESC

  s.homepage     = "https://developers.google.com/mobile-ads-sdk/docs/dfp/android/mediation-networks"
  s.license      = {
                    :type => "Copyright",
                    :text => <<-LICENSE
                        Copyright 2009 - 2015 Google, Inc. All rights reserved.
                        LICENSE
                    }
  s.author       = "Google Inc."
  s.source       = { :http => "https://dl.google.com/dl/googleadmobadssdk/libadapteriad.zip", :flatten => true }

  s.platform     = :ios, "6.0"

  s.preserve_path = "libAdapterIAd.a"
  s.vendored_library = "libAdapterIAd.a"
  s.dependency "Google-Mobile-Ads-SDK", "~> #{s.version}"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC -lAdapterIAd', 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/AdMobMediationAdapterIAd/' }
  s.requires_arc = true
end
