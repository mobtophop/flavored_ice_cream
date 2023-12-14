# Flavored Ice Cream
## Flutter flavors demo

A simple Flutter project, created to demonstrate the benefits of flavors system and it's possible use for white-labelling apps.

The flavors system allows the creation of multiple customized copies of one base app. Just like different flavors of ice cream, that share the same shape but differ in taste and color

### There are 4 flavors of this app:

| Vanilla | Chocolate | Pistachio | Berries |
| --- | --- | --- | --- |
| <img src="https://github.com/mobtophop/flavored_ice_cream/assets/145994644/560402ce-85e0-42a0-a499-f055b98d474e" height="400" width="180"> | <img src="https://github.com/mobtophop/flavored_ice_cream/assets/145994644/d097e559-5963-4033-859a-9e735fe01099" height="400" width="180"> | <img src="https://github.com/mobtophop/flavored_ice_cream/assets/145994644/37bf3093-f897-454d-bcdb-08f27ee03da5" height="400" width="180"> | <img src="https://github.com/mobtophop/flavored_ice_cream/assets/145994644/7f24cc5a-40be-46fa-b42a-481a43b00c3f" height="400" width="180"> |

 - The Android flavors are written in <a href = "https://github.com/mobtophop/flavored_ice_cream/blob/d28cb73107787e90366edaa9cd5f0d2801b3b453/android/app/build.gradle">app/build.gradle</a> file
 - The iOS flavors are managed as Schemes via xCode
 - To find out, which flavor the app is currently launched with, the <a href = "https://pub.dev/packages/package_info_plus">package_info_plus</a> plugin is used
