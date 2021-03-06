# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
## [2.0.1] - 2017-05-18
### Fixed
- Fixed logo 404 on the DSM example

## [2.0.0] - 2017-05-18
### Added
- Migrated to Elm 0.19
- Simplified the Api : `storiesOf` is the new way of creating stories for the UI 
```elm
storiesOf
            "Button"
            [ ( "SignIn", \_ -> button "Sign In" "pink", {} )
            , ( "SignOut", \_ -> button "Sign Out" "cyan", {} )
            , ( "Loading", \_ -> button "Loading please wait..." "white", {} )
            ]
 ```
  
- Added Plugins mechanism. 
- Added built in Plugins ( Notes, MenuVisibility)
- Added new design 
- Added Customization options for the header 
- Added new  button example

### Changed
- `app` has been renamed to `explore`
- `emptyUICategories` is now  `createCategories`
- `addUICategory` is now `category`
- updated the design system example

### Removed
- The `renderStories` function has been removed.  
- Removed music-player and simple example

 
